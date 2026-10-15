* TS: src/abap/5_syntax/statements/modify_internal.ts:11:1 ModifyInternal
CLASS zcl_lnt_sy_modify_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_modify_internal IMPLEMENTATION.
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
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA(t23) = t1.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t22 = t23->find_first_expression( i_type_9913 = t24 ).
    t21 = t22.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t26) = t21.
    t25 = t26.
    DATA t27 TYPE abap_bool.
    DATA(t28) = t25.
    t27 = xsdbool( t28 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      DATA t30 TYPE REF TO zcl_lnt_abstract_type.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      DATA(t32) = t25.
      t31 = t32.
      DATA(t33) = t2.
      t30 = zcl_lnt_sy_target=>run_syntax( i_node = t31 i_input_967e = t33 ).
      t29 = t30.
      DATA(t34) = VALUE abap_bool( ).
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE abap_bool.
      DATA(t37) = t29.
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_void_type ).
      t35 = t36.
      IF t36 = abap_false.
        DATA t38 TYPE abap_bool.
        DATA(t39) = t29.
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_any_type ).
        t35 = t38.
      ENDIF.
      t34 = t35.
      IF t35 = abap_false.
        DATA t40 TYPE abap_bool.
        DATA(t41) = t29.
        t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_unknown_type ).
        t34 = t40.
      ENDIF.
      IF t34 = abap_true.
      ELSE.
        DATA t42 TYPE abap_bool.
        DATA(t43) = t29.
        t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t42 = abap_true.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = VALUE abap_bool( ).
          DATA(t46) = VALUE abap_bool( ).
          DATA t47 TYPE REF TO zcl_lnt_abstract_token.
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t49) = t1.
          DATA(t50) = |TABLE|.
          t48 = t49->find_direct_token_by_text( i_text = t50 ).
          t47 = t48.
          DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t52.
          t51 = t52.
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = t47.
          IF t54 IS INITIAL.
            t53 = abap_true.
          ENDIF.
          t46 = t53.
          t45 = t46.
          IF t46 = abap_true.
            DATA t55 TYPE abap_bool.
            DATA t56 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t57) = t1.
            DATA(t58) = |INDEX|.
            t56 = t57->find_direct_token_by_text( i_text = t58 ).
            t55 = xsdbool( t56 IS BOUND ).
            t45 = t55.
          ENDIF.
          t44 = t45.
          IF t45 = abap_true.
            DATA(t59) = VALUE abap_bool( ).
            DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t60.
            DATA t61 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t62 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t63) = t29.
            t62 ?= t63.
            t61 = t62.
            DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t64.
            DATA t65 TYPE REF TO zcl_lnt_itable_key.
            DATA t66 TYPE REF TO zcl_lnt_itable_key.
            DATA t67 TYPE REF TO zcl_lnt_itable_options.
            DATA(t68) = t61.
            t67 = t68->options.
            t66 = t67->zlnt_view_read_sr_48b89cc62ab9( ).
            t65 = t66.
            DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t69.
            DATA(t70) = VALUE abap_bool( ).
            DATA(t71) = t65.
            IF t71 IS INITIAL.
              t70 = abap_true.
            ENDIF.
            IF t70 = abap_true.
              DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t72.
              t69 = t72.
            ELSE.
              DATA t73 TYPE string.
              DATA t74 TYPE REF TO zcl_lnt_itable_key.
              DATA(t75) = t65.
              t74 = t75.
              t73 = t74->zlnt_view_read_sr_f361ef311f50( ).
              DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t76->has = abap_true.
              t76->value = t73.
              t69 = t76.
            ENDIF.
            t64 = t69.
            t60 = t64.
            DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t77.
            DATA(t78) = abap_true.
            IF t78 = abap_true.
              DATA(t79) = |HASHED|.
              DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t80->has = abap_true.
              t80->value = t79.
              t77 = t80.
            ELSE.
              DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t81.
              t77 = t81.
            ENDIF.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = VALUE abap_bool( ).
            IF t60 IS BOUND.
              t82 = t60->has.
            ENDIF.
            IF t77 IS BOUND.
              t83 = t77->has.
            ENDIF.
            IF t82 = t83.
              IF t82 = abap_false.
                t59 = abap_true.
              ELSEIF t60->value = t77->value.
                t59 = abap_true.
              ENDIF.
            ENDIF.
            t44 = t59.
          ENDIF.
          IF t44 = abap_true.
            DATA t84 TYPE string.
            DATA(t85) = |Implicit or explicit index operation on hashed table is not |.
            t85 = t85 && |possible|.
            t84 = t85.
            DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t87) = t2.
            t86 = t87->issues.
            DATA t88 TYPE REF TO zcl_lnt_issue.
            DATA(t89) = t2.
            DATA t90 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t91) = t1.
            t90 = t91->get_first_token( ).
            DATA(t92) = t84.
            DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t93.
            t88 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t89 i_token = t90 i_message_26cb = t92 i_fix = t93 ).
            t86->load( ).
            APPEND t88 TO t86->items.
            t86->save( ).
            RETURN.
          ENDIF.
          DATA(t94) = VALUE abap_bool( ).
          DATA t95 TYPE abap_bool.
          DATA t96 TYPE abap_bool.
          DATA t97 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t98) = t1.
          DATA(t99) = |TABLE|.
          t97 = t98->find_direct_token_by_text( i_text = t99 ).
          t96 = xsdbool( t97 IS BOUND ).
          t95 = t96.
          IF t96 = abap_true.
            DATA t100 TYPE abap_bool.
            DATA t101 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t102) = t1.
            DATA(t103) = |INDEX|.
            t101 = t102->find_direct_token_by_text( i_text = t103 ).
            t100 = xsdbool( t101 IS BOUND ).
            t95 = t100.
          ENDIF.
          t94 = t95.
          IF t95 = abap_true.
            DATA t104 TYPE abap_bool.
            DATA t105 TYPE abap_bool.
            DATA t106 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t107 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t108) = t29.
            t107 ?= t108.
            t106 = t107.
            DATA t109 TYPE abap_bool.
            DATA t110 TYPE REF TO zcl_lnt_itable_options.
            DATA(t111) = t106.
            t110 = t111->options.
            t109 = t110->zlnt_view_read_sr_ec4602663c93( ).
            t105 = t109.
            DATA(t112) = abap_false.
            t104 = xsdbool( t105 = t112 ).
            t94 = t104.
          ENDIF.
          IF t94 = abap_true.
            DATA t113 TYPE string.
            DATA(t114) = |Table does not have header line|.
            t113 = t114.
            DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t116) = t2.
            t115 = t116->issues.
            DATA t117 TYPE REF TO zcl_lnt_issue.
            DATA(t118) = t2.
            DATA t119 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t120) = t1.
            t119 = t120->get_first_token( ).
            DATA(t121) = t113.
            DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t122.
            t117 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t118 i_token = t119 i_message_26cb = t121 i_fix = t122 ).
            t115->load( ).
            APPEND t117 TO t115->items.
            t115->save( ).
            RETURN.
          ENDIF.
        ELSE.
          DATA t123 TYPE abap_bool.
          DATA(t124) = t29.
          t123 = xsdbool( t124 IS BOUND AND t124 IS INSTANCE OF zcl_lnt_structure_type ).
          IF t123 = abap_true.
            DATA(t125) = VALUE abap_bool( ).
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t126.
            DATA(t127) = abap_true.
            IF t127 = abap_true.
              DATA t128 TYPE string.
              DATA t129 TYPE string.
              DATA t130 TYPE REF TO zcl_lnt_expression_node.
              DATA(t131) = t21.
              t130 = t131.
              t129 = t130->concat_tokens( ).
              DATA(t132) = strlen( t129 ).
              t128 = t129.
              IF t128 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t128 TO UPPER CASE.
              ELSE.
                t128 = zlnt_runtime_uppe_91169605024d=>full( t128 ).
              ENDIF.
              DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t133->has = abap_true.
              t133->value = t128.
              t126 = t133.
            ELSE.
              DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t134.
              t126 = t134.
            ENDIF.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t135.
            DATA t136 TYPE REF TO zcl_lnt_abstract_type.
            DATA t137 TYPE REF TO zcl_lnt_structure_type.
            DATA(t138) = t29.
            t137 ?= t138.
            t136 = t137.
            DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t139.
            DATA t140 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t141 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t142) = t136.
            t141 = t142->data_56cc.
            t140 = t141.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            DATA(t144) = VALUE abap_bool( ).
            DATA(t145) = t140.
            IF t145 IS INITIAL.
              t144 = abap_true.
            ENDIF.
            IF t144 = abap_true.
              DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t146.
              t143 = t146.
            ELSE.
              DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t148 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA(t149) = t140.
              t148 = t149.
              t147 = t148->zlnt_view_read_sr_19ee0de30d00( ).
              t143 = t147.
            ENDIF.
            t139 = t143.
            t135 = t139.
            DATA(t150) = VALUE abap_bool( ).
            DATA(t151) = VALUE abap_bool( ).
            IF t126 IS BOUND.
              t150 = t126->has.
            ENDIF.
            IF t135 IS BOUND.
              t151 = t135->has.
            ENDIF.
            IF t150 = t151.
              IF t150 = abap_false.
                t125 = abap_true.
              ELSEIF t126->value = t135->value.
                t125 = abap_true.
              ENDIF.
            ENDIF.
            IF t125 = abap_true.
              t125 = abap_false.
            ELSE.
              t125 = abap_true.
            ENDIF.
            IF t125 = abap_true.
              DATA t152 TYPE string.
              DATA(t153) = |Not an internal table|.
              t152 = t153.
              DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t155) = t2.
              t154 = t155->issues.
              DATA t156 TYPE REF TO zcl_lnt_issue.
              DATA(t157) = t2.
              DATA t158 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t159) = t1.
              t158 = t159->get_first_token( ).
              DATA(t160) = t152.
              DATA t161 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t161.
              t156 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t157 i_token = t158 i_message_26cb = t160 i_fix = t161 ).
              t154->load( ).
              APPEND t156 TO t154->items.
              t154->save( ).
              RETURN.
            ENDIF.
          ELSE.
            DATA t162 TYPE string.
            DATA(t163) = |Not an internal table|.
            t162 = t163.
            DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t165) = t2.
            t164 = t165->issues.
            DATA t166 TYPE REF TO zcl_lnt_issue.
            DATA(t167) = t2.
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t169) = t1.
            t168 = t169->get_first_token( ).
            DATA(t170) = t162.
            DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t171.
            t166 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t167 i_token = t168 i_message_26cb = t170 i_fix = t171 ).
            t164->load( ).
            APPEND t166 TO t164->items.
            t164->save( ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t172 TYPE REF TO zcl_lnt_expression_node.
    DATA t173 TYPE REF TO zcl_lnt_expression_node.
    DATA(t174) = t1.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    t173 = t174->find_direct_expression( i_type_9913 = t175 ).
    t172 = t173.
    DATA t176 TYPE abap_bool.
    DATA(t177) = t172.
    t176 = xsdbool( t177 IS BOUND ).
    IF t176 = abap_true.
      DATA t178 TYPE REF TO zcl_lnt_expression_node.
      DATA(t179) = t172.
      t178 = t179.
      DATA(t180) = t2.
      DATA t181 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t181.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t178 i_input_967e = t180 i_type_9913 = t181 ).
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t183) = t1.
    DATA(t184) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t182 = t183->find_direct_expressions( i_type_9913 = t184 ).
    DATA t185 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t185.
    DATA t186 TYPE REF TO object.
    CLEAR t186.
    DATA(t187) = VALUE i( ).
    DO.
      t182->load( ).
      IF t187 >= lines( t182->items ).
        EXIT.
      ENDIF.
      CLEAR t186.
      READ TABLE t182->items INDEX t187 + 1 INTO t186.
      t187 = t187 + 1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      CLEAR t185.
      IF t186 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t188 ?= t186.
        DATA t189 TYPE REF TO object.
        t189 = t188->as_ref( ).
        t185 ?= t189.
      ELSE.
        t185 ?= t186.
      ENDIF.
      DATA(t190) = t185.
      DATA(t191) = t2.
      DATA t192 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t192.
      DATA t193 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t193.
      zcl_lnt_sy_component_cond=>run_syntax( i_node = t190 i_input_967e = t191 i_left_type = t192 i_right_type = t193 ).
    ENDDO.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d932_5a2e35d0b4cd.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
