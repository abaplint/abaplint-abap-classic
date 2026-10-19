* TS: src/abap/5_syntax/statements/move.ts:14:1 Move
CLASS zcl_lnt_sy_move DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_move IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t4 = t1->find_direct_expressions( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 1 INTO t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t11 ?= t10.
      DATA t12 TYPE REF TO object.
      t12 = t11->as_ref( ).
      t8 ?= t12.
    ELSE.
      t8 ?= t10.
    ENDIF.
    t7 = t8.
    DATA t13 TYPE REF TO zcl_lnt_expression_node.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    t15 = t7.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA(t18) = xsdbool( t15 IS INITIAL ).
    IF t18 = abap_true.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t21 = t15->find_direct_expression( i_type_9913 = t23 ).
      t17 = t21.
    ENDIF.
    t13 = t17.
    DATA t24 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t26) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26 = xsdbool( t13 IS INITIAL ).
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t34) = VALUE abap_bool( ).
      t34 = xsdbool( t7 IS BOUND ).
      IF t34 = abap_true.
        DATA t36 TYPE REF TO zcl_lnt_abstract_type.
        t36 = zcl_lnt_sy_target=>run_syntax( i_node = t7 i_input_967e = t2 ).
        t33 = t36.
      ELSE.
        CLEAR t33.
      ENDIF.
      t24 = t33.
      DATA t41 TYPE REF TO zcl_lnt_expression_node.
      DATA t42 TYPE REF TO object.
      DATA(t43) = VALUE i( ).
      DO.
        t3->load( ).
        IF t43 >= lines( t3->items ).
          EXIT.
        ENDIF.
        CLEAR t42.
        READ TABLE t3->items INDEX t43 + 1 INTO t42.
        t43 = t43 + 1.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        CLEAR t41.
        IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t44 ?= t42.
          DATA t45 TYPE REF TO object.
          CLEAR t45.
          t45 = t44->as_ref( ).
          t41 ?= t45.
        ELSE.
          t41 ?= t42.
        ENDIF.
        DATA(t46) = VALUE abap_bool( ).
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t50.
        CLEAR t49.
        IF t41 IS BOUND.
          DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t51.
          DATA t52 TYPE REF TO object.
          CLEAR t52.
          CLEAR t51.
          t52 = t41.
          TRY.
              t49 ?= t52.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t49 IS NOT BOUND.
            TRY.
                t51 ?= t41.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t51 IS BOUND.
              t49 = t51->source( ).
            ENDIF.
            IF t49 IS NOT BOUND.
              CREATE OBJECT t49.
              t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t49->oval = t41.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t50.
        IF t7 IS BOUND.
          DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t53.
          DATA t54 TYPE REF TO object.
          CLEAR t54.
          CLEAR t53.
          t54 = t7.
          TRY.
              t50 ?= t54.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50 IS NOT BOUND.
            TRY.
                t53 ?= t7.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t53 IS BOUND.
              t50 = t53->source( ).
            ENDIF.
            IF t50 IS NOT BOUND.
              CREATE OBJECT t50.
              t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t50->oval = t7.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t49 IS BOUND.
          t46 = t49->strict_equals( t50 ).
        ELSE.
          t46 = xsdbool( t50 IS NOT BOUND ).
        ENDIF.
        IF t46 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t55 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t55.
        t55 = zcl_lnt_sy_target=>run_syntax( i_node = t41 i_input_967e = t2 ).
      ENDDO.
    ENDIF.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t59 = xsdbool( t13 IS INITIAL ).
    t58 = t59.
    IF t59 = abap_true.
      DATA(t66) = VALUE abap_bool( ).
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = xsdbool( t7 IS INITIAL ).
      t71 = xsdbool( t72 = abap_false ).
      t66 = t71.
      t58 = t66.
    ENDIF.
    IF t58 = abap_true.
      DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t76 TYPE REF TO zcl_lnt_current_scope.
      DATA t77 TYPE REF TO zcl_lnt_current_scope.
      t77 = t2->scope.
      t76 = t77.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t82) = VALUE string( ).
      t82 = t7->concat_tokens( ).
      DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t84->has = abap_true.
      t84->value = t82.
      t79 = t84.
      DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t87) = VALUE abap_bool( ).
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t88 = t79.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t92) = VALUE abap_bool( ).
      IF t88 IS INITIAL.
        t92 = abap_true.
      ELSEIF t88->has = abap_false.
        t92 = abap_true.
      ENDIF.
      t87 = t92.
      IF t87 = abap_true.
      ELSE.
        DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t99 = t76->current.
        t98 = t99.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t102) = xsdbool( t98 IS INITIAL ).
        IF t102 = abap_true.
        ELSE.
          DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t106 = t98.
          DATA(t108) = VALUE string( ).
          t108 = t79->value.
          t105 = t106->find_variable( i_name = t108 ).
          t101 = t105.
        ENDIF.
        t96 = t101.
        DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t111) = VALUE abap_bool( ).
        t111 = xsdbool( t96 IS BOUND ).
        IF t111 = abap_true.
          t110 = t96.
        ELSE.
          DATA t118 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t122) = VALUE string( ).
          t122 = t79->value.
          DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t124->has = abap_true.
          t124->value = t122.
          t120 = t124.
          t118 = t76->find_type_pool_constant( i_name = t120 ).
          t110 = t118.
        ENDIF.
        t86 = t110.
      ENDIF.
      t74 = t86.
      DATA(t126) = VALUE abap_bool( ).
      DATA(t127) = VALUE abap_bool( ).
      t127 = xsdbool( t74 IS BOUND ).
      t126 = t127.
      IF t127 = abap_true.
        DATA(t129) = VALUE abap_bool( ).
        DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t134 = t74->meta.
        t130 = t134.
        DATA(t136) = |read_only|.
        t129 = t130->includes( p0 = t136 ).
        t126 = t129.
      ENDIF.
      IF t126 = abap_true.
        DATA(t137) = VALUE string( ).
        DATA(t138) = VALUE string( ).
        DATA(t139) = VALUE string( ).
        DATA(t140) = |"|.
        DATA(t141) = VALUE string( ).
        t141 = t7->concat_tokens( ).
        DATA(t143) = strlen( t140 ).
        t139 = |{ t140 }{ t141 }|.
        DATA(t144) = |" cannot be modified, it is readonly|.
        DATA(t145) = strlen( t139 ).
        t138 = |{ t139 }{ t144 }|.
        t137 = t138.
        DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t146 = t2->issues.
        DATA t148 TYPE REF TO zcl_lnt_issue.
        DATA t150 TYPE REF TO zcl_lnt_abstract_token.
        t150 = t7->get_first_token( ).
        DATA t153 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t148 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t150 i_message_26cb = t137 i_fix = t153 ).
        t146->load( ).
        APPEND t148 TO t146->items.
        t146->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t154 TYPE REF TO zcl_lnt_expression_node.
    DATA t155 TYPE REF TO zcl_lnt_expression_node.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t155 = t1->find_direct_expression( i_type_9913 = t157 ).
    t154 = t155.
    DATA t158 TYPE REF TO zcl_lnt_abstract_type.
    DATA t159 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t160) = VALUE abap_bool( ).
    t160 = xsdbool( t154 IS BOUND ).
    IF t160 = abap_true.
      DATA t162 TYPE REF TO zcl_lnt_abstract_type.
      DATA t163 TYPE REF TO zcl_lnt_expression_node.
      t163 = t154.
      DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t172 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t162 = zcl_lnt_sy_source=>run_syntax( i_node = t163 i_input_967e = t2 i_target_type = t24 i_write_reference = t170 i_allow_generic_deference = t171 i_read_reference = t172 ).
      t159 = t162.
    ELSE.
      CLEAR t159.
    ENDIF.
    t158 = t159.
    DATA(t174) = VALUE abap_bool( ).
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t174 = xsdbool( t158 IS INITIAL ).
    IF t174 = abap_true.
      DATA(t181) = VALUE string( ).
      t181 = |No source type determined|.
      DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t183 = t2->issues.
      DATA t185 TYPE REF TO zcl_lnt_issue.
      DATA t187 TYPE REF TO zcl_lnt_abstract_token.
      t187 = t1->get_first_token( ).
      DATA t190 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t185 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t187 i_message_26cb = t181 i_fix = t190 ).
      t183->load( ).
      APPEND t185 TO t183->items.
      t183->save( ).
      RETURN.
    ENDIF.
    DATA(t191) = VALUE abap_bool( ).
    DATA t192 TYPE REF TO zcl_lnt_expression_node.
    DATA(t194) = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
    t192 = t1->find_direct_expression( i_type_9913 = t194 ).
    t191 = xsdbool( t192 IS BOUND ).
    IF t191 = abap_true.
      DATA t195 TYPE REF TO zcl_lnt_abstract_type.
      DATA t197 TYPE REF TO zcl_lnt_abstract_type.
      t197 = t158.
      t195 = zcl_lnt_sy_dereference=>run_syntax( i_node = t1 i_type_9913 = t197 i_input_967e = t2 ).
      t158 = t195.
    ENDIF.
    DATA(t203) = VALUE abap_bool( ).
    t203 = xsdbool( t13 IS BOUND ).
    IF t203 = abap_true.
      DATA(t205) = VALUE abap_bool( ).
      DATA(t206) = VALUE abap_bool( ).
      DATA(t207) = t158.
      t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_packed_type ).
      t205 = t206.
      IF t206 = abap_true.
        DATA(t208) = VALUE abap_bool( ).
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        DATA t210 TYPE REF TO zcl_lnt_expression_node.
        t210 = t154.
        DATA t212 TYPE REF TO zcl_lnt_expression_node.
        DATA(t213) = xsdbool( t210 IS INITIAL ).
        IF t213 = abap_true.
        ELSE.
          DATA t216 TYPE REF TO zcl_lnt_expression_node.
          DATA t217 TYPE REF TO zcl_lnt_expression_node.
          t217 = t210.
          DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
          t216 = t217->find_direct_expression( i_type_9913 = t219 ).
          t212 = t216.
        ENDIF.
        t209 = t212.
        t208 = xsdbool( t209 IS BOUND ).
        t205 = t208.
      ENDIF.
      IF t205 = abap_true.
        DATA t220 TYPE REF TO zcl_lnt_packed_type.
        DATA(t221) = CONV f( 8 ).
        DATA(t222) = CONV f( 0 ).
        DATA t223 TYPE REF TO zcl_lnt_abstract_type_data.
        t220 = NEW zcl_lnt_packed_type( i_length = t221 i_decimals_2eed = t222 i_extra = t223 ).
        t158 = t220.
      ENDIF.
      DATA t224 TYPE REF TO zcl_lnt_expression_node.
      t224 = t13.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t224 i_input_967e = t2 i_type_9913 = t158 ).
      t24 = t158.
    ENDIF.
    DATA(t229) = VALUE abap_bool( ).
    DATA t230 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t232) = |?=|.
    t230 = t1->find_direct_token_by_text( i_text = t232 ).
    t229 = xsdbool( t230 IS BOUND ).
    IF t229 = abap_true.
      DATA(t233) = VALUE abap_bool( ).
      DATA(t234) = VALUE abap_bool( ).
      DATA t235 TYPE REF TO zcl_lnt_type_utils.
      DATA t236 TYPE REF TO zcl_lnt_type_utils.
      DATA t237 TYPE REF TO zcl_lnt_current_scope.
      t237 = t2->scope.
      t236 = NEW zcl_lnt_type_utils( i_scope = t237 ).
      t235 = t236.
      DATA t239 TYPE REF TO zcl_lnt_abstract_type.
      t239 = t158.
      DATA t241 TYPE REF TO zcl_lnt_abstract_type.
      t241 = t24.
      t234 = abap_true.
      t233 = xsdbool( t234 = abap_false ).
      IF t233 = abap_true.
        DATA(t245) = VALUE string( ).
        t245 = |Incompatible types|.
        DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t247 = t2->issues.
        DATA t249 TYPE REF TO zcl_lnt_issue.
        DATA t251 TYPE REF TO zcl_lnt_abstract_token.
        t251 = t1->get_first_token( ).
        DATA t254 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t249 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t251 i_message_26cb = t245 i_fix = t254 ).
        t247->load( ).
        APPEND t249 TO t247->items.
        t247->save( ).
        RETURN.
      ENDIF.
    ELSE.
      DATA(t255) = VALUE abap_bool( ).
      DATA(t256) = VALUE abap_bool( ).
      DATA t258 TYPE REF TO zcl_lnt_type_utils.
      DATA t259 TYPE REF TO zcl_lnt_current_scope.
      t259 = t2->scope.
      t258 = NEW zcl_lnt_type_utils( i_scope = t259 ).
      DATA t261 TYPE REF TO zcl_lnt_abstract_type.
      t261 = t158.
      DATA t263 TYPE REF TO zcl_lnt_abstract_type.
      t263 = t24.
      DATA(t267) = VALUE abap_bool( ).
      DATA(t268) = VALUE abap_bool( ).
      DATA(t269) = VALUE abap_bool( ).
      DATA t272 TYPE REF TO zcl_lnt_expression_node.
      t272 = t154.
      DATA t274 TYPE REF TO zcl_lnt_expression_node.
      DATA(t275) = xsdbool( t272 IS INITIAL ).
      IF t275 = abap_true.
      ELSE.
        DATA t278 TYPE REF TO zcl_lnt_expression_node.
        DATA t279 TYPE REF TO zcl_lnt_expression_node.
        t279 = t272.
        DATA(t281) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
        t278 = t279->find_first_expression( i_type_9913 = t281 ).
        t274 = t278.
      ENDIF.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t284) = VALUE abap_bool( ).
      DATA(t285) = xsdbool( t274 IS INITIAL ).
      t284 = xsdbool( t285 = abap_false ).
      t269 = t284.
      t268 = t269.
      DATA(t287) = VALUE abap_bool( ).
      DATA(t288) = VALUE abap_bool( ).
      DATA(t289) = VALUE abap_bool( ).
      t289 = t268.
      IF t268 = abap_true.
        DATA(t291) = VALUE abap_bool( ).
        t291 = xsdbool( t261 IS BOUND AND t261 IS INSTANCE OF zcl_lnt_hex_type ).
        t289 = t291.
      ENDIF.
      t288 = t289.
      IF t289 = abap_true.
        DATA(t293) = VALUE abap_bool( ).
        t293 = xsdbool( t263 IS BOUND AND t263 IS INSTANCE OF zcl_lnt_integer_type ).
        t288 = t293.
      ENDIF.
      IF t288 = abap_true.
        t287 = abap_false.
      ELSE.
        DATA(t296) = VALUE abap_bool( ).
        t296 = t258->is_assignable( i_source_75cf = t261 i_target_5f8a = t263 ).
        t287 = t296.
      ENDIF.
      t267 = t287.
      t256 = t267.
      t255 = xsdbool( t256 = abap_false ).
      IF t255 = abap_true.
        DATA(t301) = VALUE string( ).
        t301 = |Incompatible types|.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t303 = t2->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        t307 = t1->get_first_token( ).
        DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t307 i_message_26cb = t301 i_fix = t310 ).
        t303->load( ).
        APPEND t305 TO t303->items.
        t303->save( ).
        RETURN.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d934_98952bc1b50e.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
