* TS: src/rules/preferred_compare_operator.ts:15:1 PreferredCompareOperator
CLASS zcl_lnt_prfrrd_cmpr_oprtr DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfrrd_cmpr_oprtr_cnf.
    DATA operator_mapping TYPE REF TO zlnt_runtime_map__a1006b231250.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_operator_582d TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_pr_cm_op_ts_pr_cm_op RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfrrd_cmpr_oprtr_cnf.
    METHODS s_c_i_s_r_pr_cm_op_ts_pr_cm_op IMPORTING i_conf TYPE REF TO zcl_lnt_prfrrd_cmpr_oprtr_cnf.
    METHODS r_p_i_s_r_pr_cm_op_ts_pr_cm_op IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_mapping.
    METHODS create_issue IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfrrd_cmpr_oprtr IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prfrrd_cmpr_oprtr_cnf(  ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t2) = NEW zlnt_runtime_map__a1006b231250(  ).
    me->operator_mapping = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `operatorMapping`.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = CONV string( |preferred_compare_operator| ).
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = CONV string( |Preferred compare operator| ).
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = CONV string( |Configure undesired operator variants| ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = CONV abap_bool( abap_true ).
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = CAST zlnt_runtime_arra_8ecd6afe19e0( t12 ).
      DATA(t15) = CONV string( |SingleFile| ).
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = CAST zlnt_runtime_arra_8ecd6afe19e0( t12 ).
      DATA(t17) = CONV string( |Quickfix| ).
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t12 ).
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = CONV abap_bool( abap_true ).
    IF t22 = abap_true.
      DATA(t23) = CONV string( |IF foo EQ bar.\nENDIF.| ).
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
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = CONV abap_bool( abap_true ).
    IF t28 = abap_true.
      DATA(t29) = CONV string( |IF foo = bar.\nENDIF.| ).
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = CONV string( |key| ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = CONV string( |title| ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = CONV string( |shortDescription| ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = CONV string( |tags| ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = CONV string( |badExample| ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = CONV string( |goodExample| ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = CONV string( i_operator_582d ).
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = CONV string( |Compare operator "| ).
    DATA(t5) = CONV string( t1 ).
    DATA(t6) = CONV i( strlen( t4 ) ).
    t3 = |{ t4 }{ t5 }|.
    DATA(t7) = CONV string( |" not preferred| ).
    DATA(t8) = CONV i( strlen( t3 ) ).
    t2 = |{ t3 }{ t7 }|.
    result = t2.
    RETURN.
  ENDMETHOD.
  METHOD g_c_i_s_r_pr_cm_op_ts_pr_cm_op.
    DATA(t1) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->conf ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD s_c_i_s_r_pr_cm_op_ts_pr_cm_op.
    DATA(t1) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( i_conf ).
    DATA(t2) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( t1 ).
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.
  METHOD r_p_i_s_r_pr_cm_op_ts_pr_cm_op.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    me->build_mapping(  ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = CAST zcl_lnt_abap_file( t1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = CAST zcl_lnt_abap_file( t6 ).
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = CAST zcl_lnt_structure_node( t4 ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_structure_node( t11 ).
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
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA(t21) = CAST zcl_lnt_structure_node( t4 ).
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA(t26) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e ).
    t25->load( ).
    APPEND t26 TO t25->items.
    t25->save( ).
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d298_782c2da798c9 ).
    t27->load( ).
    APPEND t28 TO t27->items.
    t27->save( ).
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t22 = t29.
    t19 = t20->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t22 ).
    t18 = t19.
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t31.
    DATA t32 TYPE REF TO object.
    CLEAR t32.
    DATA(t33) = VALUE i( ).
    DO.
      t30->load( ).
      IF t33 >= lines( t30->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t30->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t38) = CAST zcl_lnt_expression_node( t31 ).
      t37 = t38->get_last_token(  ).
      t36 = t37.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE i( ).
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t42) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->conf ).
      t41 = t42->zlnt_view_read_sr_7d235468b9c0( ).
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = CAST zcl_lnt_abstract_token( t36 ).
      t45 = t46.
      DATA t47 TYPE string.
      DATA(t48) = CAST zcl_lnt_abstract_token( t45 ).
      t47 = t48->str.
      t44 = t47.
      DATA(t49) = CONV i( strlen( t44 ) ).
      t43 = t44.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      t40 = t41->indexOf( p0 = t43 ).
      DATA(t50) = CONV i( 0 ).
      t39 = xsdbool( t40 >= t50 ).
      IF t39 = abap_true.
        DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t52 TYPE REF TO zcl_lnt_issue.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = CAST zcl_lnt_abstract_token( t36 ).
        t53 = t54.
        DATA t55 TYPE REF TO zcl_lnt_abap_file.
        DATA(t56) = CAST zcl_lnt_abap_file( t1 ).
        t55 = t56.
        DATA t57 TYPE REF TO zcl_lnt_issue.
        CLEAR t57.
        DATA t58 TYPE string.
        DATA t59 TYPE string.
        DATA t60 TYPE string.
        DATA t61 TYPE string.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t63) = CAST zcl_lnt_abstract_token( t53 ).
        t62 = t63.
        DATA t64 TYPE string.
        DATA(t65) = CAST zcl_lnt_abstract_token( t62 ).
        t64 = t65->str.
        t61 = t64.
        t60 = t61.
        DATA t66 TYPE string.
        DATA t67 TYPE string.
        DATA(t68) = CONV string( |Compare operator "| ).
        DATA(t69) = CONV string( t60 ).
        DATA(t70) = CONV i( strlen( t68 ) ).
        t67 = |{ t68 }{ t69 }|.
        DATA(t71) = CONV string( |" not preferred| ).
        DATA(t72) = CONV i( strlen( t67 ) ).
        t66 = |{ t67 }{ t71 }|.
        t59 = t66.
        t58 = t59.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_map__a1006b231250.
        DATA(t76) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
        t75 = t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA(t78) = VALUE abap_bool( ).
        DATA(t79) = CAST zlnt_runtime_map__a1006b231250( t75 ).
        IF t79 IS INITIAL.
          t78 = abap_true.
        ENDIF.
        IF t78 = abap_true.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t77 = t80.
        ELSE.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t82) = CAST zlnt_runtime_map__a1006b231250( t75 ).
          DATA t83 TYPE string.
          DATA t84 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t85) = CAST zcl_lnt_abstract_token( t53 ).
          t84 = t85.
          DATA t86 TYPE string.
          DATA(t87) = CAST zcl_lnt_abstract_token( t84 ).
          t86 = t87->str.
          t83 = t86.
          t81 = t82->get( p0 = t83 ).
          t77 = t81.
        ENDIF.
        t74 = t77.
        t73 = t74.
        DATA t88 TYPE REF TO zcl_lnt_issue.
        CLEAR t88.
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = CAST zlnt_runtime_opti_4ba3bdccd169( t73 ).
        IF t90 IS BOUND.
          IF t90->has = abap_true.
            t89 = xsdbool( strlen( t90->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t89 = abap_true.
          DATA t91 TYPE REF TO zcl_lnt_issue.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t94) = CAST zcl_lnt_abap_file( t55 ).
          DATA t95 TYPE REF TO zcl_lnt_position.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t97) = CAST zcl_lnt_abstract_token( t53 ).
          t96 = t97.
          DATA t98 TYPE REF TO zcl_lnt_position.
          DATA(t99) = CAST zcl_lnt_abstract_token( t96 ).
          t98 = t99->start.
          t95 = t98.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA t101 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t102) = CAST zcl_lnt_abstract_token( t53 ).
          t101 = t102.
          DATA t103 TYPE REF TO zcl_lnt_position.
          DATA t104 TYPE f.
          DATA t105 TYPE REF TO zcl_lnt_position.
          DATA t106 TYPE REF TO zcl_lnt_position.
          DATA(t107) = CAST zcl_lnt_abstract_token( t101 ).
          t106 = t107->start.
          t105 = t106.
          DATA t108 TYPE f.
          DATA(t109) = CAST zcl_lnt_position( t105 ).
          t108 = t109->row.
          t104 = t108.
          DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t112 TYPE REF TO zcl_lnt_position.
          DATA t113 TYPE REF TO zcl_lnt_position.
          DATA(t114) = CAST zcl_lnt_abstract_token( t101 ).
          t113 = t114->start.
          t112 = t113.
          DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t116) = CAST zcl_lnt_position( t112 ).
          t115 = t116->col.
          t111 = t115.
          DATA t117 TYPE f.
          DATA t118 TYPE i.
          DATA t119 TYPE string.
          DATA(t120) = CAST zcl_lnt_abstract_token( t101 ).
          t119 = t120->str.
          DATA(t121) = CONV i( strlen( t119 ) ).
          t118 = t121.
          t117 = t118.
          DATA(t122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t122->has = abap_true.
          t122->value = t117.
          t110 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t111 right = t122 op = `+` ).
          t103 = NEW zcl_lnt_position( i_row = t104 i_col = t110 ).
          t100 = t103.
          DATA t123 TYPE string.
          DATA(t124) = CAST zlnt_runtime_opti_4ba3bdccd169( t73 ).
          t123 = t124->value.
          t93 = zcl_lnt_edit_helper=>replace_range( i_file = t94 i_start = t95 i_end = t100 i_text = t123 ).
          t92 = t93.
          DATA t125 TYPE REF TO zcl_lnt_issue.
          CLEAR t125.
          DATA t126 TYPE REF TO zcl_lnt_issue.
          CLEAR t126.
          DATA(t127) = CAST zcl_lnt_abap_file( t55 ).
          DATA(t128) = CAST zcl_lnt_abstract_token( t53 ).
          DATA(t129) = CONV string( t58 ).
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t131.
          DATA t132 TYPE string.
          DATA(t133) = CONV string( |preferred_compare_operator| ).
          t132 = t133.
          DATA t134 TYPE string.
          DATA(t135) = CONV string( |Preferred compare operator| ).
          t134 = t135.
          DATA t136 TYPE string.
          DATA(t137) = CONV string( |Configure undesired operator variants| ).
          t136 = t137.
          DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t139.
          DATA(t140) = CONV abap_bool( abap_true ).
          IF t140 = abap_true.
            DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t143.
            t142 = t143.
            DATA(t144) = CAST zlnt_runtime_arra_8ecd6afe19e0( t142 ).
            DATA(t145) = CONV string( |SingleFile| ).
            t144->load( ).
            APPEND t145 TO t144->items.
            t144->save( ).
            DATA(t146) = CAST zlnt_runtime_arra_8ecd6afe19e0( t142 ).
            DATA(t147) = CONV string( |Quickfix| ).
            t146->load( ).
            APPEND t147 TO t146->items.
            t146->save( ).
            DATA(t148) = CAST zlnt_runtime_arra_8ecd6afe19e0( t142 ).
            t141 = t148.
            t139 = t141.
          ELSE.
            DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t149.
            t139 = t149.
          ENDIF.
          t138 = t139.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          DATA(t152) = CONV abap_bool( abap_true ).
          IF t152 = abap_true.
            DATA(t153) = CONV string( |IF foo EQ bar.\nENDIF.| ).
            DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t154->has = abap_true.
            t154->value = t153.
            t151 = t154.
          ELSE.
            DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t155.
            t151 = t155.
          ENDIF.
          t150 = t151.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA(t158) = CONV abap_bool( abap_true ).
          IF t158 = abap_true.
            DATA(t159) = CONV string( |IF foo = bar.\nENDIF.| ).
            DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t160->has = abap_true.
            t160->value = t159.
            t157 = t160.
          ELSE.
            DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t161.
            t157 = t161.
          ENDIF.
          t156 = t157.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t163.
          t162 = t163.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t165.
          t164 = t165.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t167.
          t166 = t167.
          t131 = NEW zcl_lnt_irule_metadata( i_key = t132 i_title = t134 i_short_description = t136 i_bad_example = t150 i_good_example = t156 i_extended_information = t162 i_tags = t138 i_pragma = t164 i_pseudo_comment = t166 ).
          CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
          t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t168 ).
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t169 ).
          ENDIF.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t170 ).
          ENDIF.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t171 ).
          ENDIF.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t172.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t172 ).
          ENDIF.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t173 ).
          ENDIF.
          CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
          t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t174) = CONV string( |key| ).
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
          ENDIF.
          DATA(t176) = CONV string( |title| ).
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
          ENDIF.
          DATA(t178) = CONV string( |shortDescription| ).
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
          ENDIF.
          DATA(t180) = CONV string( |tags| ).
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
          ENDIF.
          DATA(t182) = CONV string( |badExample| ).
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
          ENDIF.
          DATA(t184) = CONV string( |goodExample| ).
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
          ENDIF.
          t130 = t131->key.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t187) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->conf ).
          t186 = t187->zlnt_view_read_sr_15c06369f827( ).
          DATA t188 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t188.
          DATA(t189) = CONV abap_bool( abap_true ).
          IF t189 = abap_true.
            DATA(t190) = CAST zlnt_runtime_map__4fdf767b61ba( t92 ).
            t188 = t190.
          ELSE.
            DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t191.
            t188 = t191.
          ENDIF.
          t126 = zcl_lnt_issue=>at_token( i_file = t127 i_token = t128 i_message_26cb = t129 i_key = t130 i_severity = t186 i_fix = t188 ).
          t125 = t126.
          DATA(t192) = CAST zcl_lnt_issue( t125 ).
          t91 = t192.
          t88 = t91.
        ELSE.
          DATA t193 TYPE REF TO zcl_lnt_issue.
          CLEAR t193.
          DATA t194 TYPE REF TO zcl_lnt_issue.
          CLEAR t194.
          DATA t195 TYPE REF TO zcl_lnt_issue.
          CLEAR t195.
          DATA(t196) = CAST zcl_lnt_abap_file( t55 ).
          DATA(t197) = CAST zcl_lnt_abstract_token( t53 ).
          DATA(t198) = CONV string( t58 ).
          DATA(t199) = VALUE string( ).
          DATA t200 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t200.
          DATA t201 TYPE string.
          DATA(t202) = CONV string( |preferred_compare_operator| ).
          t201 = t202.
          DATA t203 TYPE string.
          DATA(t204) = CONV string( |Preferred compare operator| ).
          t203 = t204.
          DATA t205 TYPE string.
          DATA(t206) = CONV string( |Configure undesired operator variants| ).
          t205 = t206.
          DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t207.
          DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t208.
          DATA(t209) = CONV abap_bool( abap_true ).
          IF t209 = abap_true.
            DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t212.
            t211 = t212.
            DATA(t213) = CAST zlnt_runtime_arra_8ecd6afe19e0( t211 ).
            DATA(t214) = CONV string( |SingleFile| ).
            t213->load( ).
            APPEND t214 TO t213->items.
            t213->save( ).
            DATA(t215) = CAST zlnt_runtime_arra_8ecd6afe19e0( t211 ).
            DATA(t216) = CONV string( |Quickfix| ).
            t215->load( ).
            APPEND t216 TO t215->items.
            t215->save( ).
            DATA(t217) = CAST zlnt_runtime_arra_8ecd6afe19e0( t211 ).
            t210 = t217.
            t208 = t210.
          ELSE.
            DATA t218 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t218.
            t208 = t218.
          ENDIF.
          t207 = t208.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t219.
          DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t220.
          DATA(t221) = CONV abap_bool( abap_true ).
          IF t221 = abap_true.
            DATA(t222) = CONV string( |IF foo EQ bar.\nENDIF.| ).
            DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t223->has = abap_true.
            t223->value = t222.
            t220 = t223.
          ELSE.
            DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t224.
            t220 = t224.
          ENDIF.
          t219 = t220.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t225.
          DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t226.
          DATA(t227) = CONV abap_bool( abap_true ).
          IF t227 = abap_true.
            DATA(t228) = CONV string( |IF foo = bar.\nENDIF.| ).
            DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t229->has = abap_true.
            t229->value = t228.
            t226 = t229.
          ELSE.
            DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t230.
            t226 = t230.
          ENDIF.
          t225 = t226.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t232.
          t231 = t232.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          t233 = t234.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t236.
          t235 = t236.
          t200 = NEW zcl_lnt_irule_metadata( i_key = t201 i_title = t203 i_short_description = t205 i_bad_example = t219 i_good_example = t225 i_extended_information = t231 i_tags = t207 i_pragma = t233 i_pseudo_comment = t235 ).
          CREATE OBJECT t200->zlnt_view_ownkeys_b0e8086400eb.
          t200->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t237 ).
          ENDIF.
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t238.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t238 ).
          ENDIF.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t239.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t239 ).
          ENDIF.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t240.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t240 ).
          ENDIF.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t241 ).
          ENDIF.
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t242.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t242 ).
          ENDIF.
          CREATE OBJECT t200->zlnt_json_ownkeys_70e5fd461788.
          t200->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t243) = CONV string( |key| ).
          DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t244.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
          ENDIF.
          DATA(t245) = CONV string( |title| ).
          DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t246.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
          ENDIF.
          DATA(t247) = CONV string( |shortDescription| ).
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
          ENDIF.
          DATA(t249) = CONV string( |tags| ).
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t249 p1 = t250 ).
          ENDIF.
          DATA(t251) = CONV string( |badExample| ).
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
          ENDIF.
          DATA(t253) = CONV string( |goodExample| ).
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
          ENDIF.
          t199 = t200->key.
          DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t256) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->conf ).
          t255 = t256->zlnt_view_read_sr_15c06369f827( ).
          DATA t257 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t257.
          t195 = zcl_lnt_issue=>at_token( i_file = t196 i_token = t197 i_message_26cb = t198 i_key = t199 i_severity = t255 i_fix = t257 ).
          t194 = t195.
          DATA(t258) = CAST zcl_lnt_issue( t194 ).
          t193 = t258.
          t88 = t193.
        ENDIF.
        t57 = t88.
        t52 = t57.
        t51->load( ).
        APPEND t52 TO t51->items.
        t51->save( ).
      ENDIF.
    ENDDO.
    DATA(t259) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t259.
    RETURN.
  ENDMETHOD.
  METHOD build_mapping.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE i.
    DATA(t3) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
    t2 = t3->size(  ).
    DATA(t4) = CONV i( 0 ).
    t1 = xsdbool( t2 = t4 ).
    IF t1 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t6) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t7) = CONV string( |EQ| ).
      DATA(t8) = CONV string( |=| ).
      t5 = t6->set( p0 = t7 p1 = t8 ).
      DATA t9 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t10) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t11) = CONV string( |><| ).
      DATA(t12) = CONV string( |<>| ).
      t9 = t10->set( p0 = t11 p1 = t12 ).
      DATA t13 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t14) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t15) = CONV string( |NE| ).
      DATA(t16) = CONV string( |<>| ).
      t13 = t14->set( p0 = t15 p1 = t16 ).
      DATA t17 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t18) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t19) = CONV string( |GE| ).
      DATA(t20) = CONV string( |>=| ).
      t17 = t18->set( p0 = t19 p1 = t20 ).
      DATA t21 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t22) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t23) = CONV string( |GT| ).
      DATA(t24) = CONV string( |>| ).
      t21 = t22->set( p0 = t23 p1 = t24 ).
      DATA t25 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t26) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t27) = CONV string( |LT| ).
      DATA(t28) = CONV string( |<| ).
      t25 = t26->set( p0 = t27 p1 = t28 ).
      DATA t29 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t30) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t31) = CONV string( |LE| ).
      DATA(t32) = CONV string( |<=| ).
      t29 = t30->set( p0 = t31 p1 = t32 ).
      DATA t33 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t34) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t35) = CONV string( |=| ).
      DATA(t36) = CONV string( |EQ| ).
      t33 = t34->set( p0 = t35 p1 = t36 ).
      DATA t37 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t38) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t39) = CONV string( |<>| ).
      DATA(t40) = CONV string( |NE| ).
      t37 = t38->set( p0 = t39 p1 = t40 ).
      DATA t41 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t42) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t43) = CONV string( |>=| ).
      DATA(t44) = CONV string( |GE| ).
      t41 = t42->set( p0 = t43 p1 = t44 ).
      DATA t45 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t46) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t47) = CONV string( |>| ).
      DATA(t48) = CONV string( |GT| ).
      t45 = t46->set( p0 = t47 p1 = t48 ).
      DATA t49 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t50) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t51) = CONV string( |<| ).
      DATA(t52) = CONV string( |LT| ).
      t49 = t50->set( p0 = t51 p1 = t52 ).
      DATA t53 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t54) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
      DATA(t55) = CONV string( |<=| ).
      DATA(t56) = CONV string( |LE| ).
      t53 = t54->set( p0 = t55 p1 = t56 ).
    ENDIF.
  ENDMETHOD.
  METHOD create_issue.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = CAST zcl_lnt_abap_file( i_file ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t8) = CAST zcl_lnt_abstract_token( t1 ).
    t7 = t8.
    DATA t9 TYPE string.
    DATA(t10) = CAST zcl_lnt_abstract_token( t7 ).
    t9 = t10->str.
    t6 = t9.
    t5 = t6.
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA(t13) = CONV string( |Compare operator "| ).
    DATA(t14) = CONV string( t5 ).
    DATA(t15) = CONV i( strlen( t13 ) ).
    t12 = |{ t13 }{ t14 }|.
    DATA(t16) = CONV string( |" not preferred| ).
    DATA(t17) = CONV i( strlen( t12 ) ).
    t11 = |{ t12 }{ t16 }|.
    t4 = t11.
    t3 = t4.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA(t21) = CAST zlnt_runtime_map__a1006b231250( me->operator_mapping ).
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = CAST zlnt_runtime_map__a1006b231250( t20 ).
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t27) = CAST zlnt_runtime_map__a1006b231250( t20 ).
      DATA t28 TYPE string.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t30) = CAST zcl_lnt_abstract_token( t1 ).
      t29 = t30.
      DATA t31 TYPE string.
      DATA(t32) = CAST zcl_lnt_abstract_token( t29 ).
      t31 = t32->str.
      t28 = t31.
      t26 = t27->get( p0 = t28 ).
      t22 = t26.
    ENDIF.
    t19 = t22.
    t18 = t19.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
    IF t34 IS BOUND.
      IF t34->has = abap_true.
        t33 = xsdbool( strlen( t34->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t36 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t37) = CAST zcl_lnt_abap_file( t2 ).
      DATA t38 TYPE REF TO zcl_lnt_position.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t40) = CAST zcl_lnt_abstract_token( t1 ).
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_position.
      DATA(t42) = CAST zcl_lnt_abstract_token( t39 ).
      t41 = t42->start.
      t38 = t41.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = CAST zcl_lnt_abstract_token( t1 ).
      t44 = t45.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA t47 TYPE f.
      DATA t48 TYPE REF TO zcl_lnt_position.
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA(t50) = CAST zcl_lnt_abstract_token( t44 ).
      t49 = t50->start.
      t48 = t49.
      DATA t51 TYPE f.
      DATA(t52) = CAST zcl_lnt_position( t48 ).
      t51 = t52->row.
      t47 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t54 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t55 TYPE REF TO zcl_lnt_position.
      DATA t56 TYPE REF TO zcl_lnt_position.
      DATA(t57) = CAST zcl_lnt_abstract_token( t44 ).
      t56 = t57->start.
      t55 = t56.
      DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t59) = CAST zcl_lnt_position( t55 ).
      t58 = t59->col.
      t54 = t58.
      DATA t60 TYPE f.
      DATA t61 TYPE i.
      DATA t62 TYPE string.
      DATA(t63) = CAST zcl_lnt_abstract_token( t44 ).
      t62 = t63->str.
      DATA(t64) = CONV i( strlen( t62 ) ).
      t61 = t64.
      t60 = t61.
      DATA(t65) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t65->has = abap_true.
      t65->value = t60.
      t53 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t54 right = t65 op = `+` ).
      t46 = NEW zcl_lnt_position( i_row = t47 i_col = t53 ).
      t43 = t46.
      DATA t66 TYPE string.
      DATA(t67) = CAST zlnt_runtime_opti_4ba3bdccd169( t18 ).
      t66 = t67->value.
      t36 = zcl_lnt_edit_helper=>replace_range( i_file = t37 i_start = t38 i_end = t43 i_text = t66 ).
      t35 = t36.
      DATA t68 TYPE REF TO zcl_lnt_issue.
      CLEAR t68.
      DATA t69 TYPE REF TO zcl_lnt_issue.
      CLEAR t69.
      DATA(t70) = CAST zcl_lnt_abap_file( t2 ).
      DATA(t71) = CAST zcl_lnt_abstract_token( t1 ).
      DATA(t72) = CONV string( t3 ).
      DATA(t73) = VALUE string( ).
      DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t74.
      DATA t75 TYPE string.
      DATA(t76) = CONV string( |preferred_compare_operator| ).
      t75 = t76.
      DATA t77 TYPE string.
      DATA(t78) = CONV string( |Preferred compare operator| ).
      t77 = t78.
      DATA t79 TYPE string.
      DATA(t80) = CONV string( |Configure undesired operator variants| ).
      t79 = t80.
      DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t82.
      DATA(t83) = CONV abap_bool( abap_true ).
      IF t83 = abap_true.
        DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t86.
        t85 = t86.
        DATA(t87) = CAST zlnt_runtime_arra_8ecd6afe19e0( t85 ).
        DATA(t88) = CONV string( |SingleFile| ).
        t87->load( ).
        APPEND t88 TO t87->items.
        t87->save( ).
        DATA(t89) = CAST zlnt_runtime_arra_8ecd6afe19e0( t85 ).
        DATA(t90) = CONV string( |Quickfix| ).
        t89->load( ).
        APPEND t90 TO t89->items.
        t89->save( ).
        DATA(t91) = CAST zlnt_runtime_arra_8ecd6afe19e0( t85 ).
        t84 = t91.
        t82 = t84.
      ELSE.
        DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t92.
        t82 = t92.
      ENDIF.
      t81 = t82.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = CONV abap_bool( abap_true ).
      IF t95 = abap_true.
        DATA(t96) = CONV string( |IF foo EQ bar.\nENDIF.| ).
        DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t97->has = abap_true.
        t97->value = t96.
        t94 = t97.
      ELSE.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t94 = t98.
      ENDIF.
      t93 = t94.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA(t101) = CONV abap_bool( abap_true ).
      IF t101 = abap_true.
        DATA(t102) = CONV string( |IF foo = bar.\nENDIF.| ).
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t102.
        t100 = t103.
      ELSE.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t100 = t104.
      ENDIF.
      t99 = t100.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      t105 = t106.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t108.
      t107 = t108.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t110.
      t109 = t110.
      t74 = NEW zcl_lnt_irule_metadata( i_key = t75 i_title = t77 i_short_description = t79 i_bad_example = t93 i_good_example = t99 i_extended_information = t105 i_tags = t81 i_pragma = t107 i_pseudo_comment = t109 ).
      CREATE OBJECT t74->zlnt_view_ownkeys_b0e8086400eb.
      t74->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t111 ).
      ENDIF.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t112 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t113 ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t114 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t115 ).
      ENDIF.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t116 ).
      ENDIF.
      CREATE OBJECT t74->zlnt_json_ownkeys_70e5fd461788.
      t74->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t117) = CONV string( |key| ).
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
      ENDIF.
      DATA(t119) = CONV string( |title| ).
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
      ENDIF.
      DATA(t121) = CONV string( |shortDescription| ).
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
      ENDIF.
      DATA(t123) = CONV string( |tags| ).
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
      ENDIF.
      DATA(t125) = CONV string( |badExample| ).
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
      ENDIF.
      DATA(t127) = CONV string( |goodExample| ).
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
      ENDIF.
      t73 = t74->key.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t130) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->conf ).
      t129 = t130->zlnt_view_read_sr_15c06369f827( ).
      DATA t131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t131.
      DATA(t132) = CONV abap_bool( abap_true ).
      IF t132 = abap_true.
        DATA(t133) = CAST zlnt_runtime_map__4fdf767b61ba( t35 ).
        t131 = t133.
      ELSE.
        DATA t134 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t134.
        t131 = t134.
      ENDIF.
      t69 = zcl_lnt_issue=>at_token( i_file = t70 i_token = t71 i_message_26cb = t72 i_key = t73 i_severity = t129 i_fix = t131 ).
      t68 = t69.
      DATA(t135) = CAST zcl_lnt_issue( t68 ).
      result = t135.
      RETURN.
    ELSE.
      DATA t136 TYPE REF TO zcl_lnt_issue.
      CLEAR t136.
      DATA t137 TYPE REF TO zcl_lnt_issue.
      CLEAR t137.
      DATA(t138) = CAST zcl_lnt_abap_file( t2 ).
      DATA(t139) = CAST zcl_lnt_abstract_token( t1 ).
      DATA(t140) = CONV string( t3 ).
      DATA(t141) = VALUE string( ).
      DATA t142 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t142.
      DATA t143 TYPE string.
      DATA(t144) = CONV string( |preferred_compare_operator| ).
      t143 = t144.
      DATA t145 TYPE string.
      DATA(t146) = CONV string( |Preferred compare operator| ).
      t145 = t146.
      DATA t147 TYPE string.
      DATA(t148) = CONV string( |Configure undesired operator variants| ).
      t147 = t148.
      DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t149.
      DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t150.
      DATA(t151) = CONV abap_bool( abap_true ).
      IF t151 = abap_true.
        DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t154.
        t153 = t154.
        DATA(t155) = CAST zlnt_runtime_arra_8ecd6afe19e0( t153 ).
        DATA(t156) = CONV string( |SingleFile| ).
        t155->load( ).
        APPEND t156 TO t155->items.
        t155->save( ).
        DATA(t157) = CAST zlnt_runtime_arra_8ecd6afe19e0( t153 ).
        DATA(t158) = CONV string( |Quickfix| ).
        t157->load( ).
        APPEND t158 TO t157->items.
        t157->save( ).
        DATA(t159) = CAST zlnt_runtime_arra_8ecd6afe19e0( t153 ).
        t152 = t159.
        t150 = t152.
      ELSE.
        DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t160.
        t150 = t160.
      ENDIF.
      t149 = t150.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t161.
      DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t162.
      DATA(t163) = CONV abap_bool( abap_true ).
      IF t163 = abap_true.
        DATA(t164) = CONV string( |IF foo EQ bar.\nENDIF.| ).
        DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t165->has = abap_true.
        t165->value = t164.
        t162 = t165.
      ELSE.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t166.
        t162 = t166.
      ENDIF.
      t161 = t162.
      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t167.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t168.
      DATA(t169) = CONV abap_bool( abap_true ).
      IF t169 = abap_true.
        DATA(t170) = CONV string( |IF foo = bar.\nENDIF.| ).
        DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t171->has = abap_true.
        t171->value = t170.
        t168 = t171.
      ELSE.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        t168 = t172.
      ENDIF.
      t167 = t168.
      DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      t173 = t174.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t176.
      t175 = t176.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t178.
      t177 = t178.
      t142 = NEW zcl_lnt_irule_metadata( i_key = t143 i_title = t145 i_short_description = t147 i_bad_example = t161 i_good_example = t167 i_extended_information = t173 i_tags = t149 i_pragma = t175 i_pseudo_comment = t177 ).
      CREATE OBJECT t142->zlnt_view_ownkeys_b0e8086400eb.
      t142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t179 ).
      ENDIF.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t180.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t180 ).
      ENDIF.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t181 ).
      ENDIF.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t182 ).
      ENDIF.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t183.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t183 ).
      ENDIF.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t184 ).
      ENDIF.
      CREATE OBJECT t142->zlnt_json_ownkeys_70e5fd461788.
      t142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t185) = CONV string( |key| ).
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      ENDIF.
      DATA(t187) = CONV string( |title| ).
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
      ENDIF.
      DATA(t189) = CONV string( |shortDescription| ).
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t190.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
      ENDIF.
      DATA(t191) = CONV string( |tags| ).
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
      ENDIF.
      DATA(t193) = CONV string( |badExample| ).
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
      ENDIF.
      DATA(t195) = CONV string( |goodExample| ).
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t196.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
      ENDIF.
      t141 = t142->key.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t198) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->conf ).
      t197 = t198->zlnt_view_read_sr_15c06369f827( ).
      DATA t199 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t199.
      t137 = zcl_lnt_issue=>at_token( i_file = t138 i_token = t139 i_message_26cb = t140 i_key = t141 i_severity = t197 i_fix = t199 ).
      t136 = t137.
      DATA(t200) = CAST zcl_lnt_issue( t136 ).
      result = t200.
      RETURN.
    ENDIF.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->g_c_i_s_r_pr_cm_op_ts_pr_cm_op(  ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->g_c_i_s_r_pr_cm_op_ts_pr_cm_op(  ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfrrd_cmpr_oprtr_cnf.
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
        t1 = NEW zcl_lnt_prfrrd_cmpr_oprtr_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_pr_cm_op_ts_pr_cm_op( i_conf = t1 ).
    RETURN.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_cm_op_ts_pr_cm_op( i_file = i_file ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1670_490191ba2a52.
  ENDMETHOD.
ENDCLASS.
