* TS: src/abap/5_syntax/statements/include_type.ts:10:1 IncludeType
CLASS zcl_lnt_sy_include_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_include_type IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA(t11) = CAST zcl_lnt_expression_node( t5 ).
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = CAST zcl_lnt_expression_node( t10 ).
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zlnt_exception_cl_8460e5ee8e5f.
      CLEAR t16.
      DATA t17 TYPE REF TO zcx_lnt_assert_error.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA(t20) = |IncludeType, unexpected node structure|.
        DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t21->has = abap_true.
        t21->value = t20.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t18 = t22.
      ENDIF.
      t17 = NEW zcx_lnt_assert_error( i_message_26cb = t18 ).
      t16 = NEW #( ).
      t16->payload = t17.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA(t26) = CAST zcl_lnt_expression_node( t5 ).
    t25 = t26.
    t24 = t25->get_first_token(  ).
    t23 = t24.
    DATA t27 TYPE string.
    DATA t28 TYPE string.
    DATA t29 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t30) = CAST zcl_lnt_abstract_token( t23 ).
    t29 = t30.
    DATA t31 TYPE string.
    DATA(t32) = CAST zcl_lnt_abstract_token( t29 ).
    t31 = t32->str.
    t28 = t31.
    t27 = t28.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t37) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t38) = |STRUCTURE|.
    t36 = t37->find_direct_token_by_text( i_text = t38 ).
    t35 = t36.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    t39 = t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = CAST zcl_lnt_abstract_token( t35 ).
    IF t43 IS INITIAL.
      t42 = abap_true.
    ENDIF.
    t41 = xsdbool( t42 = abap_false ).
    t34 = t41.
    t33 = t34.
    DATA t44 TYPE REF TO zcl_lnt_abstract_type.
    DATA t45 TYPE REF TO zcl_lnt_abstract_type.
    DATA t46 TYPE REF TO zcl_lnt_basic_types.
    DATA(t47) = CAST zcl_lnt_syntax_input( t2 ).
    t46 = NEW zcl_lnt_basic_types( i_input_967e = t47 ).
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    DATA(t49) = CAST zcl_lnt_expression_node( t5 ).
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    t45 = t46->parse_type( i_node = t48 i_qualified_name = t50 ).
    t44 = t45.
    DATA(t51) = VALUE abap_bool( ).
    DATA t52 TYPE abap_bool.
    DATA t53 TYPE abap_bool.
    DATA(t54) = CAST zcl_lnt_abstract_type( t44 ).
    t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_void_type ).
    t52 = t53.
    IF t53 = abap_true.
      DATA(t55) = t33.
      t52 = t55.
    ENDIF.
    t51 = t52.
    IF t52 = abap_false.
      DATA t56 TYPE abap_bool.
      DATA(t57) = CAST zcl_lnt_abstract_type( t44 ).
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_unknown_type ).
      t51 = t56.
    ENDIF.
    IF t51 = abap_true.
      DATA t58 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t58.
      DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t59.
      DATA t60 TYPE REF TO zcl_lnt_current_scope.
      DATA t61 TYPE REF TO zcl_lnt_current_scope.
      DATA(t62) = CAST zcl_lnt_syntax_input( t2 ).
      t61 = t62->scope.
      t60 = t61.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA(t65) = abap_true.
      IF t65 = abap_true.
        DATA(t66) = t27.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t66.
        t64 = t67.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t64 = t68.
      ENDIF.
      t63 = t64.
      DATA t69 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t69.
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t72) = CAST zlnt_runtime_opti_4ba3bdccd169( t63 ).
      t71 = t72.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t74.
      t73 = t74.
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = CAST zlnt_runtime_opti_4ba3bdccd169( t71 ).
      IF t76 IS INITIAL.
        t75 = abap_true.
      ELSEIF t76->has = abap_false.
        t75 = abap_true.
      ENDIF.
      t70 = t75.
      IF t70 = abap_true.
        DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t77.
        t69 = t77.
      ELSE.
        DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t80.
        DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t83) = CAST zcl_lnt_current_scope( t60 ).
        t82 = t83->current.
        t81 = t82.
        DATA t84 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t84.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = CAST zcl_lnt_spaghetti_scope_node( t81 ).
        IF t86 IS INITIAL.
          t85 = abap_true.
        ENDIF.
        IF t85 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t87.
          t84 = t87.
        ELSE.
          DATA t88 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t90) = CAST zcl_lnt_spaghetti_scope_node( t81 ).
          t89 = t90.
          DATA t91 TYPE string.
          DATA(t92) = CAST zlnt_runtime_opti_4ba3bdccd169( t63 ).
          t91 = t92->value.
          t88 = t89->find_variable( i_name = t91 ).
          t84 = t88.
        ENDIF.
        t80 = t84.
        t79 = t80.
        DATA t93 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t93.
        DATA t94 TYPE abap_bool.
        DATA(t95) = CAST zcl_lnt_typed_identifier( t79 ).
        t94 = xsdbool( t95 IS BOUND ).
        IF t94 = abap_true.
          DATA t96 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t96.
          DATA(t97) = abap_true.
          IF t97 = abap_true.
            DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t99) = CAST zcl_lnt_typed_identifier( t79 ).
            t98 = t99.
            t96 = t98.
          ELSE.
            DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t100.
            t96 = t100.
          ENDIF.
          t93 = t96.
        ELSE.
          DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t101.
          DATA(t102) = CAST zcl_lnt_current_scope( t60 ).
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t103.
          DATA(t104) = abap_true.
          IF t104 = abap_true.
            DATA t105 TYPE string.
            DATA(t106) = CAST zlnt_runtime_opti_4ba3bdccd169( t63 ).
            t105 = t106->value.
            DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t107->has = abap_true.
            t107->value = t105.
            t103 = t107.
          ELSE.
            DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t108.
            t103 = t108.
          ENDIF.
          t101 = t102->find_type_pool_constant( i_name = t103 ).
          t93 = t101.
        ENDIF.
        t78 = t93.
        t69 = t78.
      ENDIF.
      t59 = t69.
      t58 = t59.
      DATA t109 TYPE abap_bool.
      DATA(t110) = CAST zcl_lnt_typed_identifier( t58 ).
      t109 = xsdbool( t110 IS BOUND ).
      IF t109 = abap_true.
        DATA t111 TYPE REF TO zcl_lnt_current_scope.
        DATA(t112) = CAST zcl_lnt_syntax_input( t2 ).
        t111 = t112->scope.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t113.
        DATA(t114) = abap_true.
        IF t114 = abap_true.
          DATA(t115) = CAST zcl_lnt_abstract_token( t23 ).
          t113 = t115.
        ELSE.
          DATA t116 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t116.
          t113 = t116.
        ENDIF.
        DATA t117 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t118) = CAST zcl_lnt_typed_identifier( t58 ).
        t117 = t118.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t120) = |Read From|.
        CREATE OBJECT t119.
        t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t119->sval = t120.
        DATA t121 TYPE string.
        DATA(t122) = CAST zcl_lnt_syntax_input( t2 ).
        t121 = t122->filename.
        DATA t123 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t123.
        t111->add_reference( i_usage = t113 i_referencing = t117 i_type_9913 = t119 i_filename = t121 i_extra = t123 ).
        DATA t124 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t124.
        DATA(t125) = abap_true.
        IF t125 = abap_true.
          DATA t126 TYPE REF TO zcl_lnt_abstract_type.
          DATA t127 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t128 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t129) = CAST zcl_lnt_typed_identifier( t58 ).
          t128 = t129.
          t127 = t128.
          DATA t130 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t131) = CAST zcl_lnt_typed_identifier( t127 ).
          t130 = t131->type_cba0.
          t126 = t130.
          t124 = t126.
        ELSE.
          DATA t132 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t132.
          t124 = t132.
        ENDIF.
        t44 = t124.
      ENDIF.
    ENDIF.
    DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t134.
    DATA t135 TYPE REF TO zcl_lnt_expression_node.
    DATA t136 TYPE REF TO zcl_lnt_expression_node.
    DATA(t137) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t138) = |AS|.
    t136 = t137->find_expression_after_token( i_text = t138 ).
    t135 = t136.
    DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t139.
    DATA(t140) = VALUE abap_bool( ).
    DATA(t141) = CAST zcl_lnt_expression_node( t135 ).
    IF t141 IS INITIAL.
      t140 = abap_true.
    ENDIF.
    IF t140 = abap_true.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t142.
      t139 = t142.
    ELSE.
      DATA t143 TYPE string.
      DATA t144 TYPE REF TO zcl_lnt_expression_node.
      DATA(t145) = CAST zcl_lnt_expression_node( t135 ).
      t144 = t145.
      t143 = t144->concat_tokens(  ).
      DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t146->has = abap_true.
      t146->value = t143.
      t139 = t146.
    ENDIF.
    t134 = t139.
    t133 = t134.
    DATA(t147) = VALUE abap_bool( ).
    DATA(t148) = VALUE abap_bool( ).
    DATA(t149) = CAST zlnt_runtime_opti_4ba3bdccd169( t133 ).
    IF t149 IS BOUND.
      IF t149->has = abap_true.
        t148 = xsdbool( strlen( t149->value ) > 0 ).
      ENDIF.
    ENDIF.
    t147 = t148.
    IF t148 = abap_true.
      DATA t150 TYPE abap_bool.
      DATA(t151) = CAST zcl_lnt_abstract_type( t44 ).
      t150 = xsdbool( t151 IS BOUND AND t151 IS INSTANCE OF zcl_lnt_structure_type ).
      t147 = t150.
    ENDIF.
    IF t147 = abap_true.
      DATA t152 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t152.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t153.
      DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t155 TYPE REF TO zcl_lnt_structure_type.
      DATA t156 TYPE REF TO zcl_lnt_structure_type.
      DATA(t157) = CAST zcl_lnt_abstract_type( t44 ).
      t156 ?= t157.
      t155 = t156.
      DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t159) = CAST zcl_lnt_structure_type( t155 ).
      t158 = t159->components.
      t154 = t158.
      DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t160.
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t162.
      t161 = t162.
      DATA(t163) = CAST zlnt_runtime_arra_c22708faf2e3( t161 ).
      DATA t164 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t164.
      DATA t165 TYPE string.
      DATA(t166) = CAST zlnt_runtime_opti_4ba3bdccd169( t133 ).
      t165 = t166->value.
      DATA t167 TYPE REF TO zcl_lnt_structure_type.
      DATA(t168) = CAST zcl_lnt_abstract_type( t44 ).
      t167 ?= t168.
      DATA t169 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t169.
      DATA(t170) = abap_true.
      IF t170 = abap_true.
        DATA(t171) = abap_true.
        DATA(t172) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t172->has = abap_true.
        t172->value = t171.
        t169 = t172.
      ELSE.
        DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t173.
        t169 = t173.
      ENDIF.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      t164 = NEW zcl_lnt_istructure_component( i_name = t165 i_type_9913 = t167 i_as_include = t169 i_suffix = t174 ).
      APPEND t164 TO t163->items.
      DATA(t175) = CAST zlnt_runtime_arra_c22708faf2e3( t161 ).
      t160 = t175.
      t153 = t154->concat( p0 = t160 ).
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t176.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t178.
      t152 = NEW zcl_lnt_structure_type( i_components = t153 i_qualified_name = t176 i_ddic_name = t177 i_description = t178 ).
      t44 = t152.
    ELSE.
      DATA t179 TYPE abap_bool.
      DATA t180 TYPE abap_bool.
      DATA(t181) = CAST zcl_lnt_abstract_type( t44 ).
      t180 = xsdbool( t181 IS BOUND AND t181 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t179 = t180.
      IF t180 = abap_true.
        DATA(t182) = t33.
        t179 = t182.
      ENDIF.
      IF t179 = abap_true.
        DATA t183 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t183.
        DATA(t184) = abap_true.
        IF t184 = abap_true.
          DATA t185 TYPE REF TO zcl_lnt_abstract_type.
          DATA t186 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t187 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t188) = CAST zcl_lnt_abstract_type( t44 ).
          t187 ?= t188.
          t186 = t187.
          DATA t189 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t190) = CAST zcl_lnt_ty_table_type( t186 ).
          t189 = t190->row_type.
          t185 = t189.
          t183 = t185.
        ELSE.
          DATA t191 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t191.
          t183 = t191.
        ENDIF.
        t44 = t183.
      ENDIF.
    ENDIF.
    DATA t192 TYPE abap_bool.
    DATA(t193) = CAST zcl_lnt_abstract_type( t44 ).
    t192 = xsdbool( t193 IS BOUND AND t193 IS INSTANCE OF zcl_lnt_void_type ).
    IF t192 = abap_true.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      DATA t195 TYPE REF TO zcl_lnt_void_type.
      DATA(t196) = CAST zcl_lnt_abstract_type( t44 ).
      t195 ?= t196.
      IF t195 IS BOUND.
        CREATE OBJECT t194.
        t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t197 TYPE REF TO object.
        t197 = t195.
        t194->oval = t197.
      ENDIF.
      result = t194.
      RETURN.
    ELSE.
      DATA t198 TYPE abap_bool.
      DATA(t199) = CAST zcl_lnt_abstract_type( t44 ).
      t198 = xsdbool( t199 IS BOUND AND t199 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t198 = abap_true.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        DATA t201 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t202) = CAST zcl_lnt_abstract_type( t44 ).
        t201 ?= t202.
        IF t201 IS BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t203 TYPE REF TO object.
          t203 = t201.
          t200->oval = t203.
        ENDIF.
        result = t200.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t204 TYPE abap_bool.
    DATA t205 TYPE abap_bool.
    DATA(t206) = CAST zcl_lnt_abstract_type( t44 ).
    t205 = xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_structure_type ).
    t204 = xsdbool( t205 = abap_false ).
    IF t204 = abap_true.
      DATA t207 TYPE string.
      DATA t208 TYPE string.
      DATA(t209) = |not structured, |.
      DATA(t210) = t27.
      DATA(t211) = strlen( t209 ).
      t208 = |{ t209 }{ t210 }|.
      t207 = t208.
      DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t213) = CAST zcl_lnt_syntax_input( t2 ).
      t212 = t213->issues.
      DATA t214 TYPE REF TO zcl_lnt_issue.
      DATA(t215) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t216 TYPE REF TO zcl_lnt_abstract_token.
      DATA t217 TYPE REF TO zcl_lnt_expression_node.
      DATA(t218) = CAST zcl_lnt_expression_node( t5 ).
      t217 = t218.
      t216 = t217->get_first_token(  ).
      DATA(t219) = t207.
      DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t220.
      t214 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t215 i_token = t216 i_message_26cb = t219 i_fix = t220 ).
      APPEND t214 TO t212->items.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t221.
      DATA t222 TYPE REF TO zcl_lnt_void_type.
      CLEAR t222.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t223.
      DATA(t224) = abap_true.
      IF t224 = abap_true.
        DATA(t225) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t226->has = abap_true.
        t226->value = t225.
        t223 = t226.
      ELSE.
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t227.
        t223 = t227.
      ENDIF.
      DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t228.
      t222 = zcl_lnt_void_type=>get_db65( i_voided = t223 i_qualified_name = t228 ).
      IF t222 IS BOUND.
        CREATE OBJECT t221.
        t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t229 TYPE REF TO object.
        t229 = t222.
        t221->oval = t229.
      ENDIF.
      result = t221.
      RETURN.
    ENDIF.
    DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t231.
    DATA t232 TYPE REF TO zcl_lnt_expression_node.
    DATA t233 TYPE REF TO zcl_lnt_expression_node.
    DATA(t234) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t235) = |SUFFIX|.
    t233 = t234->find_expression_after_token( i_text = t235 ).
    t232 = t233.
    DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t236.
    DATA(t237) = VALUE abap_bool( ).
    DATA(t238) = CAST zcl_lnt_expression_node( t232 ).
    IF t238 IS INITIAL.
      t237 = abap_true.
    ENDIF.
    IF t237 = abap_true.
      DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t239.
      t236 = t239.
    ELSE.
      DATA t240 TYPE string.
      DATA t241 TYPE REF TO zcl_lnt_expression_node.
      DATA(t242) = CAST zcl_lnt_expression_node( t232 ).
      t241 = t242.
      t240 = t241->concat_tokens(  ).
      DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t243->has = abap_true.
      t243->value = t240.
      t236 = t243.
    ENDIF.
    t231 = t236.
    t230 = t231.
    DATA(t244) = VALUE abap_bool( ).
    DATA(t245) = VALUE abap_bool( ).
    DATA(t246) = CAST zlnt_runtime_opti_4ba3bdccd169( t230 ).
    IF t246 IS BOUND.
      IF t246->has = abap_true.
        t245 = xsdbool( strlen( t246->value ) > 0 ).
      ENDIF.
    ENDIF.
    t244 = t245.
    IF t245 = abap_true.
      DATA t247 TYPE abap_bool.
      DATA(t248) = CAST zcl_lnt_abstract_type( t44 ).
      t247 = xsdbool( t248 IS BOUND AND t248 IS INSTANCE OF zcl_lnt_structure_type ).
      t244 = t247.
    ENDIF.
    IF t244 = abap_true.
      DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t250.
      t249 = t250.
      DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t252 TYPE REF TO zcl_lnt_structure_type.
      DATA t253 TYPE REF TO zcl_lnt_structure_type.
      DATA(t254) = CAST zcl_lnt_abstract_type( t44 ).
      t253 ?= t254.
      t252 = t253.
      DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t256) = CAST zcl_lnt_structure_type( t252 ).
      t255 = t256->components.
      t251 = t255.
      DATA t257 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t257.
      DATA t258 TYPE REF TO object.
      CLEAR t258.
      LOOP AT t251->items INTO t258.
        t257 ?= t258.
        DATA(t259) = VALUE abap_bool( ).
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t260.
        DATA(t261) = abap_true.
        IF t261 = abap_true.
          DATA t262 TYPE string.
          DATA(t263) = CAST zcl_lnt_istructure_component( t257 ).
          t262 = t263->name.
          DATA(t264) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t264->has = abap_true.
          t264->value = t262.
          t260 = t264.
        ELSE.
          DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t265.
          t260 = t265.
        ENDIF.
        DATA(t266) = CAST zlnt_runtime_opti_4ba3bdccd169( t133 ).
        DATA(t267) = VALUE abap_bool( ).
        DATA(t268) = VALUE abap_bool( ).
        IF t260 IS BOUND.
          t267 = t260->has.
        ENDIF.
        IF t266 IS BOUND.
          t268 = t266->has.
        ENDIF.
        IF t267 = t268.
          IF t267 = abap_false.
            t259 = abap_true.
          ELSEIF t260->value = t266->value.
            t259 = abap_true.
          ENDIF.
        ENDIF.
        IF t259 = abap_true.
          DATA(t269) = CAST zlnt_runtime_arra_c22708faf2e3( t249 ).
          DATA t270 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t270.
          DATA t271 TYPE REF TO zcl_lnt_istructure_component.
          DATA(t272) = CAST zcl_lnt_istructure_component( t257 ).
          t271 = t272.
          DATA t273 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t273.
          DATA t274 TYPE string.
          DATA(t275) = CAST zcl_lnt_istructure_component( t271 ).
          t274 = t275->name.
          DATA t276 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t277) = CAST zcl_lnt_istructure_component( t271 ).
          t276 = t277->type_cba0.
          DATA t278 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t279) = CAST zcl_lnt_istructure_component( t257 ).
          t278 = t279->as_include.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA(t281) = abap_true.
          IF t281 = abap_true.
            DATA t282 TYPE string.
            DATA(t283) = CAST zlnt_runtime_opti_4ba3bdccd169( t230 ).
            t282 = t283->value.
            DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t284->has = abap_true.
            t284->value = t282.
            t280 = t284.
          ELSE.
            DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t285.
            t280 = t285.
          ENDIF.
          t273 = NEW zcl_lnt_istructure_component( i_name = t274 i_type_9913 = t276 i_as_include = t278 i_suffix = t280 ).
          t270 = t273.
          APPEND t270 TO t269->items.
          CONTINUE.
        ENDIF.
        DATA(t286) = CAST zlnt_runtime_arra_c22708faf2e3( t249 ).
        DATA t287 TYPE REF TO zcl_lnt_istructure_component.
        DATA t288 TYPE string.
        DATA t289 TYPE string.
        DATA(t290) = CAST zcl_lnt_istructure_component( t257 ).
        t289 = t290->name.
        DATA t291 TYPE string.
        DATA(t292) = CAST zlnt_runtime_opti_4ba3bdccd169( t230 ).
        t291 = t292->value.
        DATA(t293) = strlen( t289 ).
        t288 = |{ t289 }{ t291 }|.
        DATA t294 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t295) = CAST zcl_lnt_istructure_component( t257 ).
        t294 = t295->type_cba0.
        DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t296.
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t297.
        t287 = NEW zcl_lnt_istructure_component( i_name = t288 i_type_9913 = t294 i_as_include = t296 i_suffix = t297 ).
        APPEND t287 TO t286->items.
      ENDLOOP.
      DATA t298 TYPE REF TO zcl_lnt_structure_type.
      DATA(t299) = CAST zlnt_runtime_arra_c22708faf2e3( t249 ).
      DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t300.
      DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t301.
      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t302.
      t298 = NEW zcl_lnt_structure_type( i_components = t299 i_qualified_name = t300 i_ddic_name = t301 i_description = t302 ).
      t44 = t298.
    ENDIF.
    DATA t303 TYPE abap_bool.
    DATA(t304) = CAST zcl_lnt_abstract_type( t44 ).
    t303 = xsdbool( t304 IS BOUND ).
    DATA t305 TYPE abap_bool.
    DATA t306 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t307) = CAST zcl_lnt_abstract_type( t44 ).
    t306 = t307.
    DATA(t308) = abap_false.
    t305 = t308.
    DATA t309 TYPE abap_bool.
    DATA t310 TYPE abap_bool.
    DATA(t311) = CAST zcl_lnt_abstract_type( t44 ).
    t310 = xsdbool( t311 IS BOUND ).
    t309 = t310.
    IF t310 = abap_true.
      DATA t312 TYPE abap_bool.
      DATA t313 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t314) = CAST zcl_lnt_abstract_type( t44 ).
      t313 = t314.
      t312 = xsdbool( t313 IS BOUND AND t313 IS INSTANCE OF zcl_lnt_structure_type ).
      t309 = t312.
    ENDIF.
    IF t309 = abap_true.
      DATA(t315) = VALUE i( ).
      DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t317 TYPE REF TO zcl_lnt_structure_type.
      DATA t318 TYPE REF TO zcl_lnt_structure_type.
      DATA(t319) = CAST zcl_lnt_abstract_type( t44 ).
      t318 ?= t319.
      t317 = t318.
      DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t321) = CAST zcl_lnt_structure_type( t317 ).
      t320 = t321->components.
      t316 = t320.
      DATA t322 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t322.
      DATA t323 TYPE REF TO object.
      CLEAR t323.
      LOOP AT t316->items INTO t323.
        t322 ?= t323.
        DATA(t324) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
        DATA(t325) = CAST zcl_lnt_istructure_component( t322 ).
        APPEND t325 TO t324->items.
      ENDLOOP.
      DATA t326 TYPE i.
      DATA(t327) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t326 = lines( t327->items ).
      t315 = t326.
    ELSE.
      DATA t328 TYPE abap_bool.
      DATA t329 TYPE abap_bool.
      DATA(t330) = CAST zcl_lnt_abstract_type( t44 ).
      t329 = xsdbool( t330 IS BOUND ).
      t328 = t329.
      IF t329 = abap_true.
        DATA t331 TYPE abap_bool.
        DATA t332 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t333) = CAST zcl_lnt_abstract_type( t44 ).
        t332 = t333.
        t331 = xsdbool( t332 IS BOUND AND t332 IS INSTANCE OF zcl_lnt_void_type ).
        t328 = t331.
      ENDIF.
      IF t328 = abap_true.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t334.
        DATA t335 TYPE REF TO zcl_lnt_void_type.
        DATA(t336) = CAST zcl_lnt_abstract_type( t44 ).
        t335 ?= t336.
        IF t335 IS BOUND.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t337 TYPE REF TO object.
          t337 = t335.
          t334->oval = t337.
        ENDIF.
        result = t334.
        RETURN.
      ELSE.
        DATA(t338) = VALUE abap_bool( ).
        DATA(t339) = VALUE abap_bool( ).
        DATA t340 TYPE REF TO zcl_lnt_ddic.
        DATA t341 TYPE REF TO zcl_lnt_ddic.
        DATA t342 TYPE REF TO zcl_lnt_current_scope.
        DATA t343 TYPE REF TO zcl_lnt_current_scope.
        DATA(t344) = CAST zcl_lnt_syntax_input( t2 ).
        t343 = t344->scope.
        t342 = t343.
        DATA t345 TYPE REF TO zcl_lnt_ddic.
        DATA t346 TYPE REF TO zif_lnt_registry.
        DATA(t347) = CAST zcl_lnt_current_scope( t342 ).
        t346 = t347->reg.
        t345 = NEW zcl_lnt_ddic( i_reg_f149 = t346 ).
        t341 = t345.
        t340 = t341.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t348.
        DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t349.
        DATA(t350) = abap_true.
        IF t350 = abap_true.
          DATA(t351) = t27.
          DATA(t352) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t352->has = abap_true.
          t352->value = t351.
          t349 = t352.
        ELSE.
          DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t353.
          t349 = t353.
        ENDIF.
        t348 = t349.
        DATA(t354) = VALUE abap_bool( ).
        DATA(t355) = VALUE abap_bool( ).
        DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t357) = CAST zlnt_runtime_opti_4ba3bdccd169( t348 ).
        t356 = t357.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t359.
        t358 = t359.
        DATA(t360) = VALUE abap_bool( ).
        DATA(t361) = CAST zlnt_runtime_opti_4ba3bdccd169( t356 ).
        IF t361 IS INITIAL.
          t360 = abap_true.
        ELSEIF t361->has = abap_false.
          t360 = abap_true.
        ENDIF.
        t355 = t360.
        IF t355 = abap_true.
          DATA(t362) = abap_true.
          t354 = t362.
        ELSE.
          DATA t363 TYPE abap_bool.
          DATA t364 TYPE REF TO zif_lnt_registry.
          DATA(t365) = CAST zcl_lnt_ddic( t340 ).
          t364 = t365->reg.
          DATA t366 TYPE string.
          DATA(t367) = CAST zlnt_runtime_opti_4ba3bdccd169( t348 ).
          t366 = t367->value.
          t363 = t364->in_error_namespace( i_name = t366 ).
          t354 = t363.
        ENDIF.
        t339 = t354.
        DATA(t368) = abap_false.
        t338 = xsdbool( t339 = t368 ).
        IF t338 = abap_true.
          DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t369.
          DATA t370 TYPE REF TO zcl_lnt_void_type.
          CLEAR t370.
          DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t371.
          DATA(t372) = abap_true.
          IF t372 = abap_true.
            DATA(t373) = t27.
            DATA(t374) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t374->has = abap_true.
            t374->value = t373.
            t371 = t374.
          ELSE.
            DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t375.
            t371 = t375.
          ENDIF.
          DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t376.
          t370 = zcl_lnt_void_type=>get_db65( i_voided = t371 i_qualified_name = t376 ).
          IF t370 IS BOUND.
            CREATE OBJECT t369.
            t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            DATA t377 TYPE REF TO object.
            t377 = t370.
            t369->oval = t377.
          ENDIF.
          result = t369.
          RETURN.
        ELSE.
          DATA t378 TYPE string.
          DATA t379 TYPE string.
          DATA t380 TYPE string.
          DATA(t381) = |IncludeType, type not found "|.
          DATA t382 TYPE string.
          DATA t383 TYPE REF TO zcl_lnt_expression_node.
          DATA(t384) = CAST zcl_lnt_expression_node( t5 ).
          t383 = t384.
          t382 = t383->concat_tokens(  ).
          DATA(t385) = strlen( t381 ).
          t380 = |{ t381 }{ t382 }|.
          DATA(t386) = |"|.
          DATA(t387) = strlen( t380 ).
          t379 = |{ t380 }{ t386 }|.
          t378 = t379.
          DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t389) = CAST zcl_lnt_syntax_input( t2 ).
          t388 = t389->issues.
          DATA t390 TYPE REF TO zcl_lnt_issue.
          DATA(t391) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t392 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t393) = CAST zcl_lnt_statement_node( t1 ).
          t392 = t393->get_first_token(  ).
          DATA(t394) = t378.
          DATA t395 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t395.
          t390 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t391 i_token = t392 i_message_26cb = t394 i_fix = t395 ).
          APPEND t390 TO t388->items.
          DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t396.
          DATA t397 TYPE REF TO zcl_lnt_void_type.
          CLEAR t397.
          DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t398.
          DATA(t399) = abap_true.
          IF t399 = abap_true.
            DATA(t400) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t401->has = abap_true.
            t401->value = t400.
            t398 = t401.
          ELSE.
            DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t402.
            t398 = t402.
          ENDIF.
          DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t403.
          t397 = zcl_lnt_void_type=>get_db65( i_voided = t398 i_qualified_name = t403 ).
          IF t397 IS BOUND.
            CREATE OBJECT t396.
            t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            DATA t404 TYPE REF TO object.
            t404 = t397.
            t396->oval = t404.
          ENDIF.
          result = t396.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t405.
    DATA(t406) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    IF t406 IS BOUND.
      CREATE OBJECT t405.
      t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t407 TYPE REF TO object.
      t407 = t406.
      t405->oval = t407.
    ENDIF.
    result = t405.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d896_d390272998de.
  ENDMETHOD.
ENDCLASS.
