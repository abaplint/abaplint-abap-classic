* TS: src/abap/5_syntax/statements/delete_database.ts:11:1 DeleteDatabase
CLASS zcl_lnt_sy_delete_database DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_delete_database IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = CAST zcl_lnt_expression_node( t6 ).
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t17.
      t8 = zcl_lnt_sy_source=>run_syntax( i_node = t9 i_input_967e = t13 i_target_type = t14 i_write_reference = t15 i_allow_generic_deference = t16 i_read_reference = t17 ).
    ENDLOOP.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    t18 = t19->find_all_expressions( i_type_9913 = t20 ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    LOOP AT t18->items INTO t22.
      t21 ?= t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA(t26) = CAST zcl_lnt_expression_node( t21 ).
        t24 = t26.
      ELSE.
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t27.
        t24 = t27.
      ENDIF.
      DATA(t28) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t32.
      t23 = zcl_lnt_sy_source=>run_syntax( i_node = t24 i_input_967e = t28 i_target_type = t29 i_write_reference = t30 i_allow_generic_deference = t31 i_read_reference = t32 ).
    ENDLOOP.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t34) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t33 = t34->find_all_expressions( i_type_9913 = t35 ).
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
    LOOP AT t33->items INTO t37.
      t36 ?= t37.
      DATA(t38) = CAST zcl_lnt_expression_node( t36 ).
      DATA(t39) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t38 i_input_967e = t39 ).
    ENDLOOP.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t41) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463 ).
    t40 = t41->find_all_expressions( i_type_9913 = t42 ).
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t43.
    DATA t44 TYPE REF TO object.
    CLEAR t44.
    LOOP AT t40->items INTO t44.
      t43 ?= t44.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      DATA t46 TYPE REF TO zcl_lnt_expression_node.
      DATA(t47) = CAST zcl_lnt_expression_node( t43 ).
      DATA(t48) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d279_5e96219eaf2c ).
      t46 = t47->find_direct_expression( i_type_9913 = t48 ).
      t45 = t46.
      DATA(t49) = VALUE abap_bool( ).
      DATA t50 TYPE REF TO zcl_lnt_expression_node.
      DATA(t51) = CAST zcl_lnt_expression_node( t45 ).
      t50 = t51.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      t52 = t53.
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = CAST zcl_lnt_expression_node( t50 ).
      IF t56 IS INITIAL.
        t55 = abap_true.
      ENDIF.
      t54 = xsdbool( t55 = abap_false ).
      t49 = t54.
      IF t49 = abap_true.
        DATA t57 TYPE REF TO zcl_lnt_expression_node.
        DATA(t58) = CAST zcl_lnt_expression_node( t45 ).
        t57 = t58.
        DATA(t59) = CAST zcl_lnt_syntax_input( t2 ).
        zcl_lnt_sy_sql_in=>run_syntax( i_node = t57 i_input_967e = t59 ).
      ENDIF.
    ENDLOOP.
    DATA t60 TYPE REF TO zcl_lnt_expression_node.
    DATA t61 TYPE REF TO zcl_lnt_expression_node.
    DATA(t62) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57 ).
    t61 = t62->find_first_expression( i_type_9913 = t63 ).
    t60 = t61.
    DATA(t64) = VALUE abap_bool( ).
    DATA t65 TYPE REF TO zcl_lnt_expression_node.
    DATA(t66) = CAST zcl_lnt_expression_node( t60 ).
    t65 = t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    t67 = t68.
    DATA(t69) = VALUE abap_bool( ).
    DATA(t70) = VALUE abap_bool( ).
    DATA(t71) = CAST zcl_lnt_expression_node( t65 ).
    IF t71 IS INITIAL.
      t70 = abap_true.
    ENDIF.
    t69 = xsdbool( t70 = abap_false ).
    t64 = t69.
    IF t64 = abap_true.
      DATA t72 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t73 TYPE REF TO zif_lnt_union_c74a232f.
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      DATA(t75) = CAST zcl_lnt_expression_node( t60 ).
      t74 = t75.
      DATA(t76) = CAST zcl_lnt_syntax_input( t2 ).
      t73 = zcl_lnt_sy_database_table=>run_syntax( i_node = t74 i_input_967e = t76 ).
      t72 = t73.
      DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      DATA t80 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t80.
      t79 = t80.
      DATA t81 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      DATA t83 TYPE REF TO zlnt_runtime_arra_a3200b8dc4ad.
      CREATE OBJECT t83.
      t82 = t83.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t85) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t86) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463 ).
      t84 = t85->find_all_expressions( i_type_9913 = t86 ).
      DATA t87 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t87.
      DATA t88 TYPE REF TO object.
      CLEAR t88.
      LOOP AT t84->items INTO t88.
        t87 ?= t88.
        DATA(t89) = CAST zlnt_runtime_arra_a3200b8dc4ad( t82 ).
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        DATA t93 TYPE REF TO zcl_lnt_expression_node.
        DATA t94 TYPE REF TO zcl_lnt_expression_node.
        DATA(t95) = CAST zcl_lnt_expression_node( t87 ).
        DATA(t96) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
        t94 = t95->find_direct_expression( i_type_9913 = t96 ).
        t93 = t94.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = CAST zcl_lnt_expression_node( t93 ).
        IF t99 IS INITIAL.
          t98 = abap_true.
        ENDIF.
        IF t98 = abap_true.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t97 = t100.
        ELSE.
          DATA t101 TYPE string.
          DATA t102 TYPE REF TO zcl_lnt_expression_node.
          DATA(t103) = CAST zcl_lnt_expression_node( t93 ).
          t102 = t103.
          t101 = t102->concat_tokens(  ).
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t101.
          t97 = t104.
        ENDIF.
        t92 = t97.
        t91 = t92.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA(t106) = VALUE abap_bool( ).
        DATA(t107) = CAST zlnt_runtime_opti_4ba3bdccd169( t91 ).
        IF t107 IS INITIAL.
          t106 = abap_true.
        ELSEIF t107->has = abap_false.
          t106 = abap_true.
        ENDIF.
        IF t106 = abap_true.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          t105 = t108.
        ELSE.
          DATA t109 TYPE string.
          DATA t110 TYPE string.
          DATA(t111) = CAST zlnt_runtime_opti_4ba3bdccd169( t91 ).
          t110 = t111->value.
          DATA(t112) = strlen( t110 ).
          t109 = t110.
          IF t109 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t109 TO UPPER CASE.
          ELSE.
            t109 = zlnt_runtime_uppe_91169605024d=>full( t109 ).
          ENDIF.
          DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t113->has = abap_true.
          t113->value = t109.
          t105 = t113.
        ENDIF.
        t90 = t105.
        APPEND t90 TO t89->items.
      ENDLOOP.
      DATA(t114) = CAST zlnt_runtime_arra_a3200b8dc4ad( t82 ).
      t81 = t114.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      LOOP AT t81->items INTO t115.
        DATA(t116) = VALUE abap_bool( ).
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t118) = CAST zlnt_runtime_opti_4ba3bdccd169( t115 ).
        t117 = t118.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        t119 = t120.
        DATA(t121) = VALUE abap_bool( ).
        DATA(t122) = VALUE abap_bool( ).
        DATA(t123) = CAST zlnt_runtime_opti_4ba3bdccd169( t117 ).
        IF t123 IS INITIAL.
          t122 = abap_true.
        ELSEIF t123->has = abap_false.
          t122 = abap_true.
        ENDIF.
        t121 = xsdbool( t122 = abap_false ).
        t116 = t121.
        IF t116 = abap_true.
          DATA(t124) = CAST zlnt_runtime_arra_a3200b8dc4ad( t79 ).
          DATA(t125) = CAST zlnt_runtime_opti_4ba3bdccd169( t115 ).
          APPEND t125 TO t124->items.
        ENDIF.
      ENDLOOP.
      DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t127) = CAST zlnt_runtime_arra_a3200b8dc4ad( t79 ).
      CREATE OBJECT t126.
      LOOP AT t127->items INTO DATA(t128).
        IF t128 IS NOT BOUND OR t128->has = abap_false.
          RAISE EXCEPTION TYPE cx_sy_move_cast_error.
        ENDIF.
        APPEND t128->value TO t126->items.
      ENDLOOP.
      t78 = t126.
      t77 = t78.
      DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t130) = CAST zcl_lnt_statement_node( t1 ).
      DATA(t131) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814 ).
      t129 = t130->find_all_expressions( i_type_9913 = t131 ).
      DATA t132 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t132.
      DATA t133 TYPE REF TO object.
      CLEAR t133.
      LOOP AT t129->items INTO t133.
        t132 ?= t133.
        DATA(t134) = VALUE i( ).
        DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t135.
        DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t137.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t139) = CAST zcl_lnt_expression_node( t132 ).
        DATA(t140) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
        t138 = t139->find_all_expressions( i_type_9913 = t140 ).
        DATA t141 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t141.
        DATA t142 TYPE REF TO object.
        CLEAR t142.
        LOOP AT t138->items INTO t142.
          t141 ?= t142.
          DATA(t143) = CAST zlnt_runtime_arra_8ecd6afe19e0( t136 ).
          DATA t144 TYPE string.
          DATA t145 TYPE string.
          DATA(t146) = CAST zcl_lnt_expression_node( t141 ).
          t145 = t146->concat_tokens(  ).
          DATA(t147) = strlen( t145 ).
          t144 = t145.
          IF t144 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t144 TO UPPER CASE.
          ELSE.
            t144 = zlnt_runtime_uppe_91169605024d=>full( t144 ).
          ENDIF.
          APPEND t144 TO t143->items.
        ENDLOOP.
        DATA(t148) = CAST zlnt_runtime_arra_8ecd6afe19e0( t136 ).
        t135 = t148.
        DATA(t149) = VALUE string( ).
        LOOP AT t135->items INTO t149.
          DATA(t150) = CAST zlnt_runtime_arra_8ecd6afe19e0( t77 ).
          DATA(t151) = t149.
          APPEND t151 TO t150->items.
        ENDLOOP.
        DATA t152 TYPE i.
        DATA(t153) = CAST zlnt_runtime_arra_8ecd6afe19e0( t77 ).
        t152 = lines( t153->items ).
        t134 = t152.
      ENDLOOP.
      DATA(t154) = CAST zlnt_runtime_arra_8ecd6afe19e0( t77 ).
      DATA t155 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      DATA t156 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      DATA t157 TYPE REF TO zlnt_runtime_arra_b72089862d0f.
      CREATE OBJECT t157.
      t156 = t157.
      DATA(t158) = CAST zlnt_runtime_arra_b72089862d0f( t156 ).
      DATA(t159) = CAST zif_lnt_union_c74a232f( t72 ).
      APPEND t159 TO t158->items.
      DATA(t160) = CAST zlnt_runtime_arra_b72089862d0f( t156 ).
      t155 = t160.
      DATA(t161) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t162 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t163) = CAST zcl_lnt_statement_node( t1 ).
      t162 = t163->get_first_token(  ).
      zcl_lnt_chck_dtbs_flds_mdl=>check_database_fields( i_fields_62af = t154 i_db_sources = t155 i_input_967e = t161 i_token = t162 ).
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d866_cf4d711c097d.
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax(  i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
