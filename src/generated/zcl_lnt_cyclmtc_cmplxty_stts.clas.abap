* TS: src/utils/cyclomatic_complexity_stats.ts:18:1 CyclomaticComplexityStats
CLASS zcl_lnt_cyclmtc_cmplxty_stts DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cyclmtc_cmplxty_stts IMPLEMENTATION.
  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_abap_object ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zcl_lnt_abap_object.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    DATA(t11) = t1.
    DATA t12 TYPE REF TO object.
    t12 = t11.
    t10 ?= t12.
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t9.
    t13 = t14->parsed.
    t8 = t13.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    DATA(t17) = VALUE i( ).
    DO.
      t8->load( ).
      IF t17 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t8->items INDEX t17 + 1 INTO t16.
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
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_structure_node.
      DATA t24 TYPE REF TO zcl_lnt_structure_node.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA(t26) = t15.
      t25 = t26.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      DATA(t28) = t25.
      t27 = t28->structure.
      t24 = t27.
      t23 = t24.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t23.
      IF t31 IS INITIAL.
        t30 = abap_true.
      ENDIF.
      IF t30 = abap_true.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t32.
        t29 = t32.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zcl_lnt_structure_node.
        DATA(t35) = t23.
        t34 = t35.
        DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
        t33 = t34->find_all_structures( i_type_9913 = t36 ).
        t29 = t33.
      ENDIF.
      t22 = t29.
      t21 = t22.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      DATA t38 TYPE abap_bool.
      DATA(t39) = t21.
      t38 = xsdbool( t39 IS BOUND ).
      IF t38 = abap_true.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t41) = t21.
        t40 = t41.
        t37 = t40.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t42.
        t37 = t42.
      ENDIF.
      t20 = t37.
      DATA t43 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      DATA(t45) = VALUE i( ).
      DO.
        t20->load( ).
        IF t45 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t44.
        READ TABLE t20->items INDEX t45 + 1 INTO t44.
        t45 = t45 + 1.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t44.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t44.
        ENDIF.
        DATA t48 TYPE f.
        DATA(t49) = CONV f( 0 ).
        t48 = t49.
        DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t51) = t43.
        t50 = t51->find_all_statement_nodes( ).
        DATA t52 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t52.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        DATA(t54) = VALUE i( ).
        DO.
          t50->load( ).
          IF t54 >= lines( t50->items ).
            EXIT.
          ENDIF.
          CLEAR t53.
          READ TABLE t50->items INDEX t54 + 1 INTO t53.
          t54 = t54 + 1.
          DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t55.
          CLEAR t52.
          IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t55 ?= t53.
            DATA t56 TYPE REF TO object.
            t56 = t55->as_ref( ).
            t52 ?= t56.
          ELSE.
            t52 ?= t53.
          ENDIF.
          DATA t57 TYPE REF TO zif_lnt_statement.
          DATA t58 TYPE REF TO zif_lnt_statement.
          DATA(t59) = t52.
          t58 = t59->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t57 = t58.
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA t69 TYPE abap_bool.
          DATA t70 TYPE abap_bool.
          DATA(t71) = t57.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_st_assert ).
          t69 = t70.
          IF t70 = abap_false.
            DATA t72 TYPE abap_bool.
            DATA(t73) = t57.
            t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_st_check ).
            t69 = t72.
          ENDIF.
          t68 = t69.
          IF t69 = abap_false.
            DATA t74 TYPE abap_bool.
            DATA(t75) = t57.
            t74 = xsdbool( t75 IS BOUND AND t75 IS INSTANCE OF zcl_lnt_st_else_if ).
            t68 = t74.
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            DATA t76 TYPE abap_bool.
            DATA(t77) = t57.
            t76 = xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_st_if ).
            t67 = t76.
          ENDIF.
          t66 = t67.
          IF t67 = abap_false.
            DATA t78 TYPE abap_bool.
            DATA(t79) = t57.
            t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_st_while ).
            t66 = t78.
          ENDIF.
          t65 = t66.
          IF t66 = abap_false.
            DATA t80 TYPE abap_bool.
            DATA(t81) = t57.
            t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_st_case ).
            t65 = t80.
          ENDIF.
          t64 = t65.
          IF t65 = abap_false.
            DATA t82 TYPE abap_bool.
            DATA(t83) = t57.
            t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_st_select_loop ).
            t64 = t82.
          ENDIF.
          t63 = t64.
          IF t64 = abap_false.
            DATA t84 TYPE abap_bool.
            DATA(t85) = t57.
            t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_st_catch ).
            t63 = t84.
          ENDIF.
          t62 = t63.
          IF t63 = abap_false.
            DATA t86 TYPE abap_bool.
            DATA(t87) = t57.
            t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_st_cleanup ).
            t62 = t86.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA t88 TYPE abap_bool.
            DATA(t89) = t57.
            t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_end_at ).
            t61 = t88.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA t90 TYPE abap_bool.
            DATA(t91) = t57.
            t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_st_loop ).
            t60 = t90.
          ENDIF.
          IF t60 = abap_true.
            DATA t92 TYPE f.
            DATA(t93) = t48.
            DATA(t94) = CONV f( 1 ).
            t92 = t93 + t94.
            t48 = t92.
          ENDIF.
        ENDDO.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t98.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t99.
        DATA t100 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_statement_node.
        DATA t102 TYPE REF TO zcl_lnt_statement_node.
        DATA(t103) = t43.
        DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d554_9e796f7b9641.
        t102 = t103->find_direct_statement( i_type_9913 = t104 ).
        t101 = t102.
        DATA t105 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t105.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = t101.
        IF t107 IS INITIAL.
          t106 = abap_true.
        ENDIF.
        IF t106 = abap_true.
          DATA t108 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t108.
          t105 = t108.
        ELSE.
          DATA t109 TYPE REF TO zcl_lnt_expression_node.
          DATA t110 TYPE REF TO zcl_lnt_statement_node.
          DATA(t111) = t101.
          t110 = t111.
          DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
          t109 = t110->find_direct_expression( i_type_9913 = t112 ).
          t105 = t109.
        ENDIF.
        t100 = t105.
        t99 = t100.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t113.
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = t99.
        IF t115 IS INITIAL.
          t114 = abap_true.
        ENDIF.
        IF t114 = abap_true.
          DATA t116 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t116.
          t113 = t116.
        ELSE.
          DATA t117 TYPE REF TO zcl_lnt_abstract_token.
          DATA t118 TYPE REF TO zcl_lnt_expression_node.
          DATA(t119) = t99.
          t118 = t119.
          t117 = t118->get_first_token( ).
          t113 = t117.
        ENDIF.
        t98 = t113.
        t97 = t98.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t121) = VALUE abap_bool( ).
        DATA(t122) = t97.
        IF t122 IS INITIAL.
          t121 = abap_true.
        ENDIF.
        IF t121 = abap_true.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          t120 = t123.
        ELSE.
          DATA t124 TYPE string.
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          DATA t126 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t127) = t97.
          t126 = t127.
          t125 = t126.
          DATA t128 TYPE string.
          DATA(t129) = t125.
          t128 = t129->str.
          t124 = t128.
          DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t130->has = abap_true.
          t130->value = t124.
          t120 = t130.
        ENDIF.
        t96 = t120.
        t95 = t96.
        DATA(t131) = t2.
        DATA t132 TYPE REF TO zcl_lnt_icyclmtc_cmplxty_rslt.
        CLEAR t132.
        DATA t133 TYPE REF TO zif_lnt_file.
        DATA(t134) = t15.
        t133 = t134.
        DATA t135 TYPE REF TO zcl_lnt_position.
        DATA t136 TYPE REF TO zcl_lnt_position.
        DATA t137 TYPE REF TO zcl_lnt_abstract_token.
        DATA t138 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t139) = t43.
        t138 = t139->get_first_token( ).
        t137 = t138.
        DATA t140 TYPE REF TO zcl_lnt_position.
        DATA(t141) = t137.
        t140 = t141->start.
        t136 = t140.
        t135 = t136.
        DATA(t142) = VALUE string( ).
        DATA(t143) = VALUE string( ).
        DATA(t144) = VALUE abap_bool( ).
        DATA(t145) = t95.
        IF t145 IS BOUND.
          IF t145->has = abap_true.
            t144 = xsdbool( strlen( t145->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t144 = abap_true.
          DATA t146 TYPE string.
          DATA(t147) = t95.
          t146 = t147->value.
          t143 = t146.
        ELSE.
          DATA(t148) = |Error!|.
          t143 = t148.
        ENDIF.
        t142 = t143.
        DATA t149 TYPE f.
        DATA(t150) = t48.
        t149 = t150.
        t132 = NEW zcl_lnt_icyclmtc_cmplxty_rslt( i_file = t133 i_pos = t135 i_name = t142 i_count = t149 ).
        CREATE OBJECT t132->zlnt_view_ownkeys_b0e8086400eb.
        t132->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pos` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t132->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t132->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t154 ).
        ENDIF.
        CREATE OBJECT t132->zlnt_json_ownkeys_70e5fd461788.
        t132->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t155) = |file|.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
        ENDIF.
        DATA(t157) = |pos|.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
        ENDIF.
        DATA(t159) = |name|.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
        ENDIF.
        DATA(t161) = |count|.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t132->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t132->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
        ENDIF.
        t131->load( ).
        APPEND t132 TO t131->items.
        t131->save( ).
      ENDDO.
    ENDDO.
    DATA(t163) = t2.
    result = t163.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1786_ba71b957d789.
  ENDMETHOD.
ENDCLASS.
