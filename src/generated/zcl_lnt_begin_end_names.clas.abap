* TS: src/rules/begin_end_names.ts:17:1 BeginEndNames
CLASS zcl_lnt_begin_end_names DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_begin_end_names_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_bg_en_nm_ts_bg_en_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_begin_end_names_conf.
    METHODS s_c_i_s_r_bg_en_nm_ts_bg_en_nm IMPORTING i_conf TYPE REF TO zcl_lnt_begin_end_names_conf.
    METHODS r_p_i_s_r_bg_en_nm_ts_bg_en_nm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS test IMPORTING i_stru TYPE REF TO zcl_lnt_structure_node i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 i_b TYPE REF TO zlnt_runtime_clas_a39833db3295 i_e TYPE REF TO zlnt_runtime_clas_a39833db3295 i_file TYPE REF TO
    zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_begin_end_names IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_begin_end_names_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Check BEGIN OF and END OF names match, plus there must be st|.
    t7 = t7 && |atements between BEGIN and END|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Syntax| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Quickfix| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
    t25 = t25 && |cture_not_the_same.|.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t25.
    t22 = t26.
    DATA(t31) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
    t31 = t31 && |.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |begin_end_names| i_title = |Check BEGIN END names| i_short_description = t6 i_bad_example = t22 i_good_example = t32 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t55 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_bg_en_nm_ts_bg_en_nm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_bg_en_nm_ts_bg_en_nm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_bg_en_nm_ts_bg_en_nm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t20 TYPE abap_bool.
    t20 = abap_false.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t22 = t1->statements.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    DATA t28 TYPE REF TO object.
    DATA(t29) = VALUE i( ).
    DO.
      t22->load( ).
      IF t29 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t22->items INDEX t29 + 1 INTO t28.
      t29 = t29 + 1.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      CLEAR t27.
      IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t30 ?= t28.
        DATA t31 TYPE REF TO object.
        t31 = t30->as_ref( ).
        t27 ?= t31.
      ELSE.
        t27 ?= t28.
      ENDIF.
      DATA t33 TYPE REF TO zif_lnt_statement.
      t33 = t27->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
        t20 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    IF xsdbool( t20 = abap_true ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t41) = VALUE i( ).
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_structure_node.
    t43 = t4.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d439_2cfe7cbf2e16.
    t42 = me->test( i_stru = t43 i_type_9913 = t45 i_b = t46 i_e = t47 i_file = t1 ).
    DATA t49 TYPE REF TO zcl_lnt_issue.
    DATA t50 TYPE REF TO object.
    DATA(t51) = VALUE i( ).
    DO.
      t42->load( ).
      IF t51 >= lines( t42->items ).
        EXIT.
      ENDIF.
      CLEAR t50.
      READ TABLE t42->items INDEX t51 + 1 INTO t50.
      t51 = t51 + 1.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      CLEAR t49.
      IF t50 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t52 ?= t50.
        DATA t53 TYPE REF TO object.
        t53 = t52->as_ref( ).
        t49 ?= t53.
      ELSE.
        t49 ?= t50.
      ENDIF.
      t2->load( ).
      APPEND t49 TO t2->items.
      t2->save( ).
    ENDDO.
    t2->load( ).
    t41 = lines( t2->items ).
    DATA(t58) = VALUE i( ).
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zcl_lnt_structure_node.
    t60 = t4.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d715_d402bffdf300.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d408_ad3db4ea5b7e.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d409_df8201533dcd.
    t59 = me->test( i_stru = t60 i_type_9913 = t62 i_b = t63 i_e = t64 i_file = t1 ).
    DATA t66 TYPE REF TO zcl_lnt_issue.
    DATA t67 TYPE REF TO object.
    DATA(t68) = VALUE i( ).
    DO.
      t59->load( ).
      IF t68 >= lines( t59->items ).
        EXIT.
      ENDIF.
      CLEAR t67.
      READ TABLE t59->items INDEX t68 + 1 INTO t67.
      t68 = t68 + 1.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      CLEAR t66.
      IF t67 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t69 ?= t67.
        DATA t70 TYPE REF TO object.
        t70 = t69->as_ref( ).
        t66 ?= t70.
      ELSE.
        t66 ?= t67.
      ENDIF.
      t2->load( ).
      APPEND t66 TO t2->items.
      t2->save( ).
    ENDDO.
    t2->load( ).
    t58 = lines( t2->items ).
    DATA(t75) = VALUE i( ).
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zcl_lnt_structure_node.
    t77 = t4.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d723_8da98a28a8d6.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d427_175d0fe40287.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d428_511c28b0360e.
    t76 = me->test( i_stru = t77 i_type_9913 = t79 i_b = t80 i_e = t81 i_file = t1 ).
    DATA t83 TYPE REF TO zcl_lnt_issue.
    DATA t84 TYPE REF TO object.
    DATA(t85) = VALUE i( ).
    DO.
      t76->load( ).
      IF t85 >= lines( t76->items ).
        EXIT.
      ENDIF.
      CLEAR t84.
      READ TABLE t76->items INDEX t85 + 1 INTO t84.
      t85 = t85 + 1.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      CLEAR t83.
      IF t84 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t86 ?= t84.
        DATA t87 TYPE REF TO object.
        t87 = t86->as_ref( ).
        t83 ?= t87.
      ELSE.
        t83 ?= t84.
      ENDIF.
      t2->load( ).
      APPEND t83 TO t2->items.
      t2->save( ).
    ENDDO.
    t2->load( ).
    t75 = lines( t2->items ).
    DATA(t92) = VALUE i( ).
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zcl_lnt_structure_node.
    t94 = t4.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d750_2d45c5b37c94.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d642_c7115fecf92d.
    DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d643_a36f62e83969.
    t93 = me->test( i_stru = t94 i_type_9913 = t96 i_b = t97 i_e = t98 i_file = t1 ).
    DATA t100 TYPE REF TO zcl_lnt_issue.
    DATA t101 TYPE REF TO object.
    DATA(t102) = VALUE i( ).
    DO.
      t93->load( ).
      IF t102 >= lines( t93->items ).
        EXIT.
      ENDIF.
      CLEAR t101.
      READ TABLE t93->items INDEX t102 + 1 INTO t101.
      t102 = t102 + 1.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      CLEAR t100.
      IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t103 ?= t101.
        DATA t104 TYPE REF TO object.
        t104 = t103->as_ref( ).
        t100 ?= t104.
      ELSE.
        t100 ?= t101.
      ENDIF.
      t2->load( ).
      APPEND t100 TO t2->items.
      t2->save( ).
    ENDDO.
    t2->load( ).
    t92 = lines( t2->items ).
    DATA(t109) = VALUE i( ).
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zcl_lnt_structure_node.
    t111 = t4.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d752_e072d0e4db32.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d666_0f34aaf902de.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d667_b42297f33700.
    t110 = me->test( i_stru = t111 i_type_9913 = t113 i_b = t114 i_e = t115 i_file = t1 ).
    DATA t117 TYPE REF TO zcl_lnt_issue.
    DATA t118 TYPE REF TO object.
    DATA(t119) = VALUE i( ).
    DO.
      t110->load( ).
      IF t119 >= lines( t110->items ).
        EXIT.
      ENDIF.
      CLEAR t118.
      READ TABLE t110->items INDEX t119 + 1 INTO t118.
      t119 = t119 + 1.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      CLEAR t117.
      IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t120 ?= t118.
        DATA t121 TYPE REF TO object.
        t121 = t120->as_ref( ).
        t117 ?= t121.
      ELSE.
        t117 ?= t118.
      ENDIF.
      t2->load( ).
      APPEND t117 TO t2->items.
      t2->save( ).
    ENDDO.
    t2->load( ).
    t109 = lines( t2->items ).
    DATA(t126) = VALUE i( ).
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t128 TYPE REF TO zcl_lnt_structure_node.
    t128 = t4.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d663_aa8d5c614796.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d664_3faf50bb1fe5.
    t127 = me->test( i_stru = t128 i_type_9913 = t130 i_b = t131 i_e = t132 i_file = t1 ).
    DATA t134 TYPE REF TO zcl_lnt_issue.
    DATA t135 TYPE REF TO object.
    DATA(t136) = VALUE i( ).
    DO.
      t127->load( ).
      IF t136 >= lines( t127->items ).
        EXIT.
      ENDIF.
      CLEAR t135.
      READ TABLE t127->items INDEX t136 + 1 INTO t135.
      t136 = t136 + 1.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      CLEAR t134.
      IF t135 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t137 ?= t135.
        DATA t138 TYPE REF TO object.
        t138 = t137->as_ref( ).
        t134 ?= t138.
      ELSE.
        t134 ?= t135.
      ENDIF.
      t2->load( ).
      APPEND t134 TO t2->items.
      t2->save( ).
    ENDDO.
    t2->load( ).
    t126 = lines( t2->items ).
    result = t2.

  ENDMETHOD.

  METHOD test.
    DATA(t1) = i_stru.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_b.
    DATA(t4) = i_e.
    DATA(t5) = i_file.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t1->find_all_structures_recursive( i_type_9913 = t2 ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t8->load( ).
      IF t13 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t8->items INDEX t13 + 1 INTO t12.
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
      DATA t16 TYPE REF TO zcl_lnt_statement_node.
      t16 = t11->find_direct_statement( i_type_9913 = t3 ).
      DATA t20 TYPE REF TO zcl_lnt_statement_node.
      t20 = t11->find_direct_statement( i_type_9913 = t4 ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      t25 = xsdbool( t16 IS INITIAL ).
      t24 = t25.
      IF t25 = abap_false.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        t24 = xsdbool( t20 IS INITIAL ).
      ENDIF.
      IF t24 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA t41 TYPE REF TO zcl_lnt_statement_node.
      t41 = t16.
      DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t39 = t41->find_first_expression( i_type_9913 = t43 ).
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      IF xsdbool( t39 IS INITIAL ) = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_statement_node.
        t52 = t16.
        DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
        t39 = t52->find_first_expression( i_type_9913 = t54 ).
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      IF xsdbool( t39 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      t62 = t39->get_first_token( ).
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      DATA t68 TYPE REF TO zcl_lnt_statement_node.
      t68 = t20.
      DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t66 = t68->find_first_expression( i_type_9913 = t70 ).
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      IF xsdbool( t66 IS INITIAL ) = abap_true.
        DATA t79 TYPE REF TO zcl_lnt_statement_node.
        t79 = t20.
        DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
        t66 = t79->find_first_expression( i_type_9913 = t81 ).
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF xsdbool( t66 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t89 TYPE REF TO zcl_lnt_abstract_token.
      t89 = t66->get_first_token( ).
      DATA t94 TYPE string.
      DATA t95 TYPE string.
      t95 = t62->str.
      DATA(t100) = strlen( t95 ).
      t94 = t95.
      IF t94 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t94 TO UPPER CASE.
      ELSE.
        t94 = zlnt_runtime_uppe_91169605024d=>full( t94 ).
      ENDIF.
      DATA t101 TYPE string.
      DATA t102 TYPE string.
      t102 = t89->str.
      DATA(t107) = strlen( t102 ).
      t101 = t102.
      IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t101 TO UPPER CASE.
      ELSE.
        t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
      ENDIF.
      IF xsdbool( t94 <> t101 ) = abap_true.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t111 TYPE REF TO zcl_lnt_position.
        t111 = t89->start.
        DATA t116 TYPE REF TO zcl_lnt_position.
        DATA t117 TYPE REF TO zcl_lnt_abstract_token.
        t117 = t89.
        DATA t120 TYPE f.
        t120 = t117->start->row.
        DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t127 = t117->start->col.
        DATA t133 TYPE f.
        t133 = strlen( t117->str ).
        DATA(t138) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t138->has = abap_true.
        t138->value = t133.
        t116 = NEW zcl_lnt_position( i_row = t120 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t127 right = t138 op = `+` ) ).
        DATA t142 TYPE string.
        t142 = t62->str.
        t109 = zcl_lnt_edit_helper=>replace_range( i_file = t5 i_start = t111 i_end = t116 i_text = t142 ).
        DATA t147 TYPE REF TO zcl_lnt_issue.
        CLEAR t147.
        DATA(t151) = VALUE string( ).
        DATA t152 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t157 TYPE string.
        DATA(t158) = |Check BEGIN OF and END OF names match, plus there must be st|.
        t158 = t158 && |atements between BEGIN and END|.
        t157 = t158.
        DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t159.
        DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t163.
        t163->load( ).
        APPEND |Syntax| TO t163->items.
        t163->save( ).
        t163->load( ).
        APPEND |Quickfix| TO t163->items.
        t163->save( ).
        t163->load( ).
        APPEND |SingleFile| TO t163->items.
        t163->save( ).
        t159 = t163.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        DATA(t176) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
        t176 = t176 && |cture_not_the_same.|.
        DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t177->has = abap_true.
        t177->value = t176.
        t173 = t177.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t179.
        DATA(t182) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
        t182 = t182 && |.|.
        DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t183->has = abap_true.
        t183->value = t182.
        t179 = t183.
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t185.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t187.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t152 = NEW zcl_lnt_irule_metadata( i_key = |begin_end_names| i_title = |Check BEGIN END names| i_short_description = t157 i_bad_example = t173 i_good_example = t179 i_extended_information = t185 i_tags = t159 i_pragma = t187 i_pseudo_comment = t189 ).
        CREATE OBJECT t152->zlnt_view_ownkeys_b0e8086400eb.
        t152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t191 ).
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t192 ).
        ENDIF.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t193 ).
        ENDIF.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t194 ).
        ENDIF.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t195 ).
        ENDIF.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t196 ).
        ENDIF.
        CREATE OBJECT t152->zlnt_json_ownkeys_70e5fd461788.
        t152->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t198 ).
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t200 ).
        ENDIF.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t202 ).
        ENDIF.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t204 ).
        ENDIF.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t206 ).
        ENDIF.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t208 ).
        ENDIF.
        t151 = t152->key.
        t147 = zcl_lnt_issue=>at_token( i_file = t5 i_token = t62 i_message_26cb = |BEGIN END names must match| i_key = t151 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t109 ).
        t6->load( ).
        APPEND t147 TO t6->items.
        t6->save( ).
      ENDIF.
      DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t221 TYPE REF TO zcl_lnt_abstract_node.
      t221 = t11.
      t220 = t221->children.
      t219 ?= t220.
      t219->load( ).
      IF xsdbool( lines( t219->items ) = 2 ) = abap_true.
        DATA t229 TYPE REF TO zcl_lnt_issue.
        CLEAR t229.
        DATA(t233) = VALUE string( ).
        DATA t234 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t239 TYPE string.
        DATA(t240) = |Check BEGIN OF and END OF names match, plus there must be st|.
        t240 = t240 && |atements between BEGIN and END|.
        t239 = t240.
        DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t241.
        DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t245.
        t245->load( ).
        APPEND |Syntax| TO t245->items.
        t245->save( ).
        t245->load( ).
        APPEND |Quickfix| TO t245->items.
        t245->save( ).
        t245->load( ).
        APPEND |SingleFile| TO t245->items.
        t245->save( ).
        t241 = t245.
        DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t255.
        DATA(t258) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
        t258 = t258 && |cture_not_the_same.|.
        DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t259->has = abap_true.
        t259->value = t258.
        t255 = t259.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        DATA(t264) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
        t264 = t264 && |.|.
        DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t265->has = abap_true.
        t265->value = t264.
        t261 = t265.
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t267.
        DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t269.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        t234 = NEW zcl_lnt_irule_metadata( i_key = |begin_end_names| i_title = |Check BEGIN END names| i_short_description = t239 i_bad_example = t255 i_good_example = t261 i_extended_information = t267 i_tags = t241 i_pragma = t269 i_pseudo_comment = t271 ).
        CREATE OBJECT t234->zlnt_view_ownkeys_b0e8086400eb.
        t234->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t273 ).
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t274.
        IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t274 ).
        ENDIF.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t275 ).
        ENDIF.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t276 ).
        ENDIF.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t277 ).
        ENDIF.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t278 ).
        ENDIF.
        CREATE OBJECT t234->zlnt_json_ownkeys_70e5fd461788.
        t234->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t280 ).
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t282 ).
        ENDIF.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t284 ).
        ENDIF.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t286 ).
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t288 ).
        ENDIF.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t290 ).
        ENDIF.
        t233 = t234->key.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t291 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t293.
        t229 = zcl_lnt_issue=>at_token( i_file = t5 i_token = t62 i_message_26cb = |There must be statements between BEGIN and END| i_key = t233 i_severity = t291 i_fix = t293 ).
        t6->load( ).
        APPEND t229 TO t6->items.
        t6->save( ).
      ENDIF.
    ENDDO.
    result = t6.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_begin_end_names_conf( me->g_c_i_s_r_bg_en_nm_ts_bg_en_nm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_begin_end_names_conf( me->g_c_i_s_r_bg_en_nm_ts_bg_en_nm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_begin_end_names_conf.
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
        t1 = NEW zcl_lnt_begin_end_names_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_bg_en_nm_ts_bg_en_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_bg_en_nm_ts_bg_en_nm( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1408_b50f88496162.
  ENDMETHOD.
ENDCLASS.
