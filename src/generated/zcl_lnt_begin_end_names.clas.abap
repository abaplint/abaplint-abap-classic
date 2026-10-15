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
    DATA(t1) = NEW zcl_lnt_begin_end_names_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |begin_end_names|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check BEGIN END names|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Check BEGIN OF and END OF names match, plus there must be st|.
    t7 = t7 && |atements between BEGIN and END|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Syntax|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |Quickfix|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      DATA(t19) = |SingleFile|.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA(t20) = t12.
      t11 = t20.
      t9 = t11.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t8 = t9.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
      t25 = t25 && |cture_not_the_same.|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    t22 = t23.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
      t31 = t31 && |.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_bg_en_nm_ts_bg_en_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_bg_en_nm_ts_bg_en_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_bg_en_nm_ts_bg_en_nm.
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
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE abap_bool.
    DATA(t21) = abap_false.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_abap_file.
    DATA(t24) = t1.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t23.
    t25 = t26->statements.
    t22 = t25.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
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
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE REF TO zif_lnt_statement.
      DATA(t34) = t27.
      t33 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_unknown ).
      IF t32 = abap_true.
        DATA(t35) = abap_true.
        t20 = t35.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t36) = t20.
    t19 = t36.
    t18 = t19.
    DATA t37 TYPE abap_bool.
    DATA(t38) = t18.
    DATA(t39) = abap_true.
    t37 = xsdbool( t38 = t39 ).
    IF t37 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t40.
      result = t40.
      RETURN.
    ENDIF.
    DATA(t41) = VALUE i( ).
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_structure_node.
    DATA(t44) = t4.
    t43 = t44.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
    DATA(t47) = zlnt_runtime_desc_78196487750d=>zlnt_member_d439_2cfe7cbf2e16.
    DATA(t48) = t1.
    t42 = me->test( i_stru = t43 i_type_9913 = t45 i_b = t46 i_e = t47 i_file = t48 ).
    DATA t49 TYPE REF TO zcl_lnt_issue.
    CLEAR t49.
    DATA t50 TYPE REF TO object.
    CLEAR t50.
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
      DATA(t54) = t2.
      DATA(t55) = t49.
      t54->load( ).
      APPEND t55 TO t54->items.
      t54->save( ).
    ENDDO.
    DATA t56 TYPE i.
    DATA(t57) = t2.
    t57->load( ).
    t56 = lines( t57->items ).
    t41 = t56.
    DATA(t58) = VALUE i( ).
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zcl_lnt_structure_node.
    DATA(t61) = t4.
    t60 = t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d715_d402bffdf300.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d408_ad3db4ea5b7e.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d409_df8201533dcd.
    DATA(t65) = t1.
    t59 = me->test( i_stru = t60 i_type_9913 = t62 i_b = t63 i_e = t64 i_file = t65 ).
    DATA t66 TYPE REF TO zcl_lnt_issue.
    CLEAR t66.
    DATA t67 TYPE REF TO object.
    CLEAR t67.
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
      DATA(t71) = t2.
      DATA(t72) = t66.
      t71->load( ).
      APPEND t72 TO t71->items.
      t71->save( ).
    ENDDO.
    DATA t73 TYPE i.
    DATA(t74) = t2.
    t74->load( ).
    t73 = lines( t74->items ).
    t58 = t73.
    DATA(t75) = VALUE i( ).
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zcl_lnt_structure_node.
    DATA(t78) = t4.
    t77 = t78.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d723_8da98a28a8d6.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d427_175d0fe40287.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d428_511c28b0360e.
    DATA(t82) = t1.
    t76 = me->test( i_stru = t77 i_type_9913 = t79 i_b = t80 i_e = t81 i_file = t82 ).
    DATA t83 TYPE REF TO zcl_lnt_issue.
    CLEAR t83.
    DATA t84 TYPE REF TO object.
    CLEAR t84.
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
      DATA(t88) = t2.
      DATA(t89) = t83.
      t88->load( ).
      APPEND t89 TO t88->items.
      t88->save( ).
    ENDDO.
    DATA t90 TYPE i.
    DATA(t91) = t2.
    t91->load( ).
    t90 = lines( t91->items ).
    t75 = t90.
    DATA(t92) = VALUE i( ).
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t94 TYPE REF TO zcl_lnt_structure_node.
    DATA(t95) = t4.
    t94 = t95.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d750_2d45c5b37c94.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d642_c7115fecf92d.
    DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d643_a36f62e83969.
    DATA(t99) = t1.
    t93 = me->test( i_stru = t94 i_type_9913 = t96 i_b = t97 i_e = t98 i_file = t99 ).
    DATA t100 TYPE REF TO zcl_lnt_issue.
    CLEAR t100.
    DATA t101 TYPE REF TO object.
    CLEAR t101.
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
      DATA(t105) = t2.
      DATA(t106) = t100.
      t105->load( ).
      APPEND t106 TO t105->items.
      t105->save( ).
    ENDDO.
    DATA t107 TYPE i.
    DATA(t108) = t2.
    t108->load( ).
    t107 = lines( t108->items ).
    t92 = t107.
    DATA(t109) = VALUE i( ).
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zcl_lnt_structure_node.
    DATA(t112) = t4.
    t111 = t112.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d752_e072d0e4db32.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d666_0f34aaf902de.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d667_b42297f33700.
    DATA(t116) = t1.
    t110 = me->test( i_stru = t111 i_type_9913 = t113 i_b = t114 i_e = t115 i_file = t116 ).
    DATA t117 TYPE REF TO zcl_lnt_issue.
    CLEAR t117.
    DATA t118 TYPE REF TO object.
    CLEAR t118.
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
      DATA(t122) = t2.
      DATA(t123) = t117.
      t122->load( ).
      APPEND t123 TO t122->items.
      t122->save( ).
    ENDDO.
    DATA t124 TYPE i.
    DATA(t125) = t2.
    t125->load( ).
    t124 = lines( t125->items ).
    t109 = t124.
    DATA(t126) = VALUE i( ).
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t128 TYPE REF TO zcl_lnt_structure_node.
    DATA(t129) = t4.
    t128 = t129.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d663_aa8d5c614796.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d664_3faf50bb1fe5.
    DATA(t133) = t1.
    t127 = me->test( i_stru = t128 i_type_9913 = t130 i_b = t131 i_e = t132 i_file = t133 ).
    DATA t134 TYPE REF TO zcl_lnt_issue.
    CLEAR t134.
    DATA t135 TYPE REF TO object.
    CLEAR t135.
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
      DATA(t139) = t2.
      DATA(t140) = t134.
      t139->load( ).
      APPEND t140 TO t139->items.
      t139->save( ).
    ENDDO.
    DATA t141 TYPE i.
    DATA(t142) = t2.
    t142->load( ).
    t141 = lines( t142->items ).
    t126 = t141.
    DATA(t143) = t2.
    result = t143.

  ENDMETHOD.

  METHOD test.
    DATA(t1) = i_stru.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_b.
    DATA(t4) = i_e.
    DATA(t5) = i_file.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t1.
    DATA(t10) = t2.
    t8 = t9->find_all_structures_recursive( i_type_9913 = t10 ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
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
      DATA t17 TYPE REF TO zcl_lnt_statement_node.
      DATA(t18) = t11.
      DATA(t19) = t3.
      t17 = t18->find_direct_statement( i_type_9913 = t19 ).
      t16 = t17.
      DATA t20 TYPE REF TO zcl_lnt_statement_node.
      DATA t21 TYPE REF TO zcl_lnt_statement_node.
      DATA(t22) = t11.
      DATA(t23) = t4.
      t21 = t22->find_direct_statement( i_type_9913 = t23 ).
      t20 = t21.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zcl_lnt_statement_node.
      DATA(t27) = t16.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      t28 = t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t26.
      IF t31 IS INITIAL.
        t30 = abap_true.
      ENDIF.
      t25 = t30.
      t24 = t25.
      IF t25 = abap_false.
        DATA(t32) = VALUE abap_bool( ).
        DATA t33 TYPE REF TO zcl_lnt_statement_node.
        DATA(t34) = t20.
        t33 = t34.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        t35 = t36.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = t33.
        IF t38 IS INITIAL.
          t37 = abap_true.
        ENDIF.
        t32 = t37.
        t24 = t32.
      ENDIF.
      IF t24 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA t40 TYPE REF TO zcl_lnt_expression_node.
      DATA t41 TYPE REF TO zcl_lnt_statement_node.
      DATA(t42) = t16.
      t41 = t42.
      DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t40 = t41->find_first_expression( i_type_9913 = t43 ).
      t39 = t40.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      DATA(t46) = t39.
      t45 = t46.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      t47 = t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t45.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      t44 = t49.
      IF t44 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA t52 TYPE REF TO zcl_lnt_statement_node.
        DATA(t53) = t16.
        t52 = t53.
        DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
        t51 = t52->find_first_expression( i_type_9913 = t54 ).
        t39 = t51.
      ENDIF.
      DATA(t55) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = t39.
      t56 = t57.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      t58 = t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = t56.
      IF t61 IS INITIAL.
        t60 = abap_true.
      ENDIF.
      t55 = t60.
      IF t55 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      DATA t63 TYPE REF TO zcl_lnt_abstract_token.
      DATA t64 TYPE REF TO zcl_lnt_expression_node.
      DATA(t65) = t39.
      t64 = t65.
      t63 = t64->get_first_token( ).
      t62 = t63.
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      DATA t67 TYPE REF TO zcl_lnt_expression_node.
      DATA t68 TYPE REF TO zcl_lnt_statement_node.
      DATA(t69) = t20.
      t68 = t69.
      DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t67 = t68->find_first_expression( i_type_9913 = t70 ).
      t66 = t67.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      DATA(t73) = t66.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t74 = t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = t72.
      IF t77 IS INITIAL.
        t76 = abap_true.
      ENDIF.
      t71 = t76.
      IF t71 = abap_true.
        DATA t78 TYPE REF TO zcl_lnt_expression_node.
        DATA t79 TYPE REF TO zcl_lnt_statement_node.
        DATA(t80) = t20.
        t79 = t80.
        DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
        t78 = t79->find_first_expression( i_type_9913 = t81 ).
        t66 = t78.
      ENDIF.
      DATA(t82) = VALUE abap_bool( ).
      DATA t83 TYPE REF TO zcl_lnt_expression_node.
      DATA(t84) = t66.
      t83 = t84.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      t85 = t86.
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = t83.
      IF t88 IS INITIAL.
        t87 = abap_true.
      ENDIF.
      t82 = t87.
      IF t82 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t89 TYPE REF TO zcl_lnt_abstract_token.
      DATA t90 TYPE REF TO zcl_lnt_abstract_token.
      DATA t91 TYPE REF TO zcl_lnt_expression_node.
      DATA(t92) = t66.
      t91 = t92.
      t90 = t91->get_first_token( ).
      t89 = t90.
      DATA(t93) = VALUE abap_bool( ).
      DATA t94 TYPE string.
      DATA t95 TYPE string.
      DATA t96 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t97) = t62.
      t96 = t97.
      DATA t98 TYPE string.
      DATA(t99) = t96.
      t98 = t99->str.
      t95 = t98.
      DATA(t100) = strlen( t95 ).
      t94 = t95.
      IF t94 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t94 TO UPPER CASE.
      ELSE.
        t94 = zlnt_runtime_uppe_91169605024d=>full( t94 ).
      ENDIF.
      DATA t101 TYPE string.
      DATA t102 TYPE string.
      DATA t103 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t104) = t89.
      t103 = t104.
      DATA t105 TYPE string.
      DATA(t106) = t103.
      t105 = t106->str.
      t102 = t105.
      DATA(t107) = strlen( t102 ).
      t101 = t102.
      IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t101 TO UPPER CASE.
      ELSE.
        t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
      ENDIF.
      t93 = xsdbool( t94 <> t101 ).
      IF t93 = abap_true.
        DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t109 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t110) = t5.
        DATA t111 TYPE REF TO zcl_lnt_position.
        DATA t112 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t113) = t89.
        t112 = t113.
        DATA t114 TYPE REF TO zcl_lnt_position.
        DATA(t115) = t112.
        t114 = t115->start.
        t111 = t114.
        DATA t116 TYPE REF TO zcl_lnt_position.
        DATA t117 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t118) = t89.
        t117 = t118.
        DATA t119 TYPE REF TO zcl_lnt_position.
        DATA t120 TYPE f.
        DATA t121 TYPE REF TO zcl_lnt_position.
        DATA t122 TYPE REF TO zcl_lnt_position.
        DATA(t123) = t117.
        t122 = t123->start.
        t121 = t122.
        DATA t124 TYPE f.
        DATA(t125) = t121.
        t124 = t125->row.
        t120 = t124.
        DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t128 TYPE REF TO zcl_lnt_position.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t130) = t117.
        t129 = t130->start.
        t128 = t129.
        DATA t131 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t132) = t128.
        t131 = t132->col.
        t127 = t131.
        DATA t133 TYPE f.
        DATA t134 TYPE i.
        DATA t135 TYPE string.
        DATA(t136) = t117.
        t135 = t136->str.
        DATA(t137) = strlen( t135 ).
        t134 = t137.
        t133 = t134.
        DATA(t138) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t138->has = abap_true.
        t138->value = t133.
        t126 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t127 right = t138 op = `+` ).
        t119 = NEW zcl_lnt_position( i_row = t120 i_col = t126 ).
        t116 = t119.
        DATA t139 TYPE string.
        DATA t140 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t141) = t62.
        t140 = t141.
        DATA t142 TYPE string.
        DATA(t143) = t140.
        t142 = t143->str.
        t139 = t142.
        t109 = zcl_lnt_edit_helper=>replace_range( i_file = t110 i_start = t111 i_end = t116 i_text = t139 ).
        t108 = t109.
        DATA t144 TYPE string.
        DATA(t145) = |BEGIN END names must match|.
        t144 = t145.
        DATA t146 TYPE REF TO zcl_lnt_issue.
        CLEAR t146.
        DATA t147 TYPE REF TO zcl_lnt_issue.
        CLEAR t147.
        DATA(t148) = t5.
        DATA(t149) = t62.
        DATA(t150) = t144.
        DATA(t151) = VALUE string( ).
        DATA t152 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t152.
        DATA t153 TYPE string.
        DATA(t154) = |begin_end_names|.
        t153 = t154.
        DATA t155 TYPE string.
        DATA(t156) = |Check BEGIN END names|.
        t155 = t156.
        DATA t157 TYPE string.
        DATA(t158) = |Check BEGIN OF and END OF names match, plus there must be st|.
        t158 = t158 && |atements between BEGIN and END|.
        t157 = t158.
        DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t159.
        DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t160.
        DATA(t161) = abap_true.
        IF t161 = abap_true.
          DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t164 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t164.
          t163 = t164.
          DATA(t165) = t163.
          DATA(t166) = |Syntax|.
          t165->load( ).
          APPEND t166 TO t165->items.
          t165->save( ).
          DATA(t167) = t163.
          DATA(t168) = |Quickfix|.
          t167->load( ).
          APPEND t168 TO t167->items.
          t167->save( ).
          DATA(t169) = t163.
          DATA(t170) = |SingleFile|.
          t169->load( ).
          APPEND t170 TO t169->items.
          t169->save( ).
          DATA(t171) = t163.
          t162 = t171.
          t160 = t162.
        ELSE.
          DATA t172 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t172.
          t160 = t172.
        ENDIF.
        t159 = t160.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t174.
        DATA(t175) = abap_true.
        IF t175 = abap_true.
          DATA(t176) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
          t176 = t176 && |cture_not_the_same.|.
          DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t177->has = abap_true.
          t177->value = t176.
          t174 = t177.
        ELSE.
          DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t178.
          t174 = t178.
        ENDIF.
        t173 = t174.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t179.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t180.
        DATA(t181) = abap_true.
        IF t181 = abap_true.
          DATA(t182) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
          t182 = t182 && |.|.
          DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t183->has = abap_true.
          t183->value = t182.
          t180 = t183.
        ELSE.
          DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t184.
          t180 = t184.
        ENDIF.
        t179 = t180.
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t186.
        t185 = t186.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t187 = t188.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t189 = t190.
        t152 = NEW zcl_lnt_irule_metadata( i_key = t153 i_title = t155 i_short_description = t157 i_bad_example = t173 i_good_example = t179 i_extended_information = t185 i_tags = t159 i_pragma = t187 i_pseudo_comment = t189 ).
        CREATE OBJECT t152->zlnt_view_ownkeys_b0e8086400eb.
        t152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t191 ).
        ENDIF.
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
        DATA(t197) = |key|.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
        ENDIF.
        DATA(t199) = |title|.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
        ENDIF.
        DATA(t201) = |shortDescription|.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
        ENDIF.
        DATA(t203) = |tags|.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
        ENDIF.
        DATA(t205) = |badExample|.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
        ENDIF.
        DATA(t207) = |goodExample|.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
        ENDIF.
        t151 = t152->key.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t210) = me->conf.
        t209 = t210->zlnt_view_read_sr_15c06369f827( ).
        DATA t211 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t211.
        DATA(t212) = abap_true.
        IF t212 = abap_true.
          DATA(t213) = t108.
          t211 = t213.
        ELSE.
          DATA t214 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t214.
          t211 = t214.
        ENDIF.
        t147 = zcl_lnt_issue=>at_token( i_file = t148 i_token = t149 i_message_26cb = t150 i_key = t151 i_severity = t209 i_fix = t211 ).
        t146 = t147.
        DATA(t215) = t6.
        DATA(t216) = t146.
        t215->load( ).
        APPEND t216 TO t215->items.
        t215->save( ).
      ENDIF.
      DATA t217 TYPE abap_bool.
      DATA t218 TYPE i.
      DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t221 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t222) = t11.
      t221 = t222.
      DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t224) = t221.
      t223 = t224->children.
      t220 = t223.
      t219 ?= t220.
      t219->load( ).
      t218 = lines( t219->items ).
      DATA(t225) = 2.
      t217 = xsdbool( t218 = t225 ).
      IF t217 = abap_true.
        DATA t226 TYPE string.
        DATA(t227) = |There must be statements between BEGIN and END|.
        t226 = t227.
        DATA t228 TYPE REF TO zcl_lnt_issue.
        CLEAR t228.
        DATA t229 TYPE REF TO zcl_lnt_issue.
        CLEAR t229.
        DATA(t230) = t5.
        DATA(t231) = t62.
        DATA(t232) = t226.
        DATA(t233) = VALUE string( ).
        DATA t234 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t234.
        DATA t235 TYPE string.
        DATA(t236) = |begin_end_names|.
        t235 = t236.
        DATA t237 TYPE string.
        DATA(t238) = |Check BEGIN END names|.
        t237 = t238.
        DATA t239 TYPE string.
        DATA(t240) = |Check BEGIN OF and END OF names match, plus there must be st|.
        t240 = t240 && |atements between BEGIN and END|.
        t239 = t240.
        DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t241.
        DATA t242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t242.
        DATA(t243) = abap_true.
        IF t243 = abap_true.
          DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t246 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t246.
          t245 = t246.
          DATA(t247) = t245.
          DATA(t248) = |Syntax|.
          t247->load( ).
          APPEND t248 TO t247->items.
          t247->save( ).
          DATA(t249) = t245.
          DATA(t250) = |Quickfix|.
          t249->load( ).
          APPEND t250 TO t249->items.
          t249->save( ).
          DATA(t251) = t245.
          DATA(t252) = |SingleFile|.
          t251->load( ).
          APPEND t252 TO t251->items.
          t251->save( ).
          DATA(t253) = t245.
          t244 = t253.
          t242 = t244.
        ELSE.
          DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t254.
          t242 = t254.
        ENDIF.
        t241 = t242.
        DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        DATA(t257) = abap_true.
        IF t257 = abap_true.
          DATA(t258) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
          t258 = t258 && |cture_not_the_same.|.
          DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t259->has = abap_true.
          t259->value = t258.
          t256 = t259.
        ELSE.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t260.
          t256 = t260.
        ENDIF.
        t255 = t256.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        DATA(t263) = abap_true.
        IF t263 = abap_true.
          DATA(t264) = |DATA: BEGIN OF stru,\n        field TYPE i,\n      END OF stru|.
          t264 = t264 && |.|.
          DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t265->has = abap_true.
          t265->value = t264.
          t262 = t265.
        ELSE.
          DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t266.
          t262 = t266.
        ENDIF.
        t261 = t262.
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
        t267 = t268.
        DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        t269 = t270.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        t271 = t272.
        t234 = NEW zcl_lnt_irule_metadata( i_key = t235 i_title = t237 i_short_description = t239 i_bad_example = t255 i_good_example = t261 i_extended_information = t267 i_tags = t241 i_pragma = t269 i_pseudo_comment = t271 ).
        CREATE OBJECT t234->zlnt_view_ownkeys_b0e8086400eb.
        t234->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t273 ).
        ENDIF.
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
        DATA(t279) = |key|.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t279 p1 = t280 ).
        ENDIF.
        DATA(t281) = |title|.
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
        ENDIF.
        DATA(t283) = |shortDescription|.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
        ENDIF.
        DATA(t285) = |tags|.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
        ENDIF.
        DATA(t287) = |badExample|.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
        ENDIF.
        DATA(t289) = |goodExample|.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
        ENDIF.
        t233 = t234->key.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t292) = me->conf.
        t291 = t292->zlnt_view_read_sr_15c06369f827( ).
        DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t293.
        t229 = zcl_lnt_issue=>at_token( i_file = t230 i_token = t231 i_message_26cb = t232 i_key = t233 i_severity = t291 i_fix = t293 ).
        t228 = t229.
        DATA(t294) = t6.
        DATA(t295) = t228.
        t294->load( ).
        APPEND t295 TO t294->items.
        t294->save( ).
      ENDIF.
    ENDDO.
    DATA(t296) = t6.
    result = t296.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_begin_end_names_conf( me->g_c_i_s_r_bg_en_nm_ts_bg_en_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_begin_end_names_conf( me->g_c_i_s_r_bg_en_nm_ts_bg_en_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_begin_end_names_conf.
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
        t1 = NEW zcl_lnt_begin_end_names_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_bg_en_nm_ts_bg_en_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_bg_en_nm_ts_bg_en_nm( i_file = i_file ) ).
    result = t1.

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
