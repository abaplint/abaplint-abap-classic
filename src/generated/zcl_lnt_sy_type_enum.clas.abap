* TS: src/abap/5_syntax/structures/type_enum.ts:13:1 TypeEnum
CLASS zcl_lnt_sy_type_enum DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_33d96643.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_type_enum IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zif_lnt_structure.
    CLEAR t9.
    DATA(t10) = t1.
    t9 = t10->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_sr_type_enum ).
    t7 = xsdbool( t8 = abap_false ).
    IF t7 = abap_true.
      DATA t11 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t11.
      DATA t12 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = |TypeEnum, unexpected type|.
        DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t12 = NEW zcx_lnt_assert_error( i_message_26cb = t13 ).
      t11 = NEW #( ).
      t11->payload = t12.
      CLEAR t11->source_value.
      IF t12 IS BOUND.
        DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t18.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        CLEAR t18.
        t19 = t12.
        TRY.
            t11->source_value ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11->source_value IS NOT BOUND.
          TRY.
              t18 ?= t12.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t18 IS BOUND.
            t11->source_value = t18->source( ).
          ENDIF.
          IF t11->source_value IS NOT BOUND.
            CREATE OBJECT t11->source_value.
            t11->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t11->source_value->oval = t12.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t11.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t21.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d666_0f34aaf902de.
    t21 = t22->find_direct_statement( i_type_9913 = t23 ).
    t20 = t21.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t25.
    DATA(t26) = t20.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t25.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    t24 = t29.
    IF t24 = abap_true.
      DATA t31 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t31.
      DATA t32 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA(t35) = |TypeEnum, unexpected type, begin|.
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t35.
        t33 = t36.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        t33 = t37.
      ENDIF.
      t32 = NEW zcx_lnt_assert_error( i_message_26cb = t33 ).
      t31 = NEW #( ).
      t31->payload = t32.
      CLEAR t31->source_value.
      IF t32 IS BOUND.
        DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        CLEAR t38.
        t39 = t32.
        TRY.
            t31->source_value ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31->source_value IS NOT BOUND.
          TRY.
              t38 ?= t32.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t38 IS BOUND.
            t31->source_value = t38->source( ).
          ENDIF.
          IF t31->source_value IS NOT BOUND.
            CREATE OBJECT t31->source_value.
            t31->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t31->source_value->oval = t32.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t31.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    DATA(t41) = t1.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t40 = t41->find_direct_statements( i_type_9913 = t42 ).
    DATA t43 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t43.
    DATA t44 TYPE REF TO object.
    CLEAR t44.
    DATA(t45) = VALUE i( ).
    DO.
      t40->load( ).
      IF t45 >= lines( t40->items ).
        EXIT.
      ENDIF.
      CLEAR t44.
      READ TABLE t40->items INDEX t45 + 1 INTO t44.
      t45 = t45 + 1.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      CLEAR t43.
      IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t46 ?= t44.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t47 = t46->as_ref( ).
        t43 ?= t47.
      ELSE.
        t43 ?= t44.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t49.
      DATA(t50) = t43.
      DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t49 = t50->find_first_expression( i_type_9913 = t51 ).
      t48 = t49.
      DATA(t52) = VALUE abap_bool( ).
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t53.
      DATA(t54) = t48.
      t53 = t54.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      t55 = t56.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t53.
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      t52 = t57.
      IF t52 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t61.
      DATA(t62) = t48.
      t61 = t62.
      t60 = t61->get_first_token( ).
      t59 = t60.
      DATA(t63) = t3.
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t64.
      DATA(t65) = t59.
      DATA(t66) = VALUE string( ).
      DATA(t67) = t2.
      t66 = t67->filename.
      DATA t68 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t68.
      DATA t69 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t69.
      t68 = zcl_lnt_integer_type=>get_db65( i_input_967e = t69 ).
      DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      t64 = NEW zcl_lnt_typed_identifier( i_token = t65 i_filename = t66 i_type_9913 = t68 i_meta = t70 i_value = t71 ).
      t63->load( ).
      APPEND t64 TO t63->items.
      t63->save( ).
    ENDDO.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t72.
    DATA(t73) = t1.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d665_f295bf63bcfe.
    t72 = t73->find_direct_statements( i_type_9913 = t74 ).
    DATA t75 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t75.
    DATA t76 TYPE REF TO object.
    CLEAR t76.
    DATA(t77) = VALUE i( ).
    DO.
      t72->load( ).
      IF t77 >= lines( t72->items ).
        EXIT.
      ENDIF.
      CLEAR t76.
      READ TABLE t72->items INDEX t77 + 1 INTO t76.
      t77 = t77 + 1.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      CLEAR t75.
      IF t76 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t78 ?= t76.
        DATA t79 TYPE REF TO object.
        CLEAR t79.
        t79 = t78->as_ref( ).
        t75 ?= t79.
      ELSE.
        t75 ?= t76.
      ENDIF.
      DATA t80 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t80.
      DATA t81 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t81.
      DATA(t82) = t75.
      DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t81 = t82->find_first_expression( i_type_9913 = t83 ).
      t80 = t81.
      DATA(t84) = VALUE abap_bool( ).
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t85.
      DATA(t86) = t80.
      t85 = t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      t87 = t88.
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = t85.
      IF t90 IS INITIAL.
        t89 = abap_true.
      ENDIF.
      t84 = t89.
      IF t84 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t91 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t91.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t93.
      DATA(t94) = t80.
      t93 = t94.
      t92 = t93->get_first_token( ).
      t91 = t92.
      DATA(t95) = t3.
      DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t96.
      DATA(t97) = t91.
      DATA(t98) = VALUE string( ).
      DATA(t99) = t2.
      t98 = t99->filename.
      DATA t100 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t101.
      t100 = zcl_lnt_integer_type=>get_db65( i_input_967e = t101 ).
      DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t102.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      t96 = NEW zcl_lnt_typed_identifier( i_token = t97 i_filename = t98 i_type_9913 = t100 i_meta = t102 i_value = t103 ).
      t95->load( ).
      APPEND t96 TO t95->items.
      t95->save( ).
    ENDDO.
    DATA t104 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t104.
    DATA t105 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t105.
    DATA t106 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t106.
    DATA t107 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t107.
    DATA t108 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t108.
    DATA(t109) = t20.
    t108 = t109.
    DATA(t110) = |TYPE|.
    t107 = t108->find_expression_after_token( i_text = t110 ).
    t106 = t107.
    DATA t111 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t111.
    DATA(t112) = VALUE abap_bool( ).
    DATA(t113) = t106.
    IF t113 IS INITIAL.
      t112 = abap_true.
    ENDIF.
    IF t112 = abap_true.
      DATA t114 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t114.
      t111 = t114.
    ELSE.
      DATA t115 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t115.
      DATA t116 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t116.
      DATA(t117) = t106.
      t116 = t117.
      t115 = t116->get_first_token( ).
      t111 = t115.
    ENDIF.
    t105 = t111.
    t104 = t105.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t119.
    DATA t120 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t120.
    DATA(t121) = t104.
    t120 = t121.
    DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t122.
    DATA(t123) = VALUE abap_bool( ).
    DATA(t124) = t120.
    IF t124 IS INITIAL.
      t123 = abap_true.
    ENDIF.
    IF t123 = abap_true.
      DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t125.
      t122 = t125.
    ELSE.
      DATA(t126) = VALUE string( ).
      DATA t127 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t127.
      DATA t128 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t128.
      DATA(t129) = t120.
      t128 = t129.
      t127 = t128.
      DATA(t130) = VALUE string( ).
      DATA(t131) = t127.
      t130 = t131->str.
      t126 = t130.
      DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t132->has = abap_true.
      t132->value = t126.
      t122 = t132.
    ENDIF.
    t119 = t122.
    t118 = t119.
    DATA(t133) = VALUE abap_bool( ).
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = t104.
    t134 = xsdbool( t135 IS BOUND ).
    t133 = t134.
    IF t134 = abap_true.
      DATA(t136) = VALUE abap_bool( ).
      DATA(t137) = t118.
      IF t137 IS BOUND.
        IF t137->has = abap_true.
          t136 = xsdbool( strlen( t137->value ) > 0 ).
        ENDIF.
      ENDIF.
      t133 = t136.
    ENDIF.
    IF t133 = abap_true.
      DATA t138 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t138.
      DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t139.
      DATA t140 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t140.
      DATA t141 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t141.
      DATA(t142) = t2.
      t141 = t142->scope.
      t140 = t141.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t144.
      DATA(t145) = abap_true.
      IF t145 = abap_true.
        DATA(t146) = VALUE string( ).
        DATA(t147) = t118.
        t146 = t147->value.
        DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t148->has = abap_true.
        t148->value = t146.
        t144 = t148.
      ELSE.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t144 = t149.
      ENDIF.
      t143 = t144.
      DATA t150 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t150.
      DATA(t151) = VALUE abap_bool( ).
      DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t152.
      DATA(t153) = t143.
      t152 = t153.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      t154 = t155.
      DATA(t156) = VALUE abap_bool( ).
      DATA(t157) = t152.
      IF t157 IS INITIAL.
        t156 = abap_true.
      ELSEIF t157->has = abap_false.
        t156 = abap_true.
      ENDIF.
      t151 = t156.
      IF t151 = abap_true.
        DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t158.
        t150 = t158.
      ELSE.
        DATA t159 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t159.
        DATA t160 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t160.
        DATA t161 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t161.
        DATA(t162) = t140.
        t161 = t162->current.
        t160 = t161.
        DATA t163 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t163.
        DATA(t164) = VALUE abap_bool( ).
        DATA(t165) = t160.
        IF t165 IS INITIAL.
          t164 = abap_true.
        ENDIF.
        IF t164 = abap_true.
          DATA t166 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t166.
          t163 = t166.
        ELSE.
          DATA t167 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t168.
          DATA(t169) = t160.
          t168 = t169.
          DATA(t170) = VALUE string( ).
          DATA(t171) = t143.
          t170 = t171->value.
          t167 = t168->find_type( i_name = t170 ).
          t163 = t167.
        ENDIF.
        t159 = t163.
        t150 = t159.
      ENDIF.
      t139 = t150.
      t138 = t139.
      DATA(t172) = VALUE abap_bool( ).
      DATA(t173) = t138.
      t172 = xsdbool( t173 IS BOUND ).
      IF t172 = abap_true.
        DATA t174 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t174.
        DATA(t175) = t2.
        t174 = t175->scope.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t176.
        DATA(t177) = abap_true.
        IF t177 = abap_true.
          DATA t178 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t178.
          DATA(t179) = t104.
          t178 = t179.
          t176 = t178.
        ELSE.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t180.
          t176 = t180.
        ENDIF.
        DATA t181 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t181.
        DATA(t182) = t138.
        t181 = t182.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t183.
        DATA(t184) = |Type|.
        CLEAR t183.
        CREATE OBJECT t183.
        t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t183->sval = t184.
        DATA(t185) = VALUE string( ).
        DATA(t186) = t2.
        t185 = t186->filename.
        DATA t187 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t187.
        t174->add_reference( i_usage = t176 i_referencing = t181 i_type_9913 = t183 i_filename = t185 i_extra = t187 ).
      ENDIF.
    ENDIF.
    DATA t188 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t188.
    DATA t189 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t189.
    DATA t190 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t190.
    DATA(t191) = t20.
    t190 = t191.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t189 = t190->find_first_expression( i_type_9913 = t192 ).
    t188 = t189.
    DATA(t193) = VALUE abap_bool( ).
    DATA(t194) = t188.
    t193 = xsdbool( t194 IS BOUND ).
    IF t193 = abap_true.
      DATA(t195) = VALUE string( ).
      DATA(t196) = VALUE string( ).
      DATA t197 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t197.
      DATA(t198) = t188.
      t197 = t198.
      t196 = t197->concat_tokens( ).
      t195 = t196.
      DATA(t199) = VALUE abap_bool( ).
      DATA(t200) = VALUE abap_bool( ).
      DATA(t201) = VALUE string( ).
      DATA t202 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t202.
      DATA(t203) = t2.
      t202 = t203->scope.
      t201 = t202->get_type( ).
      DATA(t204) = |class_definition|.
      t200 = xsdbool( t201 = t204 ).
      t199 = t200.
      IF t200 = abap_false.
        DATA(t205) = VALUE abap_bool( ).
        DATA(t206) = VALUE string( ).
        DATA t207 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t207.
        DATA(t208) = t2.
        t207 = t208->scope.
        t206 = t207->get_type( ).
        DATA(t209) = |interface|.
        t205 = xsdbool( t206 = t209 ).
        t199 = t205.
      ENDIF.
      IF t199 = abap_true.
        DATA(t210) = VALUE string( ).
        DATA(t211) = VALUE string( ).
        DATA(t212) = VALUE string( ).
        DATA t213 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t213.
        DATA(t214) = t2.
        t213 = t214->scope.
        t212 = t213->get_name( ).
        DATA(t215) = |=>|.
        DATA(t216) = strlen( t212 ).
        t211 = |{ t212 }{ t215 }|.
        DATA(t217) = t195.
        DATA(t218) = strlen( t211 ).
        t210 = |{ t211 }{ t217 }|.
        t195 = t210.
      ENDIF.
      DATA t219 TYPE REF TO zcl_lnt_enum_type.
      CLEAR t219.
      DATA t220 TYPE REF TO zcl_lnt_enum_type.
      CLEAR t220.
      DATA t221 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t221.
      DATA(t222) = abap_true.
      IF t222 = abap_true.
        DATA t223 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t223.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        DATA(t226) = abap_true.
        IF t226 = abap_true.
          DATA(t227) = t195.
          DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t228->has = abap_true.
          t228->value = t227.
          t225 = t228.
        ELSE.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          t225 = t229.
        ENDIF.
        t224 = t225.
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t230.
        DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t231.
        t230 = t231.
        DATA t232 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t232.
        DATA t233 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t233.
        t232 = t233.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t235.
        t234 = t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t237.
        t236 = t237.
        DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t238.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        t238 = t239.
        t223 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t224 i_conversion_exit = t230 i_derived_from_constant = t232 i_ddic_name = t234 i_rtti_name = t236 i_description = t238 ).
        CREATE OBJECT t223->zlnt_view_ownkeys_b0e8086400eb.
        t223->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t223->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t223->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t240 ).
        ENDIF.
        CREATE OBJECT t223->zlnt_json_ownkeys_70e5fd461788.
        t223->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t241) = |qualifiedName|.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t223->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t223->zlnt_json_ownkeys_70e5fd461788->put( p0 = t241 p1 = t242 ).
        ENDIF.
        t221 = t223.
      ELSE.
        DATA t243 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t243.
        t221 = t243.
      ENDIF.
      t220 = NEW zcl_lnt_enum_type( i_input_967e = t221 ).
      t219 = t220.
      DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t244.
      DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t245.
      DATA t246 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t246.
      DATA t247 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t247.
      DATA(t248) = t188.
      t247 = t248.
      t246 = t247->get_first_token( ).
      DATA(t249) = VALUE string( ).
      DATA(t250) = t2.
      t249 = t250->filename.
      DATA(t251) = t219.
      DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t252.
      DATA(t253) = abap_true.
      IF t253 = abap_true.
        DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t254.
        DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t256.
        CREATE OBJECT t256.
        t255 = t256.
        DATA(t257) = t255.
        DATA(t258) = |enum|.
        t257->load( ).
        APPEND t258 TO t257->items.
        t257->save( ).
        DATA(t259) = t255.
        t254 = t259.
        t252 = t254.
      ELSE.
        DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t260.
        t252 = t260.
      ENDIF.
      DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t261.
      t245 = NEW zcl_lnt_typed_identifier( i_token = t246 i_filename = t249 i_type_9913 = t251 i_meta = t252 i_value = t261 ).
      t244 = t245.
      DATA t262 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t262.
      DATA t263 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t263.
      DATA(t264) = t2.
      t263 = t264->scope.
      t262 = t263.
      DATA t265 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t265.
      DATA t266 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t266.
      DATA(t267) = abap_true.
      IF t267 = abap_true.
        DATA(t268) = t244.
        t266 = t268.
      ELSE.
        DATA t269 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t269.
        t266 = t269.
      ENDIF.
      t265 = t266.
      DATA(t270) = VALUE abap_bool( ).
      DATA t271 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t271.
      DATA(t272) = t265.
      t271 = t272.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t273.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      t273 = t274.
      DATA(t275) = VALUE abap_bool( ).
      DATA(t276) = t271.
      IF t276 IS INITIAL.
        t275 = abap_true.
      ENDIF.
      t270 = t275.
      IF t270 = abap_true.
      ELSE.
        DATA(t277) = t262.
        DATA(t278) = VALUE string( ).
        DATA t279 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t279.
        DATA t280 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t280.
        DATA(t281) = t265.
        t280 = t281.
        t279 = t280.
        DATA(t282) = VALUE string( ).
        DATA(t283) = VALUE string( ).
        DATA(t284) = VALUE string( ).
        DATA t285 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t285.
        DATA t286 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t286.
        DATA(t287) = t279.
        t286 = t287->token.
        t285 = t286.
        DATA(t288) = VALUE string( ).
        DATA(t289) = t285.
        t288 = t289->str.
        t284 = t288.
        t283 = t284.
        DATA(t290) = VALUE abap_bool( ).
        DATA(t291) = VALUE string( ).
        DATA(t292) = t283.
        DATA(t293) = 0.
        DATA(t294) = 1.
        DATA(t295) = strlen( t292 ).
        IF t293 < 0.
          t293 = t293 + t295.
          IF t293 < 0.
            t293 = 0.
          ENDIF.
        ENDIF.
        IF t293 > t295 OR t294 <= 0.
          CLEAR t291.
        ELSE.
          IF t294 > t295 - t293.
            t294 = t295 - t293.
          ENDIF.
          t291 = t292+t293(t294).
        ENDIF.
        DATA(t296) = |!|.
        t290 = xsdbool( t291 = t296 ).
        IF t290 = abap_true.
          DATA(t297) = VALUE string( ).
          DATA(t298) = VALUE string( ).
          DATA(t299) = t283.
          t298 = t299.
          DATA(t300) = VALUE string( ).
          DATA(t301) = t298.
          DATA(t302) = 1.
          DATA(t303) = VALUE i( ).
          DATA(t304) = t298.
          DATA(t305) = strlen( t304 ).
          t303 = t305.
          DATA(t306) = strlen( t301 ).
          IF t302 < 0.
            t302 = t302 + t306.
            IF t302 < 0.
              t302 = 0.
            ENDIF.
          ENDIF.
          IF t302 > t306 OR t303 <= 0.
            CLEAR t300.
          ELSE.
            IF t303 > t306 - t302.
              t303 = t306 - t302.
            ENDIF.
            t300 = t301+t302(t303).
          ENDIF.
          t297 = t300.
          t283 = t297.
        ENDIF.
        DATA(t307) = t283.
        t282 = t307.
        t278 = t282.
        DATA t308 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t308.
        DATA(t309) = abap_true.
        IF t309 = abap_true.
          DATA t310 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t310.
          DATA(t311) = t265.
          t310 = t311.
          t308 = t310.
        ELSE.
          DATA t312 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t312.
          t308 = t312.
        ENDIF.
        t277->add_type_named( i_name = t278 i_type_9913 = t308 ).
      ENDIF.
      DATA(t313) = t5.
      DATA(t314) = t244.
      t313->load( ).
      APPEND t314 TO t313->items.
      t313->save( ).
    ENDIF.
    DATA t315 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t315.
    DATA t316 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t316.
    DATA t317 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t317.
    DATA(t318) = t20.
    t317 = t318.
    DATA(t319) = |STRUCTURE|.
    t316 = t317->find_expression_after_token( i_text = t319 ).
    t315 = t316.
    DATA(t320) = VALUE abap_bool( ).
    DATA(t321) = t315.
    t320 = xsdbool( t321 IS BOUND ).
    IF t320 = abap_true.
      DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t322.
      DATA t323 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t323.
      CREATE OBJECT t323.
      t322 = t323.
      DATA(t324) = t3.
      DATA t325 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t325.
      DATA t326 TYPE REF TO object.
      CLEAR t326.
      DATA(t327) = VALUE i( ).
      DO.
        t324->load( ).
        IF t327 >= lines( t324->items ).
          EXIT.
        ENDIF.
        CLEAR t326.
        READ TABLE t324->items INDEX t327 + 1 INTO t326.
        t327 = t327 + 1.
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t328.
        CLEAR t325.
        IF t326 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t328 ?= t326.
          DATA t329 TYPE REF TO object.
          CLEAR t329.
          t329 = t328->as_ref( ).
          t325 ?= t329.
        ELSE.
          t325 ?= t326.
        ENDIF.
        DATA(t330) = t322.
        DATA t331 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t331.
        DATA(t332) = VALUE string( ).
        DATA(t333) = VALUE string( ).
        DATA t334 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t334.
        DATA(t335) = t325.
        t334 = t335.
        DATA(t336) = VALUE string( ).
        DATA(t337) = VALUE string( ).
        DATA(t338) = VALUE string( ).
        DATA t339 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t339.
        DATA t340 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t340.
        DATA(t341) = t334.
        t340 = t341->token.
        t339 = t340.
        DATA(t342) = VALUE string( ).
        DATA(t343) = t339.
        t342 = t343->str.
        t338 = t342.
        t337 = t338.
        DATA(t344) = VALUE abap_bool( ).
        DATA(t345) = VALUE string( ).
        DATA(t346) = t337.
        DATA(t347) = 0.
        DATA(t348) = 1.
        DATA(t349) = strlen( t346 ).
        IF t347 < 0.
          t347 = t347 + t349.
          IF t347 < 0.
            t347 = 0.
          ENDIF.
        ENDIF.
        IF t347 > t349 OR t348 <= 0.
          CLEAR t345.
        ELSE.
          IF t348 > t349 - t347.
            t348 = t349 - t347.
          ENDIF.
          t345 = t346+t347(t348).
        ENDIF.
        DATA(t350) = |!|.
        t344 = xsdbool( t345 = t350 ).
        IF t344 = abap_true.
          DATA(t351) = VALUE string( ).
          DATA(t352) = VALUE string( ).
          DATA(t353) = t337.
          t352 = t353.
          DATA(t354) = VALUE string( ).
          DATA(t355) = t352.
          DATA(t356) = 1.
          DATA(t357) = VALUE i( ).
          DATA(t358) = t352.
          DATA(t359) = strlen( t358 ).
          t357 = t359.
          DATA(t360) = strlen( t355 ).
          IF t356 < 0.
            t356 = t356 + t360.
            IF t356 < 0.
              t356 = 0.
            ENDIF.
          ENDIF.
          IF t356 > t360 OR t357 <= 0.
            CLEAR t354.
          ELSE.
            IF t357 > t360 - t356.
              t357 = t360 - t356.
            ENDIF.
            t354 = t355+t356(t357).
          ENDIF.
          t351 = t354.
          t337 = t351.
        ENDIF.
        DATA(t361) = t337.
        t336 = t361.
        t333 = t336.
        t332 = t333.
        DATA t362 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t362.
        DATA t363 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t363.
        DATA t364 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t364.
        DATA(t365) = t325.
        t364 = t365.
        DATA t366 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t366.
        DATA(t367) = t364.
        t366 = t367->type_cba0.
        t363 = t366.
        t362 = t363.
        DATA t368 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t368.
        DATA t369 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t369.
        t368 = t369.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t371.
        t370 = t371.
        t331 = NEW zcl_lnt_istructure_component( i_name = t332 i_type_9913 = t362 i_as_include = t368 i_suffix = t370 ).
        CREATE OBJECT t331->zlnt_view_ownkeys_b0e8086400eb.
        t331->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        IF t331->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t372 ).
        ENDIF.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t331->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t331->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t373 ).
        ENDIF.
        CREATE OBJECT t331->zlnt_json_ownkeys_70e5fd461788.
        t331->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t374) = |name|.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
        ENDIF.
        DATA(t376) = |type|.
        DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t377.
        IF t331->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t331->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
        ENDIF.
        t330->load( ).
        APPEND t331 TO t330->items.
        t330->save( ).
      ENDDO.
      DATA t378 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t378.
      CREATE OBJECT t378.
      t3 = t378.
      DATA t379 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t379.
      DATA t380 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t380.
      DATA t381 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t381.
      DATA t382 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t382.
      DATA(t383) = t315.
      t382 = t383.
      t381 = t382->get_first_token( ).
      DATA(t384) = VALUE string( ).
      DATA(t385) = t2.
      t384 = t385->filename.
      DATA t386 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t386.
      DATA(t387) = t322.
      DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t388.
      DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t389.
      DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t390.
      t386 = NEW zcl_lnt_structure_type( i_components = t387 i_qualified_name = t388 i_ddic_name = t389 i_description = t390 ).
      DATA t391 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t391.
      DATA(t392) = abap_true.
      IF t392 = abap_true.
        DATA t393 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t393.
        DATA t394 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t394.
        DATA t395 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t395.
        CREATE OBJECT t395.
        t394 = t395.
        DATA(t396) = t394.
        DATA(t397) = |enum|.
        t396->load( ).
        APPEND t397 TO t396->items.
        t396->save( ).
        DATA(t398) = t394.
        t393 = t398.
        t391 = t393.
      ELSE.
        DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t399.
        t391 = t399.
      ENDIF.
      DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t400.
      t380 = NEW zcl_lnt_typed_identifier( i_token = t381 i_filename = t384 i_type_9913 = t386 i_meta = t391 i_value = t400 ).
      t379 = t380.
      DATA(t401) = t3.
      DATA(t402) = t379.
      t401->load( ).
      APPEND t402 TO t401->items.
      t401->save( ).
    ENDIF.
    DATA t403 TYPE REF TO zcl_lnt_shape_33d96643.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t404.
    DATA t405 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t405.
    DATA(t406) = abap_true.
    IF t406 = abap_true.
      DATA(t407) = t3.
      t405 = t407.
    ELSE.
      DATA t408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t408.
      t405 = t408.
    ENDIF.
    t404 = t405.
    DATA t409 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t410.
    DATA(t411) = abap_true.
    IF t411 = abap_true.
      DATA(t412) = t5.
      t410 = t412.
    ELSE.
      DATA t413 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t413.
      t410 = t413.
    ENDIF.
    t409 = t410.
    t403 = NEW zcl_lnt_shape_33d96643( i_values = t404 i_types = t409 ).
    CREATE OBJECT t403->zlnt_view_ownkeys_b0e8086400eb.
    t403->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    IF t403->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t414 ).
    ENDIF.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    IF t403->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t403->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `types` p1 = t415 ).
    ENDIF.
    CREATE OBJECT t403->zlnt_json_ownkeys_70e5fd461788.
    t403->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t416) = |values|.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    IF t403->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = t416 p1 = t417 ).
    ENDIF.
    DATA(t418) = |types|.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t419.
    IF t403->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t403->zlnt_json_ownkeys_70e5fd461788->put( p0 = t418 p1 = t419 ).
    ENDIF.
    result = t403.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d994_4813704df8cd.
  ENDMETHOD.
ENDCLASS.
