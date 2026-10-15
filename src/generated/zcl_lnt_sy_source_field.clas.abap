* TS: src/abap/5_syntax/expressions/source_field.ts:7:1 SourceField
CLASS zcl_lnt_sy_source_field DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_error TYPE REF TO zlnt_runtime_opti_7f2541396f43
    RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_source_field IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = i_type_9913.
    DATA(t4) = i_error.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = abap_true.
        DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = t1.
    t13 = t14->get_first_token( ).
    t12 = t13.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t12.
    t17 = t18.
    DATA t19 TYPE string.
    DATA(t20) = t17.
    t19 = t20->str.
    t16 = t19.
    t15 = t16.
    DATA t21 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_current_scope.
    DATA t24 TYPE REF TO zcl_lnt_current_scope.
    DATA(t25) = t2.
    t24 = t25->scope.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = t15.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = t26.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t36 = t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = t34.
    IF t39 IS INITIAL.
      t38 = abap_true.
    ELSEIF t39->has = abap_false.
      t38 = abap_true.
    ENDIF.
    t33 = t38.
    IF t33 = abap_true.
      DATA t40 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t40.
      t32 = t40.
    ELSE.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t43.
      DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t46) = t23.
      t45 = t46->current.
      t44 = t45.
      DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t44.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      IF t48 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t50.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t53) = t44.
        t52 = t53.
        DATA t54 TYPE string.
        DATA(t55) = t26.
        t54 = t55->value.
        t51 = t52->find_variable( i_name = t54 ).
        t47 = t51.
      ENDIF.
      t43 = t47.
      t42 = t43.
      DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t56.
      DATA t57 TYPE abap_bool.
      DATA(t58) = t42.
      t57 = xsdbool( t58 IS BOUND ).
      IF t57 = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t62) = t42.
          t61 = t62.
          t59 = t61.
        ELSE.
          DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t63.
          t59 = t63.
        ENDIF.
        t56 = t59.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t64.
        DATA(t65) = t23.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t67) = abap_true.
        IF t67 = abap_true.
          DATA t68 TYPE string.
          DATA(t69) = t26.
          t68 = t69->value.
          DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t70->has = abap_true.
          t70->value = t68.
          t66 = t70.
        ELSE.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          t66 = t71.
        ENDIF.
        t64 = t65->find_type_pool_constant( i_name = t66 ).
        t56 = t64.
      ENDIF.
      t41 = t56.
      t32 = t41.
    ENDIF.
    t22 = t32.
    t21 = t22.
    DATA(t72) = VALUE abap_bool( ).
    DATA t73 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t74) = t21.
    t73 = t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    t75 = t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = t73.
    IF t78 IS INITIAL.
      t77 = abap_true.
    ENDIF.
    t72 = t77.
    IF t72 = abap_true.
      DATA t79 TYPE string.
      DATA t80 TYPE string.
      DATA t81 TYPE string.
      DATA(t82) = |"|.
      DATA(t83) = t15.
      DATA(t84) = strlen( t82 ).
      t81 = |{ t82 }{ t83 }|.
      DATA(t85) = |" not found, findTop|.
      DATA(t86) = strlen( t81 ).
      t80 = |{ t81 }{ t85 }|.
      t79 = t80.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      DATA(t89) = t4.
      t88 = t89->value.
      DATA(t90) = abap_true.
      t87 = xsdbool( t88 = t90 ).
      IF t87 = abap_true.
        DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t92) = t2.
        t91 = t92->issues.
        DATA t93 TYPE REF TO zcl_lnt_issue.
        DATA(t94) = t2.
        DATA t95 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t96) = t1.
        t95 = t96->get_first_token( ).
        DATA(t97) = t79.
        DATA t98 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t98.
        t93 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t94 i_token = t95 i_message_26cb = t97 i_fix = t98 ).
        t91->load( ).
        APPEND t93 TO t91->items.
        t91->save( ).
      ENDIF.
      DATA t99 TYPE REF TO zcl_lnt_void_type.
      CLEAR t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA(t101) = abap_true.
      IF t101 = abap_true.
        DATA(t102) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t102.
        t100 = t103.
      ELSE.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t100 = t104.
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      t99 = zcl_lnt_void_type=>get_db65( i_voided = t100 i_qualified_name = t105 ).
      result = t99.
      RETURN.
    ENDIF.
    DATA(t106) = VALUE abap_bool( ).
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = t3.
    t107 = t108.
    IF t107 IS BOUND.
      t106 = t107->truth( ).
    ENDIF.
    IF t106 = abap_true.
      DATA t109 TYPE REF TO zcl_lnt_current_scope.
      DATA(t110) = t2.
      t109 = t110->scope.
      DATA t111 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA(t113) = t12.
        t111 = t113.
      ELSE.
        DATA t114 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t114.
        t111 = t114.
      ENDIF.
      DATA t115 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t116) = t21.
      t115 = t116.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t118) = t3.
      t117 = t118.
      DATA t119 TYPE string.
      DATA(t120) = t2.
      t119 = t120->filename.
      DATA t121 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t121.
      t109->add_reference( i_usage = t111 i_referencing = t115 i_type_9913 = t117 i_filename = t119 i_extra = t121 ).
    ENDIF.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = VALUE i( ).
    DATA(t124) = t15.
    DATA(t125) = |~|.
    DATA(t126) = strlen( t124 ).
    IF t125 IS INITIAL.
      t123 = 0.
    ELSE.
      FIND t125 IN t124 MATCH OFFSET t123.
      IF sy-subrc <> 0.
        t123 = -1.
      ENDIF.
    ENDIF.
    DATA(t127) = 0.
    t122 = xsdbool( t123 >= t127 ).
    IF t122 = abap_true.
      DATA t128 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t128.
      DATA t129 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t129.
      DATA t130 TYPE REF TO zcl_lnt_current_scope.
      DATA t131 TYPE REF TO zcl_lnt_current_scope.
      DATA(t132) = t2.
      t131 = t132->scope.
      t130 = t131.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t136) = t15.
      DATA(t137) = |~|.
      DATA(t138) = strlen( t136 ).
      DATA t139 TYPE i.
      DATA(t140) = VALUE i( ).
      DATA(t141) = VALUE i( ).
      DATA t142 TYPE i.
      DATA(t143) = VALUE string( ).
      CREATE OBJECT t135.
      t142 = strlen( t137 ).
      t139 = 0.
      IF t142 = 0.
        WHILE t139 < t138.
          t143 = t136+t139(1).
          APPEND t143 TO t135->items.
          t139 = t139 + 1.
        ENDWHILE.
      ELSE.
        WHILE t139 <= t138.
          FIND FIRST OCCURRENCE OF t137 IN SECTION OFFSET t139 OF t136 MATCH OFFSET t140.
          IF sy-subrc = 0.
            t141 = t140 - t139.
          ELSE.
            t140 = -1.
            t141 = t138 - t139.
          ENDIF.
          CLEAR t143.
          IF t141 > 0.
            t143 = t136+t139(t141).
          ENDIF.
          APPEND t143 TO t135->items.
          IF t140 < 0.
            EXIT.
          ENDIF.
          t139 = t140 + t142.
        ENDWHILE.
      ENDIF.
      DATA(t144) = 0.
      t134 = t135->get( p0 = t144 ).
      t133 = t134.
      DATA t145 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t145.
      DATA(t146) = VALUE abap_bool( ).
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t148) = t133.
      t147 = t148.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      t149 = t150.
      DATA(t151) = VALUE abap_bool( ).
      DATA(t152) = t147.
      IF t152 IS INITIAL.
        t151 = abap_true.
      ELSEIF t152->has = abap_false.
        t151 = abap_true.
      ENDIF.
      t146 = t151.
      IF t146 = abap_true.
        DATA t153 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t153.
        t145 = t153.
      ELSE.
        DATA t154 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t154.
        DATA t155 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t155.
        DATA t156 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t156.
        DATA t157 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t159) = t130.
        t158 = t159->current.
        t157 = t158.
        DATA t160 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t160.
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = t157.
        IF t162 IS INITIAL.
          t161 = abap_true.
        ENDIF.
        IF t161 = abap_true.
          DATA t163 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t163.
          t160 = t163.
        ELSE.
          DATA t164 TYPE REF TO zif_lnt_interface_definition.
          DATA t165 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t166) = t157.
          t165 = t166.
          DATA t167 TYPE string.
          DATA(t168) = t133.
          t167 = t168->value.
          t164 = t165->find_interface_definition( i_name = t167 ).
          t160 = t164.
        ENDIF.
        t156 = t160.
        t155 = t156.
        DATA t169 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t169.
        DATA t170 TYPE abap_bool.
        DATA(t171) = t155.
        t170 = xsdbool( t171 IS BOUND ).
        IF t170 = abap_true.
          DATA t172 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t172.
          DATA(t173) = abap_true.
          IF t173 = abap_true.
            DATA t174 TYPE REF TO zif_lnt_interface_definition.
            DATA(t175) = t155.
            t174 = t175.
            t172 = t174.
          ELSE.
            DATA t176 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t176.
            t172 = t176.
          ENDIF.
          t169 = t172.
        ELSE.
          DATA t177 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t177.
          DATA t178 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t178.
          DATA t179 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t179.
          DATA t180 TYPE REF TO zif_lnt_object.
          CLEAR t180.
          DATA t181 TYPE REF TO zif_lnt_registry.
          DATA(t182) = t130.
          t181 = t182->reg.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t183.
          DATA(t184) = abap_true.
          IF t184 = abap_true.
            DATA(t185) = |INTF|.
            DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t186->has = abap_true.
            t186->value = t185.
            t183 = t186.
          ELSE.
            DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t187.
            t183 = t187.
          ENDIF.
          DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t188.
          DATA(t189) = abap_true.
          IF t189 = abap_true.
            DATA t190 TYPE string.
            DATA(t191) = t133.
            t190 = t191->value.
            DATA(t192) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t192->has = abap_true.
            t192->value = t190.
            t188 = t192.
          ELSE.
            DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t193.
            t188 = t193.
          ENDIF.
          t180 = t181->get_object( i_type_9913 = t183 i_name = t188 ).
          DATA t194 TYPE REF TO object.
          t194 = t180.
          t179 ?= t194.
          t178 = t179.
          DATA t195 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t195.
          DATA t196 TYPE abap_bool.
          DATA(t197) = t178.
          t196 = xsdbool( t197 IS BOUND ).
          IF t196 = abap_true.
            DATA t198 TYPE REF TO zif_lnt_interface_definition.
            DATA t199 TYPE REF TO zcl_lnt_ob_interface.
            DATA t200 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t201) = t178.
            t200 = t201.
            t199 = t200.
            DATA t202 TYPE REF TO zif_lnt_interface_definition.
            DATA(t203) = t199.
            t202 = t203->def.
            t198 = t202.
            t195 = t198.
          ELSE.
            DATA t204 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t204.
            t195 = t204.
          ENDIF.
          t177 = t195.
          t169 = t177.
        ENDIF.
        t154 = t169.
        t145 = t154.
      ENDIF.
      t129 = t145.
      t128 = t129.
      DATA t205 TYPE abap_bool.
      DATA(t206) = t128.
      t205 = xsdbool( t206 IS BOUND ).
      IF t205 = abap_true.
        DATA t207 TYPE REF TO zcl_lnt_current_scope.
        DATA(t208) = t2.
        t207 = t208->scope.
        DATA t209 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t209.
        DATA(t210) = abap_true.
        IF t210 = abap_true.
          DATA(t211) = t12.
          t209 = t211.
        ELSE.
          DATA t212 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t212.
          t209 = t212.
        ENDIF.
        DATA t213 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t213.
        DATA(t214) = abap_true.
        IF t214 = abap_true.
          DATA t215 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t216 TYPE REF TO zif_lnt_interface_definition.
          DATA(t217) = t128.
          t216 = t217.
          t215 ?= t216.
          t213 = t215.
        ELSE.
          DATA t218 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t218.
          t213 = t218.
        ENDIF.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        DATA(t220) = |Object|.
        CLEAR t219.
        CREATE OBJECT t219.
        t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t219->sval = t220.
        DATA t221 TYPE string.
        DATA(t222) = t2.
        t221 = t222->filename.
        DATA t223 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t223.
        t207->add_reference( i_usage = t209 i_referencing = t213 i_type_9913 = t219 i_filename = t221 i_extra = t223 ).
      ENDIF.
    ENDIF.
    DATA t224 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t224.
    DATA(t225) = abap_true.
    IF t225 = abap_true.
      DATA t226 TYPE REF TO zcl_lnt_abstract_type.
      DATA t227 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t228 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t229) = t21.
      t228 = t229.
      t227 = t228.
      DATA t230 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t231) = t227.
      t230 = t231->type_cba0.
      t226 = t230.
      t224 = t226.
    ELSE.
      DATA t232 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t232.
      t224 = t232.
    ENDIF.
    result = t224.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d833_44fc5bb2f891.
  ENDMETHOD.
ENDCLASS.
