* TS: src/abap/5_syntax/statements/append.ts:14:1 Append
CLASS zcl_lnt_sy_append DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_append IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t6 = t7->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    t9 = xsdbool( t10 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t13) = t5.
      t12 = t13.
      DATA(t14) = t2.
      t11 = zcl_lnt_sy_target=>run_syntax( i_node = t12 i_input_967e = t14 ).
      t3 = t11.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t16.
    DATA(t17) = t1.
    DATA(t18) = |ASSIGNING|.
    t16 = t17->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t15.
    t20 = xsdbool( t21 IS BOUND ).
    t19 = t20.
    IF t20 = abap_true.
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      DATA(t25) = t15.
      t24 = t25.
      t23 = t24->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_st_fs_target ).
      t19 = t22.
    ENDIF.
    IF t19 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t3.
      t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t28 = xsdbool( t29 = abap_false ).
      t27 = t28.
      IF t28 = abap_true.
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = t3.
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_void_type ).
        t31 = xsdbool( t32 = abap_false ).
        t27 = t31.
      ENDIF.
      t26 = t27.
      IF t27 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = t3.
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_unknown_type ).
        t34 = xsdbool( t35 = abap_false ).
        t26 = t34.
      ENDIF.
      IF t26 = abap_true.
        DATA(t37) = VALUE string( ).
        DATA(t38) = VALUE string( ).
        DATA(t39) = |APPEND to non table type, |.
        DATA(t40) = VALUE string( ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t45.
        DATA(t46) = t3.
        t45 = t46.
        DATA t47 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = t45.
        IF t49 IS INITIAL.
          t48 = abap_true.
        ENDIF.
        IF t48 = abap_true.
          DATA t50 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t50.
          t47 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t51.
          DATA t52 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t52.
          DATA(t53) = t45.
          t52 = t53.
          t51 = t52->zlnt_builtin_clas_3f891b097658( ).
          t47 = t51.
        ENDIF.
        t44 = t47.
        t43 = t44.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = t43.
        IF t56 IS INITIAL.
          t55 = abap_true.
        ENDIF.
        IF t55 = abap_true.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          t54 = t57.
        ELSE.
          DATA(t58) = VALUE string( ).
          DATA t59 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t59.
          DATA(t60) = t43.
          t59 = t60.
          t58 = t59->name.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t58.
          t54 = t61.
        ENDIF.
        t42 = t54.
        t41 = t42.
        DATA(t62) = VALUE string( ).
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = t41.
        IF t64 IS INITIAL.
          t63 = abap_true.
        ELSEIF t64->has = abap_false.
          t63 = abap_true.
        ENDIF.
        IF t63 = abap_true.
          DATA(t65) = |undefined|.
          t62 = t65.
        ELSE.
          DATA(t66) = VALUE string( ).
          DATA(t67) = t41.
          t66 = t67->value.
          t62 = t66.
        ENDIF.
        t40 = t62.
        DATA(t68) = strlen( t39 ).
        t38 = |{ t39 }{ t40 }|.
        t37 = t38.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t69.
        DATA(t70) = t2.
        t69 = t70->issues.
        DATA t71 TYPE REF TO zcl_lnt_issue.
        CLEAR t71.
        DATA(t72) = t2.
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t73.
        DATA(t74) = t1.
        t73 = t74->get_first_token( ).
        DATA(t75) = t37.
        DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t76.
        t71 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t72 i_token = t73 i_message_26cb = t75 i_fix = t76 ).
        t69->load( ).
        APPEND t71 TO t69->items.
        t69->save( ).
        RETURN.
      ENDIF.
      DATA t77 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = t3.
      t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t79 = abap_true.
        DATA t81 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t83.
        DATA(t84) = t3.
        t83 ?= t84.
        t82 = t83.
        DATA t85 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t85.
        DATA(t86) = t82.
        t85 = t86->row_type.
        t81 = t85.
        t78 = t81.
      ELSE.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t87.
        DATA t88 TYPE REF TO zif_lnt_union_adffe656.
        CLEAR t88.
        DATA t89 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t89.
        DATA(t90) = t3.
        t89 = t90.
        t88 ?= t89.
        t87 ?= t88.
        t78 = t87.
      ENDIF.
      t77 = t78.
      DATA t91 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t91.
      DATA(t92) = t15.
      t91 = t92.
      DATA(t93) = t2.
      DATA t94 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA(t96) = t77.
        t94 = t96.
      ELSE.
        DATA t97 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t97.
        t94 = t97.
      ENDIF.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t91 i_input_967e = t93 i_type_9913 = t94 ).
    ENDIF.
    DATA t98 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t98.
    DATA t99 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t99.
    DATA(t100) = t1.
    DATA(t101) = |INTO|.
    t99 = t100->find_expression_after_token( i_text = t101 ).
    t98 = t99.
    DATA(t102) = VALUE abap_bool( ).
    DATA(t103) = VALUE abap_bool( ).
    DATA(t104) = t98.
    t103 = xsdbool( t104 IS BOUND ).
    t102 = t103.
    IF t103 = abap_true.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = VALUE i( ).
      DATA(t107) = VALUE string( ).
      DATA(t108) = VALUE string( ).
      DATA(t109) = t1.
      t108 = t109->concat_tokens( ).
      DATA(t110) = strlen( t108 ).
      t107 = t108.
      IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t107 TO UPPER CASE.
      ELSE.
        t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
      ENDIF.
      DATA(t111) = | REFERENCE INTO DATA(|.
      DATA(t112) = strlen( t107 ).
      IF t111 IS INITIAL.
        t106 = 0.
      ELSE.
        FIND t111 IN t107 MATCH OFFSET t106.
        IF sy-subrc <> 0.
          t106 = -1.
        ENDIF.
      ENDIF.
      DATA(t113) = 0.
      t105 = xsdbool( t106 >= t113 ).
      t102 = t105.
    ENDIF.
    IF t102 = abap_true.
      DATA(t114) = VALUE abap_bool( ).
      DATA(t115) = VALUE abap_bool( ).
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = VALUE abap_bool( ).
      DATA(t118) = t3.
      t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t116 = xsdbool( t117 = abap_false ).
      t115 = t116.
      IF t116 = abap_true.
        DATA(t119) = VALUE abap_bool( ).
        DATA(t120) = VALUE abap_bool( ).
        DATA(t121) = t3.
        t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_void_type ).
        t119 = xsdbool( t120 = abap_false ).
        t115 = t119.
      ENDIF.
      t114 = t115.
      IF t115 = abap_true.
        DATA(t122) = VALUE abap_bool( ).
        DATA(t123) = VALUE abap_bool( ).
        DATA(t124) = t3.
        t123 = xsdbool( t124 IS BOUND AND t124 IS INSTANCE OF zcl_lnt_unknown_type ).
        t122 = xsdbool( t123 = abap_false ).
        t114 = t122.
      ENDIF.
      IF t114 = abap_true.
        DATA(t125) = VALUE string( ).
        DATA(t126) = VALUE string( ).
        DATA(t127) = |APPEND to non table type, |.
        DATA(t128) = VALUE string( ).
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        DATA t131 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t132.
        DATA t133 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t133.
        DATA(t134) = t3.
        t133 = t134.
        DATA t135 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t135.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = t133.
        IF t137 IS INITIAL.
          t136 = abap_true.
        ENDIF.
        IF t136 = abap_true.
          DATA t138 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t138.
          t135 = t138.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t139.
          DATA t140 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t140.
          DATA(t141) = t133.
          t140 = t141.
          t139 = t140->zlnt_builtin_clas_3f891b097658( ).
          t135 = t139.
        ENDIF.
        t132 = t135.
        t131 = t132.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = t131.
        IF t144 IS INITIAL.
          t143 = abap_true.
        ENDIF.
        IF t143 = abap_true.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          t142 = t145.
        ELSE.
          DATA(t146) = VALUE string( ).
          DATA t147 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t147.
          DATA(t148) = t131.
          t147 = t148.
          t146 = t147->name.
          DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t149->has = abap_true.
          t149->value = t146.
          t142 = t149.
        ENDIF.
        t130 = t142.
        t129 = t130.
        DATA(t150) = VALUE string( ).
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = t129.
        IF t152 IS INITIAL.
          t151 = abap_true.
        ELSEIF t152->has = abap_false.
          t151 = abap_true.
        ENDIF.
        IF t151 = abap_true.
          DATA(t153) = |undefined|.
          t150 = t153.
        ELSE.
          DATA(t154) = VALUE string( ).
          DATA(t155) = t129.
          t154 = t155->value.
          t150 = t154.
        ENDIF.
        t128 = t150.
        DATA(t156) = strlen( t127 ).
        t126 = |{ t127 }{ t128 }|.
        t125 = t126.
        DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t157.
        DATA(t158) = t2.
        t157 = t158->issues.
        DATA t159 TYPE REF TO zcl_lnt_issue.
        CLEAR t159.
        DATA(t160) = t2.
        DATA t161 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t161.
        DATA(t162) = t1.
        t161 = t162->get_first_token( ).
        DATA(t163) = t125.
        DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t164.
        t159 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t160 i_token = t161 i_message_26cb = t163 i_fix = t164 ).
        t157->load( ).
        APPEND t159 TO t157->items.
        t157->save( ).
        RETURN.
      ENDIF.
      DATA t165 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t165.
      DATA t166 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t166.
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = t3.
      t167 = xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t167 = abap_true.
        DATA t169 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t169.
        DATA t170 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t170.
        DATA t171 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t171.
        DATA(t172) = t3.
        t171 ?= t172.
        t170 = t171.
        DATA t173 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t173.
        DATA(t174) = t170.
        t173 = t174->row_type.
        t169 = t173.
        t166 = t169.
      ELSE.
        DATA t175 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t175.
        DATA t176 TYPE REF TO zif_lnt_union_adffe656.
        CLEAR t176.
        DATA t177 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t177.
        DATA(t178) = t3.
        t177 = t178.
        t176 ?= t177.
        t175 ?= t176.
        t166 = t175.
      ENDIF.
      t165 = t166.
      DATA t179 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t179.
      DATA(t180) = t98.
      t179 = t180.
      DATA(t181) = t2.
      DATA t182 TYPE REF TO zcl_lnt_data_reference.
      CLEAR t182.
      DATA(t183) = t165.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      t182 = NEW zcl_lnt_data_reference( i_type_9913 = t183 i_qualified_name = t184 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t179 i_input_967e = t181 i_type_9913 = t182 ).
    ENDIF.
    DATA t185 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t185.
    DATA t186 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t186.
    DATA(t187) = t1.
    DATA(t188) = zlnt_runtime_desc_78196487750d=>zlnt_member_d129_b622fad61480.
    t186 = t187->find_direct_expression( i_type_9913 = t188 ).
    t185 = t186.
    DATA(t189) = VALUE abap_bool( ).
    DATA t190 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t190.
    DATA(t191) = t185.
    t190 = t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    t192 = t193.
    DATA(t194) = VALUE abap_bool( ).
    DATA(t195) = t190.
    IF t195 IS INITIAL.
      t194 = abap_true.
    ENDIF.
    t189 = t194.
    IF t189 = abap_true.
      DATA t196 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t196.
      DATA(t197) = t1.
      DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t196 = t197->find_direct_expression( i_type_9913 = t198 ).
      t185 = t196.
    ENDIF.
    DATA(t199) = VALUE abap_bool( ).
    DATA(t200) = t185.
    t199 = xsdbool( t200 IS BOUND ).
    IF t199 = abap_true.
      DATA(t201) = VALUE abap_bool( ).
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = VALUE abap_bool( ).
      DATA(t204) = VALUE abap_bool( ).
      DATA(t205) = VALUE abap_bool( ).
      DATA t206 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t206.
      DATA(t207) = t3.
      t206 = t207.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t209.
      t208 = t209.
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = VALUE abap_bool( ).
      DATA(t212) = t206.
      IF t212 IS INITIAL.
        t211 = abap_true.
      ENDIF.
      t210 = xsdbool( t211 = abap_false ).
      t205 = t210.
      t204 = t205.
      IF t205 = abap_true.
        DATA(t213) = VALUE abap_bool( ).
        DATA(t214) = VALUE abap_bool( ).
        DATA t215 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t215.
        DATA(t216) = t3.
        t215 = t216.
        t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t213 = xsdbool( t214 = abap_false ).
        t204 = t213.
      ENDIF.
      t203 = t204.
      IF t204 = abap_true.
        DATA(t217) = VALUE abap_bool( ).
        DATA(t218) = VALUE abap_bool( ).
        DATA(t219) = t3.
        t218 = xsdbool( t219 IS BOUND AND t219 IS INSTANCE OF zcl_lnt_unknown_type ).
        t217 = xsdbool( t218 = abap_false ).
        t203 = t217.
      ENDIF.
      t202 = t203.
      IF t203 = abap_true.
        DATA(t220) = VALUE abap_bool( ).
        DATA(t221) = t98.
        DATA(t222) = t5.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t224.
        CLEAR t223.
        IF t221 IS BOUND.
          CLEAR t223.
          IF t221 IS BOUND.
            DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t225.
            DATA t226 TYPE REF TO object.
            CLEAR t226.
            CLEAR t225.
            t226 = t221.
            TRY.
                t223 ?= t226.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t223 IS NOT BOUND.
              TRY.
                  t225 ?= t221.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t225 IS BOUND.
                t223 = t225->source( ).
              ENDIF.
              IF t223 IS NOT BOUND.
                CREATE OBJECT t223.
                t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t223->oval = t221.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t224.
        IF t222 IS BOUND.
          CLEAR t224.
          IF t222 IS BOUND.
            DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t227.
            DATA t228 TYPE REF TO object.
            CLEAR t228.
            CLEAR t227.
            t228 = t222.
            TRY.
                t224 ?= t228.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t224 IS NOT BOUND.
              TRY.
                  t227 ?= t222.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t227 IS BOUND.
                t224 = t227->source( ).
              ENDIF.
              IF t224 IS NOT BOUND.
                CREATE OBJECT t224.
                t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t224->oval = t222.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t223 IS BOUND.
          t220 = t223->strict_equals( t224 ).
        ELSE.
          t220 = xsdbool( t224 IS NOT BOUND ).
        ENDIF.
        t220 = xsdbool( t220 = abap_false ).
        t202 = t220.
      ENDIF.
      t201 = t202.
      IF t202 = abap_true.
        DATA(t229) = VALUE abap_bool( ).
        DATA(t230) = VALUE abap_bool( ).
        DATA(t231) = t3.
        t230 = xsdbool( t231 IS BOUND AND t231 IS INSTANCE OF zcl_lnt_void_type ).
        t229 = xsdbool( t230 = abap_false ).
        t201 = t229.
      ENDIF.
      IF t201 = abap_true.
        DATA(t232) = VALUE string( ).
        DATA(t233) = VALUE string( ).
        DATA(t234) = VALUE string( ).
        DATA(t235) = |Append, target not a table type (|.
        DATA(t236) = VALUE string( ).
        DATA t237 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t237.
        DATA t238 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t238.
        DATA(t239) = t3.
        t238 = t239.
        t237 = t238->zlnt_builtin_clas_3f891b097658( ).
        t236 = t237->name.
        DATA(t240) = strlen( t235 ).
        t234 = |{ t235 }{ t236 }|.
        DATA(t241) = |)|.
        DATA(t242) = strlen( t234 ).
        t233 = |{ t234 }{ t241 }|.
        t232 = t233.
        DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t243.
        DATA(t244) = t2.
        t243 = t244->issues.
        DATA t245 TYPE REF TO zcl_lnt_issue.
        CLEAR t245.
        DATA(t246) = t2.
        DATA t247 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t247.
        DATA(t248) = t1.
        t247 = t248->get_first_token( ).
        DATA(t249) = t232.
        DATA t250 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t250.
        t245 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t246 i_token = t247 i_message_26cb = t249 i_fix = t250 ).
        t243->load( ).
        APPEND t245 TO t243->items.
        t243->save( ).
        RETURN.
      ENDIF.
      DATA t251 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t251.
      DATA t252 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t252.
      t251 = t252.
      DATA(t253) = VALUE abap_bool( ).
      DATA(t254) = t3.
      t253 = xsdbool( t254 IS BOUND AND t254 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t253 = abap_true.
        DATA t255 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t255.
        DATA(t256) = abap_true.
        IF t256 = abap_true.
          DATA t257 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t257.
          DATA t258 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t258.
          DATA t259 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t259.
          DATA(t260) = t3.
          t259 ?= t260.
          t258 = t259.
          DATA t261 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t261.
          DATA(t262) = t258.
          t261 = t262->row_type.
          t257 = t261.
          t255 = t257.
        ELSE.
          DATA t263 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t263.
          t255 = t263.
        ENDIF.
        t251 = t255.
      ELSE.
        DATA(t264) = VALUE abap_bool( ).
        DATA(t265) = t3.
        t264 = xsdbool( t265 IS BOUND AND t265 IS INSTANCE OF zcl_lnt_void_type ).
        IF t264 = abap_true.
          DATA t266 TYPE REF TO zcl_lnt_void_type.
          CLEAR t266.
          DATA(t267) = t3.
          t266 ?= t267.
          t251 = t266.
        ENDIF.
      ENDIF.
      DATA t268 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t268.
      DATA t269 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t269.
      DATA t270 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t270.
      DATA(t271) = abap_true.
      IF t271 = abap_true.
        DATA t272 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t272.
        DATA(t273) = t185.
        t272 = t273.
        t270 = t272.
      ELSE.
        DATA t274 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t274.
        t270 = t274.
      ENDIF.
      DATA(t275) = t2.
      DATA(t276) = t251.
      DATA t277 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t277.
      DATA t278 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t278.
      DATA t279 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t279.
      t269 = zcl_lnt_sy_source=>run_syntax( i_node = t270 i_input_967e = t275 i_target_type = t276 i_write_reference = t277 i_allow_generic_deference = t278 i_read_reference = t279 ).
      t268 = t269.
      DATA(t280) = VALUE abap_bool( ).
      DATA t281 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t281.
      DATA(t282) = t1.
      DATA(t283) = |LINES|.
      t281 = t282->find_direct_token_by_text( i_text = t283 ).
      t280 = xsdbool( t281 IS BOUND ).
      IF t280 = abap_true.
        DATA(t284) = VALUE abap_bool( ).
        DATA(t285) = t268.
        t284 = xsdbool( t285 IS BOUND AND t285 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t284 = abap_true.
          DATA t286 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t286.
          DATA(t287) = abap_true.
          IF t287 = abap_true.
            DATA t288 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t288.
            DATA t289 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t289.
            DATA t290 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t290.
            DATA(t291) = t268.
            t290 ?= t291.
            t289 = t290.
            DATA t292 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t292.
            DATA(t293) = t289.
            t292 = t293->row_type.
            t288 = t292.
            t286 = t288.
          ELSE.
            DATA t294 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t294.
            t286 = t294.
          ENDIF.
          t268 = t286.
        ELSE.
          DATA(t295) = VALUE abap_bool( ).
          DATA(t296) = VALUE abap_bool( ).
          DATA(t297) = VALUE abap_bool( ).
          DATA(t298) = t268.
          t297 = xsdbool( t298 IS BOUND AND t298 IS INSTANCE OF zcl_lnt_void_type ).
          t296 = xsdbool( t297 = abap_false ).
          t295 = t296.
          IF t296 = abap_true.
            DATA(t299) = VALUE abap_bool( ).
            DATA(t300) = VALUE abap_bool( ).
            DATA(t301) = t268.
            t300 = xsdbool( t301 IS BOUND AND t301 IS INSTANCE OF zcl_lnt_unknown_type ).
            t299 = xsdbool( t300 = abap_false ).
            t295 = t299.
          ENDIF.
          IF t295 = abap_true.
            DATA(t302) = VALUE string( ).
            DATA(t303) = |LINES OF must be a table type|.
            t302 = t303.
            DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t304.
            DATA(t305) = t2.
            t304 = t305->issues.
            DATA t306 TYPE REF TO zcl_lnt_issue.
            CLEAR t306.
            DATA(t307) = t2.
            DATA t308 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t308.
            DATA(t309) = t1.
            t308 = t309->get_first_token( ).
            DATA(t310) = t302.
            DATA t311 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t311.
            t306 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t307 i_token = t308 i_message_26cb = t310 i_fix = t311 ).
            t304->load( ).
            APPEND t306 TO t304->items.
            t304->save( ).
            RETURN.
          ENDIF.
        ENDIF.
        DATA(t312) = VALUE abap_bool( ).
        DATA(t313) = t3.
        t312 = xsdbool( t313 IS BOUND AND t313 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t312 = abap_true.
          DATA t314 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t314.
          DATA(t315) = abap_true.
          IF t315 = abap_true.
            DATA t316 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t316.
            DATA t317 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t317.
            DATA t318 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t318.
            DATA(t319) = t3.
            t318 ?= t319.
            t317 = t318.
            DATA t320 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t320.
            DATA(t321) = t317.
            t320 = t321->row_type.
            t316 = t320.
            t314 = t316.
          ELSE.
            DATA t322 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t322.
            t314 = t322.
          ENDIF.
          t3 = t314.
        ENDIF.
        DATA(t323) = VALUE abap_bool( ).
        DATA(t324) = VALUE abap_bool( ).
        DATA t325 TYPE REF TO zcl_lnt_type_utils.
        CLEAR t325.
        DATA t326 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t326.
        DATA(t327) = t2.
        t326 = t327->scope.
        t325 = NEW zcl_lnt_type_utils( i_scope = t326 ).
        DATA t328 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t328.
        DATA(t329) = abap_true.
        IF t329 = abap_true.
          DATA t330 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t330.
          DATA(t331) = t268.
          t330 = t331.
          t328 = t330.
        ELSE.
          DATA t332 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t332.
          t328 = t332.
        ENDIF.
        DATA(t333) = t3.
        t324 = t325->is_assignable( i_source_75cf = t328 i_target_5f8a = t333 ).
        DATA(t334) = abap_false.
        t323 = xsdbool( t324 = t334 ).
        IF t323 = abap_true.
          DATA(t335) = VALUE string( ).
          DATA(t336) = |Incompatible types|.
          t335 = t336.
          DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t337.
          DATA(t338) = t2.
          t337 = t338->issues.
          DATA t339 TYPE REF TO zcl_lnt_issue.
          CLEAR t339.
          DATA(t340) = t2.
          DATA t341 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t341.
          DATA(t342) = t1.
          t341 = t342->get_first_token( ).
          DATA(t343) = t335.
          DATA t344 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t344.
          t339 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t340 i_token = t341 i_message_26cb = t343 i_fix = t344 ).
          t337->load( ).
          APPEND t339 TO t337->items.
          t337->save( ).
          RETURN.
        ENDIF.
      ELSE.
        DATA(t345) = VALUE abap_bool( ).
        DATA(t346) = VALUE abap_bool( ).
        DATA t347 TYPE REF TO zcl_lnt_type_utils.
        CLEAR t347.
        DATA t348 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t348.
        DATA(t349) = t2.
        t348 = t349->scope.
        t347 = NEW zcl_lnt_type_utils( i_scope = t348 ).
        DATA(t350) = t268.
        DATA(t351) = t251.
        t346 = t347->is_assignable( i_source_75cf = t350 i_target_5f8a = t351 ).
        DATA(t352) = abap_false.
        t345 = xsdbool( t346 = t352 ).
        IF t345 = abap_true.
          DATA(t353) = VALUE string( ).
          DATA(t354) = |Incompatible types|.
          t353 = t354.
          DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t355.
          DATA(t356) = t2.
          t355 = t356->issues.
          DATA t357 TYPE REF TO zcl_lnt_issue.
          CLEAR t357.
          DATA(t358) = t2.
          DATA t359 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t359.
          DATA(t360) = t1.
          t359 = t360->get_first_token( ).
          DATA(t361) = t353.
          DATA t362 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t362.
          t357 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t358 i_token = t359 i_message_26cb = t361 i_fix = t362 ).
          t355->load( ).
          APPEND t357 TO t355->items.
          t355->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t363 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t363.
    DATA t364 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t364.
    DATA(t365) = t1.
    DATA(t366) = |FROM|.
    t364 = t365->find_expression_after_token( i_text = t366 ).
    t363 = t364.
    DATA(t367) = VALUE abap_bool( ).
    DATA(t368) = VALUE abap_bool( ).
    DATA(t369) = t363.
    t368 = xsdbool( t369 IS BOUND ).
    t367 = t368.
    IF t368 = abap_true.
      DATA(t370) = VALUE abap_bool( ).
      DATA t371 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t371.
      DATA t372 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t372.
      DATA(t373) = t363.
      t372 = t373.
      t371 = t372->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t370 = xsdbool( t371 IS BOUND AND t371 IS INSTANCE OF zcl_lnt_st_source ).
      t367 = t370.
    ENDIF.
    IF t367 = abap_true.
      DATA t374 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t374.
      DATA t375 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t375.
      DATA(t376) = abap_true.
      IF t376 = abap_true.
        DATA t377 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t377.
        DATA(t378) = t363.
        t377 = t378.
        t375 = t377.
      ELSE.
        DATA t379 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t379.
        t375 = t379.
      ENDIF.
      DATA(t380) = t2.
      DATA t381 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t381.
      DATA t382 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t382.
      DATA t383 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t383.
      DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t384.
      t374 = zcl_lnt_sy_source=>run_syntax( i_node = t375 i_input_967e = t380 i_target_type = t381 i_write_reference = t382 i_allow_generic_deference = t383 i_read_reference = t384 ).
    ENDIF.
    DATA t385 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t385.
    DATA t386 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t386.
    DATA(t387) = t1.
    DATA(t388) = |TO|.
    t386 = t387->find_expression_after_token( i_text = t388 ).
    t385 = t386.
    DATA(t389) = VALUE abap_bool( ).
    DATA(t390) = VALUE abap_bool( ).
    DATA(t391) = t385.
    t390 = xsdbool( t391 IS BOUND ).
    t389 = t390.
    IF t390 = abap_true.
      DATA(t392) = VALUE abap_bool( ).
      DATA t393 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t393.
      DATA t394 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t394.
      DATA(t395) = t385.
      t394 = t395.
      t393 = t394->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t392 = xsdbool( t393 IS BOUND AND t393 IS INSTANCE OF zcl_lnt_st_source ).
      t389 = t392.
    ENDIF.
    IF t389 = abap_true.
      DATA t396 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t396.
      DATA t397 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t397.
      DATA(t398) = abap_true.
      IF t398 = abap_true.
        DATA t399 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t399.
        DATA(t400) = t385.
        t399 = t400.
        t397 = t399.
      ELSE.
        DATA t401 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t401.
        t397 = t401.
      ENDIF.
      DATA(t402) = t2.
      DATA t403 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t403.
      DATA t404 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t404.
      DATA t405 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t405.
      DATA t406 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t406.
      t396 = zcl_lnt_sy_source=>run_syntax( i_node = t397 i_input_967e = t402 i_target_type = t403 i_write_reference = t404 i_allow_generic_deference = t405 i_read_reference = t406 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d855_ef5af09e4b1c.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
