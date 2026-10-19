* TS: src/abap/5_syntax/expressions/function_parameters.ts:10:1 FunctionParameters
CLASS zcl_lnt_sy_function_parameters DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_function_parameters IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d195_e320b2253f20.
    t3 = t1->find_all_expressions( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO object.
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
        CLEAR t10.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t12 = t6->find_direct_expression( i_type_9913 = t14 ).
      t11 = t12.
      DATA(t15) = VALUE abap_bool( ).
      t15 = xsdbool( t11 IS BOUND ).
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t18.
        t18 = t11.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t24.
        DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t25.
        DATA t26 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t26.
        DATA t27 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t27.
        t17 = zcl_lnt_sy_source=>run_syntax( i_node = t18 i_input_967e = t2 i_target_type = t24 i_write_reference = t25 i_allow_generic_deference = t26 i_read_reference = t27 ).
      ENDIF.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t29.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
      t29 = t6->find_direct_expression( i_type_9913 = t31 ).
      t28 = t29.
      DATA(t32) = VALUE abap_bool( ).
      t32 = xsdbool( t28 IS BOUND ).
      IF t32 = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t35.
        t35 = t28.
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t44.
        t34 = zcl_lnt_sy_source=>run_syntax( i_node = t35 i_input_967e = t2 i_target_type = t41 i_write_reference = t42 i_allow_generic_deference = t43 i_read_reference = t44 ).
      ENDIF.
    ENDDO.
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA(t48) = |CHANGING|.
    t46 = t1->find_expression_after_token( i_text = t48 ).
    t45 = t46.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d199_07bab553574b.
    t49 = t1->find_direct_expressions( i_type_9913 = t51 ).
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    DATA t53 TYPE REF TO object.
    DATA(t54) = VALUE i( ).
    DO.
      t49->load( ).
      IF t54 >= lines( t49->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t49->items INDEX t54 + 1 INTO t53.
      t54 = t54 + 1.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      CLEAR t52.
      IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t55 ?= t53.
        DATA t56 TYPE REF TO object.
        CLEAR t56.
        t56 = t55->as_ref( ).
        t52 ?= t56.
      ELSE.
        t52 ?= t53.
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t57.
      DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb.
      t57 = t52->find_direct_expressions( i_type_9913 = t59 ).
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t60.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      DATA(t62) = VALUE i( ).
      DO.
        t57->load( ).
        IF t62 >= lines( t57->items ).
          EXIT.
        ENDIF.
        CLEAR t61.
        READ TABLE t57->items INDEX t62 + 1 INTO t61.
        t62 = t62 + 1.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        CLEAR t60.
        IF t61 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t63 ?= t61.
          DATA t64 TYPE REF TO object.
          CLEAR t64.
          t64 = t63->as_ref( ).
          t60 ?= t64.
        ELSE.
          t60 ?= t61.
        ENDIF.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t66.
        DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
        t66 = t60->find_direct_expression( i_type_9913 = t68 ).
        t65 = t66.
        DATA(t69) = VALUE abap_bool( ).
        t69 = xsdbool( t65 IS BOUND ).
        IF t69 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t72.
          t72 = t65.
          t71 = zcl_lnt_sy_target=>run_syntax( i_node = t72 i_input_967e = t2 ).
        ENDIF.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = VALUE abap_bool( ).
        DATA t77 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t77.
        t77 = t52.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        CLEAR t82.
        IF t77 IS BOUND.
          CLEAR t82.
          IF t77 IS BOUND.
            DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t84.
            DATA t85 TYPE REF TO object.
            CLEAR t85.
            CLEAR t84.
            t85 = t77.
            TRY.
                t82 ?= t85.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t82 IS NOT BOUND.
              TRY.
                  t84 ?= t77.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t84 IS BOUND.
                t82 = t84->source( ).
              ENDIF.
              IF t82 IS NOT BOUND.
                CREATE OBJECT t82.
                t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t82->oval = t77.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t83.
        IF t45 IS BOUND.
          CLEAR t83.
          IF t45 IS BOUND.
            DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t86.
            DATA t87 TYPE REF TO object.
            CLEAR t87.
            CLEAR t86.
            t87 = t45.
            TRY.
                t83 ?= t87.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t83 IS NOT BOUND.
              TRY.
                  t86 ?= t45.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t86 IS BOUND.
                t83 = t86->source( ).
              ENDIF.
              IF t83 IS NOT BOUND.
                CREATE OBJECT t83.
                t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t83->oval = t45.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t82 IS BOUND.
          t76 = t82->strict_equals( t83 ).
        ELSE.
          t76 = xsdbool( t83 IS NOT BOUND ).
        ENDIF.
        t75 = t76.
        IF t76 = abap_true.
          DATA(t88) = VALUE abap_bool( ).
          DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t91.
          CLEAR t91.
          DATA(t93) = VALUE abap_bool( ).
          DATA(t94) = xsdbool( t65 IS INITIAL ).
          t93 = xsdbool( t94 = abap_false ).
          t88 = t93.
          t75 = t88.
        ENDIF.
        IF t75 = abap_true.
          DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t96.
          DATA t98 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t98.
          DATA t99 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t99.
          t99 = t2->scope.
          t98 = t99.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          DATA(t104) = VALUE string( ).
          DATA t105 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t105.
          t105 = t65.
          t104 = t105->concat_tokens( ).
          DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t107->has = abap_true.
          t107->value = t104.
          t101 = t107.
          DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t109.
          DATA(t110) = VALUE abap_bool( ).
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          t111 = t101.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t113.
          CLEAR t113.
          DATA(t115) = VALUE abap_bool( ).
          IF t111 IS INITIAL.
            t115 = abap_true.
          ELSEIF t111->has = abap_false.
            t115 = abap_true.
          ENDIF.
          t110 = t115.
          IF t110 = abap_true.
            CLEAR t109.
          ELSE.
            DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t119.
            DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t121.
            DATA t122 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t122.
            t122 = t98->current.
            t121 = t122.
            DATA t124 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t124.
            DATA(t125) = xsdbool( t121 IS INITIAL ).
            IF t125 = abap_true.
              CLEAR t124.
            ELSE.
              DATA t128 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t128.
              DATA t129 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              CLEAR t129.
              t129 = t121.
              DATA(t131) = VALUE string( ).
              t131 = t101->value.
              t128 = t129->find_variable( i_name = t131 ).
              t124 = t128.
            ENDIF.
            t119 = t124.
            DATA t133 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t133.
            DATA(t134) = VALUE abap_bool( ).
            t134 = xsdbool( t119 IS BOUND ).
            IF t134 = abap_true.
              t133 = t119.
            ELSE.
              DATA t141 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t141.
              DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t143.
              DATA(t145) = VALUE string( ).
              t145 = t101->value.
              DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t147->has = abap_true.
              t147->value = t145.
              t143 = t147.
              t141 = t98->find_type_pool_constant( i_name = t143 ).
              t133 = t141.
            ENDIF.
            t109 = t133.
          ENDIF.
          t96 = t109.
          DATA(t149) = VALUE abap_bool( ).
          DATA(t150) = VALUE abap_bool( ).
          t150 = xsdbool( t96 IS BOUND ).
          t149 = t150.
          IF t150 = abap_true.
            DATA(t152) = VALUE abap_bool( ).
            DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t153.
            DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t157.
            t157 = t96->meta.
            t153 = t157.
            DATA(t159) = |read_only|.
            t152 = t153->includes( p0 = t159 ).
            t149 = t152.
          ENDIF.
          IF t149 = abap_true.
            DATA(t160) = VALUE string( ).
            DATA(t161) = VALUE string( ).
            DATA(t162) = VALUE string( ).
            DATA(t163) = |"|.
            DATA(t164) = VALUE string( ).
            DATA t165 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t165.
            t165 = t65.
            t164 = t165->concat_tokens( ).
            DATA(t167) = strlen( t163 ).
            t162 = |{ t163 }{ t164 }|.
            DATA(t168) = |" cannot be modified, it is readonly|.
            DATA(t169) = strlen( t162 ).
            t161 = |{ t162 }{ t168 }|.
            t160 = t161.
            DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t170.
            t170 = t2->issues.
            DATA t172 TYPE REF TO zcl_lnt_issue.
            CLEAR t172.
            DATA t174 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t174.
            DATA t175 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t175.
            t175 = t65.
            t174 = t175->get_first_token( ).
            DATA t178 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t178.
            t172 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t174 i_message_26cb = t160 i_fix = t178 ).
            t170->load( ).
            APPEND t172 TO t170->items.
            t170->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
    t179 = t1->find_all_expressions( i_type_9913 = t181 ).
    DATA t182 TYPE REF TO zcl_lnt_expression_node.
    DATA t183 TYPE REF TO object.
    DATA(t184) = VALUE i( ).
    DO.
      t179->load( ).
      IF t184 >= lines( t179->items ).
        EXIT.
      ENDIF.
      CLEAR t183.
      READ TABLE t179->items INDEX t184 + 1 INTO t183.
      t184 = t184 + 1.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t185.
      CLEAR t182.
      IF t183 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t185 ?= t183.
        DATA t186 TYPE REF TO object.
        CLEAR t186.
        t186 = t185->as_ref( ).
        t182 ?= t186.
      ELSE.
        t182 ?= t183.
      ENDIF.
      DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t187.
      DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
      t187 = t182->find_direct_expressions( i_type_9913 = t189 ).
      DATA t190 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t190.
      DATA t191 TYPE REF TO object.
      CLEAR t191.
      DATA(t192) = VALUE i( ).
      DO.
        t187->load( ).
        IF t192 >= lines( t187->items ).
          EXIT.
        ENDIF.
        CLEAR t191.
        READ TABLE t187->items INDEX t192 + 1 INTO t191.
        t192 = t192 + 1.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        CLEAR t190.
        IF t191 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t193 ?= t191.
          DATA t194 TYPE REF TO object.
          CLEAR t194.
          t194 = t193->as_ref( ).
          t190 ?= t194.
        ELSE.
          t190 ?= t191.
        ENDIF.
        DATA t195 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t195.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        DATA(t201) = |Read From|.
        CLEAR t200.
        CREATE OBJECT t200.
        t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t200->sval = t201.
        t198 = t200.
        DATA t203 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t203.
        t195 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t190 i_input_967e = t2 i_ref_type = t198 i_allow_generic_deference = t203 ).
      ENDDO.
      DATA t204 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t204.
      DATA t205 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t205.
      DATA(t207) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t205 = t182->find_direct_expression( i_type_9913 = t207 ).
      t204 = t205.
      DATA(t208) = VALUE abap_bool( ).
      t208 = xsdbool( t204 IS BOUND ).
      IF t208 = abap_true.
        DATA t210 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t210.
        DATA t211 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t211.
        t211 = t204.
        t210 = zcl_lnt_sy_target=>run_syntax( i_node = t211 i_input_967e = t2 ).
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d810_9015d4e965d5.
  ENDMETHOD.
ENDCLASS.
