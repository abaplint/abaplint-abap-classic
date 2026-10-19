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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t3 = t1->find_direct_expressions( i_type_9913 = t6 ).
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
    IF xsdbool( t15 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
      t17 = t15->find_direct_expression( i_type_9913 = t23 ).
    ENDIF.
    t13 = t17.
    DATA t24 TYPE REF TO zcl_lnt_abstract_type.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t13 IS INITIAL ) = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t7 IS BOUND ) = abap_true.
        t33 = zcl_lnt_sy_target=>run_syntax( i_node = t7 i_input_967e = t2 ).
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
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t58 = xsdbool( xsdbool( t7 IS INITIAL ) = abap_false ).
    ENDIF.
    IF t58 = abap_true.
      DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t76 TYPE REF TO zcl_lnt_current_scope.
      t76 = t2->scope.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t82) = VALUE string( ).
      t82 = t7->concat_tokens( ).
      DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t84->has = abap_true.
      t84->value = t82.
      t79 = t84.
      DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t88 = t79.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t92) = VALUE abap_bool( ).
      IF t88 IS INITIAL.
        t92 = abap_true.
      ELSEIF t88->has = abap_false.
        t92 = abap_true.
      ENDIF.
      IF t92 = abap_true.
      ELSE.
        DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t98 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t98 = t76->current.
        DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t98 IS INITIAL ) = abap_true.
        ELSE.
          DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t106 = t98.
          DATA(t108) = VALUE string( ).
          t108 = t79->value.
          t101 = t106->find_variable( i_name = t108 ).
        ENDIF.
        t96 = t101.
        DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t96 IS BOUND ) = abap_true.
          t110 = t96.
        ELSE.
          DATA(t122) = VALUE string( ).
          t122 = t79->value.
          DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t124->has = abap_true.
          t124->value = t122.
          t110 = t76->find_type_pool_constant( i_name = t124 ).
        ENDIF.
        t86 = t110.
      ENDIF.
      t74 = t86.
      DATA(t126) = VALUE abap_bool( ).
      DATA(t127) = VALUE abap_bool( ).
      t127 = xsdbool( t74 IS BOUND ).
      t126 = t127.
      IF t127 = abap_true.
        t126 = t74->meta->includes( p0 = |read_only| ).
      ENDIF.
      IF t126 = abap_true.
        DATA(t137) = VALUE string( ).
        DATA(t139) = VALUE string( ).
        DATA(t140) = |"|.
        DATA(t141) = VALUE string( ).
        t141 = t7->concat_tokens( ).
        DATA(t143) = strlen( t140 ).
        t139 = |{ t140 }{ t141 }|.
        DATA(t145) = strlen( t139 ).
        t137 = |{ t139 }{ |" cannot be modified, it is readonly| }|.
        DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t146 = t2->issues.
        DATA t148 TYPE REF TO zcl_lnt_issue.
        DATA t153 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t148 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t7->get_first_token( ) i_message_26cb = t137 i_fix = t153 ).
        t146->load( ).
        APPEND t148 TO t146->items.
        t146->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t154 TYPE REF TO zcl_lnt_expression_node.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t154 = t1->find_direct_expression( i_type_9913 = t157 ).
    DATA t158 TYPE REF TO zcl_lnt_abstract_type.
    DATA t159 TYPE REF TO zcl_lnt_abstract_type.
    IF xsdbool( t154 IS BOUND ) = abap_true.
      DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t171 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t172 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t159 = zcl_lnt_sy_source=>run_syntax( i_node = t154 i_input_967e = t2 i_target_type = t24 i_write_reference = t170 i_allow_generic_deference = t171 i_read_reference = t172 ).
    ELSE.
      CLEAR t159.
    ENDIF.
    t158 = t159.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t158 IS INITIAL ) = abap_true.
      DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t183 = t2->issues.
      DATA t185 TYPE REF TO zcl_lnt_issue.
      DATA t190 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t185 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |No source type determined| i_fix = t190 ).
      t183->load( ).
      APPEND t185 TO t183->items.
      t183->save( ).
      RETURN.
    ENDIF.
    DATA t192 TYPE REF TO zcl_lnt_expression_node.
    DATA(t194) = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
    t192 = t1->find_direct_expression( i_type_9913 = t194 ).
    IF xsdbool( t192 IS BOUND ) = abap_true.
      t158 = zcl_lnt_sy_dereference=>run_syntax( i_node = t1 i_type_9913 = t158 i_input_967e = t2 ).
    ENDIF.
    IF xsdbool( t13 IS BOUND ) = abap_true.
      DATA(t205) = VALUE abap_bool( ).
      DATA(t206) = VALUE abap_bool( ).
      DATA(t207) = t158.
      t206 = xsdbool( t207 IS BOUND AND t207 IS INSTANCE OF zcl_lnt_packed_type ).
      t205 = t206.
      IF t206 = abap_true.
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        DATA t210 TYPE REF TO zcl_lnt_expression_node.
        t210 = t154.
        DATA t212 TYPE REF TO zcl_lnt_expression_node.
        IF xsdbool( t210 IS INITIAL ) = abap_true.
        ELSE.
          DATA t217 TYPE REF TO zcl_lnt_expression_node.
          t217 = t210.
          DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
          t212 = t217->find_direct_expression( i_type_9913 = t219 ).
        ENDIF.
        t209 = t212.
        t205 = xsdbool( t209 IS BOUND ).
      ENDIF.
      IF t205 = abap_true.
        DATA t223 TYPE REF TO zcl_lnt_abstract_type_data.
        t158 = NEW zcl_lnt_packed_type( i_length = CONV f( 8 ) i_decimals_2eed = CONV f( 0 ) i_extra = t223 ).
      ENDIF.
      zcl_lnt_sy_inline_data=>run_syntax( i_node = t13 i_input_967e = t2 i_type_9913 = t158 ).
      t24 = t158.
    ENDIF.
    DATA t230 TYPE REF TO zcl_lnt_abstract_token.
    t230 = t1->find_direct_token_by_text( i_text = |?=| ).
    IF xsdbool( t230 IS BOUND ) = abap_true.
      DATA t235 TYPE REF TO zcl_lnt_type_utils.
      DATA t237 TYPE REF TO zcl_lnt_current_scope.
      t237 = t2->scope.
      t235 = NEW zcl_lnt_type_utils( i_scope = t237 ).
      DATA t239 TYPE REF TO zcl_lnt_abstract_type.
      t239 = t158.
      DATA t241 TYPE REF TO zcl_lnt_abstract_type.
      t241 = t24.
      IF xsdbool( abap_true = abap_false ) = abap_true.
        DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t247 = t2->issues.
        DATA t249 TYPE REF TO zcl_lnt_issue.
        DATA t254 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t249 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Incompatible types| i_fix = t254 ).
        t247->load( ).
        APPEND t249 TO t247->items.
        t247->save( ).
        RETURN.
      ENDIF.
    ELSE.
      DATA t258 TYPE REF TO zcl_lnt_type_utils.
      DATA t259 TYPE REF TO zcl_lnt_current_scope.
      t259 = t2->scope.
      t258 = NEW zcl_lnt_type_utils( i_scope = t259 ).
      DATA t261 TYPE REF TO zcl_lnt_abstract_type.
      t261 = t158.
      DATA t263 TYPE REF TO zcl_lnt_abstract_type.
      t263 = t24.
      DATA(t268) = VALUE abap_bool( ).
      DATA t272 TYPE REF TO zcl_lnt_expression_node.
      t272 = t154.
      DATA t274 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t272 IS INITIAL ) = abap_true.
      ELSE.
        DATA t279 TYPE REF TO zcl_lnt_expression_node.
        t279 = t272.
        DATA(t281) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
        t274 = t279->find_first_expression( i_type_9913 = t281 ).
      ENDIF.
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t268 = xsdbool( xsdbool( t274 IS INITIAL ) = abap_false ).
      DATA(t287) = VALUE abap_bool( ).
      DATA(t288) = VALUE abap_bool( ).
      DATA(t289) = VALUE abap_bool( ).
      t289 = t268.
      IF t268 = abap_true.
        t289 = xsdbool( t261 IS BOUND AND t261 IS INSTANCE OF zcl_lnt_hex_type ).
      ENDIF.
      t288 = t289.
      IF t289 = abap_true.
        t288 = xsdbool( t263 IS BOUND AND t263 IS INSTANCE OF zcl_lnt_integer_type ).
      ENDIF.
      IF t288 = abap_true.
        t287 = abap_false.
      ELSE.
        t287 = t258->is_assignable( i_source_75cf = t261 i_target_5f8a = t263 ).
      ENDIF.
      IF xsdbool( t287 = abap_false ) = abap_true.
        DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t303 = t2->issues.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t305 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t1->get_first_token( ) i_message_26cb = |Incompatible types| i_fix = t310 ).
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
