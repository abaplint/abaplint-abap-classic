* TS: src/utils/cyclomatic_complexity_stats.ts:18:1 CyclomaticComplexityStats
CLASS zcl_lnt_cyclmtc_cmplxty_stts DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cyclmtc_cmplxty_stts IMPLEMENTATION.
  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = CAST zif_lnt_object( t1 ).
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
    DATA(t11) = CAST zif_lnt_object( t1 ).
    DATA t12 TYPE REF TO object.
    t12 = t11.
    t10 ?= t12.
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = CAST zcl_lnt_abap_object( t9 ).
    t13 = t14->parsed.
    t8 = t13.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t15.
    DATA t16 TYPE REF TO object.
    CLEAR t16.
    LOOP AT t8->items INTO t16.
      t15 ?= t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_structure_node.
      DATA t21 TYPE REF TO zcl_lnt_structure_node.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      DATA(t23) = CAST zcl_lnt_abap_file( t15 ).
      t22 = t23.
      DATA t24 TYPE REF TO zcl_lnt_structure_node.
      DATA(t25) = CAST zcl_lnt_abap_file( t22 ).
      t24 = t25->structure.
      t21 = t24.
      t20 = t21.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t26.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = CAST zcl_lnt_structure_node( t20 ).
      IF t28 IS INITIAL.
        t27 = abap_true.
      ENDIF.
      IF t27 = abap_true.
        DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t29.
        t26 = t29.
      ELSE.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t31 TYPE REF TO zcl_lnt_structure_node.
        DATA(t32) = CAST zcl_lnt_structure_node( t20 ).
        t31 = t32.
        DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424 ).
        t30 = t31->find_all_structures( i_type_9913 = t33 ).
        t26 = t30.
      ENDIF.
      t19 = t26.
      t18 = t19.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      DATA t35 TYPE abap_bool.
      DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
      t35 = xsdbool( t36 IS BOUND ).
      IF t35 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
        t37 = t38.
        t34 = t37.
      ELSE.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t39.
        t34 = t39.
      ENDIF.
      t17 = t34.
      DATA t40 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      LOOP AT t17->items INTO t41.
        t40 ?= t41.
        DATA t42 TYPE int8.
        DATA(t43) = CONV int8( 0 ).
        t42 = t43.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t45) = CAST zcl_lnt_structure_node( t40 ).
        t44 = t45->find_all_statement_nodes( ).
        DATA t46 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t46.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        LOOP AT t44->items INTO t47.
          t46 ?= t47.
          DATA t48 TYPE REF TO zif_lnt_statement.
          DATA t49 TYPE REF TO zif_lnt_statement.
          DATA(t50) = CAST zcl_lnt_statement_node( t46 ).
          t49 = t50->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t48 = t49.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          DATA t60 TYPE abap_bool.
          DATA t61 TYPE abap_bool.
          DATA(t62) = CAST zif_lnt_statement( t48 ).
          t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_st_assert ).
          t60 = t61.
          IF t61 = abap_false.
            DATA t63 TYPE abap_bool.
            DATA(t64) = CAST zif_lnt_statement( t48 ).
            t63 = xsdbool( t64 IS BOUND AND t64 IS INSTANCE OF zcl_lnt_st_check ).
            t60 = t63.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA t65 TYPE abap_bool.
            DATA(t66) = CAST zif_lnt_statement( t48 ).
            t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_st_else_if ).
            t59 = t65.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA t67 TYPE abap_bool.
            DATA(t68) = CAST zif_lnt_statement( t48 ).
            t67 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_st_if ).
            t58 = t67.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA t69 TYPE abap_bool.
            DATA(t70) = CAST zif_lnt_statement( t48 ).
            t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_st_while ).
            t57 = t69.
          ENDIF.
          t56 = t57.
          IF t57 = abap_false.
            DATA t71 TYPE abap_bool.
            DATA(t72) = CAST zif_lnt_statement( t48 ).
            t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_st_case ).
            t56 = t71.
          ENDIF.
          t55 = t56.
          IF t56 = abap_false.
            DATA t73 TYPE abap_bool.
            DATA(t74) = CAST zif_lnt_statement( t48 ).
            t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_st_select_loop ).
            t55 = t73.
          ENDIF.
          t54 = t55.
          IF t55 = abap_false.
            DATA t75 TYPE abap_bool.
            DATA(t76) = CAST zif_lnt_statement( t48 ).
            t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_st_catch ).
            t54 = t75.
          ENDIF.
          t53 = t54.
          IF t54 = abap_false.
            DATA t77 TYPE abap_bool.
            DATA(t78) = CAST zif_lnt_statement( t48 ).
            t77 = xsdbool( t78 IS BOUND AND t78 IS INSTANCE OF zcl_lnt_st_cleanup ).
            t53 = t77.
          ENDIF.
          t52 = t53.
          IF t53 = abap_false.
            DATA t79 TYPE abap_bool.
            DATA(t80) = CAST zif_lnt_statement( t48 ).
            t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_end_at ).
            t52 = t79.
          ENDIF.
          t51 = t52.
          IF t52 = abap_false.
            DATA t81 TYPE abap_bool.
            DATA(t82) = CAST zif_lnt_statement( t48 ).
            t81 = xsdbool( t82 IS BOUND AND t82 IS INSTANCE OF zcl_lnt_st_loop ).
            t51 = t81.
          ENDIF.
          IF t51 = abap_true.
            DATA t83 TYPE int8.
            DATA(t84) = t42.
            DATA(t85) = CONV int8( 1 ).
            t83 = t84 + t85.
            IF t83 < range_int8_bound_min OR t83 > range_int8_bound_max.
              RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
            ENDIF.
            t42 = t83.
          ENDIF.
        ENDLOOP.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA t88 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t88.
        DATA t89 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t89.
        DATA t90 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t90.
        DATA t91 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t91.
        DATA t92 TYPE REF TO zcl_lnt_statement_node.
        DATA t93 TYPE REF TO zcl_lnt_statement_node.
        DATA(t94) = CAST zcl_lnt_structure_node( t40 ).
        DATA(t95) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d537_ef985c59f92c ).
        t93 = t94->find_direct_statement( i_type_9913 = t95 ).
        t92 = t93.
        DATA t96 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t96.
        DATA(t97) = VALUE abap_bool( ).
        DATA(t98) = CAST zcl_lnt_statement_node( t92 ).
        IF t98 IS INITIAL.
          t97 = abap_true.
        ENDIF.
        IF t97 = abap_true.
          DATA t99 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t99.
          t96 = t99.
        ELSE.
          DATA t100 TYPE REF TO zcl_lnt_expression_node.
          DATA t101 TYPE REF TO zcl_lnt_statement_node.
          DATA(t102) = CAST zcl_lnt_statement_node( t92 ).
          t101 = t102.
          DATA(t103) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207 ).
          t100 = t101->find_direct_expression( i_type_9913 = t103 ).
          t96 = t100.
        ENDIF.
        t91 = t96.
        t90 = t91.
        DATA t104 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t104.
        DATA(t105) = VALUE abap_bool( ).
        DATA(t106) = CAST zcl_lnt_expression_node( t90 ).
        IF t106 IS INITIAL.
          t105 = abap_true.
        ENDIF.
        IF t105 = abap_true.
          DATA t107 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t107.
          t104 = t107.
        ELSE.
          DATA t108 TYPE REF TO zcl_lnt_abstract_token.
          DATA t109 TYPE REF TO zcl_lnt_expression_node.
          DATA(t110) = CAST zcl_lnt_expression_node( t90 ).
          t109 = t110.
          t108 = t109->get_first_token( ).
          t104 = t108.
        ENDIF.
        t89 = t104.
        t88 = t89.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = CAST zcl_lnt_abstract_token( t88 ).
        IF t113 IS INITIAL.
          t112 = abap_true.
        ENDIF.
        IF t112 = abap_true.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          t111 = t114.
        ELSE.
          DATA t115 TYPE string.
          DATA t116 TYPE REF TO zcl_lnt_abstract_token.
          DATA t117 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t118) = CAST zcl_lnt_abstract_token( t88 ).
          t117 = t118.
          t116 = t117.
          DATA t119 TYPE string.
          DATA(t120) = CAST zcl_lnt_abstract_token( t116 ).
          t119 = t120->str.
          t115 = t119.
          DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t121->has = abap_true.
          t121->value = t115.
          t111 = t121.
        ENDIF.
        t87 = t111.
        t86 = t87.
        DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t123 TYPE REF TO zcl_lnt_icyclmtc_cmplxty_rslt.
        CLEAR t123.
        DATA(t124) = CAST zcl_lnt_abap_file( t15 ).
        DATA t125 TYPE REF TO zcl_lnt_position.
        DATA t126 TYPE REF TO zcl_lnt_abstract_token.
        DATA t127 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t128) = CAST zcl_lnt_structure_node( t40 ).
        t127 = t128->get_first_token( ).
        t126 = t127.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t130) = CAST zcl_lnt_abstract_token( t126 ).
        t129 = t130->start.
        t125 = t129.
        DATA(t131) = VALUE string( ).
        DATA(t132) = VALUE abap_bool( ).
        DATA(t133) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
        IF t133 IS BOUND.
          IF t133->has = abap_true.
            t132 = xsdbool( strlen( t133->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t132 = abap_true.
          DATA t134 TYPE string.
          DATA(t135) = CAST zlnt_runtime_opti_4ba3bdccd169( t86 ).
          t134 = t135->value.
          t131 = t134.
        ELSE.
          DATA(t136) = |Error!|.
          t131 = t136.
        ENDIF.
        DATA(t137) = t42.
        t123 = NEW zcl_lnt_icyclmtc_cmplxty_rslt( i_file = t124 i_pos = t125 i_name = t131 i_count = t137 ).
        APPEND t123 TO t122->items.
      ENDLOOP.
    ENDLOOP.
    DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t138.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1687_ce25629f3cb5.
  ENDMETHOD.
ENDCLASS.
