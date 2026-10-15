* TS: src/abap/5_syntax/statements/class_implementation.ts:12:1 ClassImplementation
CLASS zcl_lnt_sy_clss_implmnttn DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sy_clss_implmnttn IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA t4 TYPE REF TO zcl_lnt_object_oriented.
    DATA t5 TYPE REF TO zcl_lnt_current_scope.
    DATA(t6) = t2.
    t5 = t6->scope.
    t4 = NEW zcl_lnt_object_oriented( i_scope = t5 ).
    t3 = t4.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA(t9) = t3.
    DATA(t10) = t1.
    t8 = t9->find_class_name( i_node = t10 ).
    t7 = t8.
    DATA t11 TYPE REF TO zcl_lnt_current_scope.
    DATA t12 TYPE REF TO zcl_lnt_current_scope.
    DATA(t13) = t2.
    t12 = t13->scope.
    t11 = t12.
    DATA t14 TYPE string.
    DATA(t15) = t7.
    t14 = t15.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t20) = t1.
    t19 = t20->get_first_token( ).
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_position.
    DATA(t22) = t18.
    t21 = t22->start.
    t17 = t21.
    t16 = t17.
    DATA t23 TYPE string.
    DATA t24 TYPE string.
    DATA(t25) = t2.
    t24 = t25->filename.
    t23 = t24.
    DATA t26 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t28 TYPE string.
    DATA(t29) = |class_implementation|.
    t28 = t29.
    DATA t30 TYPE string.
    DATA(t31) = t14.
    t30 = t31.
    DATA t32 TYPE REF TO zcl_lnt_position.
    DATA(t33) = t16.
    t32 = t33.
    DATA t34 TYPE string.
    DATA(t35) = t23.
    t34 = t35.
    DATA t36 TYPE REF TO zcl_lnt_position.
    DATA t37 TYPE REF TO zcl_lnt_position.
    CLEAR t37.
    t36 = t37.
    t27 = NEW zcl_lnt_iscope_identifier( i_stype = t28 i_sname = t30 i_filename = t34 i_start = t32 i_end = t36 ).
    CREATE OBJECT t27->zlnt_view_ownkeys_b0e8086400eb.
    t27->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t27->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t27->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t42 ).
    ENDIF.
    CREATE OBJECT t27->zlnt_json_ownkeys_70e5fd461788.
    t27->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t43) = |stype|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |sname|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |start|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |filename|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |end|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t27->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t27->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    t26 = t27.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t56) = t11.
    t55 = t56->current.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    t57 = t58.
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = t54.
    IF t60 IS INITIAL.
      t59 = abap_true.
    ENDIF.
    t53 = t59.
    IF t53 = abap_true.
      DATA(t61) = t11.
      DATA t62 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t62.
      DATA(t63) = abap_true.
      IF t63 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t65) = t26.
        DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t66.
        t64 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t65 i_parent = t66 ).
        t62 = t64.
      ELSE.
        DATA t67 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t67.
        t62 = t67.
      ENDIF.
      t61->current = t62.
      DELETE t61->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t71) = t11.
      t70 = t71->current.
      t69 = t70.
      t68 = t69.
      DATA(t72) = t11.
      DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t73.
      DATA(t74) = abap_true.
      IF t74 = abap_true.
        DATA t75 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t75.
        DATA(t76) = t26.
        DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t77.
        DATA(t78) = abap_true.
        IF t78 = abap_true.
          DATA(t79) = t68.
          t77 = t79.
        ELSE.
          DATA t80 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t80.
          t77 = t80.
        ENDIF.
        t75 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t76 i_parent = t77 ).
        t73 = t75.
      ELSE.
        DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t81.
        t73 = t81.
      ENDIF.
      t72->current = t73.
      DELETE t72->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t82) = t68.
      DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t84 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t85) = t11.
      t84 = t85->current.
      t83 = t84.
      t82->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t83 ).
    ENDIF.
    DATA t86 TYPE REF TO zif_lnt_class_definition.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_class_definition.
    CLEAR t87.
    DATA t88 TYPE REF TO zcl_lnt_current_scope.
    DATA t89 TYPE REF TO zcl_lnt_current_scope.
    DATA(t90) = t2.
    t89 = t90->scope.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t92.
    DATA(t93) = abap_true.
    IF t93 = abap_true.
      DATA(t94) = t7.
      DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t95->has = abap_true.
      t95->value = t94.
      t92 = t95.
    ELSE.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t96.
      t92 = t96.
    ENDIF.
    t91 = t92.
    DATA t97 TYPE REF TO zif_lnt_class_definition.
    CLEAR t97.
    DATA(t98) = VALUE abap_bool( ).
    DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t100) = t91.
    t99 = t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    t101 = t102.
    DATA(t103) = VALUE abap_bool( ).
    DATA(t104) = t99.
    IF t104 IS INITIAL.
      t103 = abap_true.
    ELSEIF t104->has = abap_false.
      t103 = abap_true.
    ENDIF.
    t98 = t103.
    IF t98 = abap_true.
      DATA t105 TYPE REF TO zif_lnt_class_definition.
      CLEAR t105.
      t97 = t105.
    ELSE.
      DATA t106 TYPE REF TO zif_lnt_class_definition.
      CLEAR t106.
      DATA t107 TYPE REF TO zif_lnt_class_definition.
      CLEAR t107.
      DATA t108 TYPE REF TO zif_lnt_class_definition.
      CLEAR t108.
      DATA t109 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t111) = t88.
      t110 = t111->current.
      t109 = t110.
      DATA t112 TYPE REF TO zif_lnt_class_definition.
      CLEAR t112.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = t109.
      IF t114 IS INITIAL.
        t113 = abap_true.
      ENDIF.
      IF t113 = abap_true.
        DATA t115 TYPE REF TO zif_lnt_class_definition.
        CLEAR t115.
        t112 = t115.
      ELSE.
        DATA t116 TYPE REF TO zif_lnt_class_definition.
        DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t118) = t109.
        t117 = t118.
        DATA t119 TYPE string.
        DATA(t120) = t91.
        t119 = t120->value.
        t116 = t117->find_class_definition( i_name = t119 ).
        t112 = t116.
      ENDIF.
      t108 = t112.
      t107 = t108.
      DATA t121 TYPE REF TO zif_lnt_class_definition.
      CLEAR t121.
      DATA t122 TYPE abap_bool.
      DATA(t123) = t107.
      t122 = xsdbool( t123 IS BOUND ).
      IF t122 = abap_true.
        DATA t124 TYPE REF TO zif_lnt_class_definition.
        CLEAR t124.
        DATA(t125) = abap_true.
        IF t125 = abap_true.
          DATA t126 TYPE REF TO zif_lnt_class_definition.
          DATA(t127) = t107.
          t126 = t127.
          t124 = t126.
        ELSE.
          DATA t128 TYPE REF TO zif_lnt_class_definition.
          CLEAR t128.
          t124 = t128.
        ENDIF.
        t121 = t124.
      ELSE.
        DATA t129 TYPE REF TO zif_lnt_class_definition.
        CLEAR t129.
        DATA t130 TYPE REF TO zcl_lnt_class.
        CLEAR t130.
        DATA t131 TYPE REF TO zcl_lnt_class.
        CLEAR t131.
        DATA t132 TYPE REF TO zif_lnt_object.
        CLEAR t132.
        DATA t133 TYPE REF TO zif_lnt_registry.
        DATA(t134) = t88.
        t133 = t134->reg.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA(t137) = |CLAS|.
          DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t138->has = abap_true.
          t138->value = t137.
          t135 = t138.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          t135 = t139.
        ENDIF.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA(t141) = abap_true.
        IF t141 = abap_true.
          DATA t142 TYPE string.
          DATA(t143) = t91.
          t142 = t143->value.
          DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t144->has = abap_true.
          t144->value = t142.
          t140 = t144.
        ELSE.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          t140 = t145.
        ENDIF.
        t132 = t133->get_object( i_type_9913 = t135 i_name = t140 ).
        DATA t146 TYPE REF TO object.
        t146 = t132.
        t131 ?= t146.
        t130 = t131.
        DATA t147 TYPE REF TO zif_lnt_class_definition.
        CLEAR t147.
        DATA t148 TYPE abap_bool.
        DATA(t149) = t130.
        t148 = xsdbool( t149 IS BOUND ).
        IF t148 = abap_true.
          DATA t150 TYPE REF TO zif_lnt_class_definition.
          DATA t151 TYPE REF TO zcl_lnt_class.
          DATA(t152) = t130.
          t151 = t152.
          t150 = t151->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t147 = t150.
        ELSE.
          DATA t153 TYPE REF TO zif_lnt_class_definition.
          CLEAR t153.
          t147 = t153.
        ENDIF.
        t129 = t147.
        t121 = t129.
      ENDIF.
      t106 = t121.
      t97 = t106.
    ENDIF.
    t87 = t97.
    t86 = t87.
    DATA(t154) = VALUE abap_bool( ).
    DATA t155 TYPE REF TO zif_lnt_class_definition.
    DATA(t156) = t86.
    t155 = t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    t157 = t158.
    DATA(t159) = VALUE abap_bool( ).
    DATA(t160) = t155.
    IF t160 IS INITIAL.
      t159 = abap_true.
    ENDIF.
    t154 = t159.
    IF t154 = abap_true.
      DATA t161 TYPE string.
      DATA t162 TYPE string.
      DATA t163 TYPE string.
      DATA(t164) = |Class definition for "|.
      DATA(t165) = t7.
      DATA(t166) = strlen( t164 ).
      t163 = |{ t164 }{ t165 }|.
      DATA(t167) = |" not found|.
      DATA(t168) = strlen( t163 ).
      t162 = |{ t163 }{ t167 }|.
      t161 = t162.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t170) = t2.
      t169 = t170->issues.
      DATA t171 TYPE REF TO zcl_lnt_issue.
      DATA(t172) = t2.
      DATA t173 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t174) = t1.
      t173 = t174->get_first_token( ).
      DATA(t175) = t161.
      DATA t176 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t176.
      t171 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t172 i_token = t173 i_message_26cb = t175 i_fix = t176 ).
      t169->load( ).
      APPEND t171 TO t169->items.
      t169->save( ).
      RETURN.
    ENDIF.
    DATA t177 TYPE REF TO zif_lnt_type_definitions.
    DATA t178 TYPE REF TO zif_lnt_type_definitions.
    DATA t179 TYPE REF TO zif_lnt_class_definition.
    DATA(t180) = t86.
    t179 = t180.
    t178 = t179->get_type_definitions( ).
    t177 = t178.
    DATA(t181) = VALUE abap_bool( ).
    DATA t182 TYPE REF TO zif_lnt_type_definitions.
    DATA(t183) = t177.
    t182 = t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    t184 = t185.
    DATA(t186) = VALUE abap_bool( ).
    DATA(t187) = VALUE abap_bool( ).
    DATA(t188) = t182.
    IF t188 IS INITIAL.
      t187 = abap_true.
    ENDIF.
    t186 = xsdbool( t187 = abap_false ).
    t181 = t186.
    IF t181 = abap_true.
      DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t190) = t177.
      t189 = t190->get_all( ).
      DATA t191 TYPE REF TO zcl_lnt_type_definitions_entry.
      CLEAR t191.
      DATA t192 TYPE REF TO object.
      CLEAR t192.
      DATA(t193) = VALUE i( ).
      DO.
        t189->load( ).
        IF t193 >= lines( t189->items ).
          EXIT.
        ENDIF.
        CLEAR t192.
        READ TABLE t189->items INDEX t193 + 1 INTO t192.
        t193 = t193 + 1.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        CLEAR t191.
        IF t192 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t194 ?= t192.
          DATA t195 TYPE REF TO object.
          t195 = t194->as_ref( ).
          t191 ?= t195.
        ELSE.
          t191 ?= t192.
        ENDIF.
        DATA t196 TYPE REF TO zcl_lnt_current_scope.
        DATA t197 TYPE REF TO zcl_lnt_current_scope.
        DATA(t198) = t2.
        t197 = t198->scope.
        t196 = t197.
        DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t199.
        DATA t200 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t200.
        DATA(t201) = abap_true.
        IF t201 = abap_true.
          DATA t202 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t203) = t191.
          t202 = t203->type_cba0.
          t200 = t202.
        ELSE.
          DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t204.
          t200 = t204.
        ENDIF.
        t199 = t200.
        DATA(t205) = VALUE abap_bool( ).
        DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t207) = t199.
        t206 = t207.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        t208 = t209.
        DATA(t210) = VALUE abap_bool( ).
        DATA(t211) = t206.
        IF t211 IS INITIAL.
          t210 = abap_true.
        ENDIF.
        t205 = t210.
        IF t205 = abap_true.
        ELSE.
          DATA(t212) = t196.
          DATA(t213) = VALUE string( ).
          DATA t214 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t215 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t216) = t199.
          t215 = t216.
          t214 = t215.
          DATA(t217) = VALUE string( ).
          DATA t218 TYPE string.
          DATA t219 TYPE string.
          DATA t220 TYPE REF TO zcl_lnt_abstract_token.
          DATA t221 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t222) = t214.
          t221 = t222->token.
          t220 = t221.
          DATA t223 TYPE string.
          DATA(t224) = t220.
          t223 = t224->str.
          t219 = t223.
          t218 = t219.
          DATA(t225) = VALUE abap_bool( ).
          DATA(t226) = VALUE string( ).
          DATA(t227) = t218.
          DATA(t228) = 0.
          DATA(t229) = 1.
          DATA(t230) = strlen( t227 ).
          IF t228 < 0.
            t228 = t228 + t230.
            IF t228 < 0.
              t228 = 0.
            ENDIF.
          ENDIF.
          IF t228 > t230 OR t229 <= 0.
            CLEAR t226.
          ELSE.
            IF t229 > t230 - t228.
              t229 = t230 - t228.
            ENDIF.
            t226 = t227+t228(t229).
          ENDIF.
          DATA(t231) = |!|.
          t225 = xsdbool( t226 = t231 ).
          IF t225 = abap_true.
            DATA(t232) = VALUE string( ).
            DATA t233 TYPE string.
            DATA(t234) = t218.
            t233 = t234.
            DATA(t235) = VALUE string( ).
            DATA(t236) = t233.
            DATA(t237) = 1.
            DATA t238 TYPE i.
            DATA(t239) = t233.
            DATA(t240) = strlen( t239 ).
            t238 = t240.
            DATA(t241) = strlen( t236 ).
            IF t237 < 0.
              t237 = t237 + t241.
              IF t237 < 0.
                t237 = 0.
              ENDIF.
            ENDIF.
            IF t237 > t241 OR t238 <= 0.
              CLEAR t235.
            ELSE.
              IF t238 > t241 - t237.
                t238 = t241 - t237.
              ENDIF.
              t235 = t236+t237(t238).
            ENDIF.
            t232 = t235.
            t218 = t232.
          ENDIF.
          DATA(t242) = t218.
          t217 = t242.
          t213 = t217.
          DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t243.
          DATA(t244) = abap_true.
          IF t244 = abap_true.
            DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t246) = t199.
            t245 = t246.
            t243 = t245.
          ELSE.
            DATA t247 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t247.
            t243 = t247.
          ENDIF.
          t212->add_type_named( i_name = t213 i_type_9913 = t243 ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t248 TYPE REF TO zif_lnt_class_definition.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_class_definition.
    CLEAR t249.
    DATA t250 TYPE REF TO zcl_lnt_current_scope.
    DATA t251 TYPE REF TO zcl_lnt_current_scope.
    DATA(t252) = t2.
    t251 = t252->scope.
    t250 = t251.
    DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t255 TYPE REF TO zif_lnt_class_definition.
    DATA(t256) = t86.
    t255 = t256.
    t254 = t255->get_super_class( ).
    t253 = t254.
    DATA t257 TYPE REF TO zif_lnt_class_definition.
    CLEAR t257.
    DATA(t258) = VALUE abap_bool( ).
    DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t260) = t253.
    t259 = t260.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    t261 = t262.
    DATA(t263) = VALUE abap_bool( ).
    DATA(t264) = t259.
    IF t264 IS INITIAL.
      t263 = abap_true.
    ELSEIF t264->has = abap_false.
      t263 = abap_true.
    ENDIF.
    t258 = t263.
    IF t258 = abap_true.
      DATA t265 TYPE REF TO zif_lnt_class_definition.
      CLEAR t265.
      t257 = t265.
    ELSE.
      DATA t266 TYPE REF TO zif_lnt_class_definition.
      CLEAR t266.
      DATA t267 TYPE REF TO zif_lnt_class_definition.
      CLEAR t267.
      DATA t268 TYPE REF TO zif_lnt_class_definition.
      CLEAR t268.
      DATA t269 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t270 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t271) = t250.
      t270 = t271->current.
      t269 = t270.
      DATA t272 TYPE REF TO zif_lnt_class_definition.
      CLEAR t272.
      DATA(t273) = VALUE abap_bool( ).
      DATA(t274) = t269.
      IF t274 IS INITIAL.
        t273 = abap_true.
      ENDIF.
      IF t273 = abap_true.
        DATA t275 TYPE REF TO zif_lnt_class_definition.
        CLEAR t275.
        t272 = t275.
      ELSE.
        DATA t276 TYPE REF TO zif_lnt_class_definition.
        DATA t277 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t278) = t269.
        t277 = t278.
        DATA t279 TYPE string.
        DATA(t280) = t253.
        t279 = t280->value.
        t276 = t277->find_class_definition( i_name = t279 ).
        t272 = t276.
      ENDIF.
      t268 = t272.
      t267 = t268.
      DATA t281 TYPE REF TO zif_lnt_class_definition.
      CLEAR t281.
      DATA t282 TYPE abap_bool.
      DATA(t283) = t267.
      t282 = xsdbool( t283 IS BOUND ).
      IF t282 = abap_true.
        DATA t284 TYPE REF TO zif_lnt_class_definition.
        CLEAR t284.
        DATA(t285) = abap_true.
        IF t285 = abap_true.
          DATA t286 TYPE REF TO zif_lnt_class_definition.
          DATA(t287) = t267.
          t286 = t287.
          t284 = t286.
        ELSE.
          DATA t288 TYPE REF TO zif_lnt_class_definition.
          CLEAR t288.
          t284 = t288.
        ENDIF.
        t281 = t284.
      ELSE.
        DATA t289 TYPE REF TO zif_lnt_class_definition.
        CLEAR t289.
        DATA t290 TYPE REF TO zcl_lnt_class.
        CLEAR t290.
        DATA t291 TYPE REF TO zcl_lnt_class.
        CLEAR t291.
        DATA t292 TYPE REF TO zif_lnt_object.
        CLEAR t292.
        DATA t293 TYPE REF TO zif_lnt_registry.
        DATA(t294) = t250.
        t293 = t294->reg.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        DATA(t296) = abap_true.
        IF t296 = abap_true.
          DATA(t297) = |CLAS|.
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
        DATA(t301) = abap_true.
        IF t301 = abap_true.
          DATA t302 TYPE string.
          DATA(t303) = t253.
          t302 = t303->value.
          DATA(t304) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t304->has = abap_true.
          t304->value = t302.
          t300 = t304.
        ELSE.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t305.
          t300 = t305.
        ENDIF.
        t292 = t293->get_object( i_type_9913 = t295 i_name = t300 ).
        DATA t306 TYPE REF TO object.
        t306 = t292.
        t291 ?= t306.
        t290 = t291.
        DATA t307 TYPE REF TO zif_lnt_class_definition.
        CLEAR t307.
        DATA t308 TYPE abap_bool.
        DATA(t309) = t290.
        t308 = xsdbool( t309 IS BOUND ).
        IF t308 = abap_true.
          DATA t310 TYPE REF TO zif_lnt_class_definition.
          DATA t311 TYPE REF TO zcl_lnt_class.
          DATA(t312) = t290.
          t311 = t312.
          t310 = t311->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t307 = t310.
        ELSE.
          DATA t313 TYPE REF TO zif_lnt_class_definition.
          CLEAR t313.
          t307 = t313.
        ENDIF.
        t289 = t307.
        t281 = t289.
      ENDIF.
      t266 = t281.
      t257 = t266.
    ENDIF.
    t249 = t257.
    t248 = t249.
    DATA t314 TYPE abap_bool.
    DATA(t315) = t248.
    t314 = xsdbool( t315 IS BOUND ).
    IF t314 = abap_true.
      DATA t316 TYPE REF TO zcl_lnt_current_scope.
      DATA t317 TYPE REF TO zcl_lnt_current_scope.
      DATA(t318) = t2.
      t317 = t318->scope.
      t316 = t317.
      DATA t319 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t319.
      DATA t320 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t320.
      DATA(t321) = abap_true.
      IF t321 = abap_true.
        DATA t322 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t323 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t324 TYPE REF TO zcl_lnt_position.
        DATA(t325) = CONV f( 1 ).
        DATA(t326) = CONV f( 1 ).
        DATA(t327) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t327->has = abap_true.
        t327->value = t326.
        t324 = NEW zcl_lnt_position( i_row = t325 i_col = t327 ).
        DATA(t328) = |super|.
        t323 = NEW zcl_lnt_lx_identifier( i_start = t324 i_str = t328 ).
        DATA(t329) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t330 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t331 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t332 TYPE REF TO zif_lnt_class_definition.
        DATA(t333) = t248.
        t332 = t333.
        t331 ?= t332.
        DATA t334 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t334.
        t330 = NEW zcl_lnt_object_reference_type( i_id = t331 i_extra = t334 ).
        DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t335.
        DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t336.
        t322 = NEW zcl_lnt_typed_identifier( i_token = t323 i_filename = t329 i_type_9913 = t330 i_meta = t335 i_value = t336 ).
        t320 = t322.
      ELSE.
        DATA t337 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t337.
        t320 = t337.
      ENDIF.
      t319 = t320.
      DATA(t338) = VALUE abap_bool( ).
      DATA t339 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t340) = t319.
      t339 = t340.
      DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t342.
      t341 = t342.
      DATA(t343) = VALUE abap_bool( ).
      DATA(t344) = t339.
      IF t344 IS INITIAL.
        t343 = abap_true.
      ENDIF.
      t338 = t343.
      IF t338 = abap_true.
      ELSE.
        DATA(t345) = t316.
        DATA(t346) = VALUE string( ).
        DATA t347 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t348 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t349) = t319.
        t348 = t349.
        t347 = t348.
        DATA(t350) = VALUE string( ).
        DATA t351 TYPE string.
        DATA t352 TYPE string.
        DATA t353 TYPE REF TO zcl_lnt_abstract_token.
        DATA t354 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t355) = t347.
        t354 = t355->token.
        t353 = t354.
        DATA t356 TYPE string.
        DATA(t357) = t353.
        t356 = t357->str.
        t352 = t356.
        t351 = t352.
        DATA(t358) = VALUE abap_bool( ).
        DATA(t359) = VALUE string( ).
        DATA(t360) = t351.
        DATA(t361) = 0.
        DATA(t362) = 1.
        DATA(t363) = strlen( t360 ).
        IF t361 < 0.
          t361 = t361 + t363.
          IF t361 < 0.
            t361 = 0.
          ENDIF.
        ENDIF.
        IF t361 > t363 OR t362 <= 0.
          CLEAR t359.
        ELSE.
          IF t362 > t363 - t361.
            t362 = t363 - t361.
          ENDIF.
          t359 = t360+t361(t362).
        ENDIF.
        DATA(t364) = |!|.
        t358 = xsdbool( t359 = t364 ).
        IF t358 = abap_true.
          DATA(t365) = VALUE string( ).
          DATA t366 TYPE string.
          DATA(t367) = t351.
          t366 = t367.
          DATA(t368) = VALUE string( ).
          DATA(t369) = t366.
          DATA(t370) = 1.
          DATA t371 TYPE i.
          DATA(t372) = t366.
          DATA(t373) = strlen( t372 ).
          t371 = t373.
          DATA(t374) = strlen( t369 ).
          IF t370 < 0.
            t370 = t370 + t374.
            IF t370 < 0.
              t370 = 0.
            ENDIF.
          ENDIF.
          IF t370 > t374 OR t371 <= 0.
            CLEAR t368.
          ELSE.
            IF t371 > t374 - t370.
              t371 = t374 - t370.
            ENDIF.
            t368 = t369+t370(t371).
          ENDIF.
          t365 = t368.
          t351 = t365.
        ENDIF.
        DATA(t375) = t351.
        t350 = t375.
        t346 = t350.
        DATA t376 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t377) = t319.
        t376 = t377.
        t345->add_named_identifier( i_name = t346 i_identifier = t376 ).
      ENDIF.
    ELSE.
      DATA t378 TYPE REF TO zcl_lnt_current_scope.
      DATA t379 TYPE REF TO zcl_lnt_current_scope.
      DATA(t380) = t2.
      t379 = t380->scope.
      t378 = t379.
      DATA t381 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t381.
      DATA t382 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t382.
      DATA(t383) = abap_true.
      IF t383 = abap_true.
        DATA t384 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t384.
        DATA t385 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t386 TYPE REF TO zcl_lnt_position.
        DATA(t387) = CONV f( 1 ).
        DATA(t388) = CONV f( 1 ).
        DATA(t389) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t389->has = abap_true.
        t389->value = t388.
        t386 = NEW zcl_lnt_position( i_row = t387 i_col = t389 ).
        DATA(t390) = |super|.
        t385 = NEW zcl_lnt_lx_identifier( i_start = t386 i_str = t390 ).
        DATA(t391) = CONV string( zcl_lnt_built_in=>filename ).
        DATA t392 TYPE REF TO zcl_lnt_void_type.
        CLEAR t392.
        DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t393.
        DATA(t394) = abap_true.
        IF t394 = abap_true.
          DATA(t395) = |noSuperClass|.
          DATA(t396) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t396->has = abap_true.
          t396->value = t395.
          t393 = t396.
        ELSE.
          DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t397.
          t393 = t397.
        ENDIF.
        DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t398.
        t392 = zcl_lnt_void_type=>get_db65( i_voided = t393 i_qualified_name = t398 ).
        DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t399.
        DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t400.
        t384 = NEW zcl_lnt_typed_identifier( i_token = t385 i_filename = t391 i_type_9913 = t392 i_meta = t399 i_value = t400 ).
        t382 = t384.
      ELSE.
        DATA t401 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t401.
        t382 = t401.
      ENDIF.
      t381 = t382.
      DATA(t402) = VALUE abap_bool( ).
      DATA t403 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t404) = t381.
      t403 = t404.
      DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t406.
      t405 = t406.
      DATA(t407) = VALUE abap_bool( ).
      DATA(t408) = t403.
      IF t408 IS INITIAL.
        t407 = abap_true.
      ENDIF.
      t402 = t407.
      IF t402 = abap_true.
      ELSE.
        DATA(t409) = t378.
        DATA(t410) = VALUE string( ).
        DATA t411 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t413) = t381.
        t412 = t413.
        t411 = t412.
        DATA(t414) = VALUE string( ).
        DATA t415 TYPE string.
        DATA t416 TYPE string.
        DATA t417 TYPE REF TO zcl_lnt_abstract_token.
        DATA t418 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t419) = t411.
        t418 = t419->token.
        t417 = t418.
        DATA t420 TYPE string.
        DATA(t421) = t417.
        t420 = t421->str.
        t416 = t420.
        t415 = t416.
        DATA(t422) = VALUE abap_bool( ).
        DATA(t423) = VALUE string( ).
        DATA(t424) = t415.
        DATA(t425) = 0.
        DATA(t426) = 1.
        DATA(t427) = strlen( t424 ).
        IF t425 < 0.
          t425 = t425 + t427.
          IF t425 < 0.
            t425 = 0.
          ENDIF.
        ENDIF.
        IF t425 > t427 OR t426 <= 0.
          CLEAR t423.
        ELSE.
          IF t426 > t427 - t425.
            t426 = t427 - t425.
          ENDIF.
          t423 = t424+t425(t426).
        ENDIF.
        DATA(t428) = |!|.
        t422 = xsdbool( t423 = t428 ).
        IF t422 = abap_true.
          DATA(t429) = VALUE string( ).
          DATA t430 TYPE string.
          DATA(t431) = t415.
          t430 = t431.
          DATA(t432) = VALUE string( ).
          DATA(t433) = t430.
          DATA(t434) = 1.
          DATA t435 TYPE i.
          DATA(t436) = t430.
          DATA(t437) = strlen( t436 ).
          t435 = t437.
          DATA(t438) = strlen( t433 ).
          IF t434 < 0.
            t434 = t434 + t438.
            IF t434 < 0.
              t434 = 0.
            ENDIF.
          ENDIF.
          IF t434 > t438 OR t435 <= 0.
            CLEAR t432.
          ELSE.
            IF t435 > t438 - t434.
              t435 = t438 - t434.
            ENDIF.
            t432 = t433+t434(t435).
          ENDIF.
          t429 = t432.
          t415 = t429.
        ENDIF.
        DATA(t439) = t415.
        t414 = t439.
        t410 = t414.
        DATA t440 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t441) = t381.
        t440 = t441.
        t409->add_named_identifier( i_name = t410 i_identifier = t440 ).
      ENDIF.
    ENDIF.
    DATA t442 TYPE REF TO zcl_lnt_current_scope.
    DATA t443 TYPE REF TO zcl_lnt_current_scope.
    DATA(t444) = t2.
    t443 = t444->scope.
    t442 = t443.
    DATA t445 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t445.
    DATA t446 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t446.
    DATA(t447) = abap_true.
    IF t447 = abap_true.
      DATA t448 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t449 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t450 TYPE REF TO zcl_lnt_position.
      DATA(t451) = CONV f( 1 ).
      DATA(t452) = CONV f( 1 ).
      DATA(t453) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t453->has = abap_true.
      t453->value = t452.
      t450 = NEW zcl_lnt_position( i_row = t451 i_col = t453 ).
      DATA(t454) = |me|.
      t449 = NEW zcl_lnt_lx_identifier( i_start = t450 i_str = t454 ).
      DATA(t455) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t456 TYPE REF TO zcl_lnt_object_reference_type.
      DATA t457 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t458 TYPE REF TO zif_lnt_class_definition.
      DATA(t459) = t86.
      t458 = t459.
      t457 ?= t458.
      DATA t460 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t460.
      t456 = NEW zcl_lnt_object_reference_type( i_id = t457 i_extra = t460 ).
      DATA t461 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t461.
      DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t462.
      t448 = NEW zcl_lnt_typed_identifier( i_token = t449 i_filename = t455 i_type_9913 = t456 i_meta = t461 i_value = t462 ).
      t446 = t448.
    ELSE.
      DATA t463 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t463.
      t446 = t463.
    ENDIF.
    t445 = t446.
    DATA(t464) = VALUE abap_bool( ).
    DATA t465 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t466) = t445.
    t465 = t466.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t468.
    t467 = t468.
    DATA(t469) = VALUE abap_bool( ).
    DATA(t470) = t465.
    IF t470 IS INITIAL.
      t469 = abap_true.
    ENDIF.
    t464 = t469.
    IF t464 = abap_true.
    ELSE.
      DATA(t471) = t442.
      DATA(t472) = VALUE string( ).
      DATA t473 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t474 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t475) = t445.
      t474 = t475.
      t473 = t474.
      DATA(t476) = VALUE string( ).
      DATA t477 TYPE string.
      DATA t478 TYPE string.
      DATA t479 TYPE REF TO zcl_lnt_abstract_token.
      DATA t480 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t481) = t473.
      t480 = t481->token.
      t479 = t480.
      DATA t482 TYPE string.
      DATA(t483) = t479.
      t482 = t483->str.
      t478 = t482.
      t477 = t478.
      DATA(t484) = VALUE abap_bool( ).
      DATA(t485) = VALUE string( ).
      DATA(t486) = t477.
      DATA(t487) = 0.
      DATA(t488) = 1.
      DATA(t489) = strlen( t486 ).
      IF t487 < 0.
        t487 = t487 + t489.
        IF t487 < 0.
          t487 = 0.
        ENDIF.
      ENDIF.
      IF t487 > t489 OR t488 <= 0.
        CLEAR t485.
      ELSE.
        IF t488 > t489 - t487.
          t488 = t489 - t487.
        ENDIF.
        t485 = t486+t487(t488).
      ENDIF.
      DATA(t490) = |!|.
      t484 = xsdbool( t485 = t490 ).
      IF t484 = abap_true.
        DATA(t491) = VALUE string( ).
        DATA t492 TYPE string.
        DATA(t493) = t477.
        t492 = t493.
        DATA(t494) = VALUE string( ).
        DATA(t495) = t492.
        DATA(t496) = 1.
        DATA t497 TYPE i.
        DATA(t498) = t492.
        DATA(t499) = strlen( t498 ).
        t497 = t499.
        DATA(t500) = strlen( t495 ).
        IF t496 < 0.
          t496 = t496 + t500.
          IF t496 < 0.
            t496 = 0.
          ENDIF.
        ENDIF.
        IF t496 > t500 OR t497 <= 0.
          CLEAR t494.
        ELSE.
          IF t497 > t500 - t496.
            t497 = t500 - t496.
          ENDIF.
          t494 = t495+t496(t497).
        ENDIF.
        t491 = t494.
        t477 = t491.
      ENDIF.
      DATA(t501) = t477.
      t476 = t501.
      t472 = t476.
      DATA t502 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t503) = t445.
      t502 = t503.
      t471->add_named_identifier( i_name = t472 i_identifier = t502 ).
    ENDIF.
    DATA(t504) = t3.
    DATA t505 TYPE REF TO zif_lnt_class_definition.
    DATA(t506) = t86.
    t505 = t506.
    t504->add_aliased_attributes( i_class_definition_ad05 = t505 ).
    DATA(t507) = t3.
    DATA t508 TYPE REF TO zif_lnt_class_definition.
    DATA(t509) = t86.
    t508 = t509.
    t507->add_aliased_types( i_class_definition_ad05 = t508 ).
    DATA t510 TYPE REF TO zif_lnt_attributes.
    DATA t511 TYPE REF TO zif_lnt_attributes.
    DATA t512 TYPE REF TO zif_lnt_class_definition.
    DATA(t513) = t86.
    t512 = t513.
    t511 = t512->get_attributes( ).
    t510 = t511.
    DATA(t514) = VALUE abap_bool( ).
    DATA t515 TYPE REF TO zif_lnt_attributes.
    DATA(t516) = t510.
    t515 = t516.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t518.
    t517 = t518.
    DATA(t519) = VALUE abap_bool( ).
    DATA(t520) = VALUE abap_bool( ).
    DATA(t521) = t515.
    IF t521 IS INITIAL.
      t520 = abap_true.
    ENDIF.
    t519 = xsdbool( t520 = abap_false ).
    t514 = t519.
    IF t514 = abap_true.
      DATA t522 TYPE REF TO zcl_lnt_current_scope.
      DATA(t523) = t2.
      t522 = t523->scope.
      DATA t524 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t525) = t510.
      t524 = t525->get_constants( ).
      t522->add_list( i_identifiers = t524 ).
      DATA t526 TYPE REF TO zcl_lnt_current_scope.
      DATA(t527) = t2.
      t526 = t527->scope.
      DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t529) = t510.
      t528 = t529->get_static( ).
      t526->add_list( i_identifiers = t528 ).
      DATA t530 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t531) = t510.
      t530 = t531->get_instance( ).
      DATA t532 TYPE REF TO zcl_lnt_class_attribute.
      CLEAR t532.
      DATA t533 TYPE REF TO object.
      CLEAR t533.
      DATA(t534) = VALUE i( ).
      DO.
        t530->load( ).
        IF t534 >= lines( t530->items ).
          EXIT.
        ENDIF.
        CLEAR t533.
        READ TABLE t530->items INDEX t534 + 1 INTO t533.
        t534 = t534 + 1.
        DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t535.
        CLEAR t532.
        IF t533 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t535 ?= t533.
          DATA t536 TYPE REF TO object.
          t536 = t535->as_ref( ).
          t532 ?= t536.
        ELSE.
          t532 ?= t533.
        ENDIF.
        DATA t537 TYPE REF TO zcl_lnt_current_scope.
        DATA t538 TYPE REF TO zcl_lnt_current_scope.
        DATA(t539) = t2.
        t538 = t539->scope.
        t537 = t538.
        DATA t540 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t541) = t532.
        t540 = t541.
        DATA(t542) = VALUE abap_bool( ).
        DATA t543 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t544) = t540.
        t543 = t544.
        DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t546.
        t545 = t546.
        DATA(t547) = VALUE abap_bool( ).
        DATA(t548) = t543.
        IF t548 IS INITIAL.
          t547 = abap_true.
        ENDIF.
        t542 = t547.
        IF t542 = abap_true.
        ELSE.
          DATA(t549) = t537.
          DATA(t550) = VALUE string( ).
          DATA t551 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t552 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t553) = t540.
          t552 = t553.
          t551 = t552.
          DATA(t554) = VALUE string( ).
          DATA t555 TYPE string.
          DATA t556 TYPE string.
          DATA t557 TYPE REF TO zcl_lnt_abstract_token.
          DATA t558 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t559) = t551.
          t558 = t559->token.
          t557 = t558.
          DATA t560 TYPE string.
          DATA(t561) = t557.
          t560 = t561->str.
          t556 = t560.
          t555 = t556.
          DATA(t562) = VALUE abap_bool( ).
          DATA(t563) = VALUE string( ).
          DATA(t564) = t555.
          DATA(t565) = 0.
          DATA(t566) = 1.
          DATA(t567) = strlen( t564 ).
          IF t565 < 0.
            t565 = t565 + t567.
            IF t565 < 0.
              t565 = 0.
            ENDIF.
          ENDIF.
          IF t565 > t567 OR t566 <= 0.
            CLEAR t563.
          ELSE.
            IF t566 > t567 - t565.
              t566 = t567 - t565.
            ENDIF.
            t563 = t564+t565(t566).
          ENDIF.
          DATA(t568) = |!|.
          t562 = xsdbool( t563 = t568 ).
          IF t562 = abap_true.
            DATA(t569) = VALUE string( ).
            DATA t570 TYPE string.
            DATA(t571) = t555.
            t570 = t571.
            DATA(t572) = VALUE string( ).
            DATA(t573) = t570.
            DATA(t574) = 1.
            DATA t575 TYPE i.
            DATA(t576) = t570.
            DATA(t577) = strlen( t576 ).
            t575 = t577.
            DATA(t578) = strlen( t573 ).
            IF t574 < 0.
              t574 = t574 + t578.
              IF t574 < 0.
                t574 = 0.
              ENDIF.
            ENDIF.
            IF t574 > t578 OR t575 <= 0.
              CLEAR t572.
            ELSE.
              IF t575 > t578 - t574.
                t575 = t578 - t574.
              ENDIF.
              t572 = t573+t574(t575).
            ENDIF.
            t569 = t572.
            t555 = t569.
          ENDIF.
          DATA(t579) = t555.
          t554 = t579.
          t550 = t554.
          DATA t580 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t580.
          DATA(t581) = abap_true.
          IF t581 = abap_true.
            DATA t582 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t583) = t540.
            t582 = t583.
            t580 = t582.
          ELSE.
            DATA t584 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t584.
            t580 = t584.
          ENDIF.
          t549->add_extra_like_type_named( i_name = t550 i_type_9913 = t580 ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t585 TYPE REF TO zcl_lnt_object_oriented.
    DATA(t586) = t3.
    t585 = t586.
    DATA t587 TYPE REF TO zif_lnt_class_definition.
    DATA t588 TYPE REF TO zif_lnt_class_definition.
    DATA(t589) = t86.
    t588 = t589.
    t587 = t588.
    DATA t590 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t591 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t592) = t585.
    DATA(t593) = t587.
    t591 = t592->from_super_classes( i_child = t593 ).
    t590 = t591.
    DATA t594 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t594.
    DATA(t595) = t585.
    DATA t596 TYPE REF TO zif_lnt_interface_definition.
    DATA(t597) = t587.
    t596 ?= t597.
    DATA t598 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t598.
    DATA(t599) = abap_true.
    IF t599 = abap_true.
      DATA(t600) = t590.
      t598 = t600.
    ELSE.
      DATA t601 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t601.
      t598 = t601.
    ENDIF.
    t594 = t595->from_interfaces( i_definition = t596 i_skip_34cc = t598 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d872_3bfff898e580.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
