* TS: src/abap/5_syntax/statements/convert.ts:10:1 Convert
CLASS zcl_lnt_sy_convert DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_convert IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_direct_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = t6.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t20.
      t11 = zcl_lnt_sy_source=>run_syntax( i_node = t12 i_input_967e = t16 i_target_type = t17 i_write_reference = t18 i_allow_generic_deference = t19 i_read_reference = t20 ).
    ENDDO.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = t1.
    DATA(t24) = |TIME|.
    t22 = t23->find_expressions_after_token( i_text = t24 ).
    t21 = t22.
    DATA(t25) = t21.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    DATA(t28) = VALUE i( ).
    DO.
      t25->load( ).
      IF t28 >= lines( t25->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t25->items INDEX t28 + 1 INTO t27.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t26.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t29 ?= t27.
        DATA t30 TYPE REF TO object.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA(t31) = VALUE string( ).
      DATA t32 TYPE string.
      DATA t33 TYPE string.
      DATA(t34) = t1.
      t33 = t34->concat_tokens( ).
      DATA(t35) = strlen( t33 ).
      t32 = t33.
      IF t32 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t32 TO UPPER CASE.
      ELSE.
        t32 = zlnt_runtime_uppe_91169605024d=>full( t32 ).
      ENDIF.
      t31 = t32.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      DATA(t39) = t26.
      t38 = t39.
      DATA t40 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t38.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
        DATA t43 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t43.
        t40 = t43.
      ELSE.
        DATA t44 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t45) = t38.
        t44 = t45->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t40 = t44.
      ENDIF.
      t37 = t40.
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_st_target ).
      IF t36 = abap_true.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t46.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_expression_node.
        DATA(t49) = t26.
        t48 = t49.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t50.
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = t48.
        IF t52 IS INITIAL.
          t51 = abap_true.
        ENDIF.
        IF t51 = abap_true.
          DATA t53 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t53.
          t50 = t53.
        ELSE.
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          DATA(t55) = t48.
          DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
          t54 = t55->find_direct_expression( i_type_9913 = t56 ).
          t50 = t54.
        ENDIF.
        t47 = t50.
        t46 = t47.
        DATA t57 TYPE abap_bool.
        DATA(t58) = t46.
        t57 = xsdbool( t58 IS BOUND ).
        IF t57 = abap_true.
          DATA t59 TYPE REF TO zcl_lnt_abstract_type.
          DATA t60 TYPE REF TO zcl_lnt_time_type.
          DATA t61 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t61.
          t60 = NEW zcl_lnt_time_type( i_input_967e = t61 ).
          t59 = t60.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE i( ).
          DATA(t64) = t31.
          DATA(t65) = VALUE string( ).
          DATA(t66) = |DAYLIGHT SAVING TIME |.
          DATA t67 TYPE string.
          DATA t68 TYPE string.
          DATA t69 TYPE REF TO zcl_lnt_expression_node.
          DATA(t70) = t46.
          t69 = t70.
          t68 = t69->concat_tokens( ).
          DATA(t71) = strlen( t68 ).
          t67 = t68.
          IF t67 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t67 TO UPPER CASE.
          ELSE.
            t67 = zlnt_runtime_uppe_91169605024d=>full( t67 ).
          ENDIF.
          DATA(t72) = strlen( t66 ).
          t65 = |{ t66 }{ t67 }|.
          DATA(t73) = strlen( t64 ).
          IF t65 IS INITIAL.
            t63 = 0.
          ELSE.
            FIND t65 IN t64 MATCH OFFSET t63.
            IF sy-subrc <> 0.
              t63 = -1.
            ENDIF.
          ENDIF.
          DATA(t74) = 0.
          t62 = xsdbool( t63 >= t74 ).
          IF t62 = abap_true.
            DATA t75 TYPE REF TO zcl_lnt_character_type.
            DATA(t76) = CONV f( 1 ).
            DATA t77 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t77.
            t75 = NEW zcl_lnt_character_type( i_length = t76 i_extra = t77 ).
            t59 = t75.
          ENDIF.
          DATA t78 TYPE REF TO zcl_lnt_expression_node.
          DATA(t79) = t46.
          t78 = t79.
          DATA(t80) = t2.
          DATA t81 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t81.
          DATA(t82) = abap_true.
          IF t82 = abap_true.
            DATA(t83) = t59.
            t81 = t83.
          ELSE.
            DATA t84 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t84.
            t81 = t84.
          ENDIF.
          zcl_lnt_sy_inline_data=>run_syntax( i_node = t78 i_input_967e = t80 i_type_9913 = t81 ).
        ELSE.
          DATA t85 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t86) = t26.
          DATA(t87) = t2.
          t85 = zcl_lnt_sy_target=>run_syntax( i_node = t86 i_input_967e = t87 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t88 TYPE REF TO zcl_lnt_expression_node.
    DATA t89 TYPE REF TO zcl_lnt_expression_node.
    DATA(t90) = t1.
    DATA(t91) = |DATE|.
    t89 = t90->find_expression_after_token( i_text = t91 ).
    t88 = t89.
    DATA(t92) = VALUE abap_bool( ).
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zcl_lnt_expression_node.
    DATA(t95) = t88.
    t94 = t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = VALUE abap_bool( ).
    DATA(t98) = t94.
    IF t98 IS INITIAL.
      t97 = abap_true.
    ENDIF.
    IF t97 = abap_true.
      DATA t99 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t99.
      t96 = t99.
    ELSE.
      DATA t100 TYPE REF TO zif_lnt_statement_runnable.
      DATA t101 TYPE REF TO zcl_lnt_expression_node.
      DATA(t102) = t94.
      t101 = t102.
      t100 = t101->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t96 = t100.
    ENDIF.
    t93 = t96.
    t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_st_target ).
    IF t92 = abap_true.
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t103.
      DATA t104 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t104.
      DATA t105 TYPE REF TO zcl_lnt_expression_node.
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      DATA(t107) = t88.
      t106 = t107.
      t105 = t106.
      DATA t108 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t108.
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = t105.
      IF t110 IS INITIAL.
        t109 = abap_true.
      ENDIF.
      IF t109 = abap_true.
        DATA t111 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t111.
        t108 = t111.
      ELSE.
        DATA t112 TYPE REF TO zcl_lnt_expression_node.
        DATA(t113) = t105.
        DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t112 = t113->find_direct_expression( i_type_9913 = t114 ).
        t108 = t112.
      ENDIF.
      t104 = t108.
      t103 = t104.
      DATA t115 TYPE abap_bool.
      DATA(t116) = t103.
      t115 = xsdbool( t116 IS BOUND ).
      IF t115 = abap_true.
        DATA t117 TYPE REF TO zcl_lnt_expression_node.
        DATA(t118) = t103.
        t117 = t118.
        DATA(t119) = t2.
        DATA t120 TYPE REF TO zcl_lnt_date_type.
        DATA t121 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t121.
        t120 = NEW zcl_lnt_date_type( i_input_967e = t121 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t117 i_input_967e = t119 i_type_9913 = t120 ).
      ELSE.
        DATA t122 TYPE REF TO zcl_lnt_abstract_type.
        DATA t123 TYPE REF TO zcl_lnt_expression_node.
        DATA(t124) = t88.
        t123 = t124.
        DATA(t125) = t2.
        t122 = zcl_lnt_sy_target=>run_syntax( i_node = t123 i_input_967e = t125 ).
      ENDIF.
    ENDIF.
    DATA t126 TYPE REF TO zcl_lnt_expression_node.
    DATA t127 TYPE REF TO zcl_lnt_expression_node.
    DATA(t128) = t1.
    DATA(t129) = |STAMP|.
    t127 = t128->find_expression_after_token( i_text = t129 ).
    t126 = t127.
    DATA(t130) = VALUE abap_bool( ).
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zcl_lnt_expression_node.
    DATA(t133) = t126.
    t132 = t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA(t135) = VALUE abap_bool( ).
    DATA(t136) = t132.
    IF t136 IS INITIAL.
      t135 = abap_true.
    ENDIF.
    IF t135 = abap_true.
      DATA t137 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t137.
      t134 = t137.
    ELSE.
      DATA t138 TYPE REF TO zif_lnt_statement_runnable.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      DATA(t140) = t132.
      t139 = t140.
      t138 = t139->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t134 = t138.
    ENDIF.
    t131 = t134.
    t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_st_target ).
    IF t130 = abap_true.
      DATA t141 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t141.
      DATA t142 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t142.
      DATA t143 TYPE REF TO zcl_lnt_expression_node.
      DATA t144 TYPE REF TO zcl_lnt_expression_node.
      DATA(t145) = t126.
      t144 = t145.
      t143 = t144.
      DATA t146 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t146.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = t143.
      IF t148 IS INITIAL.
        t147 = abap_true.
      ENDIF.
      IF t147 = abap_true.
        DATA t149 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t149.
        t146 = t149.
      ELSE.
        DATA t150 TYPE REF TO zcl_lnt_expression_node.
        DATA(t151) = t143.
        DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
        t150 = t151->find_direct_expression( i_type_9913 = t152 ).
        t146 = t150.
      ENDIF.
      t142 = t146.
      t141 = t142.
      DATA t153 TYPE abap_bool.
      DATA(t154) = t141.
      t153 = xsdbool( t154 IS BOUND ).
      IF t153 = abap_true.
        DATA t155 TYPE REF TO zcl_lnt_expression_node.
        DATA(t156) = t141.
        t155 = t156.
        DATA(t157) = t2.
        DATA t158 TYPE REF TO zcl_lnt_packed_type.
        DATA(t159) = CONV f( 8 ).
        DATA(t160) = CONV f( 4 ).
        DATA t161 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t161.
        t158 = NEW zcl_lnt_packed_type( i_length = t159 i_decimals_2eed = t160 i_extra = t161 ).
        zcl_lnt_sy_inline_data=>run_syntax( i_node = t155 i_input_967e = t157 i_type_9913 = t158 ).
      ELSE.
        DATA t162 TYPE REF TO zcl_lnt_abstract_type.
        DATA t163 TYPE REF TO zcl_lnt_expression_node.
        DATA(t164) = t126.
        t163 = t164.
        DATA(t165) = t2.
        t162 = zcl_lnt_sy_target=>run_syntax( i_node = t163 i_input_967e = t165 ).
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d883_6e0ae69d567a.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
