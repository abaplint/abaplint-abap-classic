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
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t6 = t1->find_direct_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    t9 = xsdbool( t5 IS BOUND ).
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_abstract_type.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      t12 = t5.
      t11 = zcl_lnt_sy_target=>run_syntax( i_node = t12 i_input_967e = t2 ).
      t3 = t11.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = |ASSIGNING|.
    t16 = t1->find_expression_after_token( i_text = t18 ).
    t15 = t16.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    t20 = xsdbool( t15 IS BOUND ).
    t19 = t20.
    IF t20 = abap_true.
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      t24 = t15.
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
        DATA t43 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t45 TYPE REF TO zcl_lnt_abstract_type.
        t45 = t3.
        DATA t47 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t48) = xsdbool( t45 IS INITIAL ).
        IF t48 = abap_true.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t52 TYPE REF TO zcl_lnt_abstract_type.
          t52 = t45.
          t51 = t52->zlnt_builtin_clas_3f891b097658( ).
          t47 = t51.
        ENDIF.
        t43 = t47.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t55) = xsdbool( t43 IS INITIAL ).
        IF t55 = abap_true.
        ELSE.
          DATA(t58) = VALUE string( ).
          DATA t59 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          t59 = t43.
          t58 = t59->name.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t58.
          t54 = t61.
        ENDIF.
        t41 = t54.
        DATA(t62) = VALUE string( ).
        DATA(t63) = VALUE abap_bool( ).
        IF t41 IS INITIAL.
          t63 = abap_true.
        ELSEIF t41->has = abap_false.
          t63 = abap_true.
        ENDIF.
        IF t63 = abap_true.
          t62 = |undefined|.
        ELSE.
          DATA(t66) = VALUE string( ).
          t66 = t41->value.
          t62 = t66.
        ENDIF.
        t40 = t62.
        DATA(t68) = strlen( t39 ).
        t38 = |{ t39 }{ t40 }|.
        t37 = t38.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t69 = t2->issues.
        DATA t71 TYPE REF TO zcl_lnt_issue.
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        t73 = t1->get_first_token( ).
        DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t71 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t73 i_message_26cb = t37 i_fix = t76 ).
        t69->load( ).
        APPEND t71 TO t69->items.
        t69->save( ).
        RETURN.
      ENDIF.
      DATA t78 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = t3.
      t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t79 = abap_true.
        DATA t83 TYPE REF TO zcl_lnt_ty_table_type.
        t83 ?= t3.
        DATA t85 TYPE REF TO zcl_lnt_abstract_type.
        t85 = t83->row_type.
        t78 = t85.
      ELSE.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        DATA t88 TYPE REF TO zif_lnt_union_adffe656.
        DATA t89 TYPE REF TO zcl_lnt_abstract_type.
        t89 = t3.
        t88 ?= t89.
        t87 ?= t88.
        t78 = t87.
      ENDIF.
      DATA t91 TYPE REF TO zcl_lnt_expression_node.
      t91 = t15.
      DATA t94 TYPE REF TO zcl_lnt_abstract_type.
      t94 = t78.
      zcl_lnt_sy_fs_target=>run_syntax( i_node = t91 i_input_967e = t2 i_type_9913 = t94 ).
    ENDIF.
    DATA t98 TYPE REF TO zcl_lnt_expression_node.
    DATA t99 TYPE REF TO zcl_lnt_expression_node.
    DATA(t101) = |INTO|.
    t99 = t1->find_expression_after_token( i_text = t101 ).
    t98 = t99.
    DATA(t102) = VALUE abap_bool( ).
    DATA(t103) = VALUE abap_bool( ).
    t103 = xsdbool( t98 IS BOUND ).
    t102 = t103.
    IF t103 = abap_true.
      DATA(t105) = VALUE abap_bool( ).
      DATA(t106) = VALUE i( ).
      DATA(t107) = VALUE string( ).
      DATA(t108) = VALUE string( ).
      t108 = t1->concat_tokens( ).
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
        DATA t131 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t133 TYPE REF TO zcl_lnt_abstract_type.
        t133 = t3.
        DATA t135 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t136) = xsdbool( t133 IS INITIAL ).
        IF t136 = abap_true.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA t140 TYPE REF TO zcl_lnt_abstract_type.
          t140 = t133.
          t139 = t140->zlnt_builtin_clas_3f891b097658( ).
          t135 = t139.
        ENDIF.
        t131 = t135.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t143) = xsdbool( t131 IS INITIAL ).
        IF t143 = abap_true.
        ELSE.
          DATA(t146) = VALUE string( ).
          DATA t147 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          t147 = t131.
          t146 = t147->name.
          DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t149->has = abap_true.
          t149->value = t146.
          t142 = t149.
        ENDIF.
        t129 = t142.
        DATA(t150) = VALUE string( ).
        DATA(t151) = VALUE abap_bool( ).
        IF t129 IS INITIAL.
          t151 = abap_true.
        ELSEIF t129->has = abap_false.
          t151 = abap_true.
        ENDIF.
        IF t151 = abap_true.
          t150 = |undefined|.
        ELSE.
          DATA(t154) = VALUE string( ).
          t154 = t129->value.
          t150 = t154.
        ENDIF.
        t128 = t150.
        DATA(t156) = strlen( t127 ).
        t126 = |{ t127 }{ t128 }|.
        t125 = t126.
        DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t157 = t2->issues.
        DATA t159 TYPE REF TO zcl_lnt_issue.
        DATA t161 TYPE REF TO zcl_lnt_abstract_token.
        t161 = t1->get_first_token( ).
        DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t159 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t161 i_message_26cb = t125 i_fix = t164 ).
        t157->load( ).
        APPEND t159 TO t157->items.
        t157->save( ).
        RETURN.
      ENDIF.
      DATA t166 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = t3.
      t167 = xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t167 = abap_true.
        DATA t171 TYPE REF TO zcl_lnt_ty_table_type.
        t171 ?= t3.
        DATA t173 TYPE REF TO zcl_lnt_abstract_type.
        t173 = t171->row_type.
        t166 = t173.
      ELSE.
        DATA t175 TYPE REF TO zcl_lnt_abstract_type.
        DATA t176 TYPE REF TO zif_lnt_union_adffe656.
        DATA t177 TYPE REF TO zcl_lnt_abstract_type.
        t177 = t3.
        t176 ?= t177.
        t175 ?= t176.
        t166 = t175.
      ENDIF.
      DATA t179 TYPE REF TO zcl_lnt_expression_node.
      t179 = t98.
      DATA t182 TYPE REF TO zcl_lnt_data_reference.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t182 = NEW zcl_lnt_data_reference( i_type_9913 = t166 i_qualified_name = t184 ).
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t179 i_input_967e = t2 i_type_9913 = t182 ).
    ENDIF.
    DATA t185 TYPE REF TO zcl_lnt_expression_node.
    DATA t186 TYPE REF TO zcl_lnt_expression_node.
    DATA(t188) = zlnt_runtime_desc_78196487750d=>zlnt_member_d129_b622fad61480.
    t186 = t1->find_direct_expression( i_type_9913 = t188 ).
    t185 = t186.
    DATA(t189) = VALUE abap_bool( ).
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t189 = xsdbool( t185 IS INITIAL ).
    IF t189 = abap_true.
      DATA t196 TYPE REF TO zcl_lnt_expression_node.
      DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t196 = t1->find_direct_expression( i_type_9913 = t198 ).
      t185 = t196.
    ENDIF.
    DATA(t199) = VALUE abap_bool( ).
    t199 = xsdbool( t185 IS BOUND ).
    IF t199 = abap_true.
      DATA(t201) = VALUE abap_bool( ).
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = VALUE abap_bool( ).
      DATA(t204) = VALUE abap_bool( ).
      DATA(t205) = VALUE abap_bool( ).
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = xsdbool( t3 IS INITIAL ).
      t210 = xsdbool( t211 = abap_false ).
      t205 = t210.
      t204 = t205.
      IF t205 = abap_true.
        DATA(t213) = VALUE abap_bool( ).
        DATA(t214) = VALUE abap_bool( ).
        DATA t215 TYPE REF TO zcl_lnt_abstract_type.
        t215 = t3.
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
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t98 IS BOUND.
          IF t98 IS BOUND.
            DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t226 TYPE REF TO object.
            t226 = t98.
            TRY.
                t223 ?= t226.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t223 IS NOT BOUND.
              TRY.
                  t225 ?= t98.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t225 IS BOUND.
                t223 = t225->source( ).
              ENDIF.
              IF t223 IS NOT BOUND.
                CREATE OBJECT t223.
                t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t223->oval = t98.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t5 IS BOUND.
          IF t5 IS BOUND.
            DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t228 TYPE REF TO object.
            t228 = t5.
            TRY.
                t224 ?= t228.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t224 IS NOT BOUND.
              TRY.
                  t227 ?= t5.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t227 IS BOUND.
                t224 = t227->source( ).
              ENDIF.
              IF t224 IS NOT BOUND.
                CREATE OBJECT t224.
                t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t224->oval = t5.
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
        DATA t238 TYPE REF TO zcl_lnt_abstract_type.
        t238 = t3.
        t237 = t238->zlnt_builtin_clas_3f891b097658( ).
        t236 = t237->name.
        DATA(t240) = strlen( t235 ).
        t234 = |{ t235 }{ t236 }|.
        DATA(t241) = |)|.
        DATA(t242) = strlen( t234 ).
        t233 = |{ t234 }{ t241 }|.
        t232 = t233.
        DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t243 = t2->issues.
        DATA t245 TYPE REF TO zcl_lnt_issue.
        DATA t247 TYPE REF TO zcl_lnt_abstract_token.
        t247 = t1->get_first_token( ).
        DATA t250 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t245 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t247 i_message_26cb = t232 i_fix = t250 ).
        t243->load( ).
        APPEND t245 TO t243->items.
        t243->save( ).
        RETURN.
      ENDIF.
      DATA t251 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t253) = VALUE abap_bool( ).
      DATA(t254) = t3.
      t253 = xsdbool( t254 IS BOUND AND t254 IS INSTANCE OF zcl_lnt_ty_table_type ).
      IF t253 = abap_true.
        DATA t259 TYPE REF TO zcl_lnt_ty_table_type.
        t259 ?= t3.
        DATA t261 TYPE REF TO zcl_lnt_abstract_type.
        t261 = t259->row_type.
        t251 = t261.
      ELSE.
        DATA(t264) = VALUE abap_bool( ).
        DATA(t265) = t3.
        t264 = xsdbool( t265 IS BOUND AND t265 IS INSTANCE OF zcl_lnt_void_type ).
        IF t264 = abap_true.
          DATA t266 TYPE REF TO zcl_lnt_void_type.
          t266 ?= t3.
          t251 = t266.
        ENDIF.
      ENDIF.
      DATA t268 TYPE REF TO zcl_lnt_abstract_type.
      DATA t269 TYPE REF TO zcl_lnt_abstract_type.
      DATA t270 TYPE REF TO zcl_lnt_expression_node.
      t270 = t185.
      DATA t277 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t278 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t279 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t269 = zcl_lnt_sy_source=>run_syntax( i_node = t270 i_input_967e = t2 i_target_type = t251 i_write_reference = t277 i_allow_generic_deference = t278 i_read_reference = t279 ).
      t268 = t269.
      DATA(t280) = VALUE abap_bool( ).
      DATA t281 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t283) = |LINES|.
      t281 = t1->find_direct_token_by_text( i_text = t283 ).
      t280 = xsdbool( t281 IS BOUND ).
      IF t280 = abap_true.
        DATA(t284) = VALUE abap_bool( ).
        DATA(t285) = t268.
        t284 = xsdbool( t285 IS BOUND AND t285 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t284 = abap_true.
          DATA t290 TYPE REF TO zcl_lnt_ty_table_type.
          t290 ?= t268.
          DATA t292 TYPE REF TO zcl_lnt_abstract_type.
          t292 = t290->row_type.
          t268 = t292.
        ELSE.
          DATA(t295) = VALUE abap_bool( ).
          DATA(t296) = VALUE abap_bool( ).
          DATA(t297) = VALUE abap_bool( ).
          t297 = xsdbool( t268 IS BOUND AND t268 IS INSTANCE OF zcl_lnt_void_type ).
          t296 = xsdbool( t297 = abap_false ).
          t295 = t296.
          IF t296 = abap_true.
            DATA(t299) = VALUE abap_bool( ).
            DATA(t300) = VALUE abap_bool( ).
            t300 = xsdbool( t268 IS BOUND AND t268 IS INSTANCE OF zcl_lnt_unknown_type ).
            t299 = xsdbool( t300 = abap_false ).
            t295 = t299.
          ENDIF.
          IF t295 = abap_true.
            DATA(t302) = VALUE string( ).
            t302 = |LINES OF must be a table type|.
            DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t304 = t2->issues.
            DATA t306 TYPE REF TO zcl_lnt_issue.
            DATA t308 TYPE REF TO zcl_lnt_abstract_token.
            t308 = t1->get_first_token( ).
            DATA t311 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t306 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t308 i_message_26cb = t302 i_fix = t311 ).
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
          DATA t318 TYPE REF TO zcl_lnt_ty_table_type.
          t318 ?= t3.
          DATA t320 TYPE REF TO zcl_lnt_abstract_type.
          t320 = t318->row_type.
          t3 = t320.
        ENDIF.
        DATA(t323) = VALUE abap_bool( ).
        DATA(t324) = VALUE abap_bool( ).
        DATA t325 TYPE REF TO zcl_lnt_type_utils.
        DATA t326 TYPE REF TO zcl_lnt_current_scope.
        t326 = t2->scope.
        t325 = NEW zcl_lnt_type_utils( i_scope = t326 ).
        DATA t328 TYPE REF TO zcl_lnt_abstract_type.
        t328 = t268.
        t324 = t325->is_assignable( i_source_75cf = t328 i_target_5f8a = t3 ).
        t323 = xsdbool( t324 = abap_false ).
        IF t323 = abap_true.
          DATA(t335) = VALUE string( ).
          t335 = |Incompatible types|.
          DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t337 = t2->issues.
          DATA t339 TYPE REF TO zcl_lnt_issue.
          DATA t341 TYPE REF TO zcl_lnt_abstract_token.
          t341 = t1->get_first_token( ).
          DATA t344 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t339 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t341 i_message_26cb = t335 i_fix = t344 ).
          t337->load( ).
          APPEND t339 TO t337->items.
          t337->save( ).
          RETURN.
        ENDIF.
      ELSE.
        DATA(t345) = VALUE abap_bool( ).
        DATA(t346) = VALUE abap_bool( ).
        DATA t347 TYPE REF TO zcl_lnt_type_utils.
        DATA t348 TYPE REF TO zcl_lnt_current_scope.
        t348 = t2->scope.
        t347 = NEW zcl_lnt_type_utils( i_scope = t348 ).
        t346 = t347->is_assignable( i_source_75cf = t268 i_target_5f8a = t251 ).
        t345 = xsdbool( t346 = abap_false ).
        IF t345 = abap_true.
          DATA(t353) = VALUE string( ).
          t353 = |Incompatible types|.
          DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t355 = t2->issues.
          DATA t357 TYPE REF TO zcl_lnt_issue.
          DATA t359 TYPE REF TO zcl_lnt_abstract_token.
          t359 = t1->get_first_token( ).
          DATA t362 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t357 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t359 i_message_26cb = t353 i_fix = t362 ).
          t355->load( ).
          APPEND t357 TO t355->items.
          t355->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t363 TYPE REF TO zcl_lnt_expression_node.
    DATA t364 TYPE REF TO zcl_lnt_expression_node.
    DATA(t366) = |FROM|.
    t364 = t1->find_expression_after_token( i_text = t366 ).
    t363 = t364.
    DATA(t367) = VALUE abap_bool( ).
    DATA(t368) = VALUE abap_bool( ).
    t368 = xsdbool( t363 IS BOUND ).
    t367 = t368.
    IF t368 = abap_true.
      DATA(t370) = VALUE abap_bool( ).
      DATA t371 TYPE REF TO zif_lnt_statement_runnable.
      DATA t372 TYPE REF TO zcl_lnt_expression_node.
      t372 = t363.
      t371 = t372->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t370 = xsdbool( t371 IS BOUND AND t371 IS INSTANCE OF zcl_lnt_st_source ).
      t367 = t370.
    ENDIF.
    IF t367 = abap_true.
      DATA t374 TYPE REF TO zcl_lnt_abstract_type.
      DATA t375 TYPE REF TO zcl_lnt_expression_node.
      t375 = t363.
      DATA t381 TYPE REF TO zcl_lnt_abstract_type.
      DATA t382 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t383 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t374 = zcl_lnt_sy_source=>run_syntax( i_node = t375 i_input_967e = t2 i_target_type = t381 i_write_reference = t382 i_allow_generic_deference = t383 i_read_reference = t384 ).
    ENDIF.
    DATA t385 TYPE REF TO zcl_lnt_expression_node.
    DATA t386 TYPE REF TO zcl_lnt_expression_node.
    DATA(t388) = |TO|.
    t386 = t1->find_expression_after_token( i_text = t388 ).
    t385 = t386.
    DATA(t389) = VALUE abap_bool( ).
    DATA(t390) = VALUE abap_bool( ).
    t390 = xsdbool( t385 IS BOUND ).
    t389 = t390.
    IF t390 = abap_true.
      DATA(t392) = VALUE abap_bool( ).
      DATA t393 TYPE REF TO zif_lnt_statement_runnable.
      DATA t394 TYPE REF TO zcl_lnt_expression_node.
      t394 = t385.
      t393 = t394->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t392 = xsdbool( t393 IS BOUND AND t393 IS INSTANCE OF zcl_lnt_st_source ).
      t389 = t392.
    ENDIF.
    IF t389 = abap_true.
      DATA t396 TYPE REF TO zcl_lnt_abstract_type.
      DATA t397 TYPE REF TO zcl_lnt_expression_node.
      t397 = t385.
      DATA t403 TYPE REF TO zcl_lnt_abstract_type.
      DATA t404 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t405 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t406 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t396 = zcl_lnt_sy_source=>run_syntax( i_node = t397 i_input_967e = t2 i_target_type = t403 i_write_reference = t404 i_allow_generic_deference = t405 i_read_reference = t406 ).
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
