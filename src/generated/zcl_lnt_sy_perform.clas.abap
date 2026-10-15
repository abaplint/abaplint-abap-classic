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
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_st_perform ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t7.
      DATA t8 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |checkPerform unexpected node type|.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t8 = NEW zcx_lnt_assert_error( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      IF t8 IS BOUND.
        DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t14.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        CLEAR t14.
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
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA(t19) = t1.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d243_4c26f150237d.
    t18 = t19->find_direct_expressions( i_type_9913 = t20 ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
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
      DATA(t27) = t21.
      DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t26 = t27->find_direct_expressions( i_type_9913 = t28 ).
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
        DATA(t34) = t16.
        DATA t35 TYPE REF TO zcl_lnt_sy_perform_parameter.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t36.
        DATA(t37) = t29.
        t36 = t37.
        DATA t38 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t39.
        DATA(t40) = t29.
        DATA(t41) = t2.
        t39 = zcl_lnt_sy_target=>run_syntax( i_node = t40 i_input_967e = t41 ).
        t38 = t39.
        t35 = NEW zcl_lnt_sy_perform_parameter( i_node = t36 i_type_9913 = t38 ).
        CREATE OBJECT t35->zlnt_view_ownkeys_b0e8086400eb.
        t35->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t42.
        IF t35->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t35->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t42 ).
        ENDIF.
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
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
        ENDIF.
        DATA(t46) = |type|.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        IF t35->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t35->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
        ENDIF.
        t34->load( ).
        APPEND t35 TO t34->items.
        t34->save( ).
      ENDDO.
    ENDDO.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    CREATE OBJECT t49.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA(t51) = t1.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d244_ecc6d4776dc2.
    t50 = t51->find_direct_expressions( i_type_9913 = t52 ).
    DATA t53 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t53.
    DATA t54 TYPE REF TO object.
    CLEAR t54.
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
      DATA(t59) = t53.
      DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t58 = t59->find_direct_expressions( i_type_9913 = t60 ).
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
        DATA(t66) = t48.
        DATA t67 TYPE REF TO zcl_lnt_sy_perform_parameter.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t68.
        DATA(t69) = t61.
        t68 = t69.
        DATA t70 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t71.
        DATA t72 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t72.
        DATA(t73) = abap_true.
        IF t73 = abap_true.
          DATA(t74) = t61.
          t72 = t74.
        ELSE.
          DATA t75 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t75.
          t72 = t75.
        ENDIF.
        DATA(t76) = t2.
        DATA t77 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t80.
        t71 = zcl_lnt_sy_source=>run_syntax( i_node = t72 i_input_967e = t76 i_target_type = t77 i_write_reference = t78 i_allow_generic_deference = t79 i_read_reference = t80 ).
        t70 = t71.
        t67 = NEW zcl_lnt_sy_perform_parameter( i_node = t68 i_type_9913 = t70 ).
        CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
        t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t81 ).
        ENDIF.
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
        IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
        ENDIF.
        DATA(t85) = |type|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        t66->load( ).
        APPEND t67 TO t66->items.
        t66->save( ).
      ENDDO.
    ENDDO.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t89.
    DATA(t90) = t1.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d245_8da77b7903ad.
    t89 = t90->find_direct_expressions( i_type_9913 = t91 ).
    DATA t92 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t92.
    DATA t93 TYPE REF TO object.
    CLEAR t93.
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
      DATA(t98) = t92.
      DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
      t97 = t98->find_direct_expressions( i_type_9913 = t99 ).
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
        DATA(t105) = t87.
        DATA t106 TYPE REF TO zcl_lnt_sy_perform_parameter.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t107.
        DATA(t108) = t100.
        t107 = t108.
        DATA t109 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t110.
        DATA t111 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t111.
        DATA(t112) = abap_true.
        IF t112 = abap_true.
          DATA(t113) = t100.
          t111 = t113.
        ELSE.
          DATA t114 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t114.
          t111 = t114.
        ENDIF.
        DATA(t115) = t2.
        DATA t116 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t117.
        DATA t118 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t118.
        DATA t119 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t119.
        t110 = zcl_lnt_sy_source=>run_syntax( i_node = t111 i_input_967e = t115 i_target_type = t116 i_write_reference = t117 i_allow_generic_deference = t118 i_read_reference = t119 ).
        t109 = t110.
        t106 = NEW zcl_lnt_sy_perform_parameter( i_node = t107 i_type_9913 = t109 ).
        CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
        t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t120 ).
        ENDIF.
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
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        ENDIF.
        DATA(t124) = |type|.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
        ENDIF.
        t105->load( ).
        APPEND t106 TO t105->items.
        t105->save( ).
      ENDDO.
    ENDDO.
    DATA(t126) = VALUE abap_bool( ).
    DATA t127 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t127.
    DATA(t128) = t1.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t127 = t128->find_first_expression( i_type_9913 = t129 ).
    t126 = xsdbool( t127 IS BOUND ).
    IF t126 = abap_true.
      RETURN.
    ENDIF.
    DATA t130 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t130.
    DATA t131 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t131.
    DATA(t132) = t1.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t131 = t132->find_first_expression( i_type_9913 = t133 ).
    t130 = t131.
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = t130.
    t134 = xsdbool( t135 IS BOUND ).
    IF t134 = abap_true.
      DATA t136 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t136.
      DATA(t137) = t130.
      t136 = t137.
      DATA(t138) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t136 i_input_967e = t138 ).
      RETURN.
    ENDIF.
    DATA t139 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t139.
    DATA t140 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t140.
    DATA(t141) = t1.
    DATA(t142) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    t140 = t141->find_first_expression( i_type_9913 = t142 ).
    t139 = t140.
    DATA(t143) = VALUE abap_bool( ).
    DATA t144 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t144.
    DATA(t145) = t139.
    t144 = t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    t146 = t147.
    DATA(t148) = VALUE abap_bool( ).
    DATA(t149) = t144.
    IF t149 IS INITIAL.
      t148 = abap_true.
    ENDIF.
    t143 = t148.
    IF t143 = abap_true.
      RETURN.
    ENDIF.
    DATA(t150) = VALUE string( ).
    DATA(t151) = VALUE string( ).
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t152.
    DATA(t153) = t139.
    t152 = t153.
    t151 = t152->concat_tokens( ).
    t150 = t151.
    DATA t154 TYPE REF TO zif_lnt_form_definition.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_form_definition.
    CLEAR t155.
    DATA t156 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t156.
    DATA t157 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t157.
    DATA(t158) = t2.
    t157 = t158->scope.
    t156 = t157.
    DATA(t159) = VALUE string( ).
    DATA(t160) = t150.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_form_definition.
    CLEAR t161.
    DATA t162 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t162.
    DATA t163 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t163.
    DATA(t164) = t156.
    t163 = t164->current.
    t162 = t163.
    DATA t165 TYPE REF TO zif_lnt_form_definition.
    CLEAR t165.
    DATA(t166) = VALUE abap_bool( ).
    DATA(t167) = t162.
    IF t167 IS INITIAL.
      t166 = abap_true.
    ENDIF.
    IF t166 = abap_true.
      DATA t168 TYPE REF TO zif_lnt_form_definition.
      CLEAR t168.
      t165 = t168.
    ELSE.
      DATA t169 TYPE REF TO zif_lnt_form_definition.
      CLEAR t169.
      DATA t170 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t170.
      DATA(t171) = t162.
      t170 = t171.
      DATA(t172) = t159.
      t169 = t170->find_form_definition( i_name = t172 ).
      t165 = t169.
    ENDIF.
    t161 = t165.
    t155 = t161.
    t154 = t155.
    DATA(t173) = VALUE abap_bool( ).
    DATA t174 TYPE REF TO zif_lnt_form_definition.
    CLEAR t174.
    DATA(t175) = t154.
    t174 = t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    t176 = t177.
    DATA(t178) = VALUE abap_bool( ).
    DATA(t179) = t174.
    IF t179 IS INITIAL.
      t178 = abap_true.
    ENDIF.
    t173 = t178.
    IF t173 = abap_true.
      DATA(t180) = VALUE string( ).
      DATA(t181) = VALUE string( ).
      DATA(t182) = VALUE string( ).
      DATA(t183) = |FORM definition "|.
      DATA(t184) = t150.
      DATA(t185) = strlen( t183 ).
      t182 = |{ t183 }{ t184 }|.
      DATA(t186) = |" not found|.
      DATA(t187) = strlen( t182 ).
      t181 = |{ t182 }{ t186 }|.
      t180 = t181.
      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t188.
      DATA(t189) = t2.
      t188 = t189->issues.
      DATA t190 TYPE REF TO zcl_lnt_issue.
      CLEAR t190.
      DATA(t191) = t2.
      DATA t192 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t192.
      DATA t193 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t193.
      DATA(t194) = t139.
      t193 = t194.
      t192 = t193->get_first_token( ).
      DATA(t195) = t180.
      DATA t196 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t196.
      t190 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t191 i_token = t192 i_message_26cb = t195 i_fix = t196 ).
      t188->load( ).
      APPEND t190 TO t188->items.
      t188->save( ).
      RETURN.
    ENDIF.
    DATA t197 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t197.
    DATA(t198) = t2.
    t197 = t198->scope.
    DATA t199 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t199.
    DATA(t200) = abap_true.
    IF t200 = abap_true.
      DATA t201 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t201.
      DATA t202 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t202.
      DATA(t203) = t139.
      t202 = t203.
      t201 = t202->get_first_token( ).
      t199 = t201.
    ELSE.
      DATA t204 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t204.
      t199 = t204.
    ENDIF.
    DATA t205 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t205.
    DATA(t206) = abap_true.
    IF t206 = abap_true.
      DATA t207 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t207.
      DATA t208 TYPE REF TO zif_lnt_form_definition.
      CLEAR t208.
      DATA(t209) = t154.
      t208 = t209.
      t207 ?= t208.
      t205 = t207.
    ELSE.
      DATA t210 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t210.
      t205 = t210.
    ENDIF.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = |Form|.
    CLEAR t211.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    DATA(t213) = VALUE string( ).
    DATA(t214) = t2.
    t213 = t214->filename.
    DATA t215 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t215.
    t197->add_reference( i_usage = t199 i_referencing = t205 i_type_9913 = t211 i_filename = t213 i_extra = t215 ).
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t216.
    DATA(t217) = t2.
    t216 = t217->deferred.
    DATA t218 TYPE REF TO zcl_lnt_closure_0944c662.
    CLEAR t218.
    DATA(t219) = t16.
    DATA(t220) = t154.
    DATA(t221) = t2.
    DATA(t222) = t150.
    DATA(t223) = t1.
    DATA(t224) = t48.
    DATA(t225) = t87.
    DATA(t226) = me.
    t218 = NEW zcl_lnt_closure_0944c662( i_changing = t219 i_found = t220 i_input_967e = t221 i_name = t222 i_node = t223 i_tables_8d5a = t224 i_using = t225 i_outer = t226 ).
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
    DATA(t8) = t2.
    t8->load( ).
    t7 = lines( t8->items ).
    DATA t9 TYPE i.
    DATA(t10) = t3.
    t10->load( ).
    t9 = lines( t10->items ).
    t6 = xsdbool( t7 <> t9 ).
    IF t6 = abap_true.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA(t18) = |PERFORM, expected |.
      DATA t19 TYPE string.
      DATA t20 TYPE i.
      DATA(t21) = t3.
      t21->load( ).
      t20 = lines( t21->items ).
      t19 = |{ t20 }|.
      DATA(t22) = strlen( t18 ).
      t17 = |{ t18 }{ t19 }|.
      DATA(t23) = | |.
      DATA(t24) = strlen( t17 ).
      t16 = |{ t17 }{ t23 }|.
      DATA(t25) = t4.
      DATA(t26) = strlen( t16 ).
      t15 = |{ t16 }{ t25 }|.
      DATA(t27) = | parameters, found |.
      DATA(t28) = strlen( t15 ).
      t14 = |{ t15 }{ t27 }|.
      DATA t29 TYPE string.
      DATA t30 TYPE i.
      DATA(t31) = t2.
      t31->load( ).
      t30 = lines( t31->items ).
      t29 = |{ t30 }|.
      DATA(t32) = strlen( t14 ).
      t13 = |{ t14 }{ t29 }|.
      DATA(t33) = ||.
      DATA(t34) = strlen( t13 ).
      t12 = |{ t13 }{ t33 }|.
      t11 = t12.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t36) = t5.
      t35 = t36->issues.
      DATA t37 TYPE REF TO zcl_lnt_issue.
      DATA(t38) = t5.
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t40) = t1.
      t39 = t40->get_first_token( ).
      DATA(t41) = t11.
      DATA t42 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t42.
      t37 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t38 i_token = t39 i_message_26cb = t41 i_fix = t42 ).
      t35->load( ).
      APPEND t37 TO t35->items.
      t35->save( ).
      DATA(t43) = abap_false.
      result = t43.
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zcl_lnt_type_utils.
    DATA t45 TYPE REF TO zcl_lnt_type_utils.
    DATA t46 TYPE REF TO zcl_lnt_current_scope.
    DATA(t47) = t5.
    t46 = t47->scope.
    t45 = NEW zcl_lnt_type_utils( i_scope = t46 ).
    t44 = t45.
    DATA t48 TYPE i.
    DATA(t49) = 0.
    t48 = t49.
    DO.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t48.
      DATA t52 TYPE i.
      DATA(t53) = t2.
      t53->load( ).
      t52 = lines( t53->items ).
      t50 = xsdbool( t51 < t52 ).
      IF t50 = abap_false.
        EXIT.
      ENDIF.
      DATA t54 TYPE REF TO zcl_lnt_sy_perform_parameter.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_sy_perform_parameter.
      CLEAR t55.
      DATA(t56) = t2.
      DATA(t57) = t48.
      t57 = t57 + 1.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      t56->load( ).
      CLEAR t58.
      READ TABLE t56->items INDEX t57 INTO t58.
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
      DATA(t63) = t54.
      t62 = t63->node.
      t61 = t62.
      DATA t64 TYPE REF TO zcl_lnt_abstract_type.
      DATA t65 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t66) = t54.
      t65 = t66->type_cba0.
      t64 = t65.
      DATA(t67) = VALUE abap_bool( ).
      DATA t68 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t69) = t64.
      t68 = t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t70 = t71.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = t68.
      IF t73 IS INITIAL.
        t72 = abap_true.
      ENDIF.
      t67 = t72.
      IF t67 = abap_true.
        DATA t74 TYPE i.
        DATA(t75) = t48.
        DATA(t76) = 1.
        t74 = t75 + t76.
        t48 = t74.
        CONTINUE.
      ENDIF.
      DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t77.
      DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t78.
      DATA(t79) = t3.
      DATA(t80) = t48.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      t79->load( ).
      CLEAR t81.
      READ TABLE t79->items INDEX t80 INTO t81.
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
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE abap_bool.
      DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t88) = t77.
      t87 = t88.
      DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t90) = t87.
      t89 = t90->meta.
      t86 = t89.
      DATA(t91) = |form_parameter_structure|.
      t85 = t86->includes( p0 = t91 ).
      t84 = t85.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = t84.
      IF t94 = abap_true.
        DATA(t95) = VALUE abap_bool( ).
        DATA(t96) = t44.
        DATA t97 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t97.
        DATA(t98) = abap_true.
        IF t98 = abap_true.
          DATA t99 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t100) = t64.
          t99 = t100.
          t97 = t99.
        ELSE.
          DATA t101 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t101.
          t97 = t101.
        ENDIF.
        DATA t102 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t102.
        DATA(t103) = abap_true.
        IF t103 = abap_true.
          DATA t104 TYPE REF TO zcl_lnt_abstract_type.
          DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t106) = t77.
          t105 = t106.
          DATA t107 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t108) = t105.
          t107 = t108->type_cba0.
          t104 = t107.
          t102 = t104.
        ELSE.
          DATA t109 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t109.
          t102 = t109.
        ENDIF.
        DATA t110 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t110.
        DATA(t111) = abap_true.
        IF t111 = abap_true.
          DATA(t112) = t61.
          t110 = t112.
        ELSE.
          DATA t113 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t113.
          t110 = t113.
        ENDIF.
        t95 = t96->is_assignable_structure_typing( i_source_75cf = t97 i_target_5f8a = t102 i_node = t110 ).
        t93 = t95.
      ELSE.
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = t44.
        DATA t116 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t116.
        DATA(t117) = abap_true.
        IF t117 = abap_true.
          DATA t118 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t119) = t64.
          t118 = t119.
          t116 = t118.
        ELSE.
          DATA t120 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t120.
          t116 = t120.
        ENDIF.
        DATA t121 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA t123 TYPE REF TO zcl_lnt_abstract_type.
          DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t125) = t77.
          t124 = t125.
          DATA t126 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t127) = t124.
          t126 = t127->type_cba0.
          t123 = t126.
          t121 = t123.
        ELSE.
          DATA t128 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t128.
          t121 = t128.
        ENDIF.
        DATA t129 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA(t131) = t61.
          t129 = t131.
        ELSE.
          DATA t132 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t132.
          t129 = t132.
        ENDIF.
        t114 = t115->is_assignable_strict( i_source_75cf = t116 i_target_5f8a = t121 i_node = t129 ).
        t93 = t114.
      ENDIF.
      t92 = t93.
      DATA t133 TYPE abap_bool.
      DATA(t134) = t92.
      DATA(t135) = abap_false.
      t133 = xsdbool( t134 = t135 ).
      IF t133 = abap_true.
        DATA(t136) = VALUE string( ).
        DATA(t137) = VALUE string( ).
        DATA(t138) = VALUE string( ).
        DATA(t139) = |PERFORM parameter type not compatible, |.
        DATA(t140) = VALUE string( ).
        DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t142) = t77.
        t141 = t142.
        DATA(t143) = VALUE string( ).
        DATA t144 TYPE string.
        DATA t145 TYPE string.
        DATA t146 TYPE REF TO zcl_lnt_abstract_token.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t148) = t141.
        t147 = t148->token.
        t146 = t147.
        DATA t149 TYPE string.
        DATA(t150) = t146.
        t149 = t150->str.
        t145 = t149.
        t144 = t145.
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
          DATA(t160) = t144.
          t159 = t160.
          DATA(t161) = VALUE string( ).
          DATA(t162) = t159.
          DATA(t163) = 1.
          DATA t164 TYPE i.
          DATA(t165) = t159.
          DATA(t166) = strlen( t165 ).
          t164 = t166.
          DATA(t167) = strlen( t162 ).
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
            t161 = t162+t163(t164).
          ENDIF.
          t158 = t161.
          t144 = t158.
        ENDIF.
        DATA(t168) = t144.
        t143 = t168.
        t140 = t143.
        DATA(t169) = strlen( t139 ).
        t138 = |{ t139 }{ t140 }|.
        DATA(t170) = ||.
        DATA(t171) = strlen( t138 ).
        t137 = |{ t138 }{ t170 }|.
        t136 = t137.
        DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t173) = t5.
        t172 = t173->issues.
        DATA t174 TYPE REF TO zcl_lnt_issue.
        DATA(t175) = t5.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t177) = t61.
        t176 = t177->get_first_token( ).
        DATA(t178) = t136.
        DATA t179 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t179.
        t174 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t175 i_token = t176 i_message_26cb = t178 i_fix = t179 ).
        t172->load( ).
        APPEND t174 TO t172->items.
        t172->save( ).
        DATA(t180) = abap_false.
        result = t180.
        RETURN.
      ENDIF.
      DATA t181 TYPE i.
      DATA(t182) = t48.
      DATA(t183) = 1.
      t181 = t182 + t183.
      t48 = t181.
    ENDDO.
    DATA(t184) = abap_true.
    result = t184.

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
