* TS: src/abap/5_syntax/statements/include_type.ts:10:1 IncludeType
CLASS zcl_lnt_sy_include_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_include_type IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t6 = t7->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA(t11) = t5.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
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
      CLEAR t16->source_value.
      IF t17 IS BOUND.
        DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        CLEAR t23.
        t24 = t17.
        TRY.
            t16->source_value ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16->source_value IS NOT BOUND.
          TRY.
              t23 ?= t17.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t23 IS BOUND.
            t16->source_value = t23->source( ).
          ENDIF.
          IF t16->source_value IS NOT BOUND.
            CREATE OBJECT t16->source_value.
            t16->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t16->source_value->oval = t17.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t16.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t27.
    DATA(t28) = t5.
    t27 = t28.
    t26 = t27->get_first_token( ).
    t25 = t26.
    DATA(t29) = VALUE string( ).
    DATA(t30) = VALUE string( ).
    DATA t31 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t31.
    DATA(t32) = t25.
    t31 = t32.
    DATA(t33) = VALUE string( ).
    DATA(t34) = t31.
    t33 = t34->str.
    t30 = t33.
    t29 = t30.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t38.
    DATA(t39) = t1.
    DATA(t40) = |STRUCTURE|.
    t38 = t39->find_direct_token_by_text( i_text = t40 ).
    t37 = t38.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    t41 = t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = t37.
    IF t45 IS INITIAL.
      t44 = abap_true.
    ENDIF.
    t43 = xsdbool( t44 = abap_false ).
    t36 = t43.
    t35 = t36.
    DATA t46 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_basic_types.
    CLEAR t48.
    DATA(t49) = t2.
    t48 = NEW zcl_lnt_basic_types( i_input_967e = t49 ).
    DATA t50 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t50.
    DATA(t51) = t5.
    t50 = t51.
    DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t52.
    t47 = t48->parse_type( i_node = t50 i_qualified_name = t52 ).
    t46 = t47.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = t46.
    t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_void_type ).
    t54 = t55.
    IF t55 = abap_true.
      DATA(t57) = t35.
      t54 = t57.
    ENDIF.
    t53 = t54.
    IF t54 = abap_false.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = t46.
      t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_unknown_type ).
      t53 = t58.
    ENDIF.
    IF t53 = abap_true.
      DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t62.
      DATA t63 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t63.
      DATA(t64) = t2.
      t63 = t64->scope.
      t62 = t63.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      DATA(t67) = abap_true.
      IF t67 = abap_true.
        DATA(t68) = t29.
        DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t69->has = abap_true.
        t69->value = t68.
        t66 = t69.
      ELSE.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t66 = t70.
      ENDIF.
      t65 = t66.
      DATA t71 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t71.
      DATA(t72) = VALUE abap_bool( ).
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      DATA(t74) = t65.
      t73 = t74.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      t75 = t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t73.
      IF t78 IS INITIAL.
        t77 = abap_true.
      ELSEIF t78->has = abap_false.
        t77 = abap_true.
      ENDIF.
      t72 = t77.
      IF t72 = abap_true.
        DATA t79 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t79.
        t71 = t79.
      ELSE.
        DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t80.
        DATA t81 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t83.
        DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t84.
        DATA(t85) = t62.
        t84 = t85->current.
        t83 = t84.
        DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t86.
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = t83.
        IF t88 IS INITIAL.
          t87 = abap_true.
        ENDIF.
        IF t87 = abap_true.
          DATA t89 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t89.
          t86 = t89.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t91.
          DATA(t92) = t83.
          t91 = t92.
          DATA(t93) = VALUE string( ).
          DATA(t94) = t65.
          t93 = t94->value.
          t90 = t91->find_variable( i_name = t93 ).
          t86 = t90.
        ENDIF.
        t82 = t86.
        t81 = t82.
        DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t95.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = t81.
        t96 = xsdbool( t97 IS BOUND ).
        IF t96 = abap_true.
          DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t98.
          DATA(t99) = abap_true.
          IF t99 = abap_true.
            DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t100.
            DATA(t101) = t81.
            t100 = t101.
            t98 = t100.
          ELSE.
            DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t102.
            t98 = t102.
          ENDIF.
          t95 = t98.
        ELSE.
          DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t103.
          DATA(t104) = t62.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA(t106) = abap_true.
          IF t106 = abap_true.
            DATA(t107) = VALUE string( ).
            DATA(t108) = t65.
            t107 = t108->value.
            DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t109->has = abap_true.
            t109->value = t107.
            t105 = t109.
          ELSE.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            t105 = t110.
          ENDIF.
          t103 = t104->find_type_pool_constant( i_name = t105 ).
          t95 = t103.
        ENDIF.
        t80 = t95.
        t71 = t80.
      ENDIF.
      t61 = t71.
      t60 = t61.
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = t60.
      t111 = xsdbool( t112 IS BOUND ).
      IF t111 = abap_true.
        DATA t113 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t113.
        DATA(t114) = t2.
        t113 = t114->scope.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t115.
        DATA(t116) = abap_true.
        IF t116 = abap_true.
          DATA(t117) = t25.
          t115 = t117.
        ELSE.
          DATA t118 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t118.
          t115 = t118.
        ENDIF.
        DATA t119 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t119.
        DATA(t120) = t60.
        t119 = t120.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        DATA(t122) = |Read From|.
        CLEAR t121.
        CREATE OBJECT t121.
        t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t121->sval = t122.
        DATA(t123) = VALUE string( ).
        DATA(t124) = t2.
        t123 = t124->filename.
        DATA t125 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t125.
        t113->add_reference( i_usage = t115 i_referencing = t119 i_type_9913 = t121 i_filename = t123 i_extra = t125 ).
        DATA t126 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA t128 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t128.
          DATA t129 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t129.
          DATA t130 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t130.
          DATA(t131) = t60.
          t130 = t131.
          t129 = t130.
          DATA t132 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t132.
          DATA(t133) = t129.
          t132 = t133->type_cba0.
          t128 = t132.
          t126 = t128.
        ELSE.
          DATA t134 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t134.
          t126 = t134.
        ENDIF.
        t46 = t126.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t136.
    DATA t137 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t137.
    DATA t138 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t138.
    DATA(t139) = t1.
    DATA(t140) = |AS|.
    t138 = t139->find_expression_after_token( i_text = t140 ).
    t137 = t138.
    DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t141.
    DATA(t142) = VALUE abap_bool( ).
    DATA(t143) = t137.
    IF t143 IS INITIAL.
      t142 = abap_true.
    ENDIF.
    IF t142 = abap_true.
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t144.
      t141 = t144.
    ELSE.
      DATA(t145) = VALUE string( ).
      DATA t146 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t146.
      DATA(t147) = t137.
      t146 = t147.
      t145 = t146->concat_tokens( ).
      DATA(t148) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t148->has = abap_true.
      t148->value = t145.
      t141 = t148.
    ENDIF.
    t136 = t141.
    t135 = t136.
    DATA(t149) = VALUE abap_bool( ).
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = t135.
    IF t151 IS BOUND.
      IF t151->has = abap_true.
        t150 = xsdbool( strlen( t151->value ) > 0 ).
      ENDIF.
    ENDIF.
    t149 = t150.
    IF t150 = abap_true.
      DATA(t152) = VALUE abap_bool( ).
      DATA(t153) = t46.
      t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_structure_type ).
      t149 = t152.
    ENDIF.
    IF t149 = abap_true.
      DATA t154 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t154.
      DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t155.
      DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t156.
      DATA t157 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t157.
      DATA t158 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t158.
      DATA(t159) = t46.
      t158 ?= t159.
      t157 = t158.
      DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t160.
      DATA(t161) = t157.
      t160 = t161->components.
      t156 = t160.
      DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t162.
      DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t164.
      CREATE OBJECT t164.
      t163 = t164.
      DATA(t165) = t163.
      DATA t166 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t166.
      DATA(t167) = VALUE string( ).
      DATA(t168) = VALUE string( ).
      DATA(t169) = t135.
      t168 = t169->value.
      t167 = t168.
      DATA t170 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t170.
      DATA t171 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t171.
      DATA(t172) = t46.
      t171 ?= t172.
      t170 = t171.
      DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t173.
      DATA t174 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t174.
      DATA(t175) = abap_true.
      IF t175 = abap_true.
        DATA(t176) = abap_true.
        DATA(t177) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t177->has = abap_true.
        t177->value = t176.
        t174 = t177.
      ELSE.
        DATA t178 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t178.
        t174 = t178.
      ENDIF.
      t173 = t174.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t180.
      t179 = t180.
      t166 = NEW zcl_lnt_istructure_component( i_name = t167 i_type_9913 = t170 i_as_include = t173 i_suffix = t179 ).
      CREATE OBJECT t166->zlnt_view_ownkeys_b0e8086400eb.
      t166->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t181.
      IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t181 ).
      ENDIF.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t182.
      IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t182 ).
      ENDIF.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t183.
      IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `asInclude` p1 = t183 ).
      ENDIF.
      CREATE OBJECT t166->zlnt_json_ownkeys_70e5fd461788.
      t166->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t184) = |name|.
      DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t185.
      IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
      ENDIF.
      DATA(t186) = |type|.
      DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t187.
      IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t186 p1 = t187 ).
      ENDIF.
      DATA(t188) = |asInclude|.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
      ENDIF.
      t165->load( ).
      APPEND t166 TO t165->items.
      t165->save( ).
      DATA(t190) = t163.
      t162 = t190.
      t155 = t156->concat( p0 = t162 ).
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t192.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t193.
      t154 = NEW zcl_lnt_structure_type( i_components = t155 i_qualified_name = t191 i_ddic_name = t192 i_description = t193 ).
      t46 = t154.
    ELSE.
      DATA(t194) = VALUE abap_bool( ).
      DATA(t195) = VALUE abap_bool( ).
      DATA(t196) = t46.
      t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t194 = t195.
      IF t195 = abap_true.
        DATA(t197) = t35.
        t194 = t197.
      ENDIF.
      IF t194 = abap_true.
        DATA t198 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t198.
        DATA(t199) = abap_true.
        IF t199 = abap_true.
          DATA t200 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t200.
          DATA t201 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t201.
          DATA t202 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t202.
          DATA(t203) = t46.
          t202 ?= t203.
          t201 = t202.
          DATA t204 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t204.
          DATA(t205) = t201.
          t204 = t205->row_type.
          t200 = t204.
          t198 = t200.
        ELSE.
          DATA t206 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t206.
          t198 = t206.
        ENDIF.
        t46 = t198.
      ENDIF.
    ENDIF.
    DATA(t207) = VALUE abap_bool( ).
    DATA(t208) = t46.
    t207 = xsdbool( t208 IS BOUND AND t208 IS INSTANCE OF zcl_lnt_void_type ).
    IF t207 = abap_true.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t209.
      DATA t210 TYPE REF TO zcl_lnt_void_type.
      CLEAR t210.
      DATA(t211) = t46.
      t210 ?= t211.
      CLEAR t209.
      IF t210 IS BOUND.
        DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t212.
        DATA t213 TYPE REF TO object.
        CLEAR t213.
        CLEAR t212.
        t213 = t210.
        TRY.
            t209 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t209 IS NOT BOUND.
          TRY.
              t212 ?= t210.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t212 IS BOUND.
            t209 = t212->source( ).
          ENDIF.
          IF t209 IS NOT BOUND.
            CREATE OBJECT t209.
            t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t209->oval = t210.
          ENDIF.
        ENDIF.
      ENDIF.
      result = t209.
      RETURN.
    ELSE.
      DATA(t214) = VALUE abap_bool( ).
      DATA(t215) = t46.
      t214 = xsdbool( t215 IS BOUND AND t215 IS INSTANCE OF zcl_lnt_unknown_type ).
      IF t214 = abap_true.
        DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t216.
        DATA t217 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t217.
        DATA(t218) = t46.
        t217 ?= t218.
        CLEAR t216.
        IF t217 IS BOUND.
          DATA t219 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t219.
          DATA t220 TYPE REF TO object.
          CLEAR t220.
          CLEAR t219.
          t220 = t217.
          TRY.
              t216 ?= t220.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t216 IS NOT BOUND.
            TRY.
                t219 ?= t217.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t219 IS BOUND.
              t216 = t219->source( ).
            ENDIF.
            IF t216 IS NOT BOUND.
              CREATE OBJECT t216.
              t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t216->oval = t217.
            ENDIF.
          ENDIF.
        ENDIF.
        result = t216.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t221) = VALUE abap_bool( ).
    DATA(t222) = VALUE abap_bool( ).
    DATA(t223) = t46.
    t222 = xsdbool( t223 IS BOUND AND t223 IS INSTANCE OF zcl_lnt_structure_type ).
    t221 = xsdbool( t222 = abap_false ).
    IF t221 = abap_true.
      DATA(t224) = VALUE string( ).
      DATA(t225) = VALUE string( ).
      DATA(t226) = |not structured, |.
      DATA(t227) = t29.
      DATA(t228) = strlen( t226 ).
      t225 = |{ t226 }{ t227 }|.
      t224 = t225.
      DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t229.
      DATA(t230) = t2.
      t229 = t230->issues.
      DATA t231 TYPE REF TO zcl_lnt_issue.
      CLEAR t231.
      DATA(t232) = t2.
      DATA t233 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t233.
      DATA t234 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t234.
      DATA(t235) = t5.
      t234 = t235.
      t233 = t234->get_first_token( ).
      DATA(t236) = t224.
      DATA t237 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t237.
      t231 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t232 i_token = t233 i_message_26cb = t236 i_fix = t237 ).
      t229->load( ).
      APPEND t231 TO t229->items.
      t229->save( ).
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      DATA t239 TYPE REF TO zcl_lnt_void_type.
      CLEAR t239.
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t240.
      DATA(t241) = abap_true.
      IF t241 = abap_true.
        DATA(t242) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t243->has = abap_true.
        t243->value = t242.
        t240 = t243.
      ELSE.
        DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t244.
        t240 = t244.
      ENDIF.
      DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t245.
      t239 = zcl_lnt_void_type=>get_db65( i_voided = t240 i_qualified_name = t245 ).
      CLEAR t238.
      IF t239 IS BOUND.
        DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t246.
        DATA t247 TYPE REF TO object.
        CLEAR t247.
        CLEAR t246.
        t247 = t239.
        TRY.
            t238 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t238 IS NOT BOUND.
          TRY.
              t246 ?= t239.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t246 IS BOUND.
            t238 = t246->source( ).
          ENDIF.
          IF t238 IS NOT BOUND.
            CREATE OBJECT t238.
            t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t238->oval = t239.
          ENDIF.
        ENDIF.
      ENDIF.
      result = t238.
      RETURN.
    ENDIF.
    DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t249.
    DATA t250 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t250.
    DATA t251 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t251.
    DATA(t252) = t1.
    DATA(t253) = |SUFFIX|.
    t251 = t252->find_expression_after_token( i_text = t253 ).
    t250 = t251.
    DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t254.
    DATA(t255) = VALUE abap_bool( ).
    DATA(t256) = t250.
    IF t256 IS INITIAL.
      t255 = abap_true.
    ENDIF.
    IF t255 = abap_true.
      DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t257.
      t254 = t257.
    ELSE.
      DATA(t258) = VALUE string( ).
      DATA t259 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t259.
      DATA(t260) = t250.
      t259 = t260.
      t258 = t259->concat_tokens( ).
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = t258.
      t254 = t261.
    ENDIF.
    t249 = t254.
    t248 = t249.
    DATA(t262) = VALUE abap_bool( ).
    DATA(t263) = VALUE abap_bool( ).
    DATA(t264) = t248.
    IF t264 IS BOUND.
      IF t264->has = abap_true.
        t263 = xsdbool( strlen( t264->value ) > 0 ).
      ENDIF.
    ENDIF.
    t262 = t263.
    IF t263 = abap_true.
      DATA(t265) = VALUE abap_bool( ).
      DATA(t266) = t46.
      t265 = xsdbool( t266 IS BOUND AND t266 IS INSTANCE OF zcl_lnt_structure_type ).
      t262 = t265.
    ENDIF.
    IF t262 = abap_true.
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t267.
      DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t268.
      CREATE OBJECT t268.
      t267 = t268.
      DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t269.
      DATA t270 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t270.
      DATA t271 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t271.
      DATA(t272) = t46.
      t271 ?= t272.
      t270 = t271.
      DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t273.
      DATA(t274) = t270.
      t273 = t274->components.
      t269 = t273.
      DATA t275 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t275.
      DATA t276 TYPE REF TO object.
      CLEAR t276.
      DATA(t277) = VALUE i( ).
      DO.
        t269->load( ).
        IF t277 >= lines( t269->items ).
          EXIT.
        ENDIF.
        CLEAR t276.
        READ TABLE t269->items INDEX t277 + 1 INTO t276.
        t277 = t277 + 1.
        DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t278.
        CLEAR t275.
        IF t276 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t278 ?= t276.
          CLEAR t275.
          IF t278 IS BOUND.
            IF t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t275 ?= t278->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t275 IS NOT BOUND.
              IF t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t279.
                IF t278->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t279 ?= t278->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t279->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t280) = VALUE string( ).
              DATA t281 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t281.
              DATA t282 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t282.
              DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t283.
              t275 = NEW zcl_lnt_istructure_component( view_source = t278 i_name = t280 i_type_9913 = t281 i_as_include = t282 i_suffix = t283 ).
            ENDIF.
          ENDIF.
        ELSE.
          t275 ?= t276.
        ENDIF.
        DATA(t284) = VALUE abap_bool( ).
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t285.
        DATA(t286) = abap_true.
        IF t286 = abap_true.
          DATA(t287) = VALUE string( ).
          DATA(t288) = t275.
          t287 = t288->zlnt_view_read_sr_dae473e680bd( ).
          DATA(t289) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t289->has = abap_true.
          t289->value = t287.
          t285 = t289.
        ELSE.
          DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t290.
          t285 = t290.
        ENDIF.
        DATA(t291) = t135.
        DATA(t292) = VALUE abap_bool( ).
        DATA(t293) = VALUE abap_bool( ).
        IF t285 IS BOUND.
          t292 = t285->has.
        ENDIF.
        IF t291 IS BOUND.
          t293 = t291->has.
        ENDIF.
        IF t292 = t293.
          IF t292 = abap_false.
            t284 = abap_true.
          ELSEIF t285->value = t291->value.
            t284 = abap_true.
          ENDIF.
        ENDIF.
        IF t284 = abap_true.
          DATA(t294) = t267.
          DATA t295 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t295.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          DATA(t298) = |\{\}|.
          TRY.
              t297 = zlnt_runtime_json_7c6b3012af76=>parse( t298 ).
            CATCH zlnt_exception_js_ebcc2df7d5e4.
              DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t299->has = abap_true.
              t299->value = `Invalid JSON`.
              DATA(t300) = NEW zcx_lnt_builtin_4c6a1223( i_message_26cb = t299 ).
              DATA(t301) = NEW zlnt_exception_cl_30eec8e8805d( ).
              t301->payload = t300.
              DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t302.
              CLEAR t302.
              IF t300 IS BOUND.
                DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t303.
                DATA t304 TYPE REF TO object.
                CLEAR t304.
                CLEAR t303.
                t304 = t300.
                TRY.
                    t302 ?= t304.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t302 IS NOT BOUND.
                  TRY.
                      t303 ?= t300.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t303 IS BOUND.
                    t302 = t303->source( ).
                  ENDIF.
                  IF t302 IS NOT BOUND.
                    CREATE OBJECT t302.
                    t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t302->oval = t300.
                  ENDIF.
                ENDIF.
              ENDIF.
              t301->source_value = t302.
              RAISE EXCEPTION t301.
          ENDTRY.
          t296 = t297.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          DATA(t307) = t275.
          CLEAR t306.
          IF t307 IS BOUND.
            DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t308.
            DATA t309 TYPE REF TO object.
            CLEAR t309.
            CLEAR t308.
            t309 = t307.
            TRY.
                t306 ?= t309.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t306 IS NOT BOUND.
              TRY.
                  t308 ?= t307.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t308 IS BOUND.
                t306 = t308->source( ).
              ENDIF.
              IF t306 IS NOT BOUND.
                CREATE OBJECT t306.
                t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t306->oval = t307.
              ENDIF.
            ENDIF.
          ENDIF.
          t305 = t306.
          DATA(t310) = VALUE abap_bool( ).
          DATA(t311) = VALUE abap_bool( ).
          DATA(t312) = t305.
          IF t312 IS NOT BOUND.
            t311 = abap_true.
          ELSE.
            t311 = xsdbool( t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          t310 = xsdbool( t311 = abap_false ).
          IF t310 = abap_true.
            DATA t313 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t313.
            DATA(t314) = t305.
            t313 = zlnt_runtime_ownk_4497b85e405d=>keys( t314 ).
            DATA(t315) = VALUE string( ).
            t313->dense( ).
            DATA(t316) = VALUE i( ).
            DO.
              t313->load( ).
              IF t316 >= lines( t313->items ).
                EXIT.
              ENDIF.
              CLEAR t315.
              READ TABLE t313->items INDEX t316 + 1 INTO t315.
              IF t313->has( t316 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t316 = t316 + 1.
              DATA(t317) = t296.
              DATA(t318) = t315.
              DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t319.
              DATA(t320) = t305.
              DATA(t321) = t315.
              t319 = t320->get( p0 = t321 ).
              t317->put( p0 = t318 p1 = t319 ).
            ENDDO.
          ENDIF.
          DATA(t322) = t296.
          DATA(t323) = |suffix|.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          DATA(t325) = VALUE string( ).
          DATA(t326) = t248.
          t325 = t326->value.
          CLEAR t324.
          CREATE OBJECT t324.
          t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t324->sval = t325.
          t322->put( p0 = t323 p1 = t324 ).
          DATA(t327) = t296.
          DATA(t328) = |asInclude|.
          DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t329.
          DATA t330 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t330.
          DATA(t331) = t275.
          t330 = t331->zlnt_view_read_sr_36a7cafeb178( ).
          CLEAR t329.
          IF t330 IS BOUND AND t330->has = abap_true.
            CLEAR t329.
            CREATE OBJECT t329.
            t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
            t329->bval = t330->value.
          ENDIF.
          t327->put( p0 = t328 p1 = t329 ).
          DATA t332 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t332.
          DATA(t333) = t296.
          CLEAR t332.
          IF t333 IS BOUND.
            IF t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t332 ?= t333->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t332 IS NOT BOUND.
              IF t333->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t333->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t333->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t333->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t334.
                IF t333->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t334 ?= t333->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t334->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t335) = VALUE string( ).
              DATA t336 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t336.
              DATA t337 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t337.
              DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t338.
              t332 = NEW zcl_lnt_istructure_component( view_source = t333 i_name = t335 i_type_9913 = t336 i_as_include = t337 i_suffix = t338 ).
            ENDIF.
          ENDIF.
          t295 = t332.
          t294->load( ).
          APPEND t295 TO t294->items.
          t294->save( ).
          CONTINUE.
        ENDIF.
        DATA(t339) = t267.
        DATA t340 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t340.
        DATA(t341) = VALUE string( ).
        DATA(t342) = VALUE string( ).
        DATA(t343) = VALUE string( ).
        DATA(t344) = t275.
        t343 = t344->zlnt_view_read_sr_dae473e680bd( ).
        DATA(t345) = VALUE string( ).
        DATA(t346) = t248.
        t345 = t346->value.
        DATA(t347) = strlen( t343 ).
        t342 = |{ t343 }{ t345 }|.
        t341 = t342.
        DATA t348 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t348.
        DATA t349 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t349.
        DATA(t350) = t275.
        t349 = t350->zlnt_view_read_sr_455340cd1e80( ).
        t348 = t349.
        DATA t351 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t351.
        DATA t352 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t352.
        t351 = t352.
        DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t353.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t354.
        t353 = t354.
        t340 = NEW zcl_lnt_istructure_component( i_name = t341 i_type_9913 = t348 i_as_include = t351 i_suffix = t353 ).
        CREATE OBJECT t340->zlnt_view_ownkeys_b0e8086400eb.
        t340->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        IF t340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t355 ).
        ENDIF.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t356 ).
        ENDIF.
        CREATE OBJECT t340->zlnt_json_ownkeys_70e5fd461788.
        t340->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t357) = |name|.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
        ENDIF.
        DATA(t359) = |type|.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
        ENDIF.
        t339->load( ).
        APPEND t340 TO t339->items.
        t339->save( ).
      ENDDO.
      DATA t361 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t361.
      DATA(t362) = t267.
      DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t363.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t364.
      DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t365.
      t361 = NEW zcl_lnt_structure_type( i_components = t362 i_qualified_name = t363 i_ddic_name = t364 i_description = t365 ).
      t46 = t361.
    ENDIF.
    DATA(t366) = VALUE abap_bool( ).
    DATA(t367) = t46.
    t366 = xsdbool( t367 IS BOUND ).
    DATA(t368) = VALUE abap_bool( ).
    DATA t369 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t369.
    DATA(t370) = t46.
    t369 = t370.
    DATA(t371) = abap_false.
    t368 = t371.
    DATA(t372) = VALUE abap_bool( ).
    DATA(t373) = VALUE abap_bool( ).
    DATA(t374) = t46.
    t373 = xsdbool( t374 IS BOUND ).
    t372 = t373.
    IF t373 = abap_true.
      DATA(t375) = VALUE abap_bool( ).
      DATA t376 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t376.
      DATA(t377) = t46.
      t376 = t377.
      t375 = xsdbool( t376 IS BOUND AND t376 IS INSTANCE OF zcl_lnt_structure_type ).
      t372 = t375.
    ENDIF.
    IF t372 = abap_true.
      DATA(t378) = VALUE i( ).
      DATA t379 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t379.
      DATA t380 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t380.
      DATA t381 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t381.
      DATA(t382) = t46.
      t381 ?= t382.
      t380 = t381.
      DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t383.
      DATA(t384) = t380.
      t383 = t384->components.
      t379 = t383.
      DATA t385 TYPE REF TO zcl_lnt_istructure_component.
      CLEAR t385.
      DATA t386 TYPE REF TO object.
      CLEAR t386.
      DATA(t387) = VALUE i( ).
      DO.
        t379->load( ).
        IF t387 >= lines( t379->items ).
          EXIT.
        ENDIF.
        CLEAR t386.
        READ TABLE t379->items INDEX t387 + 1 INTO t386.
        t387 = t387 + 1.
        DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t388.
        CLEAR t385.
        IF t386 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t388 ?= t386.
          CLEAR t385.
          IF t388 IS BOUND.
            IF t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t385 ?= t388->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t385 IS NOT BOUND.
              IF t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t389.
                IF t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t389 ?= t388->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t389->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t390) = VALUE string( ).
              DATA t391 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t391.
              DATA t392 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t392.
              DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t393.
              t385 = NEW zcl_lnt_istructure_component( view_source = t388 i_name = t390 i_type_9913 = t391 i_as_include = t392 i_suffix = t393 ).
            ENDIF.
          ENDIF.
        ELSE.
          t385 ?= t386.
        ENDIF.
        DATA(t394) = t3.
        DATA(t395) = t385.
        t394->load( ).
        APPEND t395 TO t394->items.
        t394->save( ).
      ENDDO.
      DATA(t396) = VALUE i( ).
      DATA(t397) = t3.
      t397->load( ).
      t396 = lines( t397->items ).
      t378 = t396.
    ELSE.
      DATA(t398) = VALUE abap_bool( ).
      DATA(t399) = VALUE abap_bool( ).
      DATA(t400) = t46.
      t399 = xsdbool( t400 IS BOUND ).
      t398 = t399.
      IF t399 = abap_true.
        DATA(t401) = VALUE abap_bool( ).
        DATA t402 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t402.
        DATA(t403) = t46.
        t402 = t403.
        t401 = xsdbool( t402 IS BOUND AND t402 IS INSTANCE OF zcl_lnt_void_type ).
        t398 = t401.
      ENDIF.
      IF t398 = abap_true.
        DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t404.
        DATA t405 TYPE REF TO zcl_lnt_void_type.
        CLEAR t405.
        DATA(t406) = t46.
        t405 ?= t406.
        CLEAR t404.
        IF t405 IS BOUND.
          DATA t407 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t407.
          DATA t408 TYPE REF TO object.
          CLEAR t408.
          CLEAR t407.
          t408 = t405.
          TRY.
              t404 ?= t408.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t404 IS NOT BOUND.
            TRY.
                t407 ?= t405.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t407 IS BOUND.
              t404 = t407->source( ).
            ENDIF.
            IF t404 IS NOT BOUND.
              CREATE OBJECT t404.
              t404->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t404->oval = t405.
            ENDIF.
          ENDIF.
        ENDIF.
        result = t404.
        RETURN.
      ELSE.
        DATA(t409) = VALUE abap_bool( ).
        DATA(t410) = VALUE abap_bool( ).
        DATA t411 TYPE REF TO zcl_lnt_ddic.
        CLEAR t411.
        DATA t412 TYPE REF TO zcl_lnt_ddic.
        CLEAR t412.
        DATA t413 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t413.
        DATA t414 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t414.
        DATA(t415) = t2.
        t414 = t415->scope.
        t413 = t414.
        DATA t416 TYPE REF TO zcl_lnt_ddic.
        CLEAR t416.
        DATA t417 TYPE REF TO zif_lnt_registry.
        CLEAR t417.
        DATA(t418) = t413.
        t417 = t418->reg.
        t416 = NEW zcl_lnt_ddic( i_reg_f149 = t417 ).
        t412 = t416.
        t411 = t412.
        DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t419.
        DATA t420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t420.
        DATA(t421) = abap_true.
        IF t421 = abap_true.
          DATA(t422) = t29.
          DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t423->has = abap_true.
          t423->value = t422.
          t420 = t423.
        ELSE.
          DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t424.
          t420 = t424.
        ENDIF.
        t419 = t420.
        DATA(t425) = VALUE abap_bool( ).
        DATA(t426) = VALUE abap_bool( ).
        DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t427.
        DATA(t428) = t419.
        t427 = t428.
        DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t429.
        DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t430.
        t429 = t430.
        DATA(t431) = VALUE abap_bool( ).
        DATA(t432) = t427.
        IF t432 IS INITIAL.
          t431 = abap_true.
        ELSEIF t432->has = abap_false.
          t431 = abap_true.
        ENDIF.
        t426 = t431.
        IF t426 = abap_true.
          DATA(t433) = abap_true.
          t425 = t433.
        ELSE.
          DATA(t434) = VALUE abap_bool( ).
          DATA t435 TYPE REF TO zif_lnt_registry.
          CLEAR t435.
          DATA(t436) = t411.
          t435 = t436->reg.
          DATA(t437) = VALUE string( ).
          DATA(t438) = t419.
          t437 = t438->value.
          t434 = t435->in_error_namespace( i_name = t437 ).
          t425 = t434.
        ENDIF.
        t410 = t425.
        DATA(t439) = abap_false.
        t409 = xsdbool( t410 = t439 ).
        IF t409 = abap_true.
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t440.
          DATA t441 TYPE REF TO zcl_lnt_void_type.
          CLEAR t441.
          DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t442.
          DATA(t443) = abap_true.
          IF t443 = abap_true.
            DATA(t444) = t29.
            DATA(t445) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t445->has = abap_true.
            t445->value = t444.
            t442 = t445.
          ELSE.
            DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t446.
            t442 = t446.
          ENDIF.
          DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t447.
          t441 = zcl_lnt_void_type=>get_db65( i_voided = t442 i_qualified_name = t447 ).
          CLEAR t440.
          IF t441 IS BOUND.
            DATA t448 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t448.
            DATA t449 TYPE REF TO object.
            CLEAR t449.
            CLEAR t448.
            t449 = t441.
            TRY.
                t440 ?= t449.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t440 IS NOT BOUND.
              TRY.
                  t448 ?= t441.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t448 IS BOUND.
                t440 = t448->source( ).
              ENDIF.
              IF t440 IS NOT BOUND.
                CREATE OBJECT t440.
                t440->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t440->oval = t441.
              ENDIF.
            ENDIF.
          ENDIF.
          result = t440.
          RETURN.
        ELSE.
          DATA(t450) = VALUE string( ).
          DATA(t451) = VALUE string( ).
          DATA(t452) = VALUE string( ).
          DATA(t453) = |IncludeType, type not found "|.
          DATA(t454) = VALUE string( ).
          DATA t455 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t455.
          DATA(t456) = t5.
          t455 = t456.
          t454 = t455->concat_tokens( ).
          DATA(t457) = strlen( t453 ).
          t452 = |{ t453 }{ t454 }|.
          DATA(t458) = |"|.
          DATA(t459) = strlen( t452 ).
          t451 = |{ t452 }{ t458 }|.
          t450 = t451.
          DATA t460 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t460.
          DATA(t461) = t2.
          t460 = t461->issues.
          DATA t462 TYPE REF TO zcl_lnt_issue.
          CLEAR t462.
          DATA(t463) = t2.
          DATA t464 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t464.
          DATA(t465) = t1.
          t464 = t465->get_first_token( ).
          DATA(t466) = t450.
          DATA t467 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t467.
          t462 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t463 i_token = t464 i_message_26cb = t466 i_fix = t467 ).
          t460->load( ).
          APPEND t462 TO t460->items.
          t460->save( ).
          DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t468.
          DATA t469 TYPE REF TO zcl_lnt_void_type.
          CLEAR t469.
          DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t470.
          DATA(t471) = abap_true.
          IF t471 = abap_true.
            DATA(t472) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
            DATA(t473) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t473->has = abap_true.
            t473->value = t472.
            t470 = t473.
          ELSE.
            DATA t474 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t474.
            t470 = t474.
          ENDIF.
          DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t475.
          t469 = zcl_lnt_void_type=>get_db65( i_voided = t470 i_qualified_name = t475 ).
          CLEAR t468.
          IF t469 IS BOUND.
            DATA t476 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t476.
            DATA t477 TYPE REF TO object.
            CLEAR t477.
            CLEAR t476.
            t477 = t469.
            TRY.
                t468 ?= t477.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t468 IS NOT BOUND.
              TRY.
                  t476 ?= t469.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t476 IS BOUND.
                t468 = t476->source( ).
              ENDIF.
              IF t468 IS NOT BOUND.
                CREATE OBJECT t468.
                t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t468->oval = t469.
              ENDIF.
            ENDIF.
          ENDIF.
          result = t468.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA(t479) = t3.
    CLEAR t478.
    IF t479 IS BOUND.
      DATA t480 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t480.
      DATA t481 TYPE REF TO object.
      CLEAR t481.
      CLEAR t480.
      t481 = t479.
      TRY.
          t478 ?= t481.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t478 IS NOT BOUND.
        TRY.
            t480 ?= t479.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t480 IS BOUND.
          t478 = t480->source( ).
        ENDIF.
        IF t478 IS NOT BOUND.
          CREATE OBJECT t478.
          t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t478->oval = t479.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t478.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d918_2412a1956230.
  ENDMETHOD.
ENDCLASS.
