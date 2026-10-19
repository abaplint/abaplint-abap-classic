* TS: src/abap/5_syntax/statements/perform.ts:17:1 Perform
CLASS zcl_lnt_sy_perform DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS check_parameters IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_actual TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_formal TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_kind TYPE string i_input_967e TYPE REF TO
    zcl_lnt_syntax_input RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_perform IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_statement.
    t5 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_perform ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      DATA t8 TYPE REF TO zcx_lnt_assert_error.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = |checkPerform unexpected node type|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
      t8 = NEW zcx_lnt_assert_error( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t8.
      TRY.
          t7->source_value ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7->source_value IS NOT BOUND.
        TRY.
            t14 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t7->source_value = t14->source( ).
        ENDIF.
        IF t7->source_value IS NOT BOUND.
          CREATE OBJECT t7->source_value.
          t7->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->source_value->oval = t8.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d243_4c26f150237d.
    t18 = t1->find_direct_expressions( i_type_9913 = t20 ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO object.
    DATA(t23) = VALUE i( ).
    DO.
      t18->load( ).
      IF t23 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t18->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        CLEAR t25.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t26.
      DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t26 = t21->find_direct_expressions( i_type_9913 = t28 ).
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      DATA(t31) = VALUE i( ).
      DO.
        t26->load( ).
        IF t31 >= lines( t26->items ).
          EXIT.
        ENDIF.
        CLEAR t30.
        READ TABLE t26->items INDEX t31 + 1 INTO t30.
        t31 = t31 + 1.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        CLEAR t29.
        IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t32 ?= t30.
          DATA t33 TYPE REF TO object.
          CLEAR t33.
          t33 = t32->as_ref( ).
          t29 ?= t33.
        ELSE.
          t29 ?= t30.
        ENDIF.
        DATA t35 TYPE REF TO zcl_lnt_sy_perform_parameter.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t36.
        t36 = t29.
        DATA t38 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t39.
        t39 = zcl_lnt_sy_target=>run_syntax( i_node = t29 i_input_967e = t2 ).
        t38 = t39.
        t35 = NEW zcl_lnt_sy_perform_parameter( i_node = t36 i_type_9913 = t38 ).
        CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
        t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t42.
        t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t42 ).
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t43 ).
        ENDIF.
        CREATE OBJECT t35->zlnt_json_ownkeys_70e5fd461788.
        t35->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t44) = |node|.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
        DATA(t46) = |type|.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
        ENDIF.
        t16->load( ).
        APPEND t35 TO t16->items.
        t16->save( ).
      ENDDO.
    ENDDO.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d244_ecc6d4776dc2.
    t50 = t1->find_direct_expressions( i_type_9913 = t52 ).
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    DATA t54 TYPE REF TO object.
    DATA(t55) = VALUE i( ).
    DO.
      t50->load( ).
      IF t55 >= lines( t50->items ).
        EXIT.
      ENDIF.
      CLEAR t54.
      READ TABLE t50->items INDEX t55 + 1 INTO t54.
      t55 = t55 + 1.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      CLEAR t53.
      IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t56 ?= t54.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        t57 = t56->as_ref( ).
        t53 ?= t57.
      ELSE.
        t53 ?= t54.
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t58.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t58 = t53->find_direct_expressions( i_type_9913 = t60 ).
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      DATA(t63) = VALUE i( ).
      DO.
        t58->load( ).
        IF t63 >= lines( t58->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t58->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          DATA t65 TYPE REF TO object.
          CLEAR t65.
          t65 = t64->as_ref( ).
          t61 ?= t65.
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA t67 TYPE REF TO zcl_lnt_sy_perform_parameter.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t68.
        t68 = t61.
        DATA t70 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t71.
        DATA t72 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t72.
        t72 = t61.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t80.
        t71 = zcl_lnt_sy_source=>run_syntax( i_node = t72 i_input_967e = t2 i_target_type = t77 i_write_reference = t78 i_allow_generic_deference = t79 i_read_reference = t80 ).
        t70 = t71.
        t67 = NEW zcl_lnt_sy_perform_parameter( i_node = t68 i_type_9913 = t70 ).
        CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
        t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t81 ).
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t82 ).
        ENDIF.
        CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
        t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t83) = |node|.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
        DATA(t85) = |type|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        t48->load( ).
        APPEND t67 TO t48->items.
        t48->save( ).
      ENDDO.
    ENDDO.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d245_8da77b7903ad.
    t89 = t1->find_direct_expressions( i_type_9913 = t91 ).
    DATA t92 TYPE REF TO zcl_lnt_expression_node.
    DATA t93 TYPE REF TO object.
    DATA(t94) = VALUE i( ).
    DO.
      t89->load( ).
      IF t94 >= lines( t89->items ).
        EXIT.
      ENDIF.
      CLEAR t93.
      READ TABLE t89->items INDEX t94 + 1 INTO t93.
      t94 = t94 + 1.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      CLEAR t92.
      IF t93 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t95 ?= t93.
        DATA t96 TYPE REF TO object.
        CLEAR t96.
        t96 = t95->as_ref( ).
        t92 ?= t96.
      ELSE.
        t92 ?= t93.
      ENDIF.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t97.
      DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
      t97 = t92->find_direct_expressions( i_type_9913 = t99 ).
      DATA t100 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t100.
      DATA t101 TYPE REF TO object.
      CLEAR t101.
      DATA(t102) = VALUE i( ).
      DO.
        t97->load( ).
        IF t102 >= lines( t97->items ).
          EXIT.
        ENDIF.
        CLEAR t101.
        READ TABLE t97->items INDEX t102 + 1 INTO t101.
        t102 = t102 + 1.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        CLEAR t100.
        IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t103 ?= t101.
          DATA t104 TYPE REF TO object.
          CLEAR t104.
          t104 = t103->as_ref( ).
          t100 ?= t104.
        ELSE.
          t100 ?= t101.
        ENDIF.
        DATA t106 TYPE REF TO zcl_lnt_sy_perform_parameter.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t107.
        t107 = t100.
        DATA t109 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t110.
        DATA t111 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t111.
        t111 = t100.
        DATA t116 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t117.
        DATA t118 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t118.
        DATA t119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t119.
        t110 = zcl_lnt_sy_source=>run_syntax( i_node = t111 i_input_967e = t2 i_target_type = t116 i_write_reference = t117 i_allow_generic_deference = t118 i_read_reference = t119 ).
        t109 = t110.
        t106 = NEW zcl_lnt_sy_perform_parameter( i_node = t107 i_type_9913 = t109 ).
        CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
        t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t120 ).
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t121 ).
        ENDIF.
        CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
        t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t122) = |node|.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        DATA(t124) = |type|.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
        ENDIF.
        t87->load( ).
        APPEND t106 TO t87->items.
        t87->save( ).
      ENDDO.
    ENDDO.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zcl_lnt_expression_node.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t127 = t1->find_first_expression( i_type_9913 = t129 ).
    t126 = xsdbool( t127 IS BOUND ).
    IF t126 = abap_true.
      RETURN.
    ENDIF.
    DATA t130 TYPE REF TO zcl_lnt_expression_node.
    DATA t131 TYPE REF TO zcl_lnt_expression_node.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t131 = t1->find_first_expression( i_type_9913 = t133 ).
    t130 = t131.
    DATA(t134) = VALUE abap_bool( ).
    t134 = xsdbool( t130 IS BOUND ).
    IF t134 = abap_true.
      DATA t136 TYPE REF TO zcl_lnt_expression_node.
      t136 = t130.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t136 i_input_967e = t2 ).
      RETURN.
    ENDIF.
    DATA t139 TYPE REF TO zcl_lnt_expression_node.
    DATA t140 TYPE REF TO zcl_lnt_expression_node.
    DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t140 = t1->find_first_expression( i_type_9913 = t142 ).
    t139 = t140.
    DATA(t143) = VALUE abap_bool( ).
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t143 = xsdbool( t139 IS INITIAL ).
    IF t143 = abap_true.
      RETURN.
    ENDIF.
    DATA(t150) = VALUE string( ).
    DATA(t151) = VALUE string( ).
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    t152 = t139.
    t151 = t152->concat_tokens( ).
    t150 = t151.
    DATA t154 TYPE REF TO zif_lnt_form_definition.
    DATA t157 TYPE REF TO zcl_lnt_current_scope.
    t157 = t2->scope.
    DATA(t159) = VALUE string( ).
    t159 = t150.
    DATA t162 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t163 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t163 = t157->current.
    t162 = t163.
    DATA t165 TYPE REF TO zif_lnt_form_definition.
    DATA(t166) = xsdbool( t162 IS INITIAL ).
    IF t166 = abap_true.
    ELSE.
      DATA t169 TYPE REF TO zif_lnt_form_definition.
      DATA t170 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t170 = t162.
      t169 = t170->find_form_definition( i_name = t159 ).
      t165 = t169.
    ENDIF.
    t154 = t165.
    DATA(t173) = VALUE abap_bool( ).
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t173 = xsdbool( t154 IS INITIAL ).
    IF t173 = abap_true.
      DATA(t180) = VALUE string( ).
      DATA(t181) = VALUE string( ).
      DATA(t182) = VALUE string( ).
      DATA(t183) = |FORM definition "|.
      DATA(t185) = strlen( t183 ).
      t182 = |{ t183 }{ t150 }|.
      DATA(t186) = |" not found|.
      DATA(t187) = strlen( t182 ).
      t181 = |{ t182 }{ t186 }|.
      t180 = t181.
      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t188 = t2->issues.
      DATA t190 TYPE REF TO zcl_lnt_issue.
      DATA t192 TYPE REF TO zcl_lnt_abstract_token.
      DATA t193 TYPE REF TO zcl_lnt_expression_node.
      t193 = t139.
      t192 = t193->get_first_token( ).
      DATA t196 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t190 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t192 i_message_26cb = t180 i_fix = t196 ).
      t188->load( ).
      APPEND t190 TO t188->items.
      t188->save( ).
      RETURN.
    ENDIF.
    DATA t197 TYPE REF TO zcl_lnt_current_scope.
    t197 = t2->scope.
    DATA t199 TYPE REF TO zcl_lnt_abstract_token.
    DATA t201 TYPE REF TO zcl_lnt_abstract_token.
    DATA t202 TYPE REF TO zcl_lnt_expression_node.
    t202 = t139.
    t201 = t202->get_first_token( ).
    t199 = t201.
    DATA t205 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t207 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t208 TYPE REF TO zif_lnt_form_definition.
    t208 = t154.
    t207 ?= t208.
    t205 = t207.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t212) = |Form|.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    DATA(t213) = VALUE string( ).
    t213 = t2->filename.
    DATA t215 TYPE REF TO zcl_lnt_ireference_extras.
    t197->add_reference( i_usage = t199 i_referencing = t205 i_type_9913 = t211 i_filename = t213 i_extra = t215 ).
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t216 = t2->deferred.
    DATA t218 TYPE REF TO zcl_lnt_closure_0944c662.
    t218 = NEW zcl_lnt_closure_0944c662( i_changing = t16 i_found = t154 i_input_967e = t2 i_name = t150 i_node = t1 i_tables_8d5a = t48 i_using = t87 i_outer = me ).
    t216->load( ).
    APPEND t218 TO t216->items.
    t216->save( ).
  ENDMETHOD.

  METHOD check_parameters.
    DATA(t1) = i_node.
    DATA(t2) = i_actual.
    DATA(t3) = i_formal.
    DATA(t4) = i_kind.
    DATA(t5) = i_input_967e.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE i.
    t2->load( ).
    t7 = lines( t2->items ).
    DATA t9 TYPE i.
    t3->load( ).
    t9 = lines( t3->items ).
    t6 = xsdbool( t7 <> t9 ).
    IF t6 = abap_true.
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA(t18) = |PERFORM, expected |.
      DATA t19 TYPE string.
      DATA t20 TYPE i.
      t3->load( ).
      t20 = lines( t3->items ).
      t19 = |{ t20 }|.
      DATA(t22) = strlen( t18 ).
      t17 = |{ t18 }{ t19 }|.
      DATA(t23) = | |.
      DATA(t24) = strlen( t17 ).
      t16 = |{ t17 }{ t23 }|.
      DATA(t26) = strlen( t16 ).
      t15 = |{ t16 }{ t4 }|.
      DATA(t27) = | parameters, found |.
      DATA(t28) = strlen( t15 ).
      t14 = |{ t15 }{ t27 }|.
      DATA t29 TYPE string.
      DATA t30 TYPE i.
      t2->load( ).
      t30 = lines( t2->items ).
      t29 = |{ t30 }|.
      DATA(t32) = strlen( t14 ).
      t13 = |{ t14 }{ t29 }|.
      DATA(t33) = ||.
      DATA(t34) = strlen( t13 ).
      t12 = |{ t13 }{ t33 }|.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t35 = t5->issues.
      DATA t37 TYPE REF TO zcl_lnt_issue.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      t39 = t1->get_first_token( ).
      DATA t42 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t37 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t5 i_token = t39 i_message_26cb = t12 i_fix = t42 ).
      t35->load( ).
      APPEND t37 TO t35->items.
      t35->save( ).
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zcl_lnt_type_utils.
    DATA t45 TYPE REF TO zcl_lnt_type_utils.
    DATA t46 TYPE REF TO zcl_lnt_current_scope.
    t46 = t5->scope.
    t45 = NEW zcl_lnt_type_utils( i_scope = t46 ).
    t44 = t45.
    DATA t48 TYPE i.
    t48 = 0.
    DO.
      DATA t50 TYPE abap_bool.
      DATA t52 TYPE i.
      t2->load( ).
      t52 = lines( t2->items ).
      t50 = xsdbool( t48 < t52 ).
      IF t50 = abap_false.
        EXIT.
      ENDIF.
      DATA t54 TYPE REF TO zcl_lnt_sy_perform_parameter.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_sy_perform_parameter.
      CLEAR t55.
      DATA(t57) = t48.
      t57 = t57 + 1.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      t2->load( ).
      CLEAR t58.
      READ TABLE t2->items INDEX t57 INTO t58.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      CLEAR t55.
      IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t59 ?= t58.
        DATA t60 TYPE REF TO object.
        t60 = t59->as_ref( ).
        t55 ?= t60.
      ELSE.
        t55 ?= t58.
      ENDIF.
      t54 = t55.
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      t62 = t54->node.
      t61 = t62.
      DATA t64 TYPE REF TO zcl_lnt_abstract_type.
      DATA t65 TYPE REF TO zcl_lnt_abstract_type.
      t65 = t54->type_cba0.
      t64 = t65.
      DATA(t67) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      t67 = xsdbool( t64 IS INITIAL ).
      IF t67 = abap_true.
        DATA t74 TYPE i.
        DATA(t76) = 1.
        t74 = t48 + t76.
        t48 = t74.
        CONTINUE.
      ENDIF.
      DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t78.
      DATA(t80) = t48.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      t3->load( ).
      CLEAR t81.
      READ TABLE t3->items INDEX t80 INTO t81.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      CLEAR t78.
      IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t82 ?= t81.
        DATA t83 TYPE REF TO object.
        t83 = t82->as_ref( ).
        t78 ?= t83.
      ELSE.
        t78 ?= t81.
      ENDIF.
      t77 = t78.
      DATA t85 TYPE abap_bool.
      DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t89 = t77->meta.
      t86 = t89.
      DATA(t91) = |form_parameter_structure|.
      t85 = t86->includes( p0 = t91 ).
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = VALUE abap_bool( ).
      IF t85 = abap_true.
        DATA(t95) = VALUE abap_bool( ).
        DATA t97 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t97.
        t97 = t64.
        DATA t102 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t102.
        DATA t107 TYPE REF TO zcl_lnt_abstract_type.
        t107 = t77->type_cba0.
        t102 = t107.
        DATA t110 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t110.
        t110 = t61.
        t95 = t44->is_assignable_structure_typing( i_source_75cf = t97 i_target_5f8a = t102 i_node = t110 ).
        t93 = t95.
      ELSE.
        DATA(t114) = VALUE abap_bool( ).
        DATA t116 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t116.
        t116 = t64.
        DATA t121 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t121.
        DATA t126 TYPE REF TO zcl_lnt_abstract_type.
        t126 = t77->type_cba0.
        t121 = t126.
        DATA t129 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t129.
        t129 = t61.
        t114 = t44->is_assignable_strict( i_source_75cf = t116 i_target_5f8a = t121 i_node = t129 ).
        t93 = t114.
      ENDIF.
      t92 = t93.
      DATA t133 TYPE abap_bool.
      t133 = xsdbool( t92 = abap_false ).
      IF t133 = abap_true.
        DATA(t136) = VALUE string( ).
        DATA(t137) = VALUE string( ).
        DATA(t138) = VALUE string( ).
        DATA(t139) = |PERFORM parameter type not compatible, |.
        DATA(t140) = VALUE string( ).
        DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
        t141 = t77.
        DATA(t143) = VALUE string( ).
        DATA t144 TYPE string.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        t147 = t141->token.
        DATA t149 TYPE string.
        t149 = t147->str.
        t144 = t149.
        DATA(t151) = VALUE abap_bool( ).
        DATA(t152) = VALUE string( ).
        DATA(t153) = t144.
        DATA(t154) = 0.
        DATA(t155) = 1.
        DATA(t156) = strlen( t153 ).
        IF t154 < 0.
          t154 = t154 + t156.
          IF t154 < 0.
            t154 = 0.
          ENDIF.
        ENDIF.
        IF t154 > t156 OR t155 <= 0.
          CLEAR t152.
        ELSE.
          IF t155 > t156 - t154.
            t155 = t156 - t154.
          ENDIF.
          t152 = t153+t154(t155).
        ENDIF.
        DATA(t157) = |!|.
        t151 = xsdbool( t152 = t157 ).
        IF t151 = abap_true.
          DATA(t158) = VALUE string( ).
          DATA t159 TYPE string.
          t159 = t144.
          DATA(t161) = VALUE string( ).
          DATA(t163) = 1.
          DATA t164 TYPE i.
          t164 = strlen( t159 ).
          DATA(t167) = strlen( t159 ).
          IF t163 < 0.
            t163 = t163 + t167.
            IF t163 < 0.
              t163 = 0.
            ENDIF.
          ENDIF.
          IF t163 > t167 OR t164 <= 0.
            CLEAR t161.
          ELSE.
            IF t164 > t167 - t163.
              t164 = t167 - t163.
            ENDIF.
            t161 = t159+t163(t164).
          ENDIF.
          t158 = t161.
          t144 = t158.
        ENDIF.
        t143 = t144.
        t140 = t143.
        DATA(t169) = strlen( t139 ).
        t138 = |{ t139 }{ t140 }|.
        DATA(t170) = ||.
        DATA(t171) = strlen( t138 ).
        t137 = |{ t138 }{ t170 }|.
        t136 = t137.
        DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t172 = t5->issues.
        DATA t174 TYPE REF TO zcl_lnt_issue.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        t176 = t61->get_first_token( ).
        DATA t179 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t179.
        t174 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t5 i_token = t176 i_message_26cb = t136 i_fix = t179 ).
        t172->load( ).
        APPEND t174 TO t172->items.
        t172->save( ).
        result = abap_false.
        RETURN.
      ENDIF.
      DATA t181 TYPE i.
      DATA(t183) = 1.
      t181 = t48 + t183.
      t48 = t181.
    ENDDO.
    result = abap_true.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d941_be89a5c5735b.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
