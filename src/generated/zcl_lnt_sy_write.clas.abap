* TS: src/abap/5_syntax/statements/write.ts:12:1 Write
CLASS zcl_lnt_sy_write DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_write IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t4 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abstract_node.
    t7 = t1.
    t6 = t7->children.
    t5 ?= t6.
    DATA t11 TYPE REF TO object.
    t5->load( ).
    READ TABLE t5->items INDEX 2 INTO t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t12 ?= t11.
      DATA t13 TYPE REF TO object.
      t13 = t12->as_ref( ).
      t4 ?= t13.
    ELSE.
      t4 ?= t11.
    ENDIF.
    t3 = t4.
    DATA t15 TYPE REF TO object.
    t15 = t3->get_db65( ).
    IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_write_offset_length ) = abap_true.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_abstract_node.
      t20 = t1.
      t19 = t20->children.
      t18 ?= t19.
      DATA t24 TYPE REF TO object.
      t18->load( ).
      READ TABLE t18->items INDEX 3 INTO t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t24.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t17 ?= t26.
      ELSE.
        t17 ?= t24.
      ENDIF.
      t3 = t17.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t27 = t1->find_direct_expressions( i_type_9913 = t29 ).
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA t31 TYPE REF TO object.
    DATA(t32) = VALUE i( ).
    DO.
      t27->load( ).
      IF t32 >= lines( t27->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t27->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        CLEAR t34.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t35.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t37.
      t37 = t30.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t44.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t45.
      t35 = zcl_lnt_sy_source=>run_syntax( i_node = t37 i_input_967e = t2 i_target_type = t42 i_write_reference = t43 i_allow_generic_deference = t44 i_read_reference = t45 ).
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      DATA t49 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t49.
      t49 ?= t30.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t52.
      IF t49 IS BOUND.
        DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t54.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        CLEAR t54.
        t55 = t49.
        TRY.
            t52 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS NOT BOUND.
          TRY.
              t54 ?= t49.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t54 IS BOUND.
            t52 = t54->source( ).
          ENDIF.
          IF t52 IS NOT BOUND.
            CREATE OBJECT t52.
            t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t52->oval = t49.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t53.
      IF t3 IS BOUND.
        DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t56.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        CLEAR t56.
        t57 = t3.
        TRY.
            t53 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS NOT BOUND.
          TRY.
              t56 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t56 IS BOUND.
            t53 = t56->source( ).
          ENDIF.
          IF t53 IS NOT BOUND.
            CREATE OBJECT t53.
            t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t53->oval = t3.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t52 IS BOUND.
        t48 = t52->strict_equals( t53 ).
      ELSE.
        t48 = xsdbool( t53 IS NOT BOUND ).
      ENDIF.
      t47 = t48.
      IF t48 = abap_true.
        DATA t61 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t61.
        t61 = t2->scope.
        t47 = xsdbool( NEW zcl_lnt_type_utils( i_scope = t61 )->is_char_like( i_type_9913 = t35 ) = abap_false ).
      ENDIF.
      t46 = t47.
      IF t47 = abap_true.
        DATA t68 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t68.
        t68 = t2->scope.
        t46 = xsdbool( NEW zcl_lnt_type_utils( i_scope = t68 )->is_hex_like( i_type_9913 = t35 ) = abap_false ).
      ENDIF.
      IF t46 = abap_true.
        DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t74.
        t74 = t2->issues.
        DATA t76 TYPE REF TO zcl_lnt_issue.
        CLEAR t76.
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t78.
        t78 = t30->get_first_token( ).
        DATA t81 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t81.
        t76 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t78 i_message_26cb = |Source not character like| i_fix = t81 ).
        t74->load( ).
        APPEND t76 TO t74->items.
        t74->save( ).
        RETURN.
      ENDIF.
    ENDDO.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t85 TYPE REF TO zcl_lnt_expression_node.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d357_2e2dc8c80a68.
    t85 = t1->find_direct_expression( i_type_9913 = t88 ).
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t85 IS INITIAL ) = abap_true.
    ELSE.
      DATA t94 TYPE REF TO zcl_lnt_expression_node.
      t94 = t85.
      DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
      t89 = t94->find_direct_expressions( i_type_9913 = t96 ).
    ENDIF.
    t83 = t89.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t83 IS BOUND ) = abap_true.
      t97 = t83.
    ELSE.
      CREATE OBJECT t97.
    ENDIF.
    t82 = t97.
    DATA t103 TYPE REF TO zcl_lnt_expression_node.
    DATA t104 TYPE REF TO object.
    DATA(t105) = VALUE i( ).
    DO.
      t82->load( ).
      IF t105 >= lines( t82->items ).
        EXIT.
      ENDIF.
      CLEAR t104.
      READ TABLE t82->items INDEX t105 + 1 INTO t104.
      t105 = t105 + 1.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      CLEAR t103.
      IF t104 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t106 ?= t104.
        DATA t107 TYPE REF TO object.
        CLEAR t107.
        t107 = t106->as_ref( ).
        t103 ?= t107.
      ELSE.
        t103 ?= t104.
      ENDIF.
      DATA t108 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t108.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      CLEAR t113.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t113->sval = |Read From|.
      t111 = t113.
      DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t116.
      t108 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t103 i_input_967e = t2 i_ref_type = t111 i_allow_generic_deference = t116 ).
    ENDDO.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t117 = t1->find_all_expressions( i_type_9913 = t119 ).
    DATA t120 TYPE REF TO zcl_lnt_expression_node.
    DATA t121 TYPE REF TO object.
    DATA(t122) = VALUE i( ).
    DO.
      t117->load( ).
      IF t122 >= lines( t117->items ).
        EXIT.
      ENDIF.
      CLEAR t121.
      READ TABLE t117->items INDEX t122 + 1 INTO t121.
      t122 = t122 + 1.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      CLEAR t120.
      IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t123 ?= t121.
        DATA t124 TYPE REF TO object.
        CLEAR t124.
        t124 = t123->as_ref( ).
        t120 ?= t124.
      ELSE.
        t120 ?= t121.
      ENDIF.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t120 i_input_967e = t2 ).
    ENDDO.
    DATA t127 TYPE REF TO zcl_lnt_expression_node.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t127 = t1->find_direct_expression( i_type_9913 = t130 ).
    IF xsdbool( t127 IS BOUND ) = abap_true.
      DATA t133 TYPE REF TO zcl_lnt_abstract_type.
      t133 = zcl_lnt_sy_target=>run_syntax( i_node = t127 i_input_967e = t2 ).
      DATA t141 TYPE REF TO zcl_lnt_type_utils.
      DATA t142 TYPE REF TO zcl_lnt_current_scope.
      t142 = t2->scope.
      t141 = NEW zcl_lnt_type_utils( i_scope = t142 ).
      DATA t144 TYPE REF TO zcl_lnt_abstract_type.
      t144 = t133.
      DATA(t146) = VALUE abap_bool( ).
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = VALUE abap_bool( ).
      t148 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_structure_type ).
      t147 = t148.
      IF t148 = abap_false.
        DATA(t150) = VALUE abap_bool( ).
        DATA(t151) = VALUE abap_bool( ).
        t151 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t150 = t151.
        IF t151 = abap_true.
          DATA t155 TYPE REF TO zcl_lnt_ty_table_type.
          t155 ?= t144.
          t150 = t155->options->zlnt_view_read_sr_ec4602663c93( ).
        ENDIF.
        t147 = t150.
      ENDIF.
      IF t147 = abap_true.
        DATA t164 TYPE REF TO zcl_lnt_abstract_type.
        DATA t165 TYPE REF TO zif_lnt_union_2724f734.
        DATA t166 TYPE REF TO zcl_lnt_abstract_type.
        t166 = t144.
        t165 ?= t166.
        t164 ?= t165.
        t146 = t141->is_char_like_strict( i_type_9913 = t164 ).
      ELSE.
        DATA(t169) = VALUE abap_bool( ).
        DATA(t170) = VALUE abap_bool( ).
        DATA(t171) = VALUE abap_bool( ).
        DATA(t172) = VALUE abap_bool( ).
        DATA(t173) = VALUE abap_bool( ).
        DATA(t174) = VALUE abap_bool( ).
        DATA(t175) = VALUE abap_bool( ).
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = VALUE abap_bool( ).
        t177 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_character_type ).
        t176 = t177.
        IF t177 = abap_false.
          t176 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_numeric_type ).
        ENDIF.
        t175 = t176.
        IF t176 = abap_false.
          t175 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_date_type ).
        ENDIF.
        t174 = t175.
        IF t175 = abap_false.
          t174 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_time_type ).
        ENDIF.
        t173 = t174.
        IF t174 = abap_false.
          t173 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_c_generic_type ).
        ENDIF.
        t172 = t173.
        IF t173 = abap_false.
          t172 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_c_like_type ).
        ENDIF.
        t171 = t172.
        IF t172 = abap_false.
          t171 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_any_type ).
        ENDIF.
        t170 = t171.
        IF t171 = abap_false.
          t170 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_unknown_type ).
        ENDIF.
        t169 = t170.
        IF t170 = abap_false.
          t169 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        t146 = t169.
      ENDIF.
      IF xsdbool( t146 = abap_false ) = abap_true.
        DATA(t196) = VALUE string( ).
        DATA(t198) = VALUE string( ).
        DATA(t199) = VALUE string( ).
        DATA(t200) = VALUE string( ).
        DATA(t201) = |"|.
        DATA(t202) = VALUE string( ).
        t202 = t127->concat_tokens( ).
        DATA(t205) = strlen( t201 ).
        t200 = |{ t201 }{ t202 }|.
        DATA(t206) = |" must be a character-like field (data type C, N, D, or T, g|.
        t206 = t206 && |ot "|.
        DATA(t207) = strlen( t200 ).
        t199 = |{ t200 }{ t206 }|.
        DATA(t208) = VALUE string( ).
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t211 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA t213 TYPE REF TO zcl_lnt_abstract_type.
        t213 = t133.
        DATA t215 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        IF xsdbool( t213 IS INITIAL ) = abap_true.
        ELSE.
          t215 = t213->zlnt_builtin_clas_3f891b097658( ).
        ENDIF.
        t211 = t215.
        DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t211 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t226) = VALUE string( ).
          t226 = t211->name.
          DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t229->has = abap_true.
          t229->value = t226.
          t222 = t229.
        ENDIF.
        t209 = t222.
        DATA(t230) = VALUE string( ).
        DATA(t231) = VALUE abap_bool( ).
        IF t209 IS INITIAL.
          t231 = abap_true.
        ELSEIF t209->has = abap_false.
          t231 = abap_true.
        ENDIF.
        IF t231 = abap_true.
          t230 = |undefined|.
        ELSE.
          t230 = t209->value.
        ENDIF.
        t208 = t230.
        DATA(t236) = strlen( t199 ).
        t198 = |{ t199 }{ t208 }|.
        DATA(t238) = strlen( t198 ).
        t196 = |{ t198 }{ |")| }|.
        DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t239 = t2->issues.
        DATA t241 TYPE REF TO zcl_lnt_issue.
        DATA t247 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t241 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t127->get_first_token( ) i_message_26cb = t196 i_fix = t247 ).
        t239->load( ).
        APPEND t241 TO t239->items.
        t239->save( ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d989_baefa774021f.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
