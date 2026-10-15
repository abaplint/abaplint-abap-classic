* TS: src/abap/5_syntax/expressions/method_source.ts:19:1 MethodSource
CLASS zcl_lnt_sy_method_source DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zif_lnt_union_8cd68e5e.
    CLASS-METHODS find_top IMPORTING i_first TYPE REF TO zif_lnt_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_children_9020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_method_source IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t5.
    DATA(t6) = t2.
    t5 = t6->scope.
    t4 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t11.
    DATA(t12) = t1.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = t11.
    t13 = t14->children.
    t10 = t13.
    t9 ?= t10.
    t8 = t9->slice0( ).
    t7 = t8.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t16.
    DATA(t17) = t7.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    t18 = t17->shift( ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    CLEAR t16.
    IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t19 ?= t18.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t20 = t19->as_ref( ).
      t16 ?= t20.
    ELSE.
      t16 ?= t18.
    ENDIF.
    t15 = t16.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t22.
    DATA(t23) = t15.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t28.
      DATA t29 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = |MethodSource, first child expected|.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      t29 = NEW zcx_lnt_assert_error( i_message_26cb = t30 ).
      t28 = NEW #( ).
      t28->payload = t29.
      CLEAR t28->source_value.
      IF t29 IS BOUND.
        DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        CLEAR t35.
        t36 = t29.
        TRY.
            t28->source_value ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28->source_value IS NOT BOUND.
          TRY.
              t35 ?= t29.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t35 IS BOUND.
            t28->source_value = t35->source( ).
          ENDIF.
          IF t28->source_value IS NOT BOUND.
            CREATE OBJECT t28->source_value.
            t28->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t28->source_value->oval = t29.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t37 TYPE REF TO zif_lnt_union_b6d4892d.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_node.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t40.
    DATA(t41) = t15.
    t40 = t41.
    t39 ?= t40.
    DATA(t42) = t2.
    DATA(t43) = t7.
    t38 = zcl_lnt_sy_method_source=>find_top( i_first = t39 i_input_967e = t42 i_children_9020 = t43 ).
    t37 = t38.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = abap_false.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zif_lnt_union_b6d4892d.
    CLEAR t47.
    DATA(t48) = t37.
    t47 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    t49 = t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = t47.
    IF t52 IS INITIAL.
      t51 = abap_true.
    ENDIF.
    t46 = t51.
    IF t46 = abap_true.
      DATA t53 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t55.
      DATA t56 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t57.
      DATA(t58) = t2.
      t57 = t58->scope.
      t56 = t57.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA(t61) = abap_true.
      IF t61 = abap_true.
        DATA(t62) = |me|.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t62.
        t60 = t63.
      ELSE.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        t60 = t64.
      ENDIF.
      t59 = t60.
      DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t65.
      DATA(t66) = VALUE abap_bool( ).
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = t59.
      t67 = t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      t69 = t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = t67.
      IF t72 IS INITIAL.
        t71 = abap_true.
      ELSEIF t72->has = abap_false.
        t71 = abap_true.
      ENDIF.
      t66 = t71.
      IF t66 = abap_true.
        DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t73.
        t65 = t73.
      ELSE.
        DATA t74 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t74.
        DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t75.
        DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t78.
        DATA(t79) = t56.
        t78 = t79->current.
        t77 = t78.
        DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t80.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = t77.
        IF t82 IS INITIAL.
          t81 = abap_true.
        ENDIF.
        IF t81 = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t83.
          t80 = t83.
        ELSE.
          DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t84.
          DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t85.
          DATA(t86) = t77.
          t85 = t86.
          DATA(t87) = VALUE string( ).
          DATA(t88) = t59.
          t87 = t88->value.
          t84 = t85->find_variable( i_name = t87 ).
          t80 = t84.
        ENDIF.
        t76 = t80.
        t75 = t76.
        DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t89.
        DATA(t90) = VALUE abap_bool( ).
        DATA(t91) = t75.
        t90 = xsdbool( t91 IS BOUND ).
        IF t90 = abap_true.
          DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t94.
            DATA(t95) = t75.
            t94 = t95.
            t92 = t94.
          ELSE.
            DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t96.
            t92 = t96.
          ENDIF.
          t89 = t92.
        ELSE.
          DATA t97 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t97.
          DATA(t98) = t56.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          DATA(t100) = abap_true.
          IF t100 = abap_true.
            DATA(t101) = VALUE string( ).
            DATA(t102) = t59.
            t101 = t102->value.
            DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t103->has = abap_true.
            t103->value = t101.
            t99 = t103.
          ELSE.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            t99 = t104.
          ENDIF.
          t97 = t98->find_type_pool_constant( i_name = t99 ).
          t89 = t97.
        ENDIF.
        t74 = t89.
        t65 = t74.
      ENDIF.
      t55 = t65.
      t54 = t55.
      DATA t105 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t105.
      DATA(t106) = VALUE abap_bool( ).
      DATA(t107) = t54.
      IF t107 IS INITIAL.
        t106 = abap_true.
      ENDIF.
      IF t106 = abap_true.
        DATA t108 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t108.
        t105 = t108.
      ELSE.
        DATA t109 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t110.
        DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t111.
        DATA(t112) = t54.
        t111 = t112.
        t110 = t111.
        DATA t113 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t113.
        DATA(t114) = t110.
        t113 = t114->type_cba0.
        t109 = t113.
        t105 = t109.
      ENDIF.
      t53 = t105.
      t37 = t53.
      DATA(t115) = VALUE i( ).
      DATA(t116) = t7.
      DATA t117 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t117.
      DATA(t118) = t15.
      t117 = t118.
      t115 = t116->unshift( p0 = t117 ).
      DATA(t119) = abap_true.
      t44 = t119.
    ENDIF.
    DATA(t120) = VALUE abap_bool( ).
    DATA(t121) = VALUE abap_bool( ).
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = VALUE abap_bool( ).
    DATA(t124) = VALUE string( ).
    DATA t125 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t125.
    DATA t126 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t126.
    DATA(t127) = t2.
    t126 = t127->scope.
    t125 = t126.
    DATA(t128) = VALUE string( ).
    DATA t129 TYPE REF TO zif_lnt_configuration.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_registry.
    CLEAR t130.
    DATA(t131) = t125.
    t130 = t131->reg.
    t129 = t130->get_config( ).
    t128 = t129->get_language_version( ).
    t124 = t128.
    DATA(t132) = |Cloud|.
    t123 = xsdbool( t124 = t132 ).
    t122 = t123.
    IF t123 = abap_true.
      DATA(t133) = VALUE abap_bool( ).
      DATA t134 TYPE REF TO object.
      CLEAR t134.
      DATA t135 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t135.
      DATA(t136) = t15.
      t135 = t136.
      t134 = t135->get_db65( ).
      t133 = xsdbool( t134 IS BOUND AND t134 IS INSTANCE OF zcl_lnt_st_dynamic ).
      t122 = t133.
    ENDIF.
    t121 = t122.
    IF t122 = abap_true.
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = t15.
      t137 = xsdbool( t138 IS BOUND AND t138 IS INSTANCE OF zcl_lnt_expression_node ).
      t121 = t137.
    ENDIF.
    t120 = t121.
    IF t121 = abap_true.
      DATA(t139) = VALUE abap_bool( ).
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t140.
      DATA t141 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t141.
      DATA t142 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t142.
      DATA(t143) = t7.
      DATA(t144) = 0.
      DATA t145 TYPE REF TO object.
      CLEAR t145.
      t145 = t143->get( p0 = t144 ).
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      CLEAR t142.
      IF t145 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t146 ?= t145.
        DATA t147 TYPE REF TO object.
        CLEAR t147.
        t147 = t146->as_ref( ).
        t142 ?= t147.
      ELSE.
        t142 ?= t145.
      ENDIF.
      t141 = t142.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      DATA(t149) = VALUE abap_bool( ).
      DATA(t150) = t141.
      IF t150 IS INITIAL.
        t149 = abap_true.
      ENDIF.
      IF t149 = abap_true.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        t148 = t151.
      ELSE.
        DATA(t152) = VALUE string( ).
        DATA t153 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t153.
        DATA(t154) = t141.
        t153 = t154.
        t152 = t153->concat_tokens( ).
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t152.
        t148 = t155.
      ENDIF.
      t140 = t148.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t156.
      DATA(t157) = abap_true.
      IF t157 = abap_true.
        DATA(t158) = |=>|.
        DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t159->has = abap_true.
        t159->value = t158.
        t156 = t159.
      ELSE.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        t156 = t160.
      ENDIF.
      DATA(t161) = VALUE abap_bool( ).
      DATA(t162) = VALUE abap_bool( ).
      IF t140 IS BOUND.
        t161 = t140->has.
      ENDIF.
      IF t156 IS BOUND.
        t162 = t156->has.
      ENDIF.
      IF t161 = t162.
        IF t161 = abap_false.
          t139 = abap_true.
        ELSEIF t140->value = t156->value.
          t139 = abap_true.
        ENDIF.
      ENDIF.
      t120 = t139.
    ENDIF.
    IF t120 = abap_true.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t164.
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t165.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t166.
      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t167.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t169.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t170.
      DATA t171 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t171.
      DATA(t172) = t15.
      DATA t173 TYPE REF TO object.
      CLEAR t173.
      t173 = t172.
      t171 ?= t173.
      DATA(t174) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
      t170 = t171->find_direct_expression( i_type_9913 = t174 ).
      t169 = t170.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t175.
      DATA(t176) = VALUE abap_bool( ).
      DATA(t177) = t169.
      IF t177 IS INITIAL.
        t176 = abap_true.
      ENDIF.
      IF t176 = abap_true.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        t175 = t178.
      ELSE.
        DATA(t179) = VALUE string( ).
        DATA t180 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t180.
        DATA(t181) = t169.
        t180 = t181.
        t179 = t180->concat_tokens( ).
        DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t182->has = abap_true.
        t182->value = t179.
        t175 = t182.
      ENDIF.
      t168 = t175.
      t167 = t168.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t183.
      DATA(t184) = VALUE abap_bool( ).
      DATA(t185) = t167.
      IF t185 IS INITIAL.
        t184 = abap_true.
      ELSEIF t185->has = abap_false.
        t184 = abap_true.
      ENDIF.
      IF t184 = abap_true.
        DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t186.
        t183 = t186.
      ELSE.
        DATA(t187) = VALUE string( ).
        DATA(t188) = VALUE string( ).
        DATA(t189) = t167.
        t188 = t189->value.
        DATA t190 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t190.
        DATA(t191) = |'|.
        DATA(t192) = |g|.
        CREATE OBJECT t190 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t191 flags = t192 checked = abap_true.
        DATA(t193) = ||.
        DATA(t194) = strlen( t188 ).
        t187 = t190->replace( p0 = t188 p1 = t193 ).
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t187.
        t183 = t195.
      ENDIF.
      t166 = t183.
      t165 = t166.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      DATA(t197) = VALUE abap_bool( ).
      DATA(t198) = t165.
      IF t198 IS INITIAL.
        t197 = abap_true.
      ELSEIF t198->has = abap_false.
        t197 = abap_true.
      ENDIF.
      IF t197 = abap_true.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t199.
        t196 = t199.
      ELSE.
        DATA(t200) = VALUE string( ).
        DATA(t201) = VALUE string( ).
        DATA(t202) = t165.
        t201 = t202->value.
        DATA t203 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t203.
        DATA(t204) = |`|.
        DATA(t205) = |g|.
        CREATE OBJECT t203 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t204 flags = t205 checked = abap_true.
        DATA(t206) = ||.
        DATA(t207) = strlen( t201 ).
        t200 = t203->replace( p0 = t201 p1 = t206 ).
        DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t208->has = abap_true.
        t208->value = t200.
        t196 = t208.
      ENDIF.
      t164 = t196.
      t163 = t164.
      DATA(t209) = VALUE abap_bool( ).
      DATA(t210) = VALUE abap_bool( ).
      DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t211.
      DATA(t212) = t163.
      t211 = t212.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t213.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t214.
      t213 = t214.
      DATA(t215) = VALUE abap_bool( ).
      DATA(t216) = VALUE abap_bool( ).
      DATA(t217) = t211.
      IF t217 IS INITIAL.
        t216 = abap_true.
      ELSEIF t217->has = abap_false.
        t216 = abap_true.
      ENDIF.
      t215 = xsdbool( t216 = abap_false ).
      t210 = t215.
      t209 = t210.
      IF t210 = abap_true.
        DATA(t218) = VALUE abap_bool( ).
        DATA t219 TYPE REF TO zif_lnt_class_definition.
        CLEAR t219.
        DATA t220 TYPE REF TO zif_lnt_class_definition.
        CLEAR t220.
        DATA t221 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t221.
        DATA t222 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t222.
        DATA(t223) = t2.
        t222 = t223->scope.
        t221 = t222.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        DATA(t226) = abap_true.
        IF t226 = abap_true.
          DATA(t227) = VALUE string( ).
          DATA(t228) = t163.
          t227 = t228->value.
          DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t229->has = abap_true.
          t229->value = t227.
          t225 = t229.
        ELSE.
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          t225 = t230.
        ENDIF.
        t224 = t225.
        DATA t231 TYPE REF TO zif_lnt_class_definition.
        CLEAR t231.
        DATA(t232) = VALUE abap_bool( ).
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t233.
        DATA(t234) = t224.
        t233 = t234.
        DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t235.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        t235 = t236.
        DATA(t237) = VALUE abap_bool( ).
        DATA(t238) = t233.
        IF t238 IS INITIAL.
          t237 = abap_true.
        ELSEIF t238->has = abap_false.
          t237 = abap_true.
        ENDIF.
        t232 = t237.
        IF t232 = abap_true.
          DATA t239 TYPE REF TO zif_lnt_class_definition.
          CLEAR t239.
          t231 = t239.
        ELSE.
          DATA t240 TYPE REF TO zif_lnt_class_definition.
          CLEAR t240.
          DATA t241 TYPE REF TO zif_lnt_class_definition.
          CLEAR t241.
          DATA t242 TYPE REF TO zif_lnt_class_definition.
          CLEAR t242.
          DATA t243 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t243.
          DATA t244 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t244.
          DATA(t245) = t221.
          t244 = t245->current.
          t243 = t244.
          DATA t246 TYPE REF TO zif_lnt_class_definition.
          CLEAR t246.
          DATA(t247) = VALUE abap_bool( ).
          DATA(t248) = t243.
          IF t248 IS INITIAL.
            t247 = abap_true.
          ENDIF.
          IF t247 = abap_true.
            DATA t249 TYPE REF TO zif_lnt_class_definition.
            CLEAR t249.
            t246 = t249.
          ELSE.
            DATA t250 TYPE REF TO zif_lnt_class_definition.
            CLEAR t250.
            DATA t251 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t251.
            DATA(t252) = t243.
            t251 = t252.
            DATA(t253) = VALUE string( ).
            DATA(t254) = t224.
            t253 = t254->value.
            t250 = t251->find_class_definition( i_name = t253 ).
            t246 = t250.
          ENDIF.
          t242 = t246.
          t241 = t242.
          DATA t255 TYPE REF TO zif_lnt_class_definition.
          CLEAR t255.
          DATA(t256) = VALUE abap_bool( ).
          DATA(t257) = t241.
          t256 = xsdbool( t257 IS BOUND ).
          IF t256 = abap_true.
            DATA t258 TYPE REF TO zif_lnt_class_definition.
            CLEAR t258.
            DATA(t259) = abap_true.
            IF t259 = abap_true.
              DATA t260 TYPE REF TO zif_lnt_class_definition.
              CLEAR t260.
              DATA(t261) = t241.
              t260 = t261.
              t258 = t260.
            ELSE.
              DATA t262 TYPE REF TO zif_lnt_class_definition.
              CLEAR t262.
              t258 = t262.
            ENDIF.
            t255 = t258.
          ELSE.
            DATA t263 TYPE REF TO zif_lnt_class_definition.
            CLEAR t263.
            DATA t264 TYPE REF TO zcl_lnt_class.
            CLEAR t264.
            DATA t265 TYPE REF TO zcl_lnt_class.
            CLEAR t265.
            DATA t266 TYPE REF TO zif_lnt_object.
            CLEAR t266.
            DATA t267 TYPE REF TO zif_lnt_registry.
            CLEAR t267.
            DATA(t268) = t221.
            t267 = t268->reg.
            DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t269.
            DATA(t270) = abap_true.
            IF t270 = abap_true.
              DATA(t271) = |CLAS|.
              DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t272->has = abap_true.
              t272->value = t271.
              t269 = t272.
            ELSE.
              DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t273.
              t269 = t273.
            ENDIF.
            DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t274.
            DATA(t275) = abap_true.
            IF t275 = abap_true.
              DATA(t276) = VALUE string( ).
              DATA(t277) = t224.
              t276 = t277->value.
              DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t278->has = abap_true.
              t278->value = t276.
              t274 = t278.
            ELSE.
              DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t279.
              t274 = t279.
            ENDIF.
            t266 = t267->get_object( i_type_9913 = t269 i_name = t274 ).
            DATA t280 TYPE REF TO object.
            CLEAR t280.
            t280 = t266.
            t265 ?= t280.
            t264 = t265.
            DATA t281 TYPE REF TO zif_lnt_class_definition.
            CLEAR t281.
            DATA(t282) = VALUE abap_bool( ).
            DATA(t283) = t264.
            t282 = xsdbool( t283 IS BOUND ).
            IF t282 = abap_true.
              DATA t284 TYPE REF TO zif_lnt_class_definition.
              CLEAR t284.
              DATA t285 TYPE REF TO zcl_lnt_class.
              CLEAR t285.
              DATA(t286) = t264.
              t285 = t286.
              t284 = t285->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t281 = t284.
            ELSE.
              DATA t287 TYPE REF TO zif_lnt_class_definition.
              CLEAR t287.
              t281 = t287.
            ENDIF.
            t263 = t281.
            t255 = t263.
          ENDIF.
          t240 = t255.
          t231 = t240.
        ENDIF.
        t220 = t231.
        t219 = t220.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        t288 = t289.
        DATA(t290) = VALUE abap_bool( ).
        DATA(t291) = t219.
        IF t291 IS INITIAL.
          t290 = abap_true.
        ENDIF.
        t218 = t290.
        t209 = t218.
      ENDIF.
      IF t209 = abap_true.
        DATA(t292) = VALUE string( ).
        DATA(t293) = VALUE string( ).
        DATA(t294) = VALUE string( ).
        DATA(t295) = |Class "|.
        DATA(t296) = VALUE string( ).
        DATA(t297) = t163.
        t296 = t297->value.
        DATA(t298) = strlen( t295 ).
        t294 = |{ t295 }{ t296 }|.
        DATA(t299) = |" not found/released|.
        DATA(t300) = strlen( t294 ).
        t293 = |{ t294 }{ t299 }|.
        t292 = t293.
        DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t301.
        DATA(t302) = t2.
        t301 = t302->issues.
        DATA t303 TYPE REF TO zcl_lnt_issue.
        CLEAR t303.
        DATA(t304) = t2.
        DATA t305 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t305.
        DATA(t306) = t1.
        t305 = t306->get_first_token( ).
        DATA(t307) = t292.
        DATA t308 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t308.
        t303 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t304 i_token = t305 i_message_26cb = t307 i_fix = t308 ).
        t301->load( ).
        APPEND t303 TO t301->items.
        t301->save( ).
        DATA t309 TYPE REF TO zcl_lnt_void_type.
        CLEAR t309.
        DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t310.
        DATA(t311) = abap_true.
        IF t311 = abap_true.
          DATA(t312) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t313->has = abap_true.
          t313->value = t312.
          t310 = t313.
        ELSE.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t314.
          t310 = t314.
        ENDIF.
        DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t315.
        t309 = zcl_lnt_void_type=>get_db65( i_voided = t310 i_qualified_name = t315 ).
        result = t309.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t316) = VALUE abap_bool( ).
    DATA(t317) = t37.
    t316 = xsdbool( t317 IS BOUND AND t317 IS INSTANCE OF zcl_lnt_void_type ).
    IF t316 = abap_true.
      DO.
        DATA(t318) = VALUE abap_bool( ).
        DATA(t319) = VALUE i( ).
        DATA(t320) = t7.
        t320->load( ).
        t319 = lines( t320->items ).
        DATA(t321) = 0.
        t318 = xsdbool( t319 > t321 ).
        IF t318 = abap_false.
          EXIT.
        ENDIF.
        DATA t322 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t322.
        DATA t323 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t323.
        DATA(t324) = t7.
        DATA t325 TYPE REF TO object.
        CLEAR t325.
        t325 = t324->shift( ).
        DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t326.
        CLEAR t323.
        IF t325 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t326 ?= t325.
          DATA t327 TYPE REF TO object.
          CLEAR t327.
          t327 = t326->as_ref( ).
          t323 ?= t327.
        ELSE.
          t323 ?= t325.
        ENDIF.
        t322 = t323.
        DATA(t328) = VALUE abap_bool( ).
        DATA(t329) = VALUE abap_bool( ).
        DATA(t330) = t322.
        t329 = xsdbool( t330 IS BOUND AND t330 IS INSTANCE OF zcl_lnt_expression_node ).
        t328 = t329.
        IF t329 = abap_true.
          DATA(t331) = VALUE abap_bool( ).
          DATA t332 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t332.
          DATA t333 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t333.
          DATA(t334) = t322.
          DATA t335 TYPE REF TO object.
          CLEAR t335.
          t335 = t334.
          t333 ?= t335.
          t332 = t333->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t331 = xsdbool( t332 IS BOUND AND t332 IS INSTANCE OF zcl_lnt_st_dynamic ).
          t328 = t331.
        ENDIF.
        IF t328 = abap_true.
          DATA t336 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t336.
          DATA(t337) = t322.
          DATA t338 TYPE REF TO object.
          CLEAR t338.
          t338 = t337.
          t336 ?= t338.
          DATA(t339) = t2.
          zcl_lnt_sy_dynamic=>run_syntax( i_node = t336 i_input_967e = t339 ).
        ENDIF.
      ENDDO.
      DATA t340 TYPE REF TO zcl_lnt_void_type.
      CLEAR t340.
      DATA(t341) = t37.
      DATA t342 TYPE REF TO object.
      CLEAR t342.
      t342 = t341.
      t340 ?= t342.
      result = t340.
      RETURN.
    ENDIF.
    DO.
      DATA(t343) = VALUE abap_bool( ).
      DATA(t344) = VALUE i( ).
      DATA(t345) = t7.
      t345->load( ).
      t344 = lines( t345->items ).
      DATA(t346) = 0.
      t343 = xsdbool( t344 > t346 ).
      IF t343 = abap_false.
        EXIT.
      ENDIF.
      DATA t347 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t347.
      DATA t348 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t348.
      DATA(t349) = t7.
      DATA t350 TYPE REF TO object.
      CLEAR t350.
      t350 = t349->shift( ).
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      CLEAR t348.
      IF t350 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t351 ?= t350.
        DATA t352 TYPE REF TO object.
        CLEAR t352.
        t352 = t351->as_ref( ).
        t348 ?= t352.
      ELSE.
        t348 ?= t350.
      ENDIF.
      t347 = t348.
      DATA(t353) = VALUE abap_bool( ).
      DATA t354 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t354.
      DATA(t355) = t347.
      t354 = t355.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t357.
      t356 = t357.
      DATA(t358) = VALUE abap_bool( ).
      DATA(t359) = t354.
      IF t359 IS INITIAL.
        t358 = abap_true.
      ENDIF.
      t353 = t358.
      IF t353 = abap_true.
        EXIT.
      ENDIF.
      DATA(t360) = VALUE abap_bool( ).
      DATA t361 TYPE REF TO object.
      CLEAR t361.
      DATA t362 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t362.
      DATA(t363) = t347.
      t362 = t363.
      t361 = t362->get_db65( ).
      t360 = xsdbool( t361 IS BOUND AND t361 IS INSTANCE OF zcl_lnt_dash ).
      IF t360 = abap_true.
        DATA(t364) = VALUE abap_bool( ).
        DATA(t365) = t37.
        t364 = xsdbool( t365 IS BOUND AND t365 IS INSTANCE OF zcl_lnt_unknown_type ).
        IF t364 = abap_true.
          DATA(t366) = VALUE string( ).
          DATA(t367) = |Not a structure, type unknown, MethodSource|.
          t366 = t367.
          DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t368.
          DATA(t369) = t2.
          t368 = t369->issues.
          DATA t370 TYPE REF TO zcl_lnt_issue.
          CLEAR t370.
          DATA(t371) = t2.
          DATA t372 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t372.
          DATA(t373) = t1.
          t372 = t373->get_first_token( ).
          DATA(t374) = t366.
          DATA t375 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t375.
          t370 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t371 i_token = t372 i_message_26cb = t374 i_fix = t375 ).
          t368->load( ).
          APPEND t370 TO t368->items.
          t368->save( ).
          DATA t376 TYPE REF TO zcl_lnt_void_type.
          CLEAR t376.
          DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t377.
          DATA(t378) = abap_true.
          IF t378 = abap_true.
            DATA(t379) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t380->has = abap_true.
            t380->value = t379.
            t377 = t380.
          ELSE.
            DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t381.
            t377 = t381.
          ENDIF.
          DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t382.
          t376 = zcl_lnt_void_type=>get_db65( i_voided = t377 i_qualified_name = t382 ).
          result = t376.
          RETURN.
        ELSE.
          DATA(t383) = VALUE abap_bool( ).
          DATA(t384) = VALUE abap_bool( ).
          DATA(t385) = t37.
          t384 = xsdbool( t385 IS BOUND AND t385 IS INSTANCE OF zcl_lnt_structure_type ).
          t383 = xsdbool( t384 = abap_false ).
          IF t383 = abap_true.
            DATA(t386) = VALUE string( ).
            DATA(t387) = |Not a structure, MethodSource|.
            t386 = t387.
            DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t388.
            DATA(t389) = t2.
            t388 = t389->issues.
            DATA t390 TYPE REF TO zcl_lnt_issue.
            CLEAR t390.
            DATA(t391) = t2.
            DATA t392 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t392.
            DATA(t393) = t1.
            t392 = t393->get_first_token( ).
            DATA(t394) = t386.
            DATA t395 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t395.
            t390 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t391 i_token = t392 i_message_26cb = t394 i_fix = t395 ).
            t388->load( ).
            APPEND t390 TO t388->items.
            t388->save( ).
            DATA t396 TYPE REF TO zcl_lnt_void_type.
            CLEAR t396.
            DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t397.
            DATA(t398) = abap_true.
            IF t398 = abap_true.
              DATA(t399) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
              DATA(t400) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t400->has = abap_true.
              t400->value = t399.
              t397 = t400.
            ELSE.
              DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t401.
              t397 = t401.
            ENDIF.
            DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t402.
            t396 = zcl_lnt_void_type=>get_db65( i_voided = t397 i_qualified_name = t402 ).
            result = t396.
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t403) = VALUE abap_bool( ).
        DATA(t404) = VALUE abap_bool( ).
        DATA t405 TYPE REF TO object.
        CLEAR t405.
        DATA t406 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t406.
        DATA(t407) = t347.
        t406 = t407.
        t405 = t406->get_db65( ).
        t404 = xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_instance_arrow ).
        t403 = t404.
        IF t404 = abap_false.
          DATA(t408) = VALUE abap_bool( ).
          DATA t409 TYPE REF TO object.
          CLEAR t409.
          DATA t410 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t410.
          DATA(t411) = t347.
          t410 = t411.
          t409 = t410->get_db65( ).
          t408 = xsdbool( t409 IS BOUND AND t409 IS INSTANCE OF zcl_lnt_static_arrow ).
          t403 = t408.
        ENDIF.
        IF t403 = abap_true.
        ELSE.
          DATA(t412) = VALUE abap_bool( ).
          DATA(t413) = VALUE abap_bool( ).
          DATA t414 TYPE REF TO object.
          CLEAR t414.
          DATA t415 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t415.
          DATA(t416) = t347.
          t415 = t416.
          t414 = t415->get_db65( ).
          t413 = xsdbool( t414 IS BOUND AND t414 IS INSTANCE OF zcl_lnt_st_attribute_name ).
          t412 = t413.
          IF t413 = abap_false.
            DATA(t417) = VALUE abap_bool( ).
            DATA t418 TYPE REF TO object.
            CLEAR t418.
            DATA t419 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t419.
            DATA(t420) = t347.
            t419 = t420.
            t418 = t419->get_db65( ).
            t417 = xsdbool( t418 IS BOUND AND t418 IS INSTANCE OF zcl_lnt_st_source_field ).
            t412 = t417.
          ENDIF.
          IF t412 = abap_true.
            DATA(t421) = VALUE abap_bool( ).
            DATA(t422) = t37.
            t421 = xsdbool( t422 IS BOUND AND t422 IS INSTANCE OF zcl_lnt_abstract_type ).
            IF t421 = abap_true.
              DATA t423 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t423.
              DATA t424 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t424.
              DATA t425 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t425.
              DATA(t426) = abap_true.
              IF t426 = abap_true.
                DATA t427 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t427.
                DATA(t428) = t37.
                DATA t429 TYPE REF TO object.
                CLEAR t429.
                t429 = t428.
                t427 ?= t429.
                t425 = t427.
              ELSE.
                DATA t430 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t430.
                t425 = t430.
              ENDIF.
              DATA t431 TYPE REF TO zif_lnt_node.
              CLEAR t431.
              DATA t432 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t432.
              DATA(t433) = t347.
              t432 = t433.
              t431 ?= t432.
              DATA(t434) = t2.
              DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t435.
              DATA(t436) = abap_true.
              IF t436 = abap_true.
                DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t437.
                DATA(t438) = |Read From|.
                CLEAR t437.
                CREATE OBJECT t437.
                t437->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                t437->sval = t438.
                t435 = t437.
              ELSE.
                DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t439.
                t435 = t439.
              ENDIF.
              DATA t440 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t440.
              DATA(t441) = abap_true.
              IF t441 = abap_true.
                DATA(t442) = abap_false.
                DATA(t443) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t443->has = abap_true.
                t443->value = t442.
                t440 = t443.
              ELSE.
                DATA t444 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t444.
                t440 = t444.
              ENDIF.
              t424 = zcl_lnt_sy_attribute_name=>run_syntax( i_context = t425 i_node = t431 i_input_967e = t434 i_type_9913 = t435 i_error = t440 ).
              t423 = t424.
              DATA(t445) = VALUE abap_bool( ).
              DATA(t446) = VALUE abap_bool( ).
              DATA(t447) = VALUE abap_bool( ).
              DATA(t448) = t423.
              t447 = xsdbool( t448 IS BOUND AND t448 IS INSTANCE OF zcl_lnt_void_type ).
              t446 = t447.
              IF t447 = abap_true.
                DATA(t449) = VALUE abap_bool( ).
                DATA t450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t450.
                DATA t451 TYPE REF TO zcl_lnt_void_type.
                CLEAR t451.
                DATA t452 TYPE REF TO zcl_lnt_void_type.
                CLEAR t452.
                DATA(t453) = t423.
                t452 ?= t453.
                t451 = t452.
                DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t454.
                DATA(t455) = t451.
                t454 = t455->voided.
                t450 = t454.
                DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t456.
                DATA(t457) = abap_true.
                IF t457 = abap_true.
                  DATA(t458) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t459) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t459->has = abap_true.
                  t459->value = t458.
                  t456 = t459.
                ELSE.
                  DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t460.
                  t456 = t460.
                ENDIF.
                DATA(t461) = VALUE abap_bool( ).
                DATA(t462) = VALUE abap_bool( ).
                IF t450 IS BOUND.
                  t461 = t450->has.
                ENDIF.
                IF t456 IS BOUND.
                  t462 = t456->has.
                ENDIF.
                IF t461 = t462.
                  IF t461 = abap_false.
                    t449 = abap_true.
                  ELSEIF t450->value = t456->value.
                    t449 = abap_true.
                  ENDIF.
                ENDIF.
                t446 = t449.
              ENDIF.
              t445 = t446.
              DATA(t463) = VALUE abap_bool( ).
              DATA(t464) = t445.
              DATA(t465) = abap_false.
              t463 = xsdbool( t464 = t465 ).
              IF t463 = abap_true.
                DATA(t466) = t423.
                t37 = t466.
                CONTINUE.
              ENDIF.
            ENDIF.
            DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t467.
            DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t468.
            DATA(t469) = VALUE abap_bool( ).
            DATA(t470) = t37.
            t469 = xsdbool( t470 IS BOUND AND t470 IS INSTANCE OF zcl_lnt_object_reference_type ).
            IF t469 = abap_true.
              DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t471.
              DATA(t472) = abap_true.
              IF t472 = abap_true.
                DATA(t473) = VALUE string( ).
                DATA t474 TYPE REF TO zcl_lnt_object_reference_type.
                CLEAR t474.
                DATA t475 TYPE REF TO zcl_lnt_object_reference_type.
                CLEAR t475.
                DATA(t476) = t37.
                DATA t477 TYPE REF TO object.
                CLEAR t477.
                t477 = t476.
                t475 ?= t477.
                t474 = t475.
                DATA(t478) = VALUE string( ).
                DATA t479 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t479.
                DATA t480 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t480.
                DATA(t481) = t474.
                t480 = t481->identifier.
                t479 = t480.
                DATA(t482) = VALUE string( ).
                DATA(t483) = VALUE string( ).
                DATA(t484) = VALUE string( ).
                DATA t485 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t485.
                DATA t486 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t486.
                DATA(t487) = t479.
                t486 = t487->token.
                t485 = t486.
                DATA(t488) = VALUE string( ).
                DATA(t489) = t485.
                t488 = t489->str.
                t484 = t488.
                t483 = t484.
                DATA(t490) = VALUE abap_bool( ).
                DATA(t491) = VALUE string( ).
                DATA(t492) = t483.
                DATA(t493) = 0.
                DATA(t494) = 1.
                DATA(t495) = strlen( t492 ).
                IF t493 < 0.
                  t493 = t493 + t495.
                  IF t493 < 0.
                    t493 = 0.
                  ENDIF.
                ENDIF.
                IF t493 > t495 OR t494 <= 0.
                  CLEAR t491.
                ELSE.
                  IF t494 > t495 - t493.
                    t494 = t495 - t493.
                  ENDIF.
                  t491 = t492+t493(t494).
                ENDIF.
                DATA(t496) = |!|.
                t490 = xsdbool( t491 = t496 ).
                IF t490 = abap_true.
                  DATA(t497) = VALUE string( ).
                  DATA(t498) = VALUE string( ).
                  DATA(t499) = t483.
                  t498 = t499.
                  DATA(t500) = VALUE string( ).
                  DATA(t501) = t498.
                  DATA(t502) = 1.
                  DATA(t503) = VALUE i( ).
                  DATA(t504) = t498.
                  DATA(t505) = strlen( t504 ).
                  t503 = t505.
                  DATA(t506) = strlen( t501 ).
                  IF t502 < 0.
                    t502 = t502 + t506.
                    IF t502 < 0.
                      t502 = 0.
                    ENDIF.
                  ENDIF.
                  IF t502 > t506 OR t503 <= 0.
                    CLEAR t500.
                  ELSE.
                    IF t503 > t506 - t502.
                      t503 = t506 - t502.
                    ENDIF.
                    t500 = t501+t502(t503).
                  ENDIF.
                  t497 = t500.
                  t483 = t497.
                ENDIF.
                DATA(t507) = t483.
                t482 = t507.
                t478 = t482.
                t473 = t478.
                DATA(t508) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t508->has = abap_true.
                t508->value = t473.
                t471 = t508.
              ELSE.
                DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t509.
                t471 = t509.
              ENDIF.
              t468 = t471.
            ELSE.
              DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t510.
              t468 = t510.
            ENDIF.
            t467 = t468.
            DATA t511 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t511.
            DATA t512 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t512.
            DATA t513 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t513.
            DATA(t514) = t347.
            t513 = t514.
            t512 = t513->get_first_token( ).
            t511 = t512.
            DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t515.
            DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t516.
            DATA t517 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t517.
            DATA(t518) = t511.
            t517 = t518.
            DATA t519 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t519.
            DATA(t520) = VALUE abap_bool( ).
            DATA(t521) = t517.
            IF t521 IS INITIAL.
              t520 = abap_true.
            ENDIF.
            IF t520 = abap_true.
              DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t522.
              t519 = t522.
            ELSE.
              DATA(t523) = VALUE string( ).
              DATA t524 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t524.
              DATA(t525) = t517.
              t524 = t525.
              DATA(t526) = VALUE string( ).
              DATA(t527) = t524.
              t526 = t527->str.
              t523 = t526.
              DATA(t528) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t528->has = abap_true.
              t528->value = t523.
              t519 = t528.
            ENDIF.
            t516 = t519.
            t515 = t516.
            DATA t529 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t529.
            DATA t530 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t530.
            DATA t531 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t531.
            DATA t532 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t532.
            DATA(t533) = t2.
            t532 = t533->scope.
            t531 = t532.
            DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t534.
            DATA(t535) = t467.
            t534 = t535.
            DATA t536 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t536.
            DATA(t537) = VALUE abap_bool( ).
            DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t538.
            DATA(t539) = t534.
            t538 = t539.
            DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t540.
            DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t541.
            t540 = t541.
            DATA(t542) = VALUE abap_bool( ).
            DATA(t543) = t538.
            IF t543 IS INITIAL.
              t542 = abap_true.
            ELSEIF t543->has = abap_false.
              t542 = abap_true.
            ENDIF.
            t537 = t542.
            IF t537 = abap_true.
              DATA t544 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t544.
              t536 = t544.
            ELSE.
              DATA t545 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t545.
              DATA t546 TYPE REF TO zif_lnt_class_definition.
              CLEAR t546.
              DATA t547 TYPE REF TO zif_lnt_class_definition.
              CLEAR t547.
              DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t548.
              DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t549.
              DATA(t550) = abap_true.
              IF t550 = abap_true.
                DATA(t551) = VALUE string( ).
                DATA(t552) = t534.
                t551 = t552->value.
                DATA(t553) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t553->has = abap_true.
                t553->value = t551.
                t549 = t553.
              ELSE.
                DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t554.
                t549 = t554.
              ENDIF.
              t548 = t549.
              DATA t555 TYPE REF TO zif_lnt_class_definition.
              CLEAR t555.
              DATA(t556) = VALUE abap_bool( ).
              DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t557.
              DATA(t558) = t548.
              t557 = t558.
              DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t559.
              DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t560.
              t559 = t560.
              DATA(t561) = VALUE abap_bool( ).
              DATA(t562) = t557.
              IF t562 IS INITIAL.
                t561 = abap_true.
              ELSEIF t562->has = abap_false.
                t561 = abap_true.
              ENDIF.
              t556 = t561.
              IF t556 = abap_true.
                DATA t563 TYPE REF TO zif_lnt_class_definition.
                CLEAR t563.
                t555 = t563.
              ELSE.
                DATA t564 TYPE REF TO zif_lnt_class_definition.
                CLEAR t564.
                DATA t565 TYPE REF TO zif_lnt_class_definition.
                CLEAR t565.
                DATA t566 TYPE REF TO zif_lnt_class_definition.
                CLEAR t566.
                DATA t567 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t567.
                DATA t568 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                CLEAR t568.
                DATA(t569) = t531.
                t568 = t569->current.
                t567 = t568.
                DATA t570 TYPE REF TO zif_lnt_class_definition.
                CLEAR t570.
                DATA(t571) = VALUE abap_bool( ).
                DATA(t572) = t567.
                IF t572 IS INITIAL.
                  t571 = abap_true.
                ENDIF.
                IF t571 = abap_true.
                  DATA t573 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t573.
                  t570 = t573.
                ELSE.
                  DATA t574 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t574.
                  DATA t575 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  CLEAR t575.
                  DATA(t576) = t567.
                  t575 = t576.
                  DATA(t577) = VALUE string( ).
                  DATA(t578) = t548.
                  t577 = t578->value.
                  t574 = t575->find_class_definition( i_name = t577 ).
                  t570 = t574.
                ENDIF.
                t566 = t570.
                t565 = t566.
                DATA t579 TYPE REF TO zif_lnt_class_definition.
                CLEAR t579.
                DATA(t580) = VALUE abap_bool( ).
                DATA(t581) = t565.
                t580 = xsdbool( t581 IS BOUND ).
                IF t580 = abap_true.
                  DATA t582 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t582.
                  DATA(t583) = abap_true.
                  IF t583 = abap_true.
                    DATA t584 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t584.
                    DATA(t585) = t565.
                    t584 = t585.
                    t582 = t584.
                  ELSE.
                    DATA t586 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t586.
                    t582 = t586.
                  ENDIF.
                  t579 = t582.
                ELSE.
                  DATA t587 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t587.
                  DATA t588 TYPE REF TO zcl_lnt_class.
                  CLEAR t588.
                  DATA t589 TYPE REF TO zcl_lnt_class.
                  CLEAR t589.
                  DATA t590 TYPE REF TO zif_lnt_object.
                  CLEAR t590.
                  DATA t591 TYPE REF TO zif_lnt_registry.
                  CLEAR t591.
                  DATA(t592) = t531.
                  t591 = t592->reg.
                  DATA t593 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t593.
                  DATA(t594) = abap_true.
                  IF t594 = abap_true.
                    DATA(t595) = |CLAS|.
                    DATA(t596) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t596->has = abap_true.
                    t596->value = t595.
                    t593 = t596.
                  ELSE.
                    DATA t597 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t597.
                    t593 = t597.
                  ENDIF.
                  DATA t598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t598.
                  DATA(t599) = abap_true.
                  IF t599 = abap_true.
                    DATA(t600) = VALUE string( ).
                    DATA(t601) = t548.
                    t600 = t601->value.
                    DATA(t602) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t602->has = abap_true.
                    t602->value = t600.
                    t598 = t602.
                  ELSE.
                    DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t603.
                    t598 = t603.
                  ENDIF.
                  t590 = t591->get_object( i_type_9913 = t593 i_name = t598 ).
                  DATA t604 TYPE REF TO object.
                  CLEAR t604.
                  t604 = t590.
                  t589 ?= t604.
                  t588 = t589.
                  DATA t605 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t605.
                  DATA(t606) = VALUE abap_bool( ).
                  DATA(t607) = t588.
                  t606 = xsdbool( t607 IS BOUND ).
                  IF t606 = abap_true.
                    DATA t608 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t608.
                    DATA t609 TYPE REF TO zcl_lnt_class.
                    CLEAR t609.
                    DATA(t610) = t588.
                    t609 = t610.
                    t608 = t609->gt_dfn_ins_src_obj_cls_ts_clss( ).
                    t605 = t608.
                  ELSE.
                    DATA t611 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t611.
                    t605 = t611.
                  ENDIF.
                  t587 = t605.
                  t579 = t587.
                ENDIF.
                t564 = t579.
                t555 = t564.
              ENDIF.
              t547 = t555.
              t546 = t547.
              DATA t612 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t612.
              DATA(t613) = VALUE abap_bool( ).
              DATA(t614) = t546.
              t613 = xsdbool( t614 IS BOUND ).
              IF t613 = abap_true.
                DATA t615 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t615.
                DATA t616 TYPE REF TO zif_lnt_class_definition.
                CLEAR t616.
                DATA(t617) = t546.
                t616 = t617.
                t615 ?= t616.
                t612 = t615.
              ELSE.
                DATA t618 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t618.
                DATA t619 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t619.
                DATA t620 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t620.
                DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t621.
                DATA t622 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t622.
                DATA(t623) = abap_true.
                IF t623 = abap_true.
                  DATA(t624) = VALUE string( ).
                  DATA(t625) = t534.
                  t624 = t625->value.
                  DATA(t626) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t626->has = abap_true.
                  t626->value = t624.
                  t622 = t626.
                ELSE.
                  DATA t627 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t627.
                  t622 = t627.
                ENDIF.
                t621 = t622.
                DATA t628 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t628.
                DATA(t629) = VALUE abap_bool( ).
                DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t630.
                DATA(t631) = t621.
                t630 = t631.
                DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t632.
                DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t633.
                t632 = t633.
                DATA(t634) = VALUE abap_bool( ).
                DATA(t635) = t630.
                IF t635 IS INITIAL.
                  t634 = abap_true.
                ELSEIF t635->has = abap_false.
                  t634 = abap_true.
                ENDIF.
                t629 = t634.
                IF t629 = abap_true.
                  DATA t636 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t636.
                  t628 = t636.
                ELSE.
                  DATA t637 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t637.
                  DATA t638 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t638.
                  DATA t639 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t639.
                  DATA t640 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  CLEAR t640.
                  DATA t641 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  CLEAR t641.
                  DATA(t642) = t531.
                  t641 = t642->current.
                  t640 = t641.
                  DATA t643 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t643.
                  DATA(t644) = VALUE abap_bool( ).
                  DATA(t645) = t640.
                  IF t645 IS INITIAL.
                    t644 = abap_true.
                  ENDIF.
                  IF t644 = abap_true.
                    DATA t646 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t646.
                    t643 = t646.
                  ELSE.
                    DATA t647 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t647.
                    DATA t648 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    CLEAR t648.
                    DATA(t649) = t640.
                    t648 = t649.
                    DATA(t650) = VALUE string( ).
                    DATA(t651) = t621.
                    t650 = t651->value.
                    t647 = t648->find_interface_definition( i_name = t650 ).
                    t643 = t647.
                  ENDIF.
                  t639 = t643.
                  t638 = t639.
                  DATA t652 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t652.
                  DATA(t653) = VALUE abap_bool( ).
                  DATA(t654) = t638.
                  t653 = xsdbool( t654 IS BOUND ).
                  IF t653 = abap_true.
                    DATA t655 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t655.
                    DATA(t656) = abap_true.
                    IF t656 = abap_true.
                      DATA t657 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t657.
                      DATA(t658) = t638.
                      t657 = t658.
                      t655 = t657.
                    ELSE.
                      DATA t659 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t659.
                      t655 = t659.
                    ENDIF.
                    t652 = t655.
                  ELSE.
                    DATA t660 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t660.
                    DATA t661 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t661.
                    DATA t662 TYPE REF TO zcl_lnt_ob_interface.
                    CLEAR t662.
                    DATA t663 TYPE REF TO zif_lnt_object.
                    CLEAR t663.
                    DATA t664 TYPE REF TO zif_lnt_registry.
                    CLEAR t664.
                    DATA(t665) = t531.
                    t664 = t665->reg.
                    DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t666.
                    DATA(t667) = abap_true.
                    IF t667 = abap_true.
                      DATA(t668) = |INTF|.
                      DATA(t669) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t669->has = abap_true.
                      t669->value = t668.
                      t666 = t669.
                    ELSE.
                      DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t670.
                      t666 = t670.
                    ENDIF.
                    DATA t671 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t671.
                    DATA(t672) = abap_true.
                    IF t672 = abap_true.
                      DATA(t673) = VALUE string( ).
                      DATA(t674) = t621.
                      t673 = t674->value.
                      DATA(t675) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t675->has = abap_true.
                      t675->value = t673.
                      t671 = t675.
                    ELSE.
                      DATA t676 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t676.
                      t671 = t676.
                    ENDIF.
                    t663 = t664->get_object( i_type_9913 = t666 i_name = t671 ).
                    DATA t677 TYPE REF TO object.
                    CLEAR t677.
                    t677 = t663.
                    t662 ?= t677.
                    t661 = t662.
                    DATA t678 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t678.
                    DATA(t679) = VALUE abap_bool( ).
                    DATA(t680) = t661.
                    t679 = xsdbool( t680 IS BOUND ).
                    IF t679 = abap_true.
                      DATA t681 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t681.
                      DATA t682 TYPE REF TO zcl_lnt_ob_interface.
                      CLEAR t682.
                      DATA t683 TYPE REF TO zcl_lnt_ob_interface.
                      CLEAR t683.
                      DATA(t684) = t661.
                      t683 = t684.
                      t682 = t683.
                      DATA t685 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t685.
                      DATA(t686) = t682.
                      t685 = t686->def.
                      t681 = t685.
                      t678 = t681.
                    ELSE.
                      DATA t687 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t687.
                      t678 = t687.
                    ENDIF.
                    t660 = t678.
                    t652 = t660.
                  ENDIF.
                  t637 = t652.
                  t628 = t637.
                ENDIF.
                t620 = t628.
                t619 = t620.
                DATA t688 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t688.
                DATA(t689) = VALUE abap_bool( ).
                DATA(t690) = t619.
                t689 = xsdbool( t690 IS BOUND ).
                IF t689 = abap_true.
                  DATA t691 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t691.
                  DATA(t692) = abap_true.
                  IF t692 = abap_true.
                    DATA t693 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t693.
                    DATA(t694) = t619.
                    t693 = t694.
                    t691 = t693.
                  ELSE.
                    DATA t695 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t695.
                    t691 = t695.
                  ENDIF.
                  t688 = t691.
                ELSE.
                  DATA t696 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t696.
                  t688 = t696.
                ENDIF.
                t618 = t688.
                t612 = t618.
              ENDIF.
              t545 = t612.
              t536 = t545.
            ENDIF.
            t530 = t536.
            t529 = t530.
            DATA t697 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t697.
            DATA t698 TYPE REF TO zcl_lnt_shape_a38e878f.
            CLEAR t698.
            DATA(t699) = t3.
            DATA(t700) = t529.
            DATA(t701) = t515.
            t698 = t699->search_method_name( i_def = t700 i_name = t701 ).
            t697 = t698.
            DATA t702 TYPE REF TO zif_lnt_method_definition.
            CLEAR t702.
            DATA t703 TYPE REF TO zif_lnt_method_definition.
            CLEAR t703.
            DATA(t704) = t697.
            t703 = t704->method.
            t702 = t703.
            DATA t705 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t705.
            DATA t706 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t706.
            DATA(t707) = t697.
            t706 = t707->def.
            t705 = t706.
            DATA(t708) = VALUE abap_bool( ).
            DATA(t709) = VALUE abap_bool( ).
            DATA(t710) = VALUE abap_bool( ).
            DATA(t711) = t44.
            t710 = t711.
            IF t711 = abap_true.
              DATA(t712) = VALUE abap_bool( ).
              DATA t713 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t713.
              DATA(t714) = t347.
              t713 = t714.
              DATA t715 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t715.
              DATA(t716) = t15.
              t715 = t716.
              DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t717.
              DATA t718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t718.
              CLEAR t717.
              IF t713 IS BOUND.
                DATA t719 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t719.
                DATA t720 TYPE REF TO object.
                CLEAR t720.
                CLEAR t719.
                t720 = t713.
                TRY.
                    t717 ?= t720.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t717 IS NOT BOUND.
                  TRY.
                      t719 ?= t713.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t719 IS BOUND.
                    t717 = t719->source( ).
                  ENDIF.
                  IF t717 IS NOT BOUND.
                    CREATE OBJECT t717.
                    t717->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t717->oval = t713.
                  ENDIF.
                ENDIF.
              ENDIF.
              CLEAR t718.
              IF t715 IS BOUND.
                DATA t721 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t721.
                DATA t722 TYPE REF TO object.
                CLEAR t722.
                CLEAR t721.
                t722 = t715.
                TRY.
                    t718 ?= t722.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t718 IS NOT BOUND.
                  TRY.
                      t721 ?= t715.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t721 IS BOUND.
                    t718 = t721->source( ).
                  ENDIF.
                  IF t718 IS NOT BOUND.
                    CREATE OBJECT t718.
                    t718->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t718->oval = t715.
                  ENDIF.
                ENDIF.
              ENDIF.
              IF t717 IS BOUND.
                t712 = t717->strict_equals( t718 ).
              ELSE.
                t712 = xsdbool( t718 IS NOT BOUND ).
              ENDIF.
              t710 = t712.
            ENDIF.
            t709 = t710.
            IF t710 = abap_true.
              DATA(t723) = VALUE abap_bool( ).
              DATA t724 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t724.
              DATA t725 TYPE REF TO zif_lnt_method_definition.
              CLEAR t725.
              DATA(t726) = t702.
              t725 = t726.
              DATA t727 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t727.
              DATA(t728) = VALUE abap_bool( ).
              DATA(t729) = t725.
              IF t729 IS INITIAL.
                t728 = abap_true.
              ENDIF.
              IF t728 = abap_true.
                DATA t730 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t730.
                t727 = t730.
              ELSE.
                DATA(t731) = VALUE abap_bool( ).
                DATA t732 TYPE REF TO zif_lnt_method_definition.
                CLEAR t732.
                DATA(t733) = t725.
                t732 = t733.
                t731 = t732->is_static_4685( ).
                DATA(t734) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t734->has = abap_true.
                t734->value = t731.
                t727 = t734.
              ENDIF.
              t724 = t727.
              DATA t735 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t735.
              DATA(t736) = abap_true.
              IF t736 = abap_true.
                DATA(t737) = abap_false.
                DATA(t738) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t738->has = abap_true.
                t738->value = t737.
                t735 = t738.
              ELSE.
                DATA t739 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t739.
                t735 = t739.
              ENDIF.
              DATA(t740) = VALUE abap_bool( ).
              DATA(t741) = VALUE abap_bool( ).
              IF t724 IS BOUND.
                t740 = t724->has.
              ENDIF.
              IF t735 IS BOUND.
                t741 = t735->has.
              ENDIF.
              IF t740 = t741.
                IF t740 = abap_false.
                  t723 = abap_true.
                ELSEIF t724->value = t735->value.
                  t723 = abap_true.
                ENDIF.
              ENDIF.
              t709 = t723.
            ENDIF.
            t708 = t709.
            IF t709 = abap_true.
              DATA(t742) = VALUE abap_bool( ).
              DATA(t743) = VALUE abap_bool( ).
              DATA t744 TYPE REF TO zcl_lnt_current_scope.
              CLEAR t744.
              DATA(t745) = t2.
              t744 = t745->scope.
              t743 = t744->is_in_static_method( ).
              DATA(t746) = abap_true.
              t742 = xsdbool( t743 = t746 ).
              t708 = t742.
            ENDIF.
            IF t708 = abap_true.
              DATA(t747) = VALUE string( ).
              DATA(t748) = VALUE string( ).
              DATA(t749) = VALUE string( ).
              DATA(t750) = |Method "|.
              DATA(t751) = VALUE string( ).
              DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t752.
              DATA(t753) = t515.
              t752 = t753.
              DATA(t754) = VALUE string( ).
              DATA(t755) = VALUE abap_bool( ).
              DATA(t756) = t752.
              IF t756 IS INITIAL.
                t755 = abap_true.
              ELSEIF t756->has = abap_false.
                t755 = abap_true.
              ENDIF.
              IF t755 = abap_true.
                DATA(t757) = |undefined|.
                t754 = t757.
              ELSE.
                DATA(t758) = VALUE string( ).
                DATA(t759) = t752.
                t758 = t759->value.
                t754 = t758.
              ENDIF.
              t751 = t754.
              DATA(t760) = strlen( t750 ).
              t749 = |{ t750 }{ t751 }|.
              DATA(t761) = |" not static|.
              DATA(t762) = strlen( t749 ).
              t748 = |{ t749 }{ t761 }|.
              t747 = t748.
              DATA t763 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t763.
              DATA(t764) = t2.
              t763 = t764->issues.
              DATA t765 TYPE REF TO zcl_lnt_issue.
              CLEAR t765.
              DATA(t766) = t2.
              DATA(t767) = t511.
              DATA(t768) = t747.
              DATA t769 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t769.
              t765 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t766 i_token = t767 i_message_26cb = t768 i_fix = t769 ).
              t763->load( ).
              APPEND t765 TO t763->items.
              t763->save( ).
              DATA t770 TYPE REF TO zcl_lnt_void_type.
              CLEAR t770.
              DATA t771 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t771.
              DATA(t772) = abap_true.
              IF t772 = abap_true.
                DATA(t773) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                DATA(t774) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t774->has = abap_true.
                t774->value = t773.
                t771 = t774.
              ELSE.
                DATA t775 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t775.
                t771 = t775.
              ENDIF.
              DATA t776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t776.
              t770 = zcl_lnt_void_type=>get_db65( i_voided = t771 i_qualified_name = t776 ).
              result = t770.
              RETURN.
            ENDIF.
            DATA(t777) = VALUE abap_bool( ).
            DATA(t778) = VALUE abap_bool( ).
            DATA t779 TYPE REF TO zif_lnt_method_definition.
            CLEAR t779.
            DATA(t780) = t702.
            t779 = t780.
            DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t781.
            DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t782.
            t781 = t782.
            DATA(t783) = VALUE abap_bool( ).
            DATA(t784) = t779.
            IF t784 IS INITIAL.
              t783 = abap_true.
            ENDIF.
            t778 = t783.
            t777 = t778.
            IF t778 = abap_true.
              DATA(t785) = VALUE abap_bool( ).
              DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t786.
              DATA t787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t787.
              DATA(t788) = t515.
              t787 = t788.
              DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t789.
              DATA(t790) = VALUE abap_bool( ).
              DATA(t791) = t787.
              IF t791 IS INITIAL.
                t790 = abap_true.
              ELSEIF t791->has = abap_false.
                t790 = abap_true.
              ENDIF.
              IF t790 = abap_true.
                DATA t792 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t792.
                t789 = t792.
              ELSE.
                DATA(t793) = VALUE string( ).
                DATA(t794) = VALUE string( ).
                DATA(t795) = t787.
                t794 = t795->value.
                DATA(t796) = strlen( t794 ).
                t793 = t794.
                IF t793 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t793 TO UPPER CASE.
                ELSE.
                  t793 = zlnt_runtime_uppe_91169605024d=>full( t793 ).
                ENDIF.
                DATA(t797) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t797->has = abap_true.
                t797->value = t793.
                t789 = t797.
              ENDIF.
              t786 = t789.
              DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t798.
              DATA(t799) = abap_true.
              IF t799 = abap_true.
                DATA(t800) = |CONSTRUCTOR|.
                DATA(t801) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t801->has = abap_true.
                t801->value = t800.
                t798 = t801.
              ELSE.
                DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t802.
                t798 = t802.
              ENDIF.
              DATA(t803) = VALUE abap_bool( ).
              DATA(t804) = VALUE abap_bool( ).
              IF t786 IS BOUND.
                t803 = t786->has.
              ENDIF.
              IF t798 IS BOUND.
                t804 = t798->has.
              ENDIF.
              IF t803 = t804.
                IF t803 = abap_false.
                  t785 = abap_true.
                ELSEIF t786->value = t798->value.
                  t785 = abap_true.
                ENDIF.
              ENDIF.
              t777 = t785.
            ENDIF.
            IF t777 = abap_true.
              DATA t805 TYPE REF TO zcl_lnt_void_type.
              CLEAR t805.
              DATA t806 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t806.
              DATA(t807) = abap_true.
              IF t807 = abap_true.
                DATA(t808) = |CONSTRUCTOR|.
                DATA(t809) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t809->has = abap_true.
                t809->value = t808.
                t806 = t809.
              ELSE.
                DATA t810 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t810.
                t806 = t810.
              ENDIF.
              DATA t811 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t811.
              t805 = zcl_lnt_void_type=>get_db65( i_voided = t806 i_qualified_name = t811 ).
              t37 = t805.
            ELSE.
              DATA(t812) = VALUE abap_bool( ).
              DATA(t813) = VALUE abap_bool( ).
              DATA t814 TYPE REF TO zif_lnt_method_definition.
              CLEAR t814.
              DATA(t815) = t702.
              t814 = t815.
              DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t816.
              DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t817.
              t816 = t817.
              DATA(t818) = VALUE abap_bool( ).
              DATA(t819) = t814.
              IF t819 IS INITIAL.
                t818 = abap_true.
              ENDIF.
              t813 = t818.
              t812 = t813.
              IF t813 = abap_true.
                DATA(t820) = VALUE abap_bool( ).
                DATA(t821) = VALUE abap_bool( ).
                DATA(t822) = t37.
                t821 = xsdbool( t822 IS BOUND AND t822 IS INSTANCE OF zcl_lnt_void_type ).
                t820 = xsdbool( t821 = abap_false ).
                t812 = t820.
              ENDIF.
              IF t812 = abap_true.
                DATA(t823) = VALUE string( ).
                DATA(t824) = VALUE string( ).
                DATA(t825) = VALUE string( ).
                DATA(t826) = |Method or attribute "|.
                DATA(t827) = VALUE string( ).
                DATA t828 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t828.
                DATA(t829) = t515.
                t828 = t829.
                DATA(t830) = VALUE string( ).
                DATA(t831) = VALUE abap_bool( ).
                DATA(t832) = t828.
                IF t832 IS INITIAL.
                  t831 = abap_true.
                ELSEIF t832->has = abap_false.
                  t831 = abap_true.
                ENDIF.
                IF t831 = abap_true.
                  DATA(t833) = |undefined|.
                  t830 = t833.
                ELSE.
                  DATA(t834) = VALUE string( ).
                  DATA(t835) = t828.
                  t834 = t835->value.
                  t830 = t834.
                ENDIF.
                t827 = t830.
                DATA(t836) = strlen( t826 ).
                t825 = |{ t826 }{ t827 }|.
                DATA(t837) = |" not found, MethodSource|.
                DATA(t838) = strlen( t825 ).
                t824 = |{ t825 }{ t837 }|.
                t823 = t824.
                DATA t839 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t839.
                DATA(t840) = t2.
                t839 = t840->issues.
                DATA t841 TYPE REF TO zcl_lnt_issue.
                CLEAR t841.
                DATA(t842) = t2.
                DATA t843 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t843.
                DATA(t844) = t1.
                t843 = t844->get_first_token( ).
                DATA(t845) = t823.
                DATA t846 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t846.
                t841 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t842 i_token = t843 i_message_26cb = t845 i_fix = t846 ).
                t839->load( ).
                APPEND t841 TO t839->items.
                t839->save( ).
                DATA t847 TYPE REF TO zcl_lnt_void_type.
                CLEAR t847.
                DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t848.
                DATA(t849) = abap_true.
                IF t849 = abap_true.
                  DATA(t850) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
                  DATA(t851) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t851->has = abap_true.
                  t851->value = t850.
                  t848 = t851.
                ELSE.
                  DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t852.
                  t848 = t852.
                ENDIF.
                DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t853.
                t847 = zcl_lnt_void_type=>get_db65( i_voided = t848 i_qualified_name = t853 ).
                result = t847.
                RETURN.
              ELSE.
                DATA(t854) = VALUE abap_bool( ).
                DATA(t855) = t702.
                t854 = xsdbool( t855 IS BOUND ).
                IF t854 = abap_true.
                  DATA t856 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t856.
                  DATA t857 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t857.
                  DATA t858 TYPE REF TO zcl_lnt_object_oriented.
                  CLEAR t858.
                  DATA(t859) = t3.
                  t858 = t859.
                  DATA t860 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t860.
                  DATA(t861) = t705.
                  t860 = t861.
                  DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t862.
                  DATA(t863) = t467.
                  t862 = t863.
                  DATA t864 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t864.
                  DATA(t865) = VALUE abap_bool( ).
                  DATA t866 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t866.
                  DATA(t867) = t860.
                  t866 = t867.
                  DATA t868 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t868.
                  DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t869.
                  t868 = t869.
                  DATA(t870) = VALUE abap_bool( ).
                  DATA(t871) = t866.
                  IF t871 IS INITIAL.
                    t870 = abap_true.
                  ENDIF.
                  t865 = t870.
                  IF t865 = abap_true.
                    DATA t872 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t872.
                    DATA t873 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t873.
                    DATA(t874) = t862.
                    t873 = t874.
                    DATA t875 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t875.
                    DATA t876 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t876.
                    t875 = t876.
                    DATA t877 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t877.
                    DATA t878 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t878.
                    t877 = t878.
                    t872 = NEW zcl_lnt_ireference_extras( i_oo_name = t873 i_oo_type = t875 i_found_qualified = t877 ).
                    CREATE OBJECT t872->zlnt_view_ownkeys_b0e8086400eb.
                    t872->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t879 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t879.
                    IF t872->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t872->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t879 ).
                    ENDIF.
                    DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t880.
                    IF t872->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t872->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t880 ).
                    ENDIF.
                    CREATE OBJECT t872->zlnt_json_ownkeys_70e5fd461788.
                    t872->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t881) = |ooName|.
                    DATA t882 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t882.
                    IF t872->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t872->zlnt_json_ownkeys_70e5fd461788->put( p0 = t881 p1 = t882 ).
                    ENDIF.
                    DATA(t883) = |ooType|.
                    DATA t884 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t884.
                    IF t872->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t872->zlnt_json_ownkeys_70e5fd461788->put( p0 = t883 p1 = t884 ).
                    ENDIF.
                    t864 = t872.
                  ELSE.
                    DATA t885 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t885.
                    DATA t886 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t886.
                    DATA t887 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t887.
                    DATA t888 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t888.
                    DATA t889 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t889.
                    DATA(t890) = t860.
                    t889 = t890.
                    t888 = t889.
                    DATA t891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t891.
                    DATA(t892) = VALUE abap_bool( ).
                    DATA(t893) = t888.
                    IF t893 IS INITIAL.
                      t892 = abap_true.
                    ENDIF.
                    IF t892 = abap_true.
                      DATA t894 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t894.
                      t891 = t894.
                    ELSE.
                      DATA(t895) = VALUE string( ).
                      DATA(t896) = t888.
                      t895 = t896->get_name( ).
                      DATA(t897) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t897->has = abap_true.
                      t897->value = t895.
                      t891 = t897.
                    ENDIF.
                    t887 = t891.
                    t886 = t887.
                    DATA t898 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t898.
                    DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t899.
                    DATA(t900) = abap_true.
                    IF t900 = abap_true.
                      DATA(t901) = VALUE string( ).
                      DATA(t902) = VALUE abap_bool( ).
                      DATA(t903) = t860.
                      t902 = xsdbool( t903 IS BOUND AND t903 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                      IF t902 = abap_true.
                        DATA(t904) = |CLAS|.
                        t901 = t904.
                      ELSE.
                        DATA(t905) = |INTF|.
                        t901 = t905.
                      ENDIF.
                      DATA(t906) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t906->has = abap_true.
                      t906->value = t901.
                      t899 = t906.
                    ELSE.
                      DATA t907 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t907.
                      t899 = t907.
                    ENDIF.
                    t898 = t899.
                    DATA t908 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t908.
                    DATA t909 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t909.
                    t908 = t909.
                    t885 = NEW zcl_lnt_ireference_extras( i_oo_name = t886 i_oo_type = t898 i_found_qualified = t908 ).
                    CREATE OBJECT t885->zlnt_view_ownkeys_b0e8086400eb.
                    t885->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t910.
                    IF t885->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t885->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t910 ).
                    ENDIF.
                    DATA t911 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t911.
                    IF t885->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t885->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t911 ).
                    ENDIF.
                    CREATE OBJECT t885->zlnt_json_ownkeys_70e5fd461788.
                    t885->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t912) = |ooName|.
                    DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t913.
                    IF t885->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t885->zlnt_json_ownkeys_70e5fd461788->put( p0 = t912 p1 = t913 ).
                    ENDIF.
                    DATA(t914) = |ooType|.
                    DATA t915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t915.
                    IF t885->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t885->zlnt_json_ownkeys_70e5fd461788->put( p0 = t914 p1 = t915 ).
                    ENDIF.
                    t864 = t885.
                  ENDIF.
                  t857 = t864.
                  t856 = t857.
                  DATA t916 TYPE REF TO zcl_lnt_current_scope.
                  CLEAR t916.
                  DATA(t917) = t2.
                  t916 = t917->scope.
                  DATA t918 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t918.
                  DATA(t919) = abap_true.
                  IF t919 = abap_true.
                    DATA(t920) = t511.
                    t918 = t920.
                  ELSE.
                    DATA t921 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t921.
                    t918 = t921.
                  ENDIF.
                  DATA t922 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t922.
                  DATA(t923) = abap_true.
                  IF t923 = abap_true.
                    DATA t924 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t924.
                    DATA t925 TYPE REF TO zif_lnt_method_definition.
                    CLEAR t925.
                    DATA(t926) = t702.
                    t925 = t926.
                    t924 ?= t925.
                    t922 = t924.
                  ELSE.
                    DATA t927 TYPE REF TO zcl_lnt_fi_identifier.
                    CLEAR t927.
                    t922 = t927.
                  ENDIF.
                  DATA t928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t928.
                  DATA(t929) = |Method|.
                  CLEAR t928.
                  CREATE OBJECT t928.
                  t928->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
                  t928->sval = t929.
                  DATA(t930) = VALUE string( ).
                  DATA(t931) = t2.
                  t930 = t931->filename.
                  DATA t932 TYPE REF TO zcl_lnt_ireference_extras.
                  CLEAR t932.
                  DATA(t933) = abap_true.
                  IF t933 = abap_true.
                    DATA(t934) = t856.
                    t932 = t934.
                  ELSE.
                    DATA t935 TYPE REF TO zcl_lnt_ireference_extras.
                    CLEAR t935.
                    t932 = t935.
                  ENDIF.
                  t916->add_reference( i_usage = t918 i_referencing = t922 i_type_9913 = t928 i_filename = t930 i_extra = t932 ).
                  DATA t936 TYPE REF TO zif_lnt_union_b6d4892d.
                  CLEAR t936.
                  DATA t937 TYPE REF TO zif_lnt_method_definition.
                  CLEAR t937.
                  DATA(t938) = t702.
                  t937 = t938.
                  t936 ?= t937.
                  t37 = t936.
                ENDIF.
              ENDIF.
            ENDIF.
          ELSE.
            DATA(t939) = VALUE abap_bool( ).
            DATA(t940) = VALUE abap_bool( ).
            DATA t941 TYPE REF TO object.
            CLEAR t941.
            DATA t942 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t942.
            DATA(t943) = t347.
            t942 = t943.
            t941 = t942->get_db65( ).
            t940 = xsdbool( t941 IS BOUND AND t941 IS INSTANCE OF zcl_lnt_st_component_name ).
            t939 = t940.
            IF t940 = abap_true.
              DATA(t944) = VALUE abap_bool( ).
              DATA(t945) = t37.
              t944 = xsdbool( t945 IS BOUND AND t945 IS INSTANCE OF zcl_lnt_abstract_type ).
              t939 = t944.
            ENDIF.
            IF t939 = abap_true.
              DATA(t946) = VALUE abap_bool( ).
              DATA(t947) = VALUE abap_bool( ).
              DATA(t948) = t37.
              t947 = xsdbool( t948 IS BOUND AND t948 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t946 = t947.
              IF t947 = abap_true.
                DATA(t949) = VALUE abap_bool( ).
                DATA t950 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t950.
                DATA t951 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t951.
                DATA(t952) = t37.
                DATA t953 TYPE REF TO object.
                CLEAR t953.
                t953 = t952.
                t951 ?= t953.
                t950 = t951.
                DATA(t954) = VALUE abap_bool( ).
                DATA t955 TYPE REF TO zcl_lnt_itable_options.
                CLEAR t955.
                DATA(t956) = t950.
                t955 = t956->options.
                t954 = t955->zlnt_view_read_sr_ec4602663c93( ).
                t949 = t954.
                t946 = t949.
              ENDIF.
              IF t946 = abap_true.
                DATA t957 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t957.
                DATA t958 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t958.
                DATA t959 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t959.
                DATA(t960) = t37.
                DATA t961 TYPE REF TO object.
                CLEAR t961.
                t961 = t960.
                t959 ?= t961.
                t958 = t959.
                DATA t962 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t962.
                DATA(t963) = t958.
                t962 = t963->row_type.
                t957 = t962.
                t37 = t957.
              ENDIF.
              DATA t964 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t964.
              DATA t965 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t965.
              DATA(t966) = abap_true.
              IF t966 = abap_true.
                DATA t967 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t967.
                DATA(t968) = t37.
                DATA t969 TYPE REF TO object.
                CLEAR t969.
                t969 = t968.
                t967 ?= t969.
                t965 = t967.
              ELSE.
                DATA t970 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t970.
                t965 = t970.
              ENDIF.
              DATA t971 TYPE REF TO zif_lnt_node.
              CLEAR t971.
              DATA t972 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t972.
              DATA(t973) = t347.
              t972 = t973.
              t971 ?= t972.
              DATA(t974) = t2.
              t964 = zcl_lnt_sy_component_name=>run_syntax( i_context = t965 i_node = t971 i_input_967e = t974 ).
              t37 = t964.
            ELSE.
              DATA(t975) = VALUE abap_bool( ).
              DATA(t976) = VALUE abap_bool( ).
              DATA(t977) = t347.
              t976 = xsdbool( t977 IS BOUND AND t977 IS INSTANCE OF zcl_lnt_expression_node ).
              t975 = t976.
              IF t976 = abap_true.
                DATA(t978) = VALUE abap_bool( ).
                DATA t979 TYPE REF TO zif_lnt_statement_runnable.
                CLEAR t979.
                DATA t980 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t980.
                DATA(t981) = t347.
                DATA t982 TYPE REF TO object.
                CLEAR t982.
                t982 = t981.
                t980 ?= t982.
                t979 = t980->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
                t978 = xsdbool( t979 IS BOUND AND t979 IS INSTANCE OF zcl_lnt_st_dynamic ).
                t975 = t978.
              ENDIF.
              IF t975 = abap_true.
                DATA t983 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t983.
                DATA(t984) = t347.
                DATA t985 TYPE REF TO object.
                CLEAR t985.
                t985 = t984.
                t983 ?= t985.
                DATA(t986) = t2.
                zcl_lnt_sy_dynamic=>run_syntax( i_node = t983 i_input_967e = t986 ).
                DATA t987 TYPE REF TO zcl_lnt_void_type.
                CLEAR t987.
                DATA t988 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t988.
                DATA(t989) = abap_true.
                IF t989 = abap_true.
                  DATA(t990) = |Dynamic|.
                  DATA(t991) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t991->has = abap_true.
                  t991->value = t990.
                  t988 = t991.
                ELSE.
                  DATA t992 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t992.
                  t988 = t992.
                ENDIF.
                DATA t993 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t993.
                t987 = zcl_lnt_void_type=>get_db65( i_voided = t988 i_qualified_name = t993 ).
                t37 = t987.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t994) = VALUE abap_bool( ).
    DATA(t995) = VALUE abap_bool( ).
    DATA(t996) = t37.
    t995 = xsdbool( t996 IS BOUND AND t996 IS INSTANCE OF zcl_lnt_abstract_type ).
    t994 = t995.
    IF t995 = abap_true.
      DATA(t997) = VALUE abap_bool( ).
      DATA(t998) = VALUE abap_bool( ).
      DATA(t999) = t37.
      t998 = xsdbool( t999 IS BOUND AND t999 IS INSTANCE OF zcl_lnt_void_type ).
      t997 = xsdbool( t998 = abap_false ).
      t994 = t997.
    ENDIF.
    IF t994 = abap_true.
      DATA(t1000) = VALUE string( ).
      DATA(t1001) = |Not a method, MethodSource|.
      t1000 = t1001.
      DATA t1002 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t1002.
      DATA(t1003) = t2.
      t1002 = t1003->issues.
      DATA t1004 TYPE REF TO zcl_lnt_issue.
      CLEAR t1004.
      DATA(t1005) = t2.
      DATA t1006 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t1006.
      DATA(t1007) = t1.
      t1006 = t1007->get_first_token( ).
      DATA(t1008) = t1000.
      DATA t1009 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t1009.
      t1004 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1005 i_token = t1006 i_message_26cb = t1008 i_fix = t1009 ).
      t1002->load( ).
      APPEND t1004 TO t1002->items.
      t1002->save( ).
      DATA t1010 TYPE REF TO zcl_lnt_void_type.
      CLEAR t1010.
      DATA t1011 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1011.
      DATA(t1012) = abap_true.
      IF t1012 = abap_true.
        DATA(t1013) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t1014) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1014->has = abap_true.
        t1014->value = t1013.
        t1011 = t1014.
      ELSE.
        DATA t1015 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1015.
        t1011 = t1015.
      ENDIF.
      DATA t1016 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1016.
      t1010 = zcl_lnt_void_type=>get_db65( i_voided = t1011 i_qualified_name = t1016 ).
      result = t1010.
      RETURN.
    ELSE.
      DATA(t1017) = VALUE abap_bool( ).
      DATA t1018 TYPE REF TO zif_lnt_union_b6d4892d.
      CLEAR t1018.
      DATA(t1019) = t37.
      t1018 = t1019.
      DATA t1020 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1020.
      DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1021.
      t1020 = t1021.
      DATA(t1022) = VALUE abap_bool( ).
      DATA(t1023) = t1018.
      IF t1023 IS INITIAL.
        t1022 = abap_true.
      ENDIF.
      t1017 = t1022.
      IF t1017 = abap_true.
        DATA(t1024) = VALUE string( ).
        DATA(t1025) = |Not found, MethodSource|.
        t1024 = t1025.
        DATA t1026 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1026.
        DATA(t1027) = t2.
        t1026 = t1027->issues.
        DATA t1028 TYPE REF TO zcl_lnt_issue.
        CLEAR t1028.
        DATA(t1029) = t2.
        DATA t1030 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t1030.
        DATA(t1031) = t1.
        t1030 = t1031->get_first_token( ).
        DATA(t1032) = t1024.
        DATA t1033 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1033.
        t1028 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1029 i_token = t1030 i_message_26cb = t1032 i_fix = t1033 ).
        t1026->load( ).
        APPEND t1028 TO t1026->items.
        t1026->save( ).
        DATA t1034 TYPE REF TO zcl_lnt_void_type.
        CLEAR t1034.
        DATA t1035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1035.
        DATA(t1036) = abap_true.
        IF t1036 = abap_true.
          DATA(t1037) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
          DATA(t1038) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t1038->has = abap_true.
          t1038->value = t1037.
          t1035 = t1038.
        ELSE.
          DATA t1039 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t1039.
          t1035 = t1039.
        ENDIF.
        DATA t1040 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1040.
        t1034 = zcl_lnt_void_type=>get_db65( i_voided = t1035 i_qualified_name = t1040 ).
        result = t1034.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t1041 TYPE REF TO zif_lnt_union_8cd68e5e.
    CLEAR t1041.
    DATA(t1042) = abap_true.
    IF t1042 = abap_true.
      DATA t1043 TYPE REF TO zif_lnt_union_8cd68e5e.
      CLEAR t1043.
      DATA(t1044) = t37.
      t1043 ?= t1044.
      t1041 = t1043.
    ELSE.
      DATA t1045 TYPE REF TO zif_lnt_union_8cd68e5e.
      CLEAR t1045.
      t1041 = t1045.
    ENDIF.
    result = t1041.

  ENDMETHOD.

  METHOD find_top.
    DATA(t1) = i_first.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_children_9020.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO object.
    DATA(t6) = t1.
    t5 = t6->get_db65( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_class_name ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_abstract_token.
      DATA t8 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t9) = t1.
      t8 = t9->get_first_token( ).
      t7 = t8.
      DATA t10 TYPE string.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t13) = t7.
      t12 = t13.
      DATA t14 TYPE string.
      DATA(t15) = t12.
      t14 = t15->str.
      t11 = t14.
      t10 = t11.
      DATA t16 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_current_scope.
      DATA t19 TYPE REF TO zcl_lnt_current_scope.
      DATA(t20) = t2.
      t19 = t20->scope.
      t18 = t19.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = abap_true.
      IF t23 = abap_true.
        DATA(t24) = t10.
        DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t25->has = abap_true.
        t25->value = t24.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t26.
        t22 = t26.
      ENDIF.
      t21 = t22.
      DATA t27 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t30) = t21.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      t31 = t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t29.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ELSEIF t34->has = abap_false.
        t33 = abap_true.
      ENDIF.
      t28 = t33.
      IF t28 = abap_true.
        DATA t35 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t35.
        t27 = t35.
      ELSE.
        DATA t36 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t36.
        DATA t37 TYPE REF TO zif_lnt_class_definition.
        CLEAR t37.
        DATA t38 TYPE REF TO zif_lnt_class_definition.
        CLEAR t38.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA t42 TYPE string.
          DATA(t43) = t21.
          t42 = t43->value.
          DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t44->has = abap_true.
          t44->value = t42.
          t40 = t44.
        ELSE.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          t40 = t45.
        ENDIF.
        t39 = t40.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        CLEAR t46.
        DATA(t47) = VALUE abap_bool( ).
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t49) = t39.
        t48 = t49.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        t50 = t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = t48.
        IF t53 IS INITIAL.
          t52 = abap_true.
        ELSEIF t53->has = abap_false.
          t52 = abap_true.
        ENDIF.
        t47 = t52.
        IF t47 = abap_true.
          DATA t54 TYPE REF TO zif_lnt_class_definition.
          CLEAR t54.
          t46 = t54.
        ELSE.
          DATA t55 TYPE REF TO zif_lnt_class_definition.
          CLEAR t55.
          DATA t56 TYPE REF TO zif_lnt_class_definition.
          CLEAR t56.
          DATA t57 TYPE REF TO zif_lnt_class_definition.
          CLEAR t57.
          DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t60) = t18.
          t59 = t60->current.
          t58 = t59.
          DATA t61 TYPE REF TO zif_lnt_class_definition.
          CLEAR t61.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = t58.
          IF t63 IS INITIAL.
            t62 = abap_true.
          ENDIF.
          IF t62 = abap_true.
            DATA t64 TYPE REF TO zif_lnt_class_definition.
            CLEAR t64.
            t61 = t64.
          ELSE.
            DATA t65 TYPE REF TO zif_lnt_class_definition.
            DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t67) = t58.
            t66 = t67.
            DATA t68 TYPE string.
            DATA(t69) = t39.
            t68 = t69->value.
            t65 = t66->find_class_definition( i_name = t68 ).
            t61 = t65.
          ENDIF.
          t57 = t61.
          t56 = t57.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          CLEAR t70.
          DATA t71 TYPE abap_bool.
          DATA(t72) = t56.
          t71 = xsdbool( t72 IS BOUND ).
          IF t71 = abap_true.
            DATA t73 TYPE REF TO zif_lnt_class_definition.
            CLEAR t73.
            DATA(t74) = abap_true.
            IF t74 = abap_true.
              DATA t75 TYPE REF TO zif_lnt_class_definition.
              DATA(t76) = t56.
              t75 = t76.
              t73 = t75.
            ELSE.
              DATA t77 TYPE REF TO zif_lnt_class_definition.
              CLEAR t77.
              t73 = t77.
            ENDIF.
            t70 = t73.
          ELSE.
            DATA t78 TYPE REF TO zif_lnt_class_definition.
            CLEAR t78.
            DATA t79 TYPE REF TO zcl_lnt_class.
            CLEAR t79.
            DATA t80 TYPE REF TO zcl_lnt_class.
            CLEAR t80.
            DATA t81 TYPE REF TO zif_lnt_object.
            CLEAR t81.
            DATA t82 TYPE REF TO zif_lnt_registry.
            DATA(t83) = t18.
            t82 = t83->reg.
            DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t84.
            DATA(t85) = abap_true.
            IF t85 = abap_true.
              DATA(t86) = |CLAS|.
              DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t87->has = abap_true.
              t87->value = t86.
              t84 = t87.
            ELSE.
              DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t88.
              t84 = t88.
            ENDIF.
            DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t89.
            DATA(t90) = abap_true.
            IF t90 = abap_true.
              DATA t91 TYPE string.
              DATA(t92) = t39.
              t91 = t92->value.
              DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t93->has = abap_true.
              t93->value = t91.
              t89 = t93.
            ELSE.
              DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t94.
              t89 = t94.
            ENDIF.
            t81 = t82->get_object( i_type_9913 = t84 i_name = t89 ).
            DATA t95 TYPE REF TO object.
            t95 = t81.
            t80 ?= t95.
            t79 = t80.
            DATA t96 TYPE REF TO zif_lnt_class_definition.
            CLEAR t96.
            DATA t97 TYPE abap_bool.
            DATA(t98) = t79.
            t97 = xsdbool( t98 IS BOUND ).
            IF t97 = abap_true.
              DATA t99 TYPE REF TO zif_lnt_class_definition.
              DATA t100 TYPE REF TO zcl_lnt_class.
              DATA(t101) = t79.
              t100 = t101.
              t99 = t100->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t96 = t99.
            ELSE.
              DATA t102 TYPE REF TO zif_lnt_class_definition.
              CLEAR t102.
              t96 = t102.
            ENDIF.
            t78 = t96.
            t70 = t78.
          ENDIF.
          t55 = t70.
          t46 = t55.
        ENDIF.
        t38 = t46.
        t37 = t38.
        DATA t103 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t103.
        DATA t104 TYPE abap_bool.
        DATA(t105) = t37.
        t104 = xsdbool( t105 IS BOUND ).
        IF t104 = abap_true.
          DATA t106 TYPE REF TO zif_lnt_interface_definition.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          DATA(t108) = t37.
          t107 = t108.
          t106 ?= t107.
          t103 = t106.
        ELSE.
          DATA t109 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t109.
          DATA t110 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t110.
          DATA t111 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t111.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA(t114) = abap_true.
          IF t114 = abap_true.
            DATA t115 TYPE string.
            DATA(t116) = t21.
            t115 = t116->value.
            DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t117->has = abap_true.
            t117->value = t115.
            t113 = t117.
          ELSE.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t118.
            t113 = t118.
          ENDIF.
          t112 = t113.
          DATA t119 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t119.
          DATA(t120) = VALUE abap_bool( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t122) = t112.
          t121 = t122.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          t123 = t124.
          DATA(t125) = VALUE abap_bool( ).
          DATA(t126) = t121.
          IF t126 IS INITIAL.
            t125 = abap_true.
          ELSEIF t126->has = abap_false.
            t125 = abap_true.
          ENDIF.
          t120 = t125.
          IF t120 = abap_true.
            DATA t127 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t127.
            t119 = t127.
          ELSE.
            DATA t128 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t128.
            DATA t129 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t129.
            DATA t130 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t130.
            DATA t131 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t133) = t18.
            t132 = t133->current.
            t131 = t132.
            DATA t134 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t134.
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = t131.
            IF t136 IS INITIAL.
              t135 = abap_true.
            ENDIF.
            IF t135 = abap_true.
              DATA t137 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t137.
              t134 = t137.
            ELSE.
              DATA t138 TYPE REF TO zif_lnt_interface_definition.
              DATA t139 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t140) = t131.
              t139 = t140.
              DATA t141 TYPE string.
              DATA(t142) = t112.
              t141 = t142->value.
              t138 = t139->find_interface_definition( i_name = t141 ).
              t134 = t138.
            ENDIF.
            t130 = t134.
            t129 = t130.
            DATA t143 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t143.
            DATA t144 TYPE abap_bool.
            DATA(t145) = t129.
            t144 = xsdbool( t145 IS BOUND ).
            IF t144 = abap_true.
              DATA t146 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t146.
              DATA(t147) = abap_true.
              IF t147 = abap_true.
                DATA t148 TYPE REF TO zif_lnt_interface_definition.
                DATA(t149) = t129.
                t148 = t149.
                t146 = t148.
              ELSE.
                DATA t150 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t150.
                t146 = t150.
              ENDIF.
              t143 = t146.
            ELSE.
              DATA t151 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t151.
              DATA t152 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t152.
              DATA t153 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t153.
              DATA t154 TYPE REF TO zif_lnt_object.
              CLEAR t154.
              DATA t155 TYPE REF TO zif_lnt_registry.
              DATA(t156) = t18.
              t155 = t156->reg.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t157.
              DATA(t158) = abap_true.
              IF t158 = abap_true.
                DATA(t159) = |INTF|.
                DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t160->has = abap_true.
                t160->value = t159.
                t157 = t160.
              ELSE.
                DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t161.
                t157 = t161.
              ENDIF.
              DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t162.
              DATA(t163) = abap_true.
              IF t163 = abap_true.
                DATA t164 TYPE string.
                DATA(t165) = t112.
                t164 = t165->value.
                DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t166->has = abap_true.
                t166->value = t164.
                t162 = t166.
              ELSE.
                DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t167.
                t162 = t167.
              ENDIF.
              t154 = t155->get_object( i_type_9913 = t157 i_name = t162 ).
              DATA t168 TYPE REF TO object.
              t168 = t154.
              t153 ?= t168.
              t152 = t153.
              DATA t169 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t169.
              DATA t170 TYPE abap_bool.
              DATA(t171) = t152.
              t170 = xsdbool( t171 IS BOUND ).
              IF t170 = abap_true.
                DATA t172 TYPE REF TO zif_lnt_interface_definition.
                DATA t173 TYPE REF TO zcl_lnt_ob_interface.
                DATA t174 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t175) = t152.
                t174 = t175.
                t173 = t174.
                DATA t176 TYPE REF TO zif_lnt_interface_definition.
                DATA(t177) = t173.
                t176 = t177->def.
                t172 = t176.
                t169 = t172.
              ELSE.
                DATA t178 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t178.
                t169 = t178.
              ENDIF.
              t151 = t169.
              t143 = t151.
            ENDIF.
            t128 = t143.
            t119 = t128.
          ENDIF.
          t111 = t119.
          t110 = t111.
          DATA t179 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t179.
          DATA t180 TYPE abap_bool.
          DATA(t181) = t110.
          t180 = xsdbool( t181 IS BOUND ).
          IF t180 = abap_true.
            DATA t182 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t182.
            DATA(t183) = abap_true.
            IF t183 = abap_true.
              DATA t184 TYPE REF TO zif_lnt_interface_definition.
              DATA(t185) = t110.
              t184 = t185.
              t182 = t184.
            ELSE.
              DATA t186 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t186.
              t182 = t186.
            ENDIF.
            t179 = t182.
          ELSE.
            DATA t187 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t187.
            t179 = t187.
          ENDIF.
          t109 = t179.
          t103 = t109.
        ENDIF.
        t36 = t103.
        t27 = t36.
      ENDIF.
      t17 = t27.
      t16 = t17.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = VALUE abap_bool( ).
      DATA t190 TYPE REF TO zif_lnt_interface_definition.
      DATA(t191) = t16.
      t190 = t191.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t193.
      t192 = t193.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = t190.
      IF t195 IS INITIAL.
        t194 = abap_true.
      ENDIF.
      t189 = t194.
      t188 = t189.
      IF t189 = abap_true.
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = VALUE abap_bool( ).
        DATA t198 TYPE REF TO zcl_lnt_ddic.
        DATA t199 TYPE REF TO zcl_lnt_ddic.
        DATA t200 TYPE REF TO zcl_lnt_current_scope.
        DATA t201 TYPE REF TO zcl_lnt_current_scope.
        DATA(t202) = t2.
        t201 = t202->scope.
        t200 = t201.
        DATA t203 TYPE REF TO zcl_lnt_ddic.
        DATA t204 TYPE REF TO zif_lnt_registry.
        DATA(t205) = t200.
        t204 = t205->reg.
        t203 = NEW zcl_lnt_ddic( i_reg_f149 = t204 ).
        t199 = t203.
        t198 = t199.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        DATA(t208) = abap_true.
        IF t208 = abap_true.
          DATA(t209) = t10.
          DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t210->has = abap_true.
          t210->value = t209.
          t207 = t210.
        ELSE.
          DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t211.
          t207 = t211.
        ENDIF.
        t206 = t207.
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = VALUE abap_bool( ).
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t215) = t206.
        t214 = t215.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        t216 = t217.
        DATA(t218) = VALUE abap_bool( ).
        DATA(t219) = t214.
        IF t219 IS INITIAL.
          t218 = abap_true.
        ELSEIF t219->has = abap_false.
          t218 = abap_true.
        ENDIF.
        t213 = t218.
        IF t213 = abap_true.
          DATA(t220) = abap_true.
          t212 = t220.
        ELSE.
          DATA t221 TYPE abap_bool.
          DATA t222 TYPE REF TO zif_lnt_registry.
          DATA(t223) = t198.
          t222 = t223->reg.
          DATA t224 TYPE string.
          DATA(t225) = t206.
          t224 = t225->value.
          t221 = t222->in_error_namespace( i_name = t224 ).
          t212 = t221.
        ENDIF.
        t197 = t212.
        DATA(t226) = abap_false.
        t196 = xsdbool( t197 = t226 ).
        t188 = t196.
      ENDIF.
      IF t188 = abap_true.
        DATA t227 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t227.
        DATA t228 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t228.
        DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t229.
        DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t230.
        DATA(t231) = abap_true.
        IF t231 = abap_true.
          DATA(t232) = t10.
          DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t233->has = abap_true.
          t233->value = t232.
          t230 = t233.
        ELSE.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          t230 = t234.
        ENDIF.
        t229 = t230.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t235.
        DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t236.
        DATA(t237) = abap_true.
        IF t237 = abap_true.
          DATA(t238) = |Void|.
          DATA(t239) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t239->has = abap_true.
          t239->value = t238.
          t236 = t239.
        ELSE.
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t240.
          t236 = t240.
        ENDIF.
        t235 = t236.
        DATA t241 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t242 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t242.
        t241 = t242.
        t228 = NEW zcl_lnt_ireference_extras( i_oo_name = t229 i_oo_type = t235 i_found_qualified = t241 ).
        CREATE OBJECT t228->zlnt_view_ownkeys_b0e8086400eb.
        t228->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t243 ).
        ENDIF.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t228->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t228->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t244 ).
        ENDIF.
        CREATE OBJECT t228->zlnt_json_ownkeys_70e5fd461788.
        t228->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t245) = |ooName|.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
        ENDIF.
        DATA(t247) = |ooType|.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t228->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t228->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
        ENDIF.
        t227 = t228.
        DATA t249 TYPE REF TO zcl_lnt_current_scope.
        DATA(t250) = t2.
        t249 = t250->scope.
        DATA t251 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t251.
        DATA(t252) = abap_true.
        IF t252 = abap_true.
          DATA(t253) = t7.
          t251 = t253.
        ELSE.
          DATA t254 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t254.
          t251 = t254.
        ENDIF.
        DATA t255 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t255.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        DATA(t257) = |Object (Void)|.
        CLEAR t256.
        CREATE OBJECT t256.
        t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t256->sval = t257.
        DATA t258 TYPE string.
        DATA(t259) = t2.
        t258 = t259->filename.
        DATA t260 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t260.
        DATA(t261) = abap_true.
        IF t261 = abap_true.
          DATA(t262) = t227.
          t260 = t262.
        ELSE.
          DATA t263 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t263.
          t260 = t263.
        ENDIF.
        t249->add_reference( i_usage = t251 i_referencing = t255 i_type_9913 = t256 i_filename = t258 i_extra = t260 ).
        DATA t264 TYPE REF TO zcl_lnt_void_type.
        CLEAR t264.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        DATA(t266) = abap_true.
        IF t266 = abap_true.
          DATA(t267) = t10.
          DATA(t268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t268->has = abap_true.
          t268->value = t267.
          t265 = t268.
        ELSE.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t269.
          t265 = t269.
        ENDIF.
        DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t270.
        t264 = zcl_lnt_void_type=>get_db65( i_voided = t265 i_qualified_name = t270 ).
        result = t264.
        RETURN.
      ELSE.
        DATA(t271) = VALUE abap_bool( ).
        DATA t272 TYPE REF TO zif_lnt_interface_definition.
        DATA(t273) = t16.
        t272 = t273.
        DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        t274 = t275.
        DATA(t276) = VALUE abap_bool( ).
        DATA(t277) = t272.
        IF t277 IS INITIAL.
          t276 = abap_true.
        ENDIF.
        t271 = t276.
        IF t271 = abap_true.
          DATA t278 TYPE string.
          DATA t279 TYPE string.
          DATA t280 TYPE string.
          DATA(t281) = |Class |.
          DATA(t282) = t10.
          DATA(t283) = strlen( t281 ).
          t280 = |{ t281 }{ t282 }|.
          DATA(t284) = | not found|.
          DATA(t285) = strlen( t280 ).
          t279 = |{ t280 }{ t284 }|.
          t278 = t279.
          DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t287) = t2.
          t286 = t287->issues.
          DATA t288 TYPE REF TO zcl_lnt_issue.
          DATA(t289) = t2.
          DATA t290 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t291) = t1.
          t290 = t291->get_first_token( ).
          DATA(t292) = t278.
          DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t293.
          t288 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t289 i_token = t290 i_message_26cb = t292 i_fix = t293 ).
          t286->load( ).
          APPEND t288 TO t286->items.
          t286->save( ).
          DATA t294 TYPE REF TO zcl_lnt_void_type.
          CLEAR t294.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          DATA(t296) = abap_true.
          IF t296 = abap_true.
            DATA(t297) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t298->has = abap_true.
            t298->value = t297.
            t295 = t298.
          ELSE.
            DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t299.
            t295 = t299.
          ENDIF.
          DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t300.
          t294 = zcl_lnt_void_type=>get_db65( i_voided = t295 i_qualified_name = t300 ).
          result = t294.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t301 TYPE REF TO zcl_lnt_current_scope.
      DATA(t302) = t2.
      t301 = t302->scope.
      DATA t303 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t303.
      DATA(t304) = abap_true.
      IF t304 = abap_true.
        DATA t305 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t306) = t1.
        t305 = t306->get_first_token( ).
        t303 = t305.
      ELSE.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t307.
        t303 = t307.
      ENDIF.
      DATA t308 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t308.
      DATA(t309) = abap_true.
      IF t309 = abap_true.
        DATA t310 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t311 TYPE REF TO zif_lnt_interface_definition.
        DATA(t312) = t16.
        t311 = t312.
        t310 ?= t311.
        t308 = t310.
      ELSE.
        DATA t313 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t313.
        t308 = t313.
      ENDIF.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t314.
      DATA(t315) = |Object|.
      CLEAR t314.
      CREATE OBJECT t314.
      t314->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t314->sval = t315.
      DATA t316 TYPE string.
      DATA(t317) = t2.
      t316 = t317->filename.
      DATA t318 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t318.
      t301->add_reference( i_usage = t303 i_referencing = t308 i_type_9913 = t314 i_filename = t316 i_extra = t318 ).
      DATA t319 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t320 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t321 TYPE REF TO zif_lnt_interface_definition.
      DATA(t322) = t16.
      t321 = t322.
      t320 ?= t321.
      DATA t323 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t323.
      t319 = NEW zcl_lnt_object_reference_type( i_id = t320 i_extra = t323 ).
      result = t319.
      RETURN.
    ELSE.
      DATA(t324) = VALUE abap_bool( ).
      DATA t325 TYPE abap_bool.
      DATA t326 TYPE abap_bool.
      DATA(t327) = t1.
      t326 = xsdbool( t327 IS BOUND AND t327 IS INSTANCE OF zcl_lnt_expression_node ).
      t325 = t326.
      IF t326 = abap_true.
        DATA t328 TYPE abap_bool.
        DATA t329 TYPE REF TO zif_lnt_statement_runnable.
        DATA t330 TYPE REF TO zcl_lnt_expression_node.
        DATA(t331) = t1.
        DATA t332 TYPE REF TO object.
        t332 = t331.
        t330 ?= t332.
        t329 = t330->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t328 = xsdbool( t329 IS BOUND AND t329 IS INSTANCE OF zcl_lnt_st_source_field ).
        t325 = t328.
      ENDIF.
      t324 = t325.
      IF t325 = abap_true.
        DATA t333 TYPE abap_bool.
        DATA t334 TYPE i.
        DATA(t335) = t3.
        t335->load( ).
        t334 = lines( t335->items ).
        DATA(t336) = 0.
        t333 = xsdbool( t334 > t336 ).
        t324 = t333.
      ENDIF.
      IF t324 = abap_true.
        DATA t337 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t337.
        DATA t338 TYPE REF TO zcl_lnt_expression_node.
        DATA(t339) = t1.
        DATA t340 TYPE REF TO object.
        t340 = t339.
        t338 ?= t340.
        DATA(t341) = t2.
        DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t342.
        DATA(t343) = abap_true.
        IF t343 = abap_true.
          DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t344.
          DATA(t345) = |Read From|.
          CLEAR t344.
          CREATE OBJECT t344.
          t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t344->sval = t345.
          t342 = t344.
        ELSE.
          DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t346.
          t342 = t346.
        ENDIF.
        DATA t347 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t347.
        t337 = zcl_lnt_sy_source_field=>run_syntax( i_node = t338 i_input_967e = t341 i_type_9913 = t342 i_error = t347 ).
        result = t337.
        RETURN.
      ELSE.
        DATA t348 TYPE abap_bool.
        DATA t349 TYPE abap_bool.
        DATA(t350) = t1.
        t349 = xsdbool( t350 IS BOUND AND t350 IS INSTANCE OF zcl_lnt_expression_node ).
        t348 = t349.
        IF t349 = abap_true.
          DATA t351 TYPE abap_bool.
          DATA t352 TYPE REF TO zif_lnt_statement_runnable.
          DATA t353 TYPE REF TO zcl_lnt_expression_node.
          DATA(t354) = t1.
          DATA t355 TYPE REF TO object.
          t355 = t354.
          t353 ?= t355.
          t352 = t353->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t351 = xsdbool( t352 IS BOUND AND t352 IS INSTANCE OF zcl_lnt_st_source_field_symbol ).
          t348 = t351.
        ENDIF.
        IF t348 = abap_true.
          DATA t356 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t356.
          DATA(t357) = abap_true.
          IF t357 = abap_true.
            DATA t358 TYPE REF TO zcl_lnt_abstract_type.
            DATA t359 TYPE REF TO zcl_lnt_expression_node.
            DATA(t360) = t1.
            DATA t361 TYPE REF TO object.
            t361 = t360.
            t359 ?= t361.
            DATA(t362) = t2.
            t358 = zcl_lnt_sy_source_field_symbol=>run_syntax( i_node = t359 i_input_967e = t362 ).
            t356 = t358.
          ELSE.
            DATA t363 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t363.
            t356 = t363.
          ENDIF.
          result = t356.
          RETURN.
        ELSE.
          DATA t364 TYPE abap_bool.
          DATA t365 TYPE abap_bool.
          DATA(t366) = t1.
          t365 = xsdbool( t366 IS BOUND AND t366 IS INSTANCE OF zcl_lnt_expression_node ).
          t364 = t365.
          IF t365 = abap_true.
            DATA t367 TYPE abap_bool.
            DATA t368 TYPE REF TO zif_lnt_statement_runnable.
            DATA t369 TYPE REF TO zcl_lnt_expression_node.
            DATA(t370) = t1.
            DATA t371 TYPE REF TO object.
            t371 = t370.
            t369 ?= t371.
            t368 = t369->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t367 = xsdbool( t368 IS BOUND AND t368 IS INSTANCE OF zcl_lnt_st_dynamic ).
            t364 = t367.
          ENDIF.
          IF t364 = abap_true.
            DATA t372 TYPE REF TO zcl_lnt_expression_node.
            DATA(t373) = t1.
            DATA t374 TYPE REF TO object.
            t374 = t373.
            t372 ?= t374.
            DATA(t375) = t2.
            zcl_lnt_sy_dynamic=>run_syntax( i_node = t372 i_input_967e = t375 ).
            DATA t376 TYPE REF TO zcl_lnt_void_type.
            CLEAR t376.
            DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t377.
            DATA(t378) = abap_true.
            IF t378 = abap_true.
              DATA(t379) = |Dynamic|.
              DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t380->has = abap_true.
              t380->value = t379.
              t377 = t380.
            ELSE.
              DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t381.
              t377 = t381.
            ENDIF.
            DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t382.
            t376 = zcl_lnt_void_type=>get_db65( i_voided = t377 i_qualified_name = t382 ).
            result = t376.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t383 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t383.
    result = t383.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d826_069eb7b1cef6.
  ENDMETHOD.
ENDCLASS.
