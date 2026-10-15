* TS: src/rules/line_break_multiple_parameters.ts:16:1 LineBreakMultipleParameters
CLASS zcl_lnt_ln_brk_mltpl_prmtrs DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_l_b_m_p_t_l_br_ml_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS s_c_i_s_r_l_b_m_p_t_l_br_ml_pr IMPORTING i_conf TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ln_brk_mltpl_prmtrs IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_ln_brk_mltpl_prmtr_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |line_break_multiple_parameters|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Line break multiple parameters|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Line break multiple parameters|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#line-break-multiple-parameters|.
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |method( parameter1 = value parameter2 = value ).|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = t15.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |method( parameter1 = value\n        parameter2 = value ).|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t31.
      t30 = t31.
      DATA(t32) = t30.
      DATA(t33) = |Whitespace|.
      t32->load( ).
      APPEND t33 TO t32->items.
      t32->save( ).
      DATA(t34) = t30.
      DATA(t35) = |Styleguide|.
      t34->load( ).
      APPEND t35 TO t34->items.
      t34->save( ).
      DATA(t36) = t30.
      DATA(t37) = |Quickfix|.
      t36->load( ).
      APPEND t37 TO t36->items.
      t36->save( ).
      DATA(t38) = t30.
      DATA(t39) = |SingleFile|.
      t38->load( ).
      APPEND t39 TO t38->items.
      t38->save( ).
      DATA(t40) = t30.
      t29 = t40.
      t27 = t29.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t41.
      t27 = t41.
    ENDIF.
    t26 = t27.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t26 i_pragma = t42 i_pseudo_comment = t44 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t52 ).
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
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |tags|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_l_b_m_p_t_l_br_ml_pr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_l_b_m_p_t_l_br_ml_pr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA(t7) = t2.
    t6 = t7->get_type( ).
    DATA(t8) = |INTF|.
    t5 = xsdbool( t6 = t8 ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t11.
    t13 = t14->statements.
    t10 = t13.
    DATA t15 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t10->load( ).
      IF t17 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t10->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = t15.
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t20 = t21->find_all_expressions( i_type_9913 = t22 ).
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t20->load( ).
        IF t25 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t20->items INDEX t25 + 1 INTO t24.
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
        DATA t29 TYPE REF TO zcl_lnt_position.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t32) = t15.
        t31 = t32->get_first_token( ).
        t30 = t31.
        DATA t33 TYPE REF TO zcl_lnt_position.
        DATA(t34) = t30.
        t33 = t34->start.
        t29 = t33.
        t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_virtual_position ).
        IF t28 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t37) = t23.
        DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4.
        t36 = t37->find_direct_expressions( i_type_9913 = t38 ).
        t35 = t36.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE i.
        DATA(t41) = t35.
        t41->load( ).
        t40 = lines( t41->items ).
        DATA(t42) = 1.
        t39 = xsdbool( t40 <= t42 ).
        IF t39 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t44.
        DATA(t45) = t35.
        DATA t46 TYPE REF TO object.
        CLEAR t46.
        t45->load( ).
        CLEAR t46.
        READ TABLE t45->items INDEX 1 INTO t46.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        CLEAR t44.
        IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t47 ?= t46.
          DATA t48 TYPE REF TO object.
          t48 = t47->as_ref( ).
          t44 ?= t48.
        ELSE.
          t44 ?= t46.
        ENDIF.
        t43 = t44.
        DATA t49 TYPE i.
        DATA(t50) = 1.
        t49 = t50.
        DO.
          DATA t51 TYPE abap_bool.
          DATA(t52) = t49.
          DATA t53 TYPE i.
          DATA(t54) = t35.
          t54->load( ).
          t53 = lines( t54->items ).
          t51 = xsdbool( t52 < t53 ).
          IF t51 = abap_false.
            EXIT.
          ENDIF.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t56.
          DATA(t57) = t35.
          DATA(t58) = t49.
          t58 = t58 + 1.
          DATA t59 TYPE REF TO object.
          CLEAR t59.
          t57->load( ).
          CLEAR t59.
          READ TABLE t57->items INDEX t58 INTO t59.
          DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t60.
          CLEAR t56.
          IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t60 ?= t59.
            DATA t61 TYPE REF TO object.
            t61 = t60->as_ref( ).
            t56 ?= t61.
          ELSE.
            t56 ?= t59.
          ENDIF.
          t55 = t56.
          DATA t62 TYPE abap_bool.
          DATA t63 TYPE abap_bool.
          DATA t64 TYPE f.
          DATA(t65) = me->conf.
          t64 = t65->zlnt_view_read_sr_91c00614fba7( ).
          t63 = xsdbool( t64 IS NOT INITIAL ).
          t62 = t63.
          IF t63 = abap_true.
            DATA t66 TYPE abap_bool.
            DATA t67 TYPE f.
            DATA(t68) = t49.
            t67 = t68.
            DATA t69 TYPE f.
            DATA(t70) = me->conf.
            t69 = t70->zlnt_view_read_sr_91c00614fba7( ).
            t66 = xsdbool( t67 < t69 ).
            t62 = t66.
          ENDIF.
          IF t62 = abap_true.
            DATA(t71) = t55.
            t43 = t71.
            DATA t72 TYPE i.
            DATA(t73) = t49.
            DATA(t74) = 1.
            t72 = t73 + t74.
            t49 = t72.
            CONTINUE.
          ENDIF.
          DATA t75 TYPE REF TO zcl_lnt_abstract_token.
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t77) = t55.
          t76 = t77->get_first_token( ).
          t75 = t76.
          DATA t78 TYPE abap_bool.
          DATA t79 TYPE f.
          DATA t80 TYPE REF TO zcl_lnt_abstract_token.
          DATA t81 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t82) = t43.
          t81 = t82->get_first_token( ).
          t80 = t81.
          DATA t83 TYPE f.
          DATA t84 TYPE REF TO zcl_lnt_position.
          DATA t85 TYPE REF TO zcl_lnt_position.
          DATA(t86) = t80.
          t85 = t86->start.
          t84 = t85.
          DATA t87 TYPE f.
          DATA(t88) = t84.
          t87 = t88->row.
          t83 = t87.
          t79 = t83.
          DATA t89 TYPE f.
          DATA t90 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t91) = t75.
          t90 = t91.
          DATA t92 TYPE f.
          DATA t93 TYPE REF TO zcl_lnt_position.
          DATA t94 TYPE REF TO zcl_lnt_position.
          DATA(t95) = t90.
          t94 = t95->start.
          t93 = t94.
          DATA t96 TYPE f.
          DATA(t97) = t93.
          t96 = t97->row.
          t92 = t96.
          t89 = t92.
          t78 = xsdbool( t79 = t89 ).
          IF t78 = abap_true.
            DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t98.
            DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t99.
            DATA(t100) = t1.
            DATA t101 TYPE REF TO zcl_lnt_position.
            DATA t102 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t103) = t75.
            t102 = t103.
            DATA t104 TYPE REF TO zcl_lnt_position.
            DATA(t105) = t102.
            t104 = t105->start.
            t101 = t104.
            DATA(t106) = VALUE string( ).
            DATA(t107) = |\n|.
            DATA(t108) = VALUE string( ).
            DATA t109 TYPE string.
            DATA(t110) = | |.
            t109 = t110.
            DATA(t111) = VALUE string( ).
            DATA(t112) = t109.
            DATA t113 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t113.
            DATA t114 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t114.
            DATA t115 TYPE REF TO zcl_lnt_position.
            CLEAR t115.
            DATA t116 TYPE REF TO zcl_lnt_position.
            CLEAR t116.
            DATA t117 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t117.
            DATA t118 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t118.
            DATA t119 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t119.
            DATA(t120) = t35.
            DATA t121 TYPE REF TO object.
            CLEAR t121.
            t120->load( ).
            CLEAR t121.
            READ TABLE t120->items INDEX 1 INTO t121.
            DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t122.
            CLEAR t119.
            IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t122 ?= t121.
              DATA t123 TYPE REF TO object.
              t123 = t122->as_ref( ).
              t119 ?= t123.
            ELSE.
              t119 ?= t121.
            ENDIF.
            t118 = t119->get_first_token( ).
            t117 = t118.
            DATA t124 TYPE REF TO zcl_lnt_position.
            DATA(t125) = t117.
            t124 = t125->start.
            t116 = t124.
            t115 = t116.
            DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t127) = t115.
            t126 = t127->col.
            t114 = t126.
            DATA(t128) = CONV f( 1 ).
            DATA(t129) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t129->has = abap_true.
            t129->value = t128.
            t113 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t114 right = t129 op = `-` ).
            DATA(t130) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t113 ) ).
            DATA(t131) = strlen( t112 ).
            DATA(t132) = CONV f( trunc( t130 ) ).
            IF t132 < 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            CLEAR t111.
            IF t112 IS NOT INITIAL.
              IF t132 > 2147483647 OR t132 * strlen( t112 ) > 2147483647.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t111 = repeat( val = t112 occ = CONV i( t132 ) ).
            ENDIF.
            t108 = t111.
            DATA(t133) = strlen( t107 ).
            t106 = |{ t107 }{ t108 }|.
            t99 = zcl_lnt_edit_helper=>insert_at( i_file = t100 i_pos = t101 i_text = t106 ).
            t98 = t99.
            DATA(t134) = t3.
            DATA t135 TYPE REF TO zcl_lnt_issue.
            CLEAR t135.
            DATA(t136) = t1.
            DATA t137 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t138) = t55.
            t137 = t138->get_first_token( ).
            DATA(t139) = VALUE string( ).
            DATA t140 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t140.
            DATA t141 TYPE string.
            DATA(t142) = |line_break_multiple_parameters|.
            t141 = t142.
            DATA t143 TYPE string.
            DATA(t144) = |Line break multiple parameters|.
            t143 = t144.
            DATA t145 TYPE string.
            DATA(t146) = |Line break multiple parameters|.
            t145 = t146.
            DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t147.
            DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t148.
            DATA(t149) = abap_true.
            IF t149 = abap_true.
              DATA(t150) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
              t150 = t150 && |nABAP.md#line-break-multiple-parameters|.
              DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t151->has = abap_true.
              t151->value = t150.
              t148 = t151.
            ELSE.
              DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t152.
              t148 = t152.
            ENDIF.
            t147 = t148.
            DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t153.
            DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t154.
            DATA(t155) = abap_true.
            IF t155 = abap_true.
              DATA(t156) = |method( parameter1 = value parameter2 = value ).|.
              DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t157->has = abap_true.
              t157->value = t156.
              t154 = t157.
            ELSE.
              DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t158.
              t154 = t158.
            ENDIF.
            t153 = t154.
            DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t159.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            DATA(t161) = abap_true.
            IF t161 = abap_true.
              DATA(t162) = |method( parameter1 = value\n        parameter2 = value ).|.
              DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t163->has = abap_true.
              t163->value = t162.
              t160 = t163.
            ELSE.
              DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t164.
              t160 = t164.
            ENDIF.
            t159 = t160.
            DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t165.
            DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t166.
            DATA(t167) = abap_true.
            IF t167 = abap_true.
              DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t170.
              t169 = t170.
              DATA(t171) = t169.
              DATA(t172) = |Whitespace|.
              t171->load( ).
              APPEND t172 TO t171->items.
              t171->save( ).
              DATA(t173) = t169.
              DATA(t174) = |Styleguide|.
              t173->load( ).
              APPEND t174 TO t173->items.
              t173->save( ).
              DATA(t175) = t169.
              DATA(t176) = |Quickfix|.
              t175->load( ).
              APPEND t176 TO t175->items.
              t175->save( ).
              DATA(t177) = t169.
              DATA(t178) = |SingleFile|.
              t177->load( ).
              APPEND t178 TO t177->items.
              t177->save( ).
              DATA(t179) = t169.
              t168 = t179.
              t166 = t168.
            ELSE.
              DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t180.
              t166 = t180.
            ENDIF.
            t165 = t166.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t182.
            t181 = t182.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t184.
            t183 = t184.
            t140 = NEW zcl_lnt_irule_metadata( i_key = t141 i_title = t143 i_short_description = t145 i_bad_example = t153 i_good_example = t159 i_extended_information = t147 i_tags = t165 i_pragma = t181 i_pseudo_comment = t183 ).
            CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
            t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t185.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t185 ).
            ENDIF.
            DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t186.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t186 ).
            ENDIF.
            DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t187.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t187 ).
            ENDIF.
            DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t188.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t188 ).
            ENDIF.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t189.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t189 ).
            ENDIF.
            DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t190.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t190 ).
            ENDIF.
            DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t191.
            IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t191 ).
            ENDIF.
            CREATE OBJECT t140->zlnt_json_ownkeys_70e5fd461788.
            t140->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t192) = |key|.
            DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t193.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
            ENDIF.
            DATA(t194) = |title|.
            DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t195.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
            ENDIF.
            DATA(t196) = |shortDescription|.
            DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t197.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
            ENDIF.
            DATA(t198) = |extendedInformation|.
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
            ENDIF.
            DATA(t200) = |badExample|.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t200 p1 = t201 ).
            ENDIF.
            DATA(t202) = |goodExample|.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
            ENDIF.
            DATA(t204) = |tags|.
            DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t205.
            IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
            ENDIF.
            t139 = t140->title.
            DATA(t206) = VALUE string( ).
            DATA t207 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t207.
            DATA t208 TYPE string.
            DATA(t209) = |line_break_multiple_parameters|.
            t208 = t209.
            DATA t210 TYPE string.
            DATA(t211) = |Line break multiple parameters|.
            t210 = t211.
            DATA t212 TYPE string.
            DATA(t213) = |Line break multiple parameters|.
            t212 = t213.
            DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t214.
            DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t215.
            DATA(t216) = abap_true.
            IF t216 = abap_true.
              DATA(t217) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
              t217 = t217 && |nABAP.md#line-break-multiple-parameters|.
              DATA(t218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t218->has = abap_true.
              t218->value = t217.
              t215 = t218.
            ELSE.
              DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t219.
              t215 = t219.
            ENDIF.
            t214 = t215.
            DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t220.
            DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t221.
            DATA(t222) = abap_true.
            IF t222 = abap_true.
              DATA(t223) = |method( parameter1 = value parameter2 = value ).|.
              DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t224->has = abap_true.
              t224->value = t223.
              t221 = t224.
            ELSE.
              DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t225.
              t221 = t225.
            ENDIF.
            t220 = t221.
            DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t226.
            DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t227.
            DATA(t228) = abap_true.
            IF t228 = abap_true.
              DATA(t229) = |method( parameter1 = value\n        parameter2 = value ).|.
              DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t230->has = abap_true.
              t230->value = t229.
              t227 = t230.
            ELSE.
              DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t231.
              t227 = t231.
            ENDIF.
            t226 = t227.
            DATA t232 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t232.
            DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t233.
            DATA(t234) = abap_true.
            IF t234 = abap_true.
              DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t236 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t237 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t237.
              t236 = t237.
              DATA(t238) = t236.
              DATA(t239) = |Whitespace|.
              t238->load( ).
              APPEND t239 TO t238->items.
              t238->save( ).
              DATA(t240) = t236.
              DATA(t241) = |Styleguide|.
              t240->load( ).
              APPEND t241 TO t240->items.
              t240->save( ).
              DATA(t242) = t236.
              DATA(t243) = |Quickfix|.
              t242->load( ).
              APPEND t243 TO t242->items.
              t242->save( ).
              DATA(t244) = t236.
              DATA(t245) = |SingleFile|.
              t244->load( ).
              APPEND t245 TO t244->items.
              t244->save( ).
              DATA(t246) = t236.
              t235 = t246.
              t233 = t235.
            ELSE.
              DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t247.
              t233 = t247.
            ENDIF.
            t232 = t233.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            t248 = t249.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t251.
            t250 = t251.
            t207 = NEW zcl_lnt_irule_metadata( i_key = t208 i_title = t210 i_short_description = t212 i_bad_example = t220 i_good_example = t226 i_extended_information = t214 i_tags = t232 i_pragma = t248 i_pseudo_comment = t250 ).
            CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
            t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t252.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t252 ).
            ENDIF.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t253 ).
            ENDIF.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t254 ).
            ENDIF.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t255 ).
            ENDIF.
            DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t256.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t256 ).
            ENDIF.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t257 ).
            ENDIF.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t258.
            IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t258 ).
            ENDIF.
            CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
            t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t259) = |key|.
            DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t260.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
            ENDIF.
            DATA(t261) = |title|.
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t262.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
            ENDIF.
            DATA(t263) = |shortDescription|.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
            ENDIF.
            DATA(t265) = |extendedInformation|.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
            ENDIF.
            DATA(t267) = |badExample|.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
            ENDIF.
            DATA(t269) = |goodExample|.
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t269 p1 = t270 ).
            ENDIF.
            DATA(t271) = |tags|.
            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t272.
            IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
            ENDIF.
            t206 = t207->key.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t274) = me->conf.
            t273 = t274->zlnt_view_read_sr_15c06369f827( ).
            DATA t275 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t275.
            DATA(t276) = abap_true.
            IF t276 = abap_true.
              DATA(t277) = t98.
              t275 = t277.
            ELSE.
              DATA t278 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t278.
              t275 = t278.
            ENDIF.
            t135 = zcl_lnt_issue=>at_token( i_file = t136 i_token = t137 i_message_26cb = t139 i_key = t206 i_severity = t273 i_fix = t275 ).
            t134->load( ).
            APPEND t135 TO t134->items.
            t134->save( ).
          ENDIF.
          DATA(t279) = t55.
          t43 = t279.
          DATA t280 TYPE i.
          DATA(t281) = t49.
          DATA(t282) = 1.
          t280 = t281 + t282.
          t49 = t280.
        ENDDO.
      ENDDO.
    ENDDO.
    DATA(t283) = t3.
    result = t283.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_ln_brk_mltpl_prmtr_cnf( me->g_c_i_s_r_l_b_m_p_t_l_br_ml_pr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_ln_brk_mltpl_prmtr_cnf( me->g_c_i_s_r_l_b_m_p_t_l_br_ml_pr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_ln_brk_mltpl_prmtr_cnf.
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
        t1 = NEW zcl_lnt_ln_brk_mltpl_prmtr_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_l_b_m_p_t_l_br_ml_pr( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1559_89941fa9188f.
  ENDMETHOD.
ENDCLASS.
