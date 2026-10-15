* TS: src/abap/5_syntax/statements/create_object.ts:16:1 CreateObject
CLASS zcl_lnt_sy_create_object DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS check_instantiation_allowed IMPORTING i_cdef TYPE REF TO zif_lnt_class_definition i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS validate_parameters IMPORTING i_cdef TYPE REF TO zif_lnt_class_definition i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_create_object IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zif_lnt_class_definition.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_class_definition.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA(t7) = t1.
    DATA(t8) = |TYPE|.
    t6 = t7->find_expression_after_token( i_text = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    t10 = xsdbool( t11 IS BOUND ).
    t9 = t10.
    IF t10 = abap_true.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      DATA(t15) = t5.
      t14 = t15.
      t13 = t14->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_class_name ).
      t9 = t12.
    ENDIF.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t18.
      DATA(t19) = t5.
      t18 = t19.
      t17 = t18->get_first_token( ).
      t16 = t17.
      DATA(t20) = VALUE string( ).
      DATA(t21) = VALUE string( ).
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA(t23) = t16.
      t22 = t23.
      DATA(t24) = VALUE string( ).
      DATA(t25) = t22.
      t24 = t25->str.
      t21 = t24.
      t20 = t21.
      DATA t26 TYPE REF TO zif_lnt_class_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t28.
      DATA(t29) = t2.
      t28 = t29->scope.
      t27 = t28.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA(t33) = t20.
        DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t34->has = abap_true.
        t34->value = t33.
        t31 = t34.
      ELSE.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        t31 = t35.
      ENDIF.
      t30 = t31.
      DATA t36 TYPE REF TO zif_lnt_class_definition.
      CLEAR t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA(t39) = t30.
      t38 = t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      t40 = t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = t38.
      IF t43 IS INITIAL.
        t42 = abap_true.
      ELSEIF t43->has = abap_false.
        t42 = abap_true.
      ENDIF.
      t37 = t42.
      IF t37 = abap_true.
        DATA t44 TYPE REF TO zif_lnt_class_definition.
        CLEAR t44.
        t36 = t44.
      ELSE.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        CLEAR t46.
        DATA t47 TYPE REF TO zif_lnt_class_definition.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t49.
        DATA(t50) = t27.
        t49 = t50->current.
        t48 = t49.
        DATA t51 TYPE REF TO zif_lnt_class_definition.
        CLEAR t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = t48.
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zif_lnt_class_definition.
          CLEAR t54.
          t51 = t54.
        ELSE.
          DATA t55 TYPE REF TO zif_lnt_class_definition.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t56.
          DATA(t57) = t48.
          t56 = t57.
          DATA(t58) = VALUE string( ).
          DATA(t59) = t30.
          t58 = t59->value.
          t55 = t56->find_class_definition( i_name = t58 ).
          t51 = t55.
        ENDIF.
        t47 = t51.
        t46 = t47.
        DATA t60 TYPE REF TO zif_lnt_class_definition.
        CLEAR t60.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t46.
        t61 = xsdbool( t62 IS BOUND ).
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zif_lnt_class_definition.
          CLEAR t63.
          DATA(t64) = abap_true.
          IF t64 = abap_true.
            DATA t65 TYPE REF TO zif_lnt_class_definition.
            CLEAR t65.
            DATA(t66) = t46.
            t65 = t66.
            t63 = t65.
          ELSE.
            DATA t67 TYPE REF TO zif_lnt_class_definition.
            CLEAR t67.
            t63 = t67.
          ENDIF.
          t60 = t63.
        ELSE.
          DATA t68 TYPE REF TO zif_lnt_class_definition.
          CLEAR t68.
          DATA t69 TYPE REF TO zcl_lnt_class.
          CLEAR t69.
          DATA t70 TYPE REF TO zcl_lnt_class.
          CLEAR t70.
          DATA t71 TYPE REF TO zif_lnt_object.
          CLEAR t71.
          DATA t72 TYPE REF TO zif_lnt_registry.
          CLEAR t72.
          DATA(t73) = t27.
          t72 = t73->reg.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t75) = abap_true.
          IF t75 = abap_true.
            DATA(t76) = |CLAS|.
            DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t77->has = abap_true.
            t77->value = t76.
            t74 = t77.
          ELSE.
            DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t78.
            t74 = t78.
          ENDIF.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          DATA(t80) = abap_true.
          IF t80 = abap_true.
            DATA(t81) = VALUE string( ).
            DATA(t82) = t30.
            t81 = t82->value.
            DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t83->has = abap_true.
            t83->value = t81.
            t79 = t83.
          ELSE.
            DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t84.
            t79 = t84.
          ENDIF.
          t71 = t72->get_object( i_type_9913 = t74 i_name = t79 ).
          DATA t85 TYPE REF TO object.
          CLEAR t85.
          t85 = t71.
          t70 ?= t85.
          t69 = t70.
          DATA t86 TYPE REF TO zif_lnt_class_definition.
          CLEAR t86.
          DATA(t87) = VALUE abap_bool( ).
          DATA(t88) = t69.
          t87 = xsdbool( t88 IS BOUND ).
          IF t87 = abap_true.
            DATA t89 TYPE REF TO zif_lnt_class_definition.
            CLEAR t89.
            DATA t90 TYPE REF TO zcl_lnt_class.
            CLEAR t90.
            DATA(t91) = t69.
            t90 = t91.
            t89 = t90->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t86 = t89.
          ELSE.
            DATA t92 TYPE REF TO zif_lnt_class_definition.
            CLEAR t92.
            t86 = t92.
          ENDIF.
          t68 = t86.
          t60 = t68.
        ENDIF.
        t45 = t60.
        t36 = t45.
      ENDIF.
      t26 = t36.
      t3 = t26.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = t3.
      t93 = xsdbool( t94 IS BOUND ).
      IF t93 = abap_true.
        DATA t95 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t95.
        DATA(t96) = t2.
        t95 = t96->scope.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        DATA(t98) = abap_true.
        IF t98 = abap_true.
          DATA(t99) = t16.
          t97 = t99.
        ELSE.
          DATA t100 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t100.
          t97 = t100.
        ENDIF.
        DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t101.
        DATA(t102) = abap_true.
        IF t102 = abap_true.
          DATA t103 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t103.
          DATA t104 TYPE REF TO zif_lnt_class_definition.
          CLEAR t104.
          DATA(t105) = t3.
          t104 = t105.
          t103 ?= t104.
          t101 = t103.
        ELSE.
          DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t106.
          t101 = t106.
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        DATA(t108) = |Object|.
        CLEAR t107.
        CREATE OBJECT t107.
        t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t107->sval = t108.
        DATA(t109) = VALUE string( ).
        DATA(t110) = t2.
        t109 = t110->filename.
        DATA t111 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t111.
        t95->add_reference( i_usage = t97 i_referencing = t101 i_type_9913 = t107 i_filename = t109 i_extra = t111 ).
        DATA t112 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t112.
        DATA(t113) = t2.
        t112 = t113->scope.
        DATA t114 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t114.
        DATA(t115) = abap_true.
        IF t115 = abap_true.
          DATA(t116) = t16.
          t114 = t116.
        ELSE.
          DATA t117 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t117.
          t114 = t117.
        ENDIF.
        DATA t118 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t118.
        DATA(t119) = abap_true.
        IF t119 = abap_true.
          DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t120.
          DATA t121 TYPE REF TO zif_lnt_class_definition.
          CLEAR t121.
          DATA(t122) = t3.
          t121 = t122.
          t120 ?= t121.
          t118 = t120.
        ELSE.
          DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t123.
          t118 = t123.
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        DATA(t125) = |Constructor Reference|.
        CLEAR t124.
        CREATE OBJECT t124.
        t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t124->sval = t125.
        DATA(t126) = VALUE string( ).
        DATA(t127) = t2.
        t126 = t127->filename.
        DATA t128 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t130.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA(t133) = abap_true.
          IF t133 = abap_true.
            DATA(t134) = VALUE string( ).
            DATA t135 TYPE REF TO zif_lnt_class_definition.
            CLEAR t135.
            DATA(t136) = t3.
            t135 = t136.
            t134 = t135->get_name( ).
            DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t137->has = abap_true.
            t137->value = t134.
            t132 = t137.
          ELSE.
            DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t138.
            t132 = t138.
          ENDIF.
          t131 = t132.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          t139 = t140.
          DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t141.
          DATA t142 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t142.
          t141 = t142.
          t130 = NEW zcl_lnt_ireference_extras( i_oo_name = t131 i_oo_type = t139 i_found_qualified = t141 ).
          CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
          t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t143 ).
          ENDIF.
          CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
          t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t144) = |ooName|.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
          ENDIF.
          t128 = t130.
        ELSE.
          DATA t146 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t146.
          t128 = t146.
        ENDIF.
        t112->add_reference( i_usage = t114 i_referencing = t118 i_type_9913 = t124 i_filename = t126 i_extra = t128 ).
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = VALUE abap_bool( ).
        DATA t149 TYPE REF TO zif_lnt_class_definition.
        CLEAR t149.
        DATA(t150) = t3.
        t149 = t150.
        t148 = t149->is_abstract( ).
        DATA(t151) = abap_true.
        t147 = xsdbool( t148 = t151 ).
        IF t147 = abap_true.
          DATA(t152) = VALUE string( ).
          DATA(t153) = VALUE string( ).
          DATA(t154) = VALUE string( ).
          DATA t155 TYPE REF TO zif_lnt_class_definition.
          CLEAR t155.
          DATA(t156) = t3.
          t155 = t156.
          t154 = t155->get_name( ).
          DATA(t157) = | is abstract, cannot be instantiated|.
          DATA(t158) = strlen( t154 ).
          t153 = |{ t154 }{ t157 }|.
          t152 = t153.
          DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t159.
          DATA(t160) = t2.
          t159 = t160->issues.
          DATA t161 TYPE REF TO zcl_lnt_issue.
          CLEAR t161.
          DATA(t162) = t2.
          DATA t163 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t163.
          DATA(t164) = t1.
          t163 = t164->get_first_token( ).
          DATA(t165) = t152.
          DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t166.
          t161 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t162 i_token = t163 i_message_26cb = t165 i_fix = t166 ).
          t159->load( ).
          APPEND t161 TO t159->items.
          t159->save( ).
          RETURN.
        ENDIF.
      ELSE.
        DATA(t167) = VALUE abap_bool( ).
        DATA(t168) = VALUE abap_bool( ).
        DATA t169 TYPE REF TO zcl_lnt_ddic.
        CLEAR t169.
        DATA t170 TYPE REF TO zcl_lnt_ddic.
        CLEAR t170.
        DATA t171 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t171.
        DATA t172 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t172.
        DATA(t173) = t2.
        t172 = t173->scope.
        t171 = t172.
        DATA t174 TYPE REF TO zcl_lnt_ddic.
        CLEAR t174.
        DATA t175 TYPE REF TO zif_lnt_registry.
        CLEAR t175.
        DATA(t176) = t171.
        t175 = t176->reg.
        t174 = NEW zcl_lnt_ddic( i_reg_f149 = t175 ).
        t170 = t174.
        t169 = t170.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t177.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        DATA(t179) = abap_true.
        IF t179 = abap_true.
          DATA(t180) = t20.
          DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t181->has = abap_true.
          t181->value = t180.
          t178 = t181.
        ELSE.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          t178 = t182.
        ENDIF.
        t177 = t178.
        DATA(t183) = VALUE abap_bool( ).
        DATA(t184) = VALUE abap_bool( ).
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t185.
        DATA(t186) = t177.
        t185 = t186.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t187.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        t187 = t188.
        DATA(t189) = VALUE abap_bool( ).
        DATA(t190) = t185.
        IF t190 IS INITIAL.
          t189 = abap_true.
        ELSEIF t190->has = abap_false.
          t189 = abap_true.
        ENDIF.
        t184 = t189.
        IF t184 = abap_true.
          DATA(t191) = abap_true.
          t183 = t191.
        ELSE.
          DATA(t192) = VALUE abap_bool( ).
          DATA t193 TYPE REF TO zif_lnt_registry.
          CLEAR t193.
          DATA(t194) = t169.
          t193 = t194->reg.
          DATA(t195) = VALUE string( ).
          DATA(t196) = t177.
          t195 = t196->value.
          t192 = t193->in_error_namespace( i_name = t195 ).
          t183 = t192.
        ENDIF.
        t168 = t183.
        DATA(t197) = abap_false.
        t167 = xsdbool( t168 = t197 ).
        IF t167 = abap_true.
          DATA t198 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t198.
          DATA(t199) = t2.
          t198 = t199->scope.
          DATA t200 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t200.
          DATA(t201) = abap_true.
          IF t201 = abap_true.
            DATA(t202) = t16.
            t200 = t202.
          ELSE.
            DATA t203 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t203.
            t200 = t203.
          ENDIF.
          DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t204.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t205.
          DATA(t206) = |Object (Void)|.
          CLEAR t205.
          CREATE OBJECT t205.
          t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t205->sval = t206.
          DATA(t207) = VALUE string( ).
          DATA(t208) = t2.
          t207 = t208->filename.
          DATA t209 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t209.
          DATA(t210) = abap_true.
          IF t210 = abap_true.
            DATA t211 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t211.
            DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t212.
            DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t213.
            DATA(t214) = abap_true.
            IF t214 = abap_true.
              DATA(t215) = t20.
              DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t216->has = abap_true.
              t216->value = t215.
              t213 = t216.
            ELSE.
              DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t217.
              t213 = t217.
            ENDIF.
            t212 = t213.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t218.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t219.
            DATA(t220) = abap_true.
            IF t220 = abap_true.
              DATA(t221) = |CLAS|.
              DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t222->has = abap_true.
              t222->value = t221.
              t219 = t222.
            ELSE.
              DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t223.
              t219 = t223.
            ENDIF.
            t218 = t219.
            DATA t224 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t224.
            DATA t225 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t225.
            t224 = t225.
            t211 = NEW zcl_lnt_ireference_extras( i_oo_name = t212 i_oo_type = t218 i_found_qualified = t224 ).
            CREATE OBJECT t211->zlnt_view_ownkeys_b0e8086400eb.
            t211->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t226.
            IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t226 ).
            ENDIF.
            DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t227.
            IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t227 ).
            ENDIF.
            CREATE OBJECT t211->zlnt_json_ownkeys_70e5fd461788.
            t211->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t228) = |ooName|.
            DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t229.
            IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
            ENDIF.
            DATA(t230) = |ooType|.
            DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t231.
            IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
            ENDIF.
            t209 = t211.
          ELSE.
            DATA t232 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t232.
            t209 = t232.
          ENDIF.
          t198->add_reference( i_usage = t200 i_referencing = t204 i_type_9913 = t205 i_filename = t207 i_extra = t209 ).
        ELSE.
          DATA(t233) = VALUE string( ).
          DATA(t234) = VALUE string( ).
          DATA(t235) = VALUE string( ).
          DATA(t236) = |TYPE "|.
          DATA(t237) = t20.
          DATA(t238) = strlen( t236 ).
          t235 = |{ t236 }{ t237 }|.
          DATA(t239) = |" not found|.
          DATA(t240) = strlen( t235 ).
          t234 = |{ t235 }{ t239 }|.
          t233 = t234.
          DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t241.
          DATA(t242) = t2.
          t241 = t242->issues.
          DATA t243 TYPE REF TO zcl_lnt_issue.
          CLEAR t243.
          DATA(t244) = t2.
          DATA t245 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t245.
          DATA(t246) = t1.
          t245 = t246->get_first_token( ).
          DATA(t247) = t233.
          DATA t248 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t248.
          t243 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t244 i_token = t245 i_message_26cb = t247 i_fix = t248 ).
          t241->load( ).
          APPEND t243 TO t241->items.
          t241->save( ).
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t249.
    DATA(t250) = t1.
    DATA(t251) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t249 = t250->find_direct_expressions( i_type_9913 = t251 ).
    DATA t252 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t252.
    DATA t253 TYPE REF TO object.
    CLEAR t253.
    DATA(t254) = VALUE i( ).
    DO.
      t249->load( ).
      IF t254 >= lines( t249->items ).
        EXIT.
      ENDIF.
      CLEAR t253.
      READ TABLE t249->items INDEX t254 + 1 INTO t253.
      t254 = t254 + 1.
      DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t255.
      CLEAR t252.
      IF t253 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t255 ?= t253.
        DATA t256 TYPE REF TO object.
        CLEAR t256.
        t256 = t255->as_ref( ).
        t252 ?= t256.
      ELSE.
        t252 ?= t253.
      ENDIF.
      DATA t257 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t257.
      DATA t258 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t258.
      DATA(t259) = abap_true.
      IF t259 = abap_true.
        DATA(t260) = t252.
        t258 = t260.
      ELSE.
        DATA t261 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t261.
        t258 = t261.
      ENDIF.
      DATA(t262) = t2.
      DATA t263 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t263.
      DATA t264 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t264.
      DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t265.
      DATA t266 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t266.
      t257 = zcl_lnt_sy_source=>run_syntax( i_node = t258 i_input_967e = t262 i_target_type = t263 i_write_reference = t264 i_allow_generic_deference = t265 i_read_reference = t266 ).
    ENDDO.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t269.
    DATA t270 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t270.
    DATA t271 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t271.
    DATA(t272) = t1.
    DATA(t273) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
    t271 = t272->find_direct_expression( i_type_9913 = t273 ).
    t270 = t271.
    DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t274.
    DATA(t275) = VALUE abap_bool( ).
    DATA(t276) = t270.
    IF t276 IS INITIAL.
      t275 = abap_true.
    ENDIF.
    IF t275 = abap_true.
      DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t277.
      t274 = t277.
    ELSE.
      DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t278.
      DATA t279 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t279.
      DATA(t280) = t270.
      t279 = t280.
      DATA(t281) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t278 = t279->find_all_expressions( i_type_9913 = t281 ).
      t274 = t278.
    ENDIF.
    t269 = t274.
    t268 = t269.
    DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t282.
    DATA(t283) = VALUE abap_bool( ).
    DATA(t284) = t268.
    t283 = xsdbool( t284 IS BOUND ).
    IF t283 = abap_true.
      DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t285.
      DATA(t286) = t268.
      t285 = t286.
      t282 = t285.
    ELSE.
      DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t287.
      CREATE OBJECT t287.
      t282 = t287.
    ENDIF.
    t267 = t282.
    DATA t288 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t288.
    DATA t289 TYPE REF TO object.
    CLEAR t289.
    DATA(t290) = VALUE i( ).
    DO.
      t267->load( ).
      IF t290 >= lines( t267->items ).
        EXIT.
      ENDIF.
      CLEAR t289.
      READ TABLE t267->items INDEX t290 + 1 INTO t289.
      t290 = t290 + 1.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      CLEAR t288.
      IF t289 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t291 ?= t289.
        DATA t292 TYPE REF TO object.
        CLEAR t292.
        t292 = t291->as_ref( ).
        t288 ?= t292.
      ELSE.
        t288 ?= t289.
      ENDIF.
      DATA t293 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t293.
      DATA(t294) = t288.
      DATA(t295) = t2.
      t293 = zcl_lnt_sy_target=>run_syntax( i_node = t294 i_input_967e = t295 ).
    ENDDO.
    DATA t296 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t296.
    DATA t297 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t297.
    DATA(t298) = t1.
    DATA(t299) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    t297 = t298->find_direct_expression( i_type_9913 = t299 ).
    t296 = t297.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    t300 = t301.
    DATA(t302) = VALUE abap_bool( ).
    DATA(t303) = t296.
    t302 = xsdbool( t303 IS BOUND ).
    IF t302 = abap_true.
      DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t304.
      DATA(t305) = abap_true.
      IF t305 = abap_true.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        DATA t307 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t307.
        DATA t308 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t308.
        DATA(t309) = t296.
        t308 = t309.
        DATA(t310) = t2.
        t307 = zcl_lnt_sy_target=>run_syntax( i_node = t308 i_input_967e = t310 ).
        CLEAR t306.
        IF t307 IS BOUND.
          CLEAR t306.
          IF t307 IS BOUND.
            DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t311.
            DATA t312 TYPE REF TO object.
            CLEAR t312.
            CLEAR t311.
            t312 = t307.
            TRY.
                t306 ?= t312.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t306 IS NOT BOUND.
              TRY.
                  t311 ?= t307.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t311 IS BOUND.
                t306 = t311->source( ).
              ENDIF.
              IF t306 IS NOT BOUND.
                CREATE OBJECT t306.
                t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t306->oval = t307.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        t304 = t306.
      ELSE.
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        t304 = t313.
      ENDIF.
      t300 = t304.
      DATA(t314) = VALUE abap_bool( ).
      DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t315.
      DATA(t316) = t300.
      t315 = t316.
      DATA(t317) = VALUE abap_bool( ).
      DATA(t318) = VALUE abap_bool( ).
      DATA(t319) = VALUE abap_bool( ).
      DATA(t320) = t315.
      IF t320 IS INITIAL.
        t319 = abap_true.
      ENDIF.
      t318 = xsdbool( t319 = abap_false ).
      t317 = t318.
      IF t318 = abap_true.
        DATA(t321) = VALUE abap_bool( ).
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t322.
        DATA(t323) = t315.
        t322 = t323.
        IF t322 IS BOUND AND t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t321 = xsdbool( t322->oval IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        t317 = t321.
      ENDIF.
      t314 = t317.
      IF t314 = abap_true.
      ELSE.
        DATA(t324) = VALUE abap_bool( ).
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t325.
        DATA(t326) = t300.
        t325 = t326.
        DATA(t327) = VALUE abap_bool( ).
        DATA(t328) = VALUE abap_bool( ).
        DATA(t329) = VALUE abap_bool( ).
        DATA(t330) = t325.
        IF t330 IS INITIAL.
          t329 = abap_true.
        ENDIF.
        t328 = xsdbool( t329 = abap_false ).
        t327 = t328.
        IF t328 = abap_true.
          DATA(t331) = VALUE abap_bool( ).
          DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t332.
          DATA(t333) = t325.
          t332 = t333.
          IF t332 IS BOUND AND t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t331 = xsdbool( t332->oval IS INSTANCE OF zcl_lnt_unknown_type ).
          ENDIF.
          t327 = t331.
        ENDIF.
        t324 = t327.
        IF t324 = abap_true.
          DATA(t334) = VALUE string( ).
          DATA(t335) = VALUE string( ).
          DATA(t336) = |Target type unknown, |.
          DATA(t337) = VALUE string( ).
          DATA t338 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t338.
          DATA(t339) = t296.
          t338 = t339.
          t337 = t338->concat_tokens( ).
          DATA(t340) = strlen( t336 ).
          t335 = |{ t336 }{ t337 }|.
          t334 = t335.
          DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t341.
          DATA(t342) = t2.
          t341 = t342->issues.
          DATA t343 TYPE REF TO zcl_lnt_issue.
          CLEAR t343.
          DATA(t344) = t2.
          DATA t345 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t345.
          DATA(t346) = t1.
          t345 = t346->get_first_token( ).
          DATA(t347) = t334.
          DATA t348 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t348.
          t343 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t344 i_token = t345 i_message_26cb = t347 i_fix = t348 ).
          t341->load( ).
          APPEND t343 TO t341->items.
          t341->save( ).
          RETURN.
        ELSE.
          DATA(t349) = VALUE abap_bool( ).
          DATA(t350) = VALUE abap_bool( ).
          DATA(t351) = VALUE abap_bool( ).
          DATA(t352) = VALUE abap_bool( ).
          DATA(t353) = VALUE abap_bool( ).
          DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t354.
          DATA(t355) = t300.
          t354 = t355.
          DATA(t356) = VALUE abap_bool( ).
          DATA(t357) = VALUE abap_bool( ).
          DATA(t358) = VALUE abap_bool( ).
          DATA(t359) = t354.
          IF t359 IS INITIAL.
            t358 = abap_true.
          ENDIF.
          t357 = xsdbool( t358 = abap_false ).
          t356 = t357.
          IF t357 = abap_true.
            DATA(t360) = VALUE abap_bool( ).
            DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t361.
            DATA(t362) = t354.
            t361 = t362.
            IF t361 IS BOUND AND t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t360 = xsdbool( t361->oval IS INSTANCE OF zcl_lnt_object_reference_type ).
            ENDIF.
            t356 = t360.
          ENDIF.
          t353 = t356.
          t352 = xsdbool( t353 = abap_false ).
          t351 = t352.
          IF t352 = abap_true.
            DATA(t363) = VALUE abap_bool( ).
            DATA(t364) = VALUE abap_bool( ).
            DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t365.
            DATA(t366) = t300.
            t365 = t366.
            DATA(t367) = VALUE abap_bool( ).
            DATA(t368) = VALUE abap_bool( ).
            DATA(t369) = VALUE abap_bool( ).
            DATA(t370) = t365.
            IF t370 IS INITIAL.
              t369 = abap_true.
            ENDIF.
            t368 = xsdbool( t369 = abap_false ).
            t367 = t368.
            IF t368 = abap_true.
              DATA(t371) = VALUE abap_bool( ).
              DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t372.
              DATA(t373) = t365.
              t372 = t373.
              IF t372 IS BOUND AND t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t371 = xsdbool( t372->oval IS INSTANCE OF zcl_lnt_any_type ).
              ENDIF.
              t367 = t371.
            ENDIF.
            t364 = t367.
            t363 = xsdbool( t364 = abap_false ).
            t351 = t363.
          ENDIF.
          t350 = t351.
          IF t351 = abap_true.
            DATA(t374) = VALUE abap_bool( ).
            DATA(t375) = VALUE abap_bool( ).
            DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t376.
            DATA(t377) = t300.
            t376 = t377.
            DATA(t378) = VALUE abap_bool( ).
            DATA(t379) = VALUE abap_bool( ).
            DATA(t380) = VALUE abap_bool( ).
            DATA(t381) = t376.
            IF t381 IS INITIAL.
              t380 = abap_true.
            ENDIF.
            t379 = xsdbool( t380 = abap_false ).
            t378 = t379.
            IF t379 = abap_true.
              DATA(t382) = VALUE abap_bool( ).
              DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t383.
              DATA(t384) = t376.
              t383 = t384.
              IF t383 IS BOUND AND t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t382 = xsdbool( t383->oval IS INSTANCE OF zcl_lnt_data_type ).
              ENDIF.
              t378 = t382.
            ENDIF.
            t375 = t378.
            t374 = xsdbool( t375 = abap_false ).
            t350 = t374.
          ENDIF.
          t349 = t350.
          IF t350 = abap_true.
            DATA(t385) = VALUE abap_bool( ).
            DATA(t386) = VALUE abap_bool( ).
            DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t387.
            DATA(t388) = t300.
            t387 = t388.
            DATA(t389) = VALUE abap_bool( ).
            DATA(t390) = VALUE abap_bool( ).
            DATA(t391) = VALUE abap_bool( ).
            DATA(t392) = t387.
            IF t392 IS INITIAL.
              t391 = abap_true.
            ENDIF.
            t390 = xsdbool( t391 = abap_false ).
            t389 = t390.
            IF t390 = abap_true.
              DATA(t393) = VALUE abap_bool( ).
              DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t394.
              DATA(t395) = t387.
              t394 = t395.
              IF t394 IS BOUND AND t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t393 = xsdbool( t394->oval IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
              ENDIF.
              t389 = t393.
            ENDIF.
            t386 = t389.
            t385 = xsdbool( t386 = abap_false ).
            t349 = t385.
          ENDIF.
          IF t349 = abap_true.
            DATA(t396) = VALUE string( ).
            DATA(t397) = VALUE string( ).
            DATA(t398) = |Target must be an object reference, |.
            DATA(t399) = VALUE string( ).
            DATA t400 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t400.
            DATA(t401) = t296.
            t400 = t401.
            t399 = t400->concat_tokens( ).
            DATA(t402) = strlen( t398 ).
            t397 = |{ t398 }{ t399 }|.
            t396 = t397.
            DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t403.
            DATA(t404) = t2.
            t403 = t404->issues.
            DATA t405 TYPE REF TO zcl_lnt_issue.
            CLEAR t405.
            DATA(t406) = t2.
            DATA t407 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t407.
            DATA(t408) = t1.
            t407 = t408->get_first_token( ).
            DATA(t409) = t396.
            DATA t410 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t410.
            t405 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t406 i_token = t407 i_message_26cb = t409 i_fix = t410 ).
            t403->load( ).
            APPEND t405 TO t403->items.
            t403->save( ).
            RETURN.
          ELSE.
            DATA(t411) = VALUE abap_bool( ).
            DATA(t412) = VALUE abap_bool( ).
            DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t413.
            DATA(t414) = t300.
            t413 = t414.
            DATA(t415) = VALUE abap_bool( ).
            DATA(t416) = VALUE abap_bool( ).
            DATA(t417) = VALUE abap_bool( ).
            DATA(t418) = t413.
            IF t418 IS INITIAL.
              t417 = abap_true.
            ENDIF.
            t416 = xsdbool( t417 = abap_false ).
            t415 = t416.
            IF t416 = abap_true.
              DATA(t419) = VALUE abap_bool( ).
              DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t420.
              DATA(t421) = t413.
              t420 = t421.
              IF t420 IS BOUND AND t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t419 = xsdbool( t420->oval IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
              ENDIF.
              t415 = t419.
            ENDIF.
            t412 = t415.
            t411 = t412.
            IF t412 = abap_true.
              DATA(t422) = VALUE abap_bool( ).
              DATA t423 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t423.
              DATA(t424) = t5.
              t423 = t424.
              DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t425.
              DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t426.
              t425 = t426.
              DATA(t427) = VALUE abap_bool( ).
              DATA(t428) = t423.
              IF t428 IS INITIAL.
                t427 = abap_true.
              ENDIF.
              t422 = t427.
              t411 = t422.
            ENDIF.
            IF t411 = abap_true.
              DATA(t429) = VALUE string( ).
              DATA(t430) = |Generic type, cannot be instantiated|.
              t429 = t430.
              DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t431.
              DATA(t432) = t2.
              t431 = t432->issues.
              DATA t433 TYPE REF TO zcl_lnt_issue.
              CLEAR t433.
              DATA(t434) = t2.
              DATA t435 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t435.
              DATA(t436) = t1.
              t435 = t436->get_first_token( ).
              DATA(t437) = t429.
              DATA t438 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t438.
              t433 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t434 i_token = t435 i_message_26cb = t437 i_fix = t438 ).
              t431->load( ).
              APPEND t433 TO t431->items.
              t431->save( ).
              RETURN.
            ELSE.
              DATA(t439) = VALUE abap_bool( ).
              DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t440.
              DATA(t441) = t300.
              t440 = t441.
              DATA(t442) = VALUE abap_bool( ).
              DATA(t443) = VALUE abap_bool( ).
              DATA(t444) = VALUE abap_bool( ).
              DATA(t445) = t440.
              IF t445 IS INITIAL.
                t444 = abap_true.
              ENDIF.
              t443 = xsdbool( t444 = abap_false ).
              t442 = t443.
              IF t443 = abap_true.
                DATA(t446) = VALUE abap_bool( ).
                DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t447.
                DATA(t448) = t440.
                t447 = t448.
                IF t447 IS BOUND AND t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t446 = xsdbool( t447->oval IS INSTANCE OF zcl_lnt_object_reference_type ).
                ENDIF.
                t442 = t446.
              ENDIF.
              t439 = t442.
              IF t439 = abap_true.
                DATA t449 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t449.
                DATA t450 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t450.
                DATA t451 TYPE REF TO zcl_lnt_object_reference_type.
                CLEAR t451.
                DATA t452 TYPE REF TO zcl_lnt_object_reference_type.
                CLEAR t452.
                DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t453.
                DATA(t454) = t300.
                t453 = t454.
                CLEAR t452.
                IF t453 IS BOUND.
                  IF t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    TRY.
                        t452 ?= t453->oval.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                  ENDIF.
                  IF t452 IS NOT BOUND.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                  ENDIF.
                ENDIF.
                t451 = t452.
                DATA t455 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t455.
                DATA(t456) = t451.
                t455 = t456->identifier.
                t450 = t455.
                t449 = t450.
                DATA t457 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t457.
                DATA t458 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t458.
                DATA t459 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t459.
                DATA t460 TYPE REF TO zcl_lnt_current_scope.
                CLEAR t460.
                DATA(t461) = t2.
                t460 = t461->scope.
                t459 = t460.
                DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t462.
                DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t463.
                DATA(t464) = abap_true.
                IF t464 = abap_true.
                  DATA(t465) = VALUE string( ).
                  DATA t466 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t466.
                  DATA(t467) = t449.
                  t466 = t467.
                  DATA(t468) = VALUE string( ).
                  DATA(t469) = VALUE string( ).
                  DATA(t470) = VALUE string( ).
                  DATA t471 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t471.
                  DATA t472 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t472.
                  DATA(t473) = t466.
                  t472 = t473->token.
                  t471 = t472.
                  DATA(t474) = VALUE string( ).
                  DATA(t475) = t471.
                  t474 = t475->str.
                  t470 = t474.
                  t469 = t470.
                  DATA(t476) = VALUE abap_bool( ).
                  DATA(t477) = VALUE string( ).
                  DATA(t478) = t469.
                  DATA(t479) = 0.
                  DATA(t480) = 1.
                  DATA(t481) = strlen( t478 ).
                  IF t479 < 0.
                    t479 = t479 + t481.
                    IF t479 < 0.
                      t479 = 0.
                    ENDIF.
                  ENDIF.
                  IF t479 > t481 OR t480 <= 0.
                    CLEAR t477.
                  ELSE.
                    IF t480 > t481 - t479.
                      t480 = t481 - t479.
                    ENDIF.
                    t477 = t478+t479(t480).
                  ENDIF.
                  DATA(t482) = |!|.
                  t476 = xsdbool( t477 = t482 ).
                  IF t476 = abap_true.
                    DATA(t483) = VALUE string( ).
                    DATA(t484) = VALUE string( ).
                    DATA(t485) = t469.
                    t484 = t485.
                    DATA(t486) = VALUE string( ).
                    DATA(t487) = t484.
                    DATA(t488) = 1.
                    DATA(t489) = VALUE i( ).
                    DATA(t490) = t484.
                    DATA(t491) = strlen( t490 ).
                    t489 = t491.
                    DATA(t492) = strlen( t487 ).
                    IF t488 < 0.
                      t488 = t488 + t492.
                      IF t488 < 0.
                        t488 = 0.
                      ENDIF.
                    ENDIF.
                    IF t488 > t492 OR t489 <= 0.
                      CLEAR t486.
                    ELSE.
                      IF t489 > t492 - t488.
                        t489 = t492 - t488.
                      ENDIF.
                      t486 = t487+t488(t489).
                    ENDIF.
                    t483 = t486.
                    t469 = t483.
                  ENDIF.
                  DATA(t493) = t469.
                  t468 = t493.
                  t465 = t468.
                  DATA(t494) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t494->has = abap_true.
                  t494->value = t465.
                  t463 = t494.
                ELSE.
                  DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t495.
                  t463 = t495.
                ENDIF.
                t462 = t463.
                DATA t496 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t496.
                DATA(t497) = VALUE abap_bool( ).
                DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t498.
                DATA(t499) = t462.
                t498 = t499.
                DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t500.
                DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t501.
                t500 = t501.
                DATA(t502) = VALUE abap_bool( ).
                DATA(t503) = t498.
                IF t503 IS INITIAL.
                  t502 = abap_true.
                ELSEIF t503->has = abap_false.
                  t502 = abap_true.
                ENDIF.
                t497 = t502.
                IF t497 = abap_true.
                  DATA t504 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t504.
                  t496 = t504.
                ELSE.
                  DATA t505 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t505.
                  DATA t506 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t506.
                  DATA t507 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t507.
                  DATA t508 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t508.
                  DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t509.
                  DATA(t510) = abap_true.
                  IF t510 = abap_true.
                    DATA(t511) = VALUE string( ).
                    DATA(t512) = t462.
                    t511 = t512->value.
                    DATA(t513) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t513->has = abap_true.
                    t513->value = t511.
                    t509 = t513.
                  ELSE.
                    DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t514.
                    t509 = t514.
                  ENDIF.
                  t508 = t509.
                  DATA t515 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t515.
                  DATA(t516) = VALUE abap_bool( ).
                  DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t517.
                  DATA(t518) = t508.
                  t517 = t518.
                  DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t519.
                  DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t520.
                  t519 = t520.
                  DATA(t521) = VALUE abap_bool( ).
                  DATA(t522) = t517.
                  IF t522 IS INITIAL.
                    t521 = abap_true.
                  ELSEIF t522->has = abap_false.
                    t521 = abap_true.
                  ENDIF.
                  t516 = t521.
                  IF t516 = abap_true.
                    DATA t523 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t523.
                    t515 = t523.
                  ELSE.
                    DATA t524 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t524.
                    DATA t525 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t525.
                    DATA t526 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t526.
                    DATA t527 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    CLEAR t527.
                    DATA t528 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    CLEAR t528.
                    DATA(t529) = t459.
                    t528 = t529->current.
                    t527 = t528.
                    DATA t530 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t530.
                    DATA(t531) = VALUE abap_bool( ).
                    DATA(t532) = t527.
                    IF t532 IS INITIAL.
                      t531 = abap_true.
                    ENDIF.
                    IF t531 = abap_true.
                      DATA t533 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t533.
                      t530 = t533.
                    ELSE.
                      DATA t534 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t534.
                      DATA t535 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      CLEAR t535.
                      DATA(t536) = t527.
                      t535 = t536.
                      DATA(t537) = VALUE string( ).
                      DATA(t538) = t508.
                      t537 = t538->value.
                      t534 = t535->find_class_definition( i_name = t537 ).
                      t530 = t534.
                    ENDIF.
                    t526 = t530.
                    t525 = t526.
                    DATA t539 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t539.
                    DATA(t540) = VALUE abap_bool( ).
                    DATA(t541) = t525.
                    t540 = xsdbool( t541 IS BOUND ).
                    IF t540 = abap_true.
                      DATA t542 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t542.
                      DATA(t543) = abap_true.
                      IF t543 = abap_true.
                        DATA t544 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t544.
                        DATA(t545) = t525.
                        t544 = t545.
                        t542 = t544.
                      ELSE.
                        DATA t546 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t546.
                        t542 = t546.
                      ENDIF.
                      t539 = t542.
                    ELSE.
                      DATA t547 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t547.
                      DATA t548 TYPE REF TO zcl_lnt_class.
                      CLEAR t548.
                      DATA t549 TYPE REF TO zcl_lnt_class.
                      CLEAR t549.
                      DATA t550 TYPE REF TO zif_lnt_object.
                      CLEAR t550.
                      DATA t551 TYPE REF TO zif_lnt_registry.
                      CLEAR t551.
                      DATA(t552) = t459.
                      t551 = t552->reg.
                      DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t553.
                      DATA(t554) = abap_true.
                      IF t554 = abap_true.
                        DATA(t555) = |CLAS|.
                        DATA(t556) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t556->has = abap_true.
                        t556->value = t555.
                        t553 = t556.
                      ELSE.
                        DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t557.
                        t553 = t557.
                      ENDIF.
                      DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t558.
                      DATA(t559) = abap_true.
                      IF t559 = abap_true.
                        DATA(t560) = VALUE string( ).
                        DATA(t561) = t508.
                        t560 = t561->value.
                        DATA(t562) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t562->has = abap_true.
                        t562->value = t560.
                        t558 = t562.
                      ELSE.
                        DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t563.
                        t558 = t563.
                      ENDIF.
                      t550 = t551->get_object( i_type_9913 = t553 i_name = t558 ).
                      DATA t564 TYPE REF TO object.
                      CLEAR t564.
                      t564 = t550.
                      t549 ?= t564.
                      t548 = t549.
                      DATA t565 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t565.
                      DATA(t566) = VALUE abap_bool( ).
                      DATA(t567) = t548.
                      t566 = xsdbool( t567 IS BOUND ).
                      IF t566 = abap_true.
                        DATA t568 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t568.
                        DATA t569 TYPE REF TO zcl_lnt_class.
                        CLEAR t569.
                        DATA(t570) = t548.
                        t569 = t570.
                        t568 = t569->gt_dfn_ins_src_obj_cls_ts_clss( ).
                        t565 = t568.
                      ELSE.
                        DATA t571 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t571.
                        t565 = t571.
                      ENDIF.
                      t547 = t565.
                      t539 = t547.
                    ENDIF.
                    t524 = t539.
                    t515 = t524.
                  ENDIF.
                  t507 = t515.
                  t506 = t507.
                  DATA t572 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t572.
                  DATA(t573) = VALUE abap_bool( ).
                  DATA(t574) = t506.
                  t573 = xsdbool( t574 IS BOUND ).
                  IF t573 = abap_true.
                    DATA t575 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t575.
                    DATA t576 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t576.
                    DATA(t577) = t506.
                    t576 = t577.
                    t575 ?= t576.
                    t572 = t575.
                  ELSE.
                    DATA t578 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t578.
                    DATA t579 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t579.
                    DATA t580 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t580.
                    DATA t581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t581.
                    DATA t582 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t582.
                    DATA(t583) = abap_true.
                    IF t583 = abap_true.
                      DATA(t584) = VALUE string( ).
                      DATA(t585) = t462.
                      t584 = t585->value.
                      DATA(t586) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t586->has = abap_true.
                      t586->value = t584.
                      t582 = t586.
                    ELSE.
                      DATA t587 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t587.
                      t582 = t587.
                    ENDIF.
                    t581 = t582.
                    DATA t588 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t588.
                    DATA(t589) = VALUE abap_bool( ).
                    DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t590.
                    DATA(t591) = t581.
                    t590 = t591.
                    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t592.
                    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t593.
                    t592 = t593.
                    DATA(t594) = VALUE abap_bool( ).
                    DATA(t595) = t590.
                    IF t595 IS INITIAL.
                      t594 = abap_true.
                    ELSEIF t595->has = abap_false.
                      t594 = abap_true.
                    ENDIF.
                    t589 = t594.
                    IF t589 = abap_true.
                      DATA t596 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t596.
                      t588 = t596.
                    ELSE.
                      DATA t597 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t597.
                      DATA t598 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t598.
                      DATA t599 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t599.
                      DATA t600 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      CLEAR t600.
                      DATA t601 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      CLEAR t601.
                      DATA(t602) = t459.
                      t601 = t602->current.
                      t600 = t601.
                      DATA t603 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t603.
                      DATA(t604) = VALUE abap_bool( ).
                      DATA(t605) = t600.
                      IF t605 IS INITIAL.
                        t604 = abap_true.
                      ENDIF.
                      IF t604 = abap_true.
                        DATA t606 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t606.
                        t603 = t606.
                      ELSE.
                        DATA t607 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t607.
                        DATA t608 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        CLEAR t608.
                        DATA(t609) = t600.
                        t608 = t609.
                        DATA(t610) = VALUE string( ).
                        DATA(t611) = t581.
                        t610 = t611->value.
                        t607 = t608->find_interface_definition( i_name = t610 ).
                        t603 = t607.
                      ENDIF.
                      t599 = t603.
                      t598 = t599.
                      DATA t612 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t612.
                      DATA(t613) = VALUE abap_bool( ).
                      DATA(t614) = t598.
                      t613 = xsdbool( t614 IS BOUND ).
                      IF t613 = abap_true.
                        DATA t615 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t615.
                        DATA(t616) = abap_true.
                        IF t616 = abap_true.
                          DATA t617 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t617.
                          DATA(t618) = t598.
                          t617 = t618.
                          t615 = t617.
                        ELSE.
                          DATA t619 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t619.
                          t615 = t619.
                        ENDIF.
                        t612 = t615.
                      ELSE.
                        DATA t620 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t620.
                        DATA t621 TYPE REF TO zcl_lnt_ob_interface.
                        CLEAR t621.
                        DATA t622 TYPE REF TO zcl_lnt_ob_interface.
                        CLEAR t622.
                        DATA t623 TYPE REF TO zif_lnt_object.
                        CLEAR t623.
                        DATA t624 TYPE REF TO zif_lnt_registry.
                        CLEAR t624.
                        DATA(t625) = t459.
                        t624 = t625->reg.
                        DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t626.
                        DATA(t627) = abap_true.
                        IF t627 = abap_true.
                          DATA(t628) = |INTF|.
                          DATA(t629) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t629->has = abap_true.
                          t629->value = t628.
                          t626 = t629.
                        ELSE.
                          DATA t630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t630.
                          t626 = t630.
                        ENDIF.
                        DATA t631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t631.
                        DATA(t632) = abap_true.
                        IF t632 = abap_true.
                          DATA(t633) = VALUE string( ).
                          DATA(t634) = t581.
                          t633 = t634->value.
                          DATA(t635) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t635->has = abap_true.
                          t635->value = t633.
                          t631 = t635.
                        ELSE.
                          DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t636.
                          t631 = t636.
                        ENDIF.
                        t623 = t624->get_object( i_type_9913 = t626 i_name = t631 ).
                        DATA t637 TYPE REF TO object.
                        CLEAR t637.
                        t637 = t623.
                        t622 ?= t637.
                        t621 = t622.
                        DATA t638 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t638.
                        DATA(t639) = VALUE abap_bool( ).
                        DATA(t640) = t621.
                        t639 = xsdbool( t640 IS BOUND ).
                        IF t639 = abap_true.
                          DATA t641 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t641.
                          DATA t642 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t642.
                          DATA t643 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t643.
                          DATA(t644) = t621.
                          t643 = t644.
                          t642 = t643.
                          DATA t645 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t645.
                          DATA(t646) = t642.
                          t645 = t646->def.
                          t641 = t645.
                          t638 = t641.
                        ELSE.
                          DATA t647 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t647.
                          t638 = t647.
                        ENDIF.
                        t620 = t638.
                        t612 = t620.
                      ENDIF.
                      t597 = t612.
                      t588 = t597.
                    ENDIF.
                    t580 = t588.
                    t579 = t580.
                    DATA t648 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t648.
                    DATA(t649) = VALUE abap_bool( ).
                    DATA(t650) = t579.
                    t649 = xsdbool( t650 IS BOUND ).
                    IF t649 = abap_true.
                      DATA t651 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t651.
                      DATA(t652) = abap_true.
                      IF t652 = abap_true.
                        DATA t653 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t653.
                        DATA(t654) = t579.
                        t653 = t654.
                        t651 = t653.
                      ELSE.
                        DATA t655 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t655.
                        t651 = t655.
                      ENDIF.
                      t648 = t651.
                    ELSE.
                      DATA t656 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t656.
                      t648 = t656.
                    ENDIF.
                    t578 = t648.
                    t572 = t578.
                  ENDIF.
                  t505 = t572.
                  t496 = t505.
                ENDIF.
                t458 = t496.
                t457 = t458.
                DATA(t657) = VALUE abap_bool( ).
                DATA(t658) = VALUE abap_bool( ).
                DATA(t659) = t457.
                t658 = xsdbool( t659 IS BOUND AND t659 IS INSTANCE OF zcl_lnt_interface_definition ).
                t657 = t658.
                IF t658 = abap_true.
                  DATA(t660) = VALUE abap_bool( ).
                  DATA t661 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t661.
                  DATA(t662) = t5.
                  t661 = t662.
                  DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t663.
                  DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t664.
                  t663 = t664.
                  DATA(t665) = VALUE abap_bool( ).
                  DATA(t666) = t661.
                  IF t666 IS INITIAL.
                    t665 = abap_true.
                  ENDIF.
                  t660 = t665.
                  t657 = t660.
                ENDIF.
                IF t657 = abap_true.
                  DATA(t667) = VALUE string( ).
                  DATA(t668) = |Interface reference, cannot be instantiated|.
                  t667 = t668.
                  DATA t669 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t669.
                  DATA(t670) = t2.
                  t669 = t670->issues.
                  DATA t671 TYPE REF TO zcl_lnt_issue.
                  CLEAR t671.
                  DATA(t672) = t2.
                  DATA t673 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t673.
                  DATA(t674) = t1.
                  t673 = t674->get_first_token( ).
                  DATA(t675) = t667.
                  DATA t676 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t676.
                  t671 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t672 i_token = t673 i_message_26cb = t675 i_fix = t676 ).
                  t669->load( ).
                  APPEND t671 TO t669->items.
                  t669->save( ).
                  RETURN.
                ELSE.
                  DATA(t677) = VALUE abap_bool( ).
                  DATA(t678) = VALUE abap_bool( ).
                  DATA(t679) = VALUE abap_bool( ).
                  DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t680.
                  DATA(t681) = t300.
                  t680 = t681.
                  DATA(t682) = VALUE abap_bool( ).
                  DATA(t683) = VALUE abap_bool( ).
                  DATA(t684) = VALUE abap_bool( ).
                  DATA(t685) = t680.
                  IF t685 IS INITIAL.
                    t684 = abap_true.
                  ENDIF.
                  t683 = xsdbool( t684 = abap_false ).
                  t682 = t683.
                  IF t683 = abap_true.
                    DATA(t686) = VALUE abap_bool( ).
                    DATA t687 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t687.
                    DATA(t688) = t680.
                    t687 = t688.
                    IF t687 IS BOUND AND t687->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t686 = xsdbool( t687->oval IS INSTANCE OF zcl_lnt_object_reference_type ).
                    ENDIF.
                    t682 = t686.
                  ENDIF.
                  t679 = t682.
                  t678 = t679.
                  IF t679 = abap_true.
                    DATA(t689) = VALUE abap_bool( ).
                    DATA t690 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t690.
                    DATA(t691) = t5.
                    t690 = t691.
                    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t692.
                    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t693.
                    t692 = t693.
                    DATA(t694) = VALUE abap_bool( ).
                    DATA(t695) = t690.
                    IF t695 IS INITIAL.
                      t694 = abap_true.
                    ENDIF.
                    t689 = t694.
                    t678 = t689.
                  ENDIF.
                  t677 = t678.
                  IF t678 = abap_true.
                    DATA(t696) = VALUE abap_bool( ).
                    DATA t697 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t697.
                    DATA t698 TYPE REF TO zcl_lnt_current_scope.
                    CLEAR t698.
                    DATA t699 TYPE REF TO zcl_lnt_current_scope.
                    CLEAR t699.
                    DATA(t700) = t2.
                    t699 = t700->scope.
                    t698 = t699.
                    DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t701.
                    DATA t702 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t702.
                    DATA t703 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t703.
                    DATA t704 TYPE REF TO zcl_lnt_object_reference_type.
                    CLEAR t704.
                    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t705.
                    DATA(t706) = t300.
                    t705 = t706.
                    CLEAR t704.
                    IF t705 IS BOUND.
                      IF t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        TRY.
                            t704 ?= t705->oval.
                          CATCH cx_sy_move_cast_error.
                        ENDTRY.
                      ENDIF.
                      IF t704 IS NOT BOUND.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
                      ENDIF.
                    ENDIF.
                    t703 = t704.
                    DATA t707 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t707.
                    DATA t708 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t708.
                    DATA t709 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t709.
                    DATA(t710) = t703.
                    t709 = t710->data_56cc.
                    t708 = t709.
                    DATA t711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t711.
                    DATA(t712) = VALUE abap_bool( ).
                    DATA(t713) = t708.
                    IF t713 IS INITIAL.
                      t712 = abap_true.
                    ENDIF.
                    IF t712 = abap_true.
                      DATA t714 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t714.
                      t711 = t714.
                    ELSE.
                      DATA t715 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t715.
                      DATA t716 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t716.
                      DATA(t717) = t708.
                      t716 = t717.
                      t715 = t716->zlnt_view_read_sr_c978da49ae47( ).
                      t711 = t715.
                    ENDIF.
                    t707 = t711.
                    t702 = t707.
                    t701 = t702.
                    DATA t718 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t718.
                    DATA(t719) = VALUE abap_bool( ).
                    DATA t720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t720.
                    DATA(t721) = t701.
                    t720 = t721.
                    DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t722.
                    DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t723.
                    t722 = t723.
                    DATA(t724) = VALUE abap_bool( ).
                    DATA(t725) = t720.
                    IF t725 IS INITIAL.
                      t724 = abap_true.
                    ELSEIF t725->has = abap_false.
                      t724 = abap_true.
                    ENDIF.
                    t719 = t724.
                    IF t719 = abap_true.
                      DATA t726 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t726.
                      t718 = t726.
                    ELSE.
                      DATA t727 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t727.
                      DATA t728 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t728.
                      DATA t729 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t729.
                      DATA t730 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      CLEAR t730.
                      DATA t731 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      CLEAR t731.
                      DATA(t732) = t698.
                      t731 = t732->current.
                      t730 = t731.
                      DATA t733 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t733.
                      DATA(t734) = VALUE abap_bool( ).
                      DATA(t735) = t730.
                      IF t735 IS INITIAL.
                        t734 = abap_true.
                      ENDIF.
                      IF t734 = abap_true.
                        DATA t736 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t736.
                        t733 = t736.
                      ELSE.
                        DATA t737 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t737.
                        DATA t738 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        CLEAR t738.
                        DATA(t739) = t730.
                        t738 = t739.
                        DATA(t740) = VALUE string( ).
                        DATA(t741) = t701.
                        t740 = t741->value.
                        t737 = t738->find_interface_definition( i_name = t740 ).
                        t733 = t737.
                      ENDIF.
                      t729 = t733.
                      t728 = t729.
                      DATA t742 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t742.
                      DATA(t743) = VALUE abap_bool( ).
                      DATA(t744) = t728.
                      t743 = xsdbool( t744 IS BOUND ).
                      IF t743 = abap_true.
                        DATA t745 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t745.
                        DATA(t746) = abap_true.
                        IF t746 = abap_true.
                          DATA t747 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t747.
                          DATA(t748) = t728.
                          t747 = t748.
                          t745 = t747.
                        ELSE.
                          DATA t749 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t749.
                          t745 = t749.
                        ENDIF.
                        t742 = t745.
                      ELSE.
                        DATA t750 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t750.
                        DATA t751 TYPE REF TO zcl_lnt_ob_interface.
                        CLEAR t751.
                        DATA t752 TYPE REF TO zcl_lnt_ob_interface.
                        CLEAR t752.
                        DATA t753 TYPE REF TO zif_lnt_object.
                        CLEAR t753.
                        DATA t754 TYPE REF TO zif_lnt_registry.
                        CLEAR t754.
                        DATA(t755) = t698.
                        t754 = t755->reg.
                        DATA t756 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t756.
                        DATA(t757) = abap_true.
                        IF t757 = abap_true.
                          DATA(t758) = |INTF|.
                          DATA(t759) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t759->has = abap_true.
                          t759->value = t758.
                          t756 = t759.
                        ELSE.
                          DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t760.
                          t756 = t760.
                        ENDIF.
                        DATA t761 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t761.
                        DATA(t762) = abap_true.
                        IF t762 = abap_true.
                          DATA(t763) = VALUE string( ).
                          DATA(t764) = t701.
                          t763 = t764->value.
                          DATA(t765) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t765->has = abap_true.
                          t765->value = t763.
                          t761 = t765.
                        ELSE.
                          DATA t766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t766.
                          t761 = t766.
                        ENDIF.
                        t753 = t754->get_object( i_type_9913 = t756 i_name = t761 ).
                        DATA t767 TYPE REF TO object.
                        CLEAR t767.
                        t767 = t753.
                        t752 ?= t767.
                        t751 = t752.
                        DATA t768 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t768.
                        DATA(t769) = VALUE abap_bool( ).
                        DATA(t770) = t751.
                        t769 = xsdbool( t770 IS BOUND ).
                        IF t769 = abap_true.
                          DATA t771 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t771.
                          DATA t772 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t772.
                          DATA t773 TYPE REF TO zcl_lnt_ob_interface.
                          CLEAR t773.
                          DATA(t774) = t751.
                          t773 = t774.
                          t772 = t773.
                          DATA t775 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t775.
                          DATA(t776) = t772.
                          t775 = t776->def.
                          t771 = t775.
                          t768 = t771.
                        ELSE.
                          DATA t777 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t777.
                          t768 = t777.
                        ENDIF.
                        t750 = t768.
                        t742 = t750.
                      ENDIF.
                      t727 = t742.
                      t718 = t727.
                    ENDIF.
                    t697 = t718.
                    t696 = xsdbool( t697 IS BOUND ).
                    t677 = t696.
                  ENDIF.
                  IF t677 = abap_true.
                    DATA(t778) = VALUE string( ).
                    DATA(t779) = |Interface reference, cannot be instantiated|.
                    t778 = t779.
                    DATA t780 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t780.
                    DATA(t781) = t2.
                    t780 = t781->issues.
                    DATA t782 TYPE REF TO zcl_lnt_issue.
                    CLEAR t782.
                    DATA(t783) = t2.
                    DATA t784 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t784.
                    DATA(t785) = t1.
                    t784 = t785->get_first_token( ).
                    DATA(t786) = t778.
                    DATA t787 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t787.
                    t782 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t783 i_token = t784 i_message_26cb = t786 i_fix = t787 ).
                    t780->load( ).
                    APPEND t782 TO t780->items.
                    t780->save( ).
                    RETURN.
                  ELSE.
                    DATA(t788) = VALUE abap_bool( ).
                    DATA(t789) = VALUE abap_bool( ).
                    DATA(t790) = t457.
                    t789 = xsdbool( t790 IS BOUND AND t790 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                    t788 = t789.
                    IF t789 = abap_true.
                      DATA(t791) = VALUE abap_bool( ).
                      DATA t792 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t792.
                      DATA(t793) = t3.
                      t792 = t793.
                      DATA t794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t794.
                      DATA t795 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t795.
                      t794 = t795.
                      DATA(t796) = VALUE abap_bool( ).
                      DATA(t797) = t792.
                      IF t797 IS INITIAL.
                        t796 = abap_true.
                      ENDIF.
                      t791 = t796.
                      t788 = t791.
                    ENDIF.
                    IF t788 = abap_true.
                      DATA t798 TYPE REF TO zcl_lnt_ty_class_definition.
                      CLEAR t798.
                      DATA(t799) = t457.
                      DATA t800 TYPE REF TO object.
                      CLEAR t800.
                      t800 = t799.
                      t798 ?= t800.
                      t3 = t798.
                    ENDIF.
                  ENDIF.
                ENDIF.
                DATA(t801) = VALUE abap_bool( ).
                DATA(t802) = VALUE abap_bool( ).
                DATA(t803) = VALUE abap_bool( ).
                DATA t804 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t804.
                DATA(t805) = t5.
                t804 = t805.
                DATA t806 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t806.
                DATA t807 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t807.
                t806 = t807.
                DATA(t808) = VALUE abap_bool( ).
                DATA(t809) = t804.
                IF t809 IS INITIAL.
                  t808 = abap_true.
                ENDIF.
                t803 = t808.
                t802 = t803.
                IF t803 = abap_true.
                  DATA(t810) = VALUE abap_bool( ).
                  DATA(t811) = t457.
                  t810 = xsdbool( t811 IS BOUND AND t811 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                  t802 = t810.
                ENDIF.
                t801 = t802.
                IF t802 = abap_true.
                  DATA(t812) = VALUE abap_bool( ).
                  DATA(t813) = VALUE abap_bool( ).
                  DATA t814 TYPE REF TO zcl_lnt_ty_class_definition.
                  CLEAR t814.
                  DATA t815 TYPE REF TO zcl_lnt_ty_class_definition.
                  CLEAR t815.
                  DATA(t816) = t457.
                  DATA t817 TYPE REF TO object.
                  CLEAR t817.
                  t817 = t816.
                  t815 ?= t817.
                  t814 = t815.
                  DATA(t818) = VALUE abap_bool( ).
                  DATA(t819) = t814.
                  t818 = t819->abstract.
                  t813 = t818.
                  DATA(t820) = abap_true.
                  t812 = xsdbool( t813 = t820 ).
                  t801 = t812.
                ENDIF.
                IF t801 = abap_true.
                  DATA(t821) = VALUE string( ).
                  DATA(t822) = VALUE string( ).
                  DATA(t823) = VALUE string( ).
                  DATA t824 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t824.
                  DATA(t825) = t449.
                  t824 = t825.
                  DATA(t826) = VALUE string( ).
                  DATA(t827) = VALUE string( ).
                  DATA(t828) = VALUE string( ).
                  DATA t829 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t829.
                  DATA t830 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t830.
                  DATA(t831) = t824.
                  t830 = t831->token.
                  t829 = t830.
                  DATA(t832) = VALUE string( ).
                  DATA(t833) = t829.
                  t832 = t833->str.
                  t828 = t832.
                  t827 = t828.
                  DATA(t834) = VALUE abap_bool( ).
                  DATA(t835) = VALUE string( ).
                  DATA(t836) = t827.
                  DATA(t837) = 0.
                  DATA(t838) = 1.
                  DATA(t839) = strlen( t836 ).
                  IF t837 < 0.
                    t837 = t837 + t839.
                    IF t837 < 0.
                      t837 = 0.
                    ENDIF.
                  ENDIF.
                  IF t837 > t839 OR t838 <= 0.
                    CLEAR t835.
                  ELSE.
                    IF t838 > t839 - t837.
                      t838 = t839 - t837.
                    ENDIF.
                    t835 = t836+t837(t838).
                  ENDIF.
                  DATA(t840) = |!|.
                  t834 = xsdbool( t835 = t840 ).
                  IF t834 = abap_true.
                    DATA(t841) = VALUE string( ).
                    DATA(t842) = VALUE string( ).
                    DATA(t843) = t827.
                    t842 = t843.
                    DATA(t844) = VALUE string( ).
                    DATA(t845) = t842.
                    DATA(t846) = 1.
                    DATA(t847) = VALUE i( ).
                    DATA(t848) = t842.
                    DATA(t849) = strlen( t848 ).
                    t847 = t849.
                    DATA(t850) = strlen( t845 ).
                    IF t846 < 0.
                      t846 = t846 + t850.
                      IF t846 < 0.
                        t846 = 0.
                      ENDIF.
                    ENDIF.
                    IF t846 > t850 OR t847 <= 0.
                      CLEAR t844.
                    ELSE.
                      IF t847 > t850 - t846.
                        t847 = t850 - t846.
                      ENDIF.
                      t844 = t845+t846(t847).
                    ENDIF.
                    t841 = t844.
                    t827 = t841.
                  ENDIF.
                  DATA(t851) = t827.
                  t826 = t851.
                  t823 = t826.
                  DATA(t852) = | is abstract, cannot be instantiated|.
                  DATA(t853) = strlen( t823 ).
                  t822 = |{ t823 }{ t852 }|.
                  t821 = t822.
                  DATA t854 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t854.
                  DATA(t855) = t2.
                  t854 = t855->issues.
                  DATA t856 TYPE REF TO zcl_lnt_issue.
                  CLEAR t856.
                  DATA(t857) = t2.
                  DATA t858 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t858.
                  DATA(t859) = t1.
                  t858 = t859->get_first_token( ).
                  DATA(t860) = t821.
                  DATA t861 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t861.
                  t856 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t857 i_token = t858 i_message_26cb = t860 i_fix = t861 ).
                  t854->load( ).
                  APPEND t856 TO t854->items.
                  t854->save( ).
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t862) = VALUE abap_bool( ).
      DATA(t863) = VALUE abap_bool( ).
      DATA t864 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t864.
      DATA(t865) = t300.
      t864 = t865.
      DATA(t866) = VALUE abap_bool( ).
      DATA(t867) = VALUE abap_bool( ).
      DATA(t868) = VALUE abap_bool( ).
      DATA(t869) = t864.
      IF t869 IS INITIAL.
        t868 = abap_true.
      ENDIF.
      t867 = xsdbool( t868 = abap_false ).
      t866 = t867.
      IF t867 = abap_true.
        DATA(t870) = VALUE abap_bool( ).
        DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t871.
        DATA(t872) = t864.
        t871 = t872.
        IF t871 IS BOUND AND t871->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t870 = xsdbool( t871->oval IS INSTANCE OF zcl_lnt_object_reference_type ).
        ENDIF.
        t866 = t870.
      ENDIF.
      t863 = t866.
      t862 = t863.
      IF t863 = abap_true.
        DATA(t873) = VALUE abap_bool( ).
        DATA t874 TYPE REF TO zif_lnt_class_definition.
        CLEAR t874.
        DATA(t875) = t3.
        t874 = t875.
        DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t876.
        DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t877.
        t876 = t877.
        DATA(t878) = VALUE abap_bool( ).
        DATA(t879) = t874.
        IF t879 IS INITIAL.
          t878 = abap_true.
        ENDIF.
        t873 = t878.
        t862 = t873.
      ENDIF.
      IF t862 = abap_true.
        DATA t880 TYPE REF TO zif_lnt_class_definition.
        CLEAR t880.
        DATA t881 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t881.
        DATA t882 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t882.
        DATA(t883) = t2.
        t882 = t883->scope.
        t881 = t882.
        DATA t884 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t884.
        DATA t885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t885.
        DATA t886 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t886.
        DATA t887 TYPE REF TO zcl_lnt_object_reference_type.
        CLEAR t887.
        DATA t888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t888.
        DATA(t889) = t300.
        t888 = t889.
        CLEAR t887.
        IF t888 IS BOUND.
          IF t888->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t887 ?= t888->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t887 IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
          ENDIF.
        ENDIF.
        t886 = t887.
        DATA t890 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t890.
        DATA t891 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t891.
        DATA t892 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t892.
        DATA(t893) = t886.
        t892 = t893->data_56cc.
        t891 = t892.
        DATA t894 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t894.
        DATA(t895) = VALUE abap_bool( ).
        DATA(t896) = t891.
        IF t896 IS INITIAL.
          t895 = abap_true.
        ENDIF.
        IF t895 = abap_true.
          DATA t897 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t897.
          t894 = t897.
        ELSE.
          DATA t898 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t898.
          DATA t899 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t899.
          DATA(t900) = t891.
          t899 = t900.
          t898 = t899->zlnt_view_read_sr_c978da49ae47( ).
          t894 = t898.
        ENDIF.
        t890 = t894.
        t885 = t890.
        t884 = t885.
        DATA t901 TYPE REF TO zif_lnt_class_definition.
        CLEAR t901.
        DATA(t902) = VALUE abap_bool( ).
        DATA t903 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t903.
        DATA(t904) = t884.
        t903 = t904.
        DATA t905 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t905.
        DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t906.
        t905 = t906.
        DATA(t907) = VALUE abap_bool( ).
        DATA(t908) = t903.
        IF t908 IS INITIAL.
          t907 = abap_true.
        ELSEIF t908->has = abap_false.
          t907 = abap_true.
        ENDIF.
        t902 = t907.
        IF t902 = abap_true.
          DATA t909 TYPE REF TO zif_lnt_class_definition.
          CLEAR t909.
          t901 = t909.
        ELSE.
          DATA t910 TYPE REF TO zif_lnt_class_definition.
          CLEAR t910.
          DATA t911 TYPE REF TO zif_lnt_class_definition.
          CLEAR t911.
          DATA t912 TYPE REF TO zif_lnt_class_definition.
          CLEAR t912.
          DATA t913 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t913.
          DATA t914 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t914.
          DATA(t915) = t881.
          t914 = t915->current.
          t913 = t914.
          DATA t916 TYPE REF TO zif_lnt_class_definition.
          CLEAR t916.
          DATA(t917) = VALUE abap_bool( ).
          DATA(t918) = t913.
          IF t918 IS INITIAL.
            t917 = abap_true.
          ENDIF.
          IF t917 = abap_true.
            DATA t919 TYPE REF TO zif_lnt_class_definition.
            CLEAR t919.
            t916 = t919.
          ELSE.
            DATA t920 TYPE REF TO zif_lnt_class_definition.
            CLEAR t920.
            DATA t921 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t921.
            DATA(t922) = t913.
            t921 = t922.
            DATA(t923) = VALUE string( ).
            DATA(t924) = t884.
            t923 = t924->value.
            t920 = t921->find_class_definition( i_name = t923 ).
            t916 = t920.
          ENDIF.
          t912 = t916.
          t911 = t912.
          DATA t925 TYPE REF TO zif_lnt_class_definition.
          CLEAR t925.
          DATA(t926) = VALUE abap_bool( ).
          DATA(t927) = t911.
          t926 = xsdbool( t927 IS BOUND ).
          IF t926 = abap_true.
            DATA t928 TYPE REF TO zif_lnt_class_definition.
            CLEAR t928.
            DATA(t929) = abap_true.
            IF t929 = abap_true.
              DATA t930 TYPE REF TO zif_lnt_class_definition.
              CLEAR t930.
              DATA(t931) = t911.
              t930 = t931.
              t928 = t930.
            ELSE.
              DATA t932 TYPE REF TO zif_lnt_class_definition.
              CLEAR t932.
              t928 = t932.
            ENDIF.
            t925 = t928.
          ELSE.
            DATA t933 TYPE REF TO zif_lnt_class_definition.
            CLEAR t933.
            DATA t934 TYPE REF TO zcl_lnt_class.
            CLEAR t934.
            DATA t935 TYPE REF TO zcl_lnt_class.
            CLEAR t935.
            DATA t936 TYPE REF TO zif_lnt_object.
            CLEAR t936.
            DATA t937 TYPE REF TO zif_lnt_registry.
            CLEAR t937.
            DATA(t938) = t881.
            t937 = t938->reg.
            DATA t939 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t939.
            DATA(t940) = abap_true.
            IF t940 = abap_true.
              DATA(t941) = |CLAS|.
              DATA(t942) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t942->has = abap_true.
              t942->value = t941.
              t939 = t942.
            ELSE.
              DATA t943 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t943.
              t939 = t943.
            ENDIF.
            DATA t944 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t944.
            DATA(t945) = abap_true.
            IF t945 = abap_true.
              DATA(t946) = VALUE string( ).
              DATA(t947) = t884.
              t946 = t947->value.
              DATA(t948) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t948->has = abap_true.
              t948->value = t946.
              t944 = t948.
            ELSE.
              DATA t949 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t949.
              t944 = t949.
            ENDIF.
            t936 = t937->get_object( i_type_9913 = t939 i_name = t944 ).
            DATA t950 TYPE REF TO object.
            CLEAR t950.
            t950 = t936.
            t935 ?= t950.
            t934 = t935.
            DATA t951 TYPE REF TO zif_lnt_class_definition.
            CLEAR t951.
            DATA(t952) = VALUE abap_bool( ).
            DATA(t953) = t934.
            t952 = xsdbool( t953 IS BOUND ).
            IF t952 = abap_true.
              DATA t954 TYPE REF TO zif_lnt_class_definition.
              CLEAR t954.
              DATA t955 TYPE REF TO zcl_lnt_class.
              CLEAR t955.
              DATA(t956) = t934.
              t955 = t956.
              t954 = t955->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t951 = t954.
            ELSE.
              DATA t957 TYPE REF TO zif_lnt_class_definition.
              CLEAR t957.
              t951 = t957.
            ENDIF.
            t933 = t951.
            t925 = t933.
          ENDIF.
          t910 = t925.
          t901 = t910.
        ENDIF.
        t880 = t901.
        t3 = t880.
      ENDIF.
    ENDIF.
    DATA t958 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t958.
    DATA(t959) = t1.
    DATA(t960) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t958 = t959->find_direct_expressions( i_type_9913 = t960 ).
    DATA t961 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t961.
    DATA t962 TYPE REF TO object.
    CLEAR t962.
    DATA(t963) = VALUE i( ).
    DO.
      t958->load( ).
      IF t963 >= lines( t958->items ).
        EXIT.
      ENDIF.
      CLEAR t962.
      READ TABLE t958->items INDEX t963 + 1 INTO t962.
      t963 = t963 + 1.
      DATA t964 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t964.
      CLEAR t961.
      IF t962 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t964 ?= t962.
        DATA t965 TYPE REF TO object.
        CLEAR t965.
        t965 = t964->as_ref( ).
        t961 ?= t965.
      ELSE.
        t961 ?= t962.
      ENDIF.
      DATA(t966) = t961.
      DATA(t967) = t2.
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t966 i_input_967e = t967 ).
    ENDDO.
    DATA t968 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t968.
    DATA t969 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t969.
    DATA t970 TYPE REF TO zif_lnt_class_definition.
    CLEAR t970.
    DATA(t971) = t3.
    t970 = t971.
    DATA t972 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t972.
    DATA(t973) = VALUE abap_bool( ).
    DATA(t974) = t970.
    IF t974 IS INITIAL.
      t973 = abap_true.
    ENDIF.
    IF t973 = abap_true.
      DATA t975 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t975.
      t972 = t975.
    ELSE.
      DATA(t976) = VALUE string( ).
      DATA t977 TYPE REF TO zif_lnt_class_definition.
      CLEAR t977.
      DATA(t978) = t970.
      t977 = t978.
      t976 = t977->get_name( ).
      DATA(t979) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t979->has = abap_true.
      t979->value = t976.
      t972 = t979.
    ENDIF.
    t969 = t972.
    t968 = t969.
    DATA(t980) = VALUE abap_bool( ).
    DATA(t981) = VALUE abap_bool( ).
    DATA t982 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t982.
    DATA(t983) = t968.
    t982 = t983.
    DATA t984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t984.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t985.
    t984 = t985.
    DATA(t986) = VALUE abap_bool( ).
    DATA(t987) = t982.
    IF t987 IS INITIAL.
      t986 = abap_true.
    ELSEIF t987->has = abap_false.
      t986 = abap_true.
    ENDIF.
    t981 = t986.
    t980 = t981.
    IF t981 = abap_true.
      DATA(t988) = VALUE abap_bool( ).
      DATA t989 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t989.
      DATA(t990) = t300.
      t989 = t990.
      DATA(t991) = VALUE abap_bool( ).
      DATA(t992) = VALUE abap_bool( ).
      DATA(t993) = VALUE abap_bool( ).
      DATA(t994) = t989.
      IF t994 IS INITIAL.
        t993 = abap_true.
      ENDIF.
      t992 = xsdbool( t993 = abap_false ).
      t991 = t992.
      IF t992 = abap_true.
        DATA(t995) = VALUE abap_bool( ).
        DATA t996 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t996.
        DATA(t997) = t989.
        t996 = t997.
        IF t996 IS BOUND AND t996->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t995 = xsdbool( t996->oval IS INSTANCE OF zcl_lnt_void_type ).
        ENDIF.
        t991 = t995.
      ENDIF.
      t988 = t991.
      t980 = t988.
    ENDIF.
    IF t980 = abap_true.
      DATA t998 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t998.
      DATA t999 TYPE REF TO zcl_lnt_void_type.
      CLEAR t999.
      DATA t1000 TYPE REF TO zcl_lnt_void_type.
      CLEAR t1000.
      DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1001.
      DATA(t1002) = t300.
      t1001 = t1002.
      CLEAR t1000.
      IF t1001 IS BOUND.
        IF t1001->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t1000 ?= t1001->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t1000 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
        ENDIF.
      ENDIF.
      t999 = t1000.
      DATA t1003 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1003.
      DATA(t1004) = t999.
      t1003 = t1004->voided.
      t998 = t1003.
      t968 = t998.
    ENDIF.
    DATA t1005 TYPE REF TO zif_lnt_class_definition.
    CLEAR t1005.
    DATA(t1006) = t3.
    t1005 = t1006.
    DATA t1007 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t1007.
    DATA(t1008) = t2.
    t1007 = t1008->scope.
    DATA t1009 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t1009.
    DATA t1010 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t1010.
    DATA(t1011) = t296.
    t1010 = t1011.
    DATA t1012 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t1012.
    DATA(t1013) = VALUE abap_bool( ).
    DATA(t1014) = t1010.
    IF t1014 IS INITIAL.
      t1013 = abap_true.
    ENDIF.
    IF t1013 = abap_true.
      DATA t1015 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t1015.
      t1012 = t1015.
    ELSE.
      DATA t1016 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t1016.
      DATA t1017 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t1017.
      DATA(t1018) = t1010.
      t1017 = t1018.
      t1016 = t1017->get_first_token( ).
      t1012 = t1016.
    ENDIF.
    t1009 = t1012.
    DATA t1019 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t1019.
    DATA(t1020) = VALUE abap_bool( ).
    DATA(t1021) = t1005.
    IF t1021 IS INITIAL.
      t1020 = abap_true.
    ENDIF.
    IF t1020 = abap_true.
      DATA t1022 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t1022.
      t1019 = t1022.
    ELSE.
      DATA t1023 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t1023.
      DATA t1024 TYPE REF TO zif_lnt_class_definition.
      CLEAR t1024.
      DATA(t1025) = t1005.
      t1024 = t1025.
      t1023 ?= t1024.
      t1019 = t1023.
    ENDIF.
    DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1026.
    DATA(t1027) = |Constructor Reference|.
    CLEAR t1026.
    CREATE OBJECT t1026.
    t1026->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1026->sval = t1027.
    DATA(t1028) = VALUE string( ).
    DATA(t1029) = t2.
    t1028 = t1029->filename.
    DATA t1030 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t1030.
    DATA(t1031) = abap_true.
    IF t1031 = abap_true.
      DATA t1032 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t1032.
      DATA t1033 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1033.
      DATA(t1034) = t968.
      t1033 = t1034.
      DATA t1035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1035.
      DATA t1036 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1036.
      t1035 = t1036.
      DATA t1037 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1037.
      DATA t1038 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1038.
      t1037 = t1038.
      t1032 = NEW zcl_lnt_ireference_extras( i_oo_name = t1033 i_oo_type = t1035 i_found_qualified = t1037 ).
      CREATE OBJECT t1032->zlnt_view_ownkeys_b0e8086400eb.
      t1032->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1039.
      IF t1032->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1032->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t1039 ).
      ENDIF.
      CREATE OBJECT t1032->zlnt_json_ownkeys_70e5fd461788.
      t1032->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1040) = |ooName|.
      DATA t1041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1041.
      IF t1032->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1032->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1040 p1 = t1041 ).
      ENDIF.
      t1030 = t1032.
    ELSE.
      DATA t1042 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t1042.
      t1030 = t1042.
    ENDIF.
    t1007->add_reference( i_usage = t1009 i_referencing = t1019 i_type_9913 = t1026 i_filename = t1028 i_extra = t1030 ).
    DATA(t1043) = VALUE abap_bool( ).
    DATA t1044 TYPE REF TO zif_lnt_class_definition.
    CLEAR t1044.
    DATA(t1045) = t3.
    t1044 = t1045.
    DATA t1046 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1046.
    DATA t1047 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1047.
    t1046 = t1047.
    DATA(t1048) = VALUE abap_bool( ).
    DATA(t1049) = VALUE abap_bool( ).
    DATA(t1050) = t1044.
    IF t1050 IS INITIAL.
      t1049 = abap_true.
    ENDIF.
    t1048 = xsdbool( t1049 = abap_false ).
    t1043 = t1048.
    IF t1043 = abap_true.
      DATA t1051 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1051.
      DATA t1052 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1052.
      DATA t1053 TYPE REF TO zif_lnt_class_definition.
      CLEAR t1053.
      DATA(t1054) = t3.
      t1053 = t1054.
      DATA(t1055) = t2.
      t1052 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t1053 i_input_967e = t1055 ).
      t1051 = t1052.
      DATA(t1056) = VALUE abap_bool( ).
      DATA(t1057) = t1051.
      IF t1057 IS BOUND.
        IF t1057->has = abap_true.
          t1056 = xsdbool( strlen( t1057->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t1056 = abap_true.
        DATA t1058 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t1058.
        DATA(t1059) = t2.
        t1058 = t1059->issues.
        DATA t1060 TYPE REF TO zcl_lnt_issue.
        CLEAR t1060.
        DATA(t1061) = t2.
        DATA t1062 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t1062.
        DATA(t1063) = t1.
        t1062 = t1063->get_first_token( ).
        DATA(t1064) = VALUE string( ).
        DATA(t1065) = t1051.
        t1064 = t1065->value.
        DATA t1066 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1066.
        t1060 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1061 i_token = t1062 i_message_26cb = t1064 i_fix = t1066 ).
        t1058->load( ).
        APPEND t1060 TO t1058->items.
        t1058->save( ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t1067) = t3.
    DATA(t1068) = t1.
    DATA(t1069) = t2.
    me->validate_parameters( i_cdef = t1067 i_node = t1068 i_input_967e = t1069 ).
  ENDMETHOD.

  METHOD check_instantiation_allowed.
    DATA(t1) = i_cdef.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE f.
    DATA t4 TYPE f.
    DATA(t5) = t1.
    t4 = t5->get_create_visibility( ).
    t3 = t4.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t3.
    DATA(t8) = CONV f( 3 ).
    t6 = xsdbool( t7 = t8 ).
    IF t6 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t12 TYPE REF TO zcl_lnt_current_scope.
    DATA(t13) = t2.
    t12 = t13->scope.
    t11 = t12->get_enclosing_class_name( ).
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = t10.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t15.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ELSEIF t20->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA(t23) = VALUE string( ).
        DATA t24 TYPE string.
        DATA t25 TYPE string.
        DATA(t26) = t1.
        t25 = t26->get_name( ).
        DATA(t27) = | cannot be instantiated, class is defined as |.
        DATA(t28) = strlen( t25 ).
        t24 = |{ t25 }{ t27 }|.
        DATA(t29) = VALUE string( ).
        DATA t30 TYPE abap_bool.
        DATA(t31) = t3.
        DATA(t32) = CONV f( 1 ).
        t30 = xsdbool( t31 = t32 ).
        IF t30 = abap_true.
          DATA(t33) = |private|.
          t29 = t33.
        ELSE.
          DATA(t34) = |protected|.
          t29 = t34.
        ENDIF.
        DATA(t35) = strlen( t24 ).
        t23 = |{ t24 }{ t29 }|.
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t23.
        t21 = t36.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        t21 = t37.
      ENDIF.
      result = t21.
      RETURN.
    ENDIF.
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE string.
    DATA t40 TYPE string.
    DATA(t41) = t10.
    t40 = t41->value.
    DATA(t42) = strlen( t40 ).
    t39 = t40.
    IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t39 TO UPPER CASE.
    ELSE.
      t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
    ENDIF.
    DATA t43 TYPE string.
    DATA t44 TYPE string.
    DATA(t45) = t1.
    t44 = t45->get_name( ).
    DATA(t46) = strlen( t44 ).
    t43 = t44.
    IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t43 TO UPPER CASE.
    ELSE.
      t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
    ENDIF.
    t38 = xsdbool( t39 = t43 ).
    IF t38 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      result = t47.
      RETURN.
    ENDIF.
    DATA t48 TYPE abap_bool.
    DATA t49 TYPE REF TO zcl_lnt_object_oriented.
    DATA t50 TYPE REF TO zcl_lnt_current_scope.
    DATA(t51) = t2.
    t50 = t51->scope.
    t49 = NEW zcl_lnt_object_oriented( i_scope = t50 ).
    DATA(t52) = t1.
    DATA t53 TYPE string.
    DATA(t54) = t10.
    t53 = t54->value.
    t48 = t49->has_friendship( i_cd = t52 i_friend_name = t53 ).
    IF t48 = abap_true.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      result = t55.
      RETURN.
    ENDIF.
    DATA t56 TYPE abap_bool.
    DATA(t57) = t3.
    DATA(t58) = CONV f( 2 ).
    t56 = xsdbool( t57 = t58 ).
    IF t56 = abap_true.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      DATA t61 TYPE REF TO zif_lnt_class_definition.
      CLEAR t61.
      DATA t62 TYPE REF TO zif_lnt_class_definition.
      CLEAR t62.
      DATA t63 TYPE REF TO zcl_lnt_current_scope.
      DATA t64 TYPE REF TO zcl_lnt_current_scope.
      DATA(t65) = t2.
      t64 = t65->scope.
      t63 = t64.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = abap_true.
      IF t68 = abap_true.
        DATA t69 TYPE string.
        DATA(t70) = t10.
        t69 = t70->value.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = t69.
        t67 = t71.
      ELSE.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t67 = t72.
      ENDIF.
      t66 = t67.
      DATA t73 TYPE REF TO zif_lnt_class_definition.
      CLEAR t73.
      DATA(t74) = VALUE abap_bool( ).
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t76) = t66.
      t75 = t76.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      t77 = t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = t75.
      IF t80 IS INITIAL.
        t79 = abap_true.
      ELSEIF t80->has = abap_false.
        t79 = abap_true.
      ENDIF.
      t74 = t79.
      IF t74 = abap_true.
        DATA t81 TYPE REF TO zif_lnt_class_definition.
        CLEAR t81.
        t73 = t81.
      ELSE.
        DATA t82 TYPE REF TO zif_lnt_class_definition.
        CLEAR t82.
        DATA t83 TYPE REF TO zif_lnt_class_definition.
        CLEAR t83.
        DATA t84 TYPE REF TO zif_lnt_class_definition.
        CLEAR t84.
        DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t87) = t63.
        t86 = t87->current.
        t85 = t86.
        DATA t88 TYPE REF TO zif_lnt_class_definition.
        CLEAR t88.
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = t85.
        IF t90 IS INITIAL.
          t89 = abap_true.
        ENDIF.
        IF t89 = abap_true.
          DATA t91 TYPE REF TO zif_lnt_class_definition.
          CLEAR t91.
          t88 = t91.
        ELSE.
          DATA t92 TYPE REF TO zif_lnt_class_definition.
          DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t94) = t85.
          t93 = t94.
          DATA t95 TYPE string.
          DATA(t96) = t66.
          t95 = t96->value.
          t92 = t93->find_class_definition( i_name = t95 ).
          t88 = t92.
        ENDIF.
        t84 = t88.
        t83 = t84.
        DATA t97 TYPE REF TO zif_lnt_class_definition.
        CLEAR t97.
        DATA t98 TYPE abap_bool.
        DATA(t99) = t83.
        t98 = xsdbool( t99 IS BOUND ).
        IF t98 = abap_true.
          DATA t100 TYPE REF TO zif_lnt_class_definition.
          CLEAR t100.
          DATA(t101) = abap_true.
          IF t101 = abap_true.
            DATA t102 TYPE REF TO zif_lnt_class_definition.
            DATA(t103) = t83.
            t102 = t103.
            t100 = t102.
          ELSE.
            DATA t104 TYPE REF TO zif_lnt_class_definition.
            CLEAR t104.
            t100 = t104.
          ENDIF.
          t97 = t100.
        ELSE.
          DATA t105 TYPE REF TO zif_lnt_class_definition.
          CLEAR t105.
          DATA t106 TYPE REF TO zcl_lnt_class.
          CLEAR t106.
          DATA t107 TYPE REF TO zcl_lnt_class.
          CLEAR t107.
          DATA t108 TYPE REF TO zif_lnt_object.
          CLEAR t108.
          DATA t109 TYPE REF TO zif_lnt_registry.
          DATA(t110) = t63.
          t109 = t110->reg.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          DATA(t112) = abap_true.
          IF t112 = abap_true.
            DATA(t113) = |CLAS|.
            DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t114->has = abap_true.
            t114->value = t113.
            t111 = t114.
          ELSE.
            DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t115.
            t111 = t115.
          ENDIF.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA t118 TYPE string.
            DATA(t119) = t66.
            t118 = t119->value.
            DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t120->has = abap_true.
            t120->value = t118.
            t116 = t120.
          ELSE.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t121.
            t116 = t121.
          ENDIF.
          t108 = t109->get_object( i_type_9913 = t111 i_name = t116 ).
          DATA t122 TYPE REF TO object.
          t122 = t108.
          t107 ?= t122.
          t106 = t107.
          DATA t123 TYPE REF TO zif_lnt_class_definition.
          CLEAR t123.
          DATA t124 TYPE abap_bool.
          DATA(t125) = t106.
          t124 = xsdbool( t125 IS BOUND ).
          IF t124 = abap_true.
            DATA t126 TYPE REF TO zif_lnt_class_definition.
            DATA t127 TYPE REF TO zcl_lnt_class.
            DATA(t128) = t106.
            t127 = t128.
            t126 = t127->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t123 = t126.
          ELSE.
            DATA t129 TYPE REF TO zif_lnt_class_definition.
            CLEAR t129.
            t123 = t129.
          ENDIF.
          t105 = t123.
          t97 = t105.
        ENDIF.
        t82 = t97.
        t73 = t82.
      ENDIF.
      t62 = t73.
      t61 = t62.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t130.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = t61.
      IF t132 IS INITIAL.
        t131 = abap_true.
      ENDIF.
      IF t131 = abap_true.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        t130 = t133.
      ELSE.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t135 TYPE REF TO zif_lnt_class_definition.
        DATA(t136) = t61.
        t135 = t136.
        t134 = t135->get_super_class( ).
        t130 = t134.
      ENDIF.
      t60 = t130.
      t59 = t60.
      DO.
        DATA(t137) = VALUE abap_bool( ).
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t139) = t59.
        t138 = t139.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        t140 = t141.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = t138.
        IF t144 IS INITIAL.
          t143 = abap_true.
        ELSEIF t144->has = abap_false.
          t143 = abap_true.
        ENDIF.
        t142 = xsdbool( t143 = abap_false ).
        t137 = t142.
        IF t137 = abap_false.
          EXIT.
        ENDIF.
        DATA(t145) = VALUE abap_bool( ).
        DATA t146 TYPE string.
        DATA t147 TYPE string.
        DATA(t148) = t59.
        t147 = t148->value.
        DATA(t149) = strlen( t147 ).
        t146 = t147.
        IF t146 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t146 TO UPPER CASE.
        ELSE.
          t146 = zlnt_runtime_uppe_91169605024d=>full( t146 ).
        ENDIF.
        DATA t150 TYPE string.
        DATA t151 TYPE string.
        DATA(t152) = t1.
        t151 = t152->get_name( ).
        DATA(t153) = strlen( t151 ).
        t150 = t151.
        IF t150 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t150 TO UPPER CASE.
        ELSE.
          t150 = zlnt_runtime_uppe_91169605024d=>full( t150 ).
        ENDIF.
        t145 = xsdbool( t146 = t150 ).
        IF t145 = abap_true.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          result = t154.
          RETURN.
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA t156 TYPE REF TO zif_lnt_class_definition.
        CLEAR t156.
        DATA t157 TYPE REF TO zif_lnt_class_definition.
        CLEAR t157.
        DATA t158 TYPE REF TO zcl_lnt_current_scope.
        DATA t159 TYPE REF TO zcl_lnt_current_scope.
        DATA(t160) = t2.
        t159 = t160->scope.
        t158 = t159.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        DATA(t163) = abap_true.
        IF t163 = abap_true.
          DATA t164 TYPE string.
          DATA(t165) = t59.
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
        t161 = t162.
        DATA t168 TYPE REF TO zif_lnt_class_definition.
        CLEAR t168.
        DATA(t169) = VALUE abap_bool( ).
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t171) = t161.
        t170 = t171.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        t172 = t173.
        DATA(t174) = VALUE abap_bool( ).
        DATA(t175) = t170.
        IF t175 IS INITIAL.
          t174 = abap_true.
        ELSEIF t175->has = abap_false.
          t174 = abap_true.
        ENDIF.
        t169 = t174.
        IF t169 = abap_true.
          DATA t176 TYPE REF TO zif_lnt_class_definition.
          CLEAR t176.
          t168 = t176.
        ELSE.
          DATA t177 TYPE REF TO zif_lnt_class_definition.
          CLEAR t177.
          DATA t178 TYPE REF TO zif_lnt_class_definition.
          CLEAR t178.
          DATA t179 TYPE REF TO zif_lnt_class_definition.
          CLEAR t179.
          DATA t180 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t181 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t182) = t158.
          t181 = t182->current.
          t180 = t181.
          DATA t183 TYPE REF TO zif_lnt_class_definition.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = t180.
          IF t185 IS INITIAL.
            t184 = abap_true.
          ENDIF.
          IF t184 = abap_true.
            DATA t186 TYPE REF TO zif_lnt_class_definition.
            CLEAR t186.
            t183 = t186.
          ELSE.
            DATA t187 TYPE REF TO zif_lnt_class_definition.
            DATA t188 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t189) = t180.
            t188 = t189.
            DATA t190 TYPE string.
            DATA(t191) = t161.
            t190 = t191->value.
            t187 = t188->find_class_definition( i_name = t190 ).
            t183 = t187.
          ENDIF.
          t179 = t183.
          t178 = t179.
          DATA t192 TYPE REF TO zif_lnt_class_definition.
          CLEAR t192.
          DATA t193 TYPE abap_bool.
          DATA(t194) = t178.
          t193 = xsdbool( t194 IS BOUND ).
          IF t193 = abap_true.
            DATA t195 TYPE REF TO zif_lnt_class_definition.
            CLEAR t195.
            DATA(t196) = abap_true.
            IF t196 = abap_true.
              DATA t197 TYPE REF TO zif_lnt_class_definition.
              DATA(t198) = t178.
              t197 = t198.
              t195 = t197.
            ELSE.
              DATA t199 TYPE REF TO zif_lnt_class_definition.
              CLEAR t199.
              t195 = t199.
            ENDIF.
            t192 = t195.
          ELSE.
            DATA t200 TYPE REF TO zif_lnt_class_definition.
            CLEAR t200.
            DATA t201 TYPE REF TO zcl_lnt_class.
            CLEAR t201.
            DATA t202 TYPE REF TO zcl_lnt_class.
            CLEAR t202.
            DATA t203 TYPE REF TO zif_lnt_object.
            CLEAR t203.
            DATA t204 TYPE REF TO zif_lnt_registry.
            DATA(t205) = t158.
            t204 = t205->reg.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t206.
            DATA(t207) = abap_true.
            IF t207 = abap_true.
              DATA(t208) = |CLAS|.
              DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t209->has = abap_true.
              t209->value = t208.
              t206 = t209.
            ELSE.
              DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t210.
              t206 = t210.
            ENDIF.
            DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t211.
            DATA(t212) = abap_true.
            IF t212 = abap_true.
              DATA t213 TYPE string.
              DATA(t214) = t161.
              t213 = t214->value.
              DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t215->has = abap_true.
              t215->value = t213.
              t211 = t215.
            ELSE.
              DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t216.
              t211 = t216.
            ENDIF.
            t203 = t204->get_object( i_type_9913 = t206 i_name = t211 ).
            DATA t217 TYPE REF TO object.
            t217 = t203.
            t202 ?= t217.
            t201 = t202.
            DATA t218 TYPE REF TO zif_lnt_class_definition.
            CLEAR t218.
            DATA t219 TYPE abap_bool.
            DATA(t220) = t201.
            t219 = xsdbool( t220 IS BOUND ).
            IF t219 = abap_true.
              DATA t221 TYPE REF TO zif_lnt_class_definition.
              DATA t222 TYPE REF TO zcl_lnt_class.
              DATA(t223) = t201.
              t222 = t223.
              t221 = t222->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t218 = t221.
            ELSE.
              DATA t224 TYPE REF TO zif_lnt_class_definition.
              CLEAR t224.
              t218 = t224.
            ENDIF.
            t200 = t218.
            t192 = t200.
          ENDIF.
          t177 = t192.
          t168 = t177.
        ENDIF.
        t157 = t168.
        t156 = t157.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        DATA(t226) = VALUE abap_bool( ).
        DATA(t227) = t156.
        IF t227 IS INITIAL.
          t226 = abap_true.
        ENDIF.
        IF t226 = abap_true.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          t225 = t228.
        ELSE.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t230 TYPE REF TO zif_lnt_class_definition.
          DATA(t231) = t156.
          t230 = t231.
          t229 = t230->get_super_class( ).
          t225 = t229.
        ENDIF.
        t155 = t225.
        t59 = t155.
      ENDDO.
    ENDIF.
    DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t232.
    DATA(t233) = abap_true.
    IF t233 = abap_true.
      DATA(t234) = VALUE string( ).
      DATA t235 TYPE string.
      DATA t236 TYPE string.
      DATA(t237) = t1.
      t236 = t237->get_name( ).
      DATA(t238) = | cannot be instantiated, class is defined as |.
      DATA(t239) = strlen( t236 ).
      t235 = |{ t236 }{ t238 }|.
      DATA(t240) = VALUE string( ).
      DATA t241 TYPE abap_bool.
      DATA(t242) = t3.
      DATA(t243) = CONV f( 1 ).
      t241 = xsdbool( t242 = t243 ).
      IF t241 = abap_true.
        DATA(t244) = |private|.
        t240 = t244.
      ELSE.
        DATA(t245) = |protected|.
        t240 = t245.
      ENDIF.
      DATA(t246) = strlen( t235 ).
      t234 = |{ t235 }{ t240 }|.
      DATA(t247) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t247->has = abap_true.
      t247->value = t234.
      t232 = t247.
    ELSE.
      DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t248.
      t232 = t248.
    ENDIF.
    result = t232.

  ENDMETHOD.

  METHOD validate_parameters.
    DATA(t1) = i_cdef.
    DATA(t2) = i_node.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_class_definition.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    IF t4 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t2.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t14 = t15->find_direct_expression( i_type_9913 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t13.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      IF t18 = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t20.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        DATA(t23) = t13.
        t22 = t23.
        DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t21 = t22->find_all_expressions( i_type_9913 = t24 ).
        t17 = t21.
      ENDIF.
      t12 = t17.
      t11 = t12.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = t11.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t28.
      DATA t29 TYPE abap_bool.
      DATA(t30) = t26.
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t32) = t26.
        t31 = t32.
        t28 = t31.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t33.
        t28 = t33.
      ENDIF.
      t25 = t28.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      DATA(t36) = VALUE i( ).
      DO.
        t25->load( ).
        IF t36 >= lines( t25->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t25->items INDEX t36 + 1 INTO t35.
        t36 = t36 + 1.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t34.
        IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t35.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t39.
        DATA t40 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA(t42) = t34.
          t40 = t42.
        ELSE.
          DATA t43 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t43.
          t40 = t43.
        ENDIF.
        DATA(t44) = t3.
        DATA t45 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t48.
        t39 = zcl_lnt_sy_source=>run_syntax( i_node = t40 i_input_967e = t44 i_target_type = t45 i_write_reference = t46 i_allow_generic_deference = t47 i_read_reference = t48 ).
      ENDDO.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_object_oriented.
    DATA t52 TYPE REF TO zcl_lnt_current_scope.
    DATA(t53) = t3.
    t52 = t53->scope.
    t51 = NEW zcl_lnt_object_oriented( i_scope = t52 ).
    DATA t54 TYPE REF TO zif_lnt_interface_definition.
    DATA t55 TYPE REF TO zif_lnt_class_definition.
    DATA(t56) = t1.
    t55 = t56.
    t54 ?= t55.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t57.
    DATA(t58) = abap_true.
    IF t58 = abap_true.
      DATA(t59) = |CONSTRUCTOR|.
      DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t60->has = abap_true.
      t60->value = t59.
      t57 = t60.
    ELSE.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t61.
      t57 = t61.
    ENDIF.
    t50 = t51->search_method_name( i_def = t54 i_name = t57 ).
    t49 = t50.
    DATA t62 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_method_definition.
    DATA t65 TYPE REF TO zif_lnt_method_definition.
    DATA(t66) = t49.
    t65 = t66->method.
    t64 = t65.
    DATA t67 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t67.
    DATA(t68) = VALUE abap_bool( ).
    DATA(t69) = t64.
    IF t69 IS INITIAL.
      t68 = abap_true.
    ENDIF.
    IF t68 = abap_true.
      DATA t70 TYPE REF TO zif_lnt_method_parameters.
      CLEAR t70.
      t67 = t70.
    ELSE.
      DATA t71 TYPE REF TO zif_lnt_method_parameters.
      DATA(t72) = t64.
      t71 = t72->get_parameters( ).
      t67 = t71.
    ENDIF.
    t63 = t67.
    t62 = t63.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_method_parameters.
    DATA(t78) = t62.
    t77 = t78.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = t77.
    IF t81 IS INITIAL.
      t80 = abap_true.
    ENDIF.
    IF t80 = abap_true.
      DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t82.
      t79 = t82.
    ELSE.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t84 TYPE REF TO zif_lnt_method_parameters.
      DATA(t85) = t77.
      t84 = t85.
      t83 = t84->get_importing( ).
      t79 = t83.
    ENDIF.
    t76 = t79.
    t75 = t76.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    DATA t87 TYPE abap_bool.
    DATA(t88) = t75.
    t87 = xsdbool( t88 IS BOUND ).
    IF t87 = abap_true.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t90) = t75.
      t89 = t90.
      t86 = t89.
    ELSE.
      DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t91.
      t86 = t91.
    ENDIF.
    t74 = t86.
    t73 = t74.
    DATA t92 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_method_parameters.
    DATA(t99) = t62.
    t98 = t99.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    DATA(t101) = VALUE abap_bool( ).
    DATA(t102) = t98.
    IF t102 IS INITIAL.
      t101 = abap_true.
    ENDIF.
    IF t101 = abap_true.
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t103.
      t100 = t103.
    ELSE.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t105 TYPE REF TO zif_lnt_method_parameters.
      DATA(t106) = t98.
      t105 = t106.
      t104 = t105->get_required_parameters( ).
      t100 = t104.
    ENDIF.
    t97 = t100.
    t96 = t97.
    DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t107.
    DATA(t108) = VALUE abap_bool( ).
    DATA(t109) = t96.
    IF t109 IS INITIAL.
      t108 = abap_true.
    ENDIF.
    IF t108 = abap_true.
      DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t110.
      t107 = t110.
    ELSE.
      DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t111.
      DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t113.
      t112 = t113.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t115) = t96.
      t114 = t115.
      DATA t116 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t116.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      DATA(t118) = VALUE i( ).
      DO.
        t114->load( ).
        IF t118 >= lines( t114->items ).
          EXIT.
        ENDIF.
        CLEAR t117.
        READ TABLE t114->items INDEX t118 + 1 INTO t117.
        t118 = t118 + 1.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        CLEAR t116.
        IF t117 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t119 ?= t117.
          DATA t120 TYPE REF TO object.
          t120 = t119->as_ref( ).
          t116 ?= t120.
        ELSE.
          t116 ?= t117.
        ENDIF.
        DATA(t121) = t112.
        DATA(t122) = VALUE string( ).
        DATA(t123) = VALUE string( ).
        DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t125) = t116.
        t124 = t125.
        DATA(t126) = VALUE string( ).
        DATA t127 TYPE string.
        DATA t128 TYPE string.
        DATA t129 TYPE REF TO zcl_lnt_abstract_token.
        DATA t130 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t131) = t124.
        t130 = t131->token.
        t129 = t130.
        DATA t132 TYPE string.
        DATA(t133) = t129.
        t132 = t133->str.
        t128 = t132.
        t127 = t128.
        DATA(t134) = VALUE abap_bool( ).
        DATA(t135) = VALUE string( ).
        DATA(t136) = t127.
        DATA(t137) = 0.
        DATA(t138) = 1.
        DATA(t139) = strlen( t136 ).
        IF t137 < 0.
          t137 = t137 + t139.
          IF t137 < 0.
            t137 = 0.
          ENDIF.
        ENDIF.
        IF t137 > t139 OR t138 <= 0.
          CLEAR t135.
        ELSE.
          IF t138 > t139 - t137.
            t138 = t139 - t137.
          ENDIF.
          t135 = t136+t137(t138).
        ENDIF.
        DATA(t140) = |!|.
        t134 = xsdbool( t135 = t140 ).
        IF t134 = abap_true.
          DATA(t141) = VALUE string( ).
          DATA t142 TYPE string.
          DATA(t143) = t127.
          t142 = t143.
          DATA(t144) = VALUE string( ).
          DATA(t145) = t142.
          DATA(t146) = 1.
          DATA t147 TYPE i.
          DATA(t148) = t142.
          DATA(t149) = strlen( t148 ).
          t147 = t149.
          DATA(t150) = strlen( t145 ).
          IF t146 < 0.
            t146 = t146 + t150.
            IF t146 < 0.
              t146 = 0.
            ENDIF.
          ENDIF.
          IF t146 > t150 OR t147 <= 0.
            CLEAR t144.
          ELSE.
            IF t147 > t150 - t146.
              t147 = t150 - t146.
            ENDIF.
            t144 = t145+t146(t147).
          ENDIF.
          t141 = t144.
          t127 = t141.
        ENDIF.
        DATA(t151) = t127.
        t126 = t151.
        t123 = t126.
        DATA(t152) = strlen( t123 ).
        t122 = t123.
        IF t122 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t122 TO UPPER CASE.
        ELSE.
          t122 = zlnt_runtime_uppe_91169605024d=>full( t122 ).
        ENDIF.
        t121->load( ).
        APPEND t122 TO t121->items.
        t121->save( ).
      ENDDO.
      DATA(t153) = t112.
      t111 = t153.
      t107 = t111.
    ENDIF.
    t95 = t107.
    t94 = t95.
    DATA t154 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t155) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t154 = t155.
    DATA(t156) = VALUE abap_bool( ).
    DATA(t157) = VALUE abap_bool( ).
    DATA(t158) = t94.
    IF t158 IS INITIAL.
      t157 = abap_true.
    ENDIF.
    t156 = xsdbool( t157 = abap_false ).
    IF t156 = abap_true.
      DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t160) = t94.
      t159 = t160.
      DATA(t161) = VALUE string( ).
      t159->dense( ).
      DATA(t162) = VALUE i( ).
      DO.
        t159->load( ).
        IF t162 >= lines( t159->items ).
          EXIT.
        ENDIF.
        CLEAR t161.
        READ TABLE t159->items INDEX t162 + 1 INTO t161.
        IF t159->has( t162 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t162 = t162 + 1.
        DATA t163 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t164) = t154.
        DATA(t165) = t161.
        t163 = t164->add( p0 = t165 ).
      ENDDO.
    ENDIF.
    DATA(t166) = t154.
    t93 = t166.
    t92 = t93.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t169.
    DATA t170 TYPE REF TO zcl_lnt_expression_node.
    DATA t171 TYPE REF TO zcl_lnt_expression_node.
    DATA(t172) = t2.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t171 = t172->find_direct_expression( i_type_9913 = t173 ).
    t170 = t171.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t174.
    DATA(t175) = VALUE abap_bool( ).
    DATA(t176) = t170.
    IF t176 IS INITIAL.
      t175 = abap_true.
    ENDIF.
    IF t175 = abap_true.
      DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t177.
      t174 = t177.
    ELSE.
      DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t179 TYPE REF TO zcl_lnt_expression_node.
      DATA(t180) = t170.
      t179 = t180.
      DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4.
      t178 = t179->find_all_expressions( i_type_9913 = t181 ).
      t174 = t178.
    ENDIF.
    t169 = t174.
    t168 = t169.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t182.
    DATA t183 TYPE abap_bool.
    DATA(t184) = t168.
    t183 = xsdbool( t184 IS BOUND ).
    IF t183 = abap_true.
      DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t186) = t168.
      t185 = t186.
      t182 = t185.
    ELSE.
      DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t187.
      t182 = t187.
    ENDIF.
    t167 = t182.
    DATA t188 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t188.
    DATA t189 TYPE REF TO object.
    CLEAR t189.
    DATA(t190) = VALUE i( ).
    DO.
      t167->load( ).
      IF t190 >= lines( t167->items ).
        EXIT.
      ENDIF.
      CLEAR t189.
      READ TABLE t167->items INDEX t190 + 1 INTO t189.
      t190 = t190 + 1.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t191.
      CLEAR t188.
      IF t189 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t191 ?= t189.
        DATA t192 TYPE REF TO object.
        t192 = t191->as_ref( ).
        t188 ?= t192.
      ELSE.
        t188 ?= t189.
      ENDIF.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t193.
      DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t194.
      DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t195.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      DATA t197 TYPE REF TO zcl_lnt_expression_node.
      DATA t198 TYPE REF TO zcl_lnt_expression_node.
      DATA(t199) = t188.
      DATA(t200) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t198 = t199->find_direct_expression( i_type_9913 = t200 ).
      t197 = t198.
      DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t201.
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = t197.
      IF t203 IS INITIAL.
        t202 = abap_true.
      ENDIF.
      IF t202 = abap_true.
        DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t204.
        t201 = t204.
      ELSE.
        DATA t205 TYPE string.
        DATA t206 TYPE REF TO zcl_lnt_expression_node.
        DATA(t207) = t197.
        t206 = t207.
        t205 = t206->concat_tokens( ).
        DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t208->has = abap_true.
        t208->value = t205.
        t201 = t208.
      ENDIF.
      t196 = t201.
      t195 = t196.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t209.
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = t195.
      IF t211 IS INITIAL.
        t210 = abap_true.
      ELSEIF t211->has = abap_false.
        t210 = abap_true.
      ENDIF.
      IF t210 = abap_true.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        t209 = t212.
      ELSE.
        DATA t213 TYPE string.
        DATA t214 TYPE string.
        DATA(t215) = t195.
        t214 = t215->value.
        DATA(t216) = strlen( t214 ).
        t213 = t214.
        IF t213 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t213 TO UPPER CASE.
        ELSE.
          t213 = zlnt_runtime_uppe_91169605024d=>full( t213 ).
        ENDIF.
        DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t217->has = abap_true.
        t217->value = t213.
        t209 = t217.
      ENDIF.
      t194 = t209.
      t193 = t194.
      DATA(t218) = VALUE abap_bool( ).
      DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t220) = t193.
      t219 = t220.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t222.
      t221 = t222.
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = t219.
      IF t224 IS INITIAL.
        t223 = abap_true.
      ELSEIF t224->has = abap_false.
        t223 = abap_true.
      ENDIF.
      t218 = t223.
      IF t218 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t225 TYPE REF TO zcl_lnt_expression_node.
      DATA t226 TYPE REF TO zcl_lnt_expression_node.
      DATA(t227) = t188.
      DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t226 = t227->find_direct_expression( i_type_9913 = t228 ).
      t225 = t226.
      DATA t229 TYPE REF TO zcl_lnt_abstract_type.
      DATA t230 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t231) = t225.
      DATA(t232) = t3.
      DATA t233 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t233.
      DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t234.
      DATA t235 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t236.
      t230 = zcl_lnt_sy_source=>run_syntax( i_node = t231 i_input_967e = t232 i_target_type = t233 i_write_reference = t234 i_allow_generic_deference = t235 i_read_reference = t236 ).
      t229 = t230.
      DATA t237 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t237.
      DATA t238 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t238.
      DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t240) = t73.
      t239 = t240.
      DATA t241 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t241.
      DATA(t242) = VALUE abap_bool( ).
      DATA(t243) = t239.
      IF t243 IS INITIAL.
        t242 = abap_true.
      ENDIF.
      IF t242 = abap_true.
        DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t244.
        t241 = t244.
      ELSE.
        DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t245.
        DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t247) = t239.
        t246 = t247.
        DATA t248 TYPE i.
        DATA t249 TYPE i.
        DATA(t250) = t246.
        t250->load( ).
        t249 = lines( t250->items ).
        t248 = t249.
        DATA t251 TYPE i.
        DATA(t252) = 0.
        t251 = t252.
        DATA t253 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t254 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t254.
        t253 = t254.
        DO.
          DATA t255 TYPE abap_bool.
          DATA(t256) = t251.
          DATA(t257) = t248.
          t255 = xsdbool( t256 < t257 ).
          IF t255 = abap_false.
            EXIT.
          ENDIF.
          DATA t258 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t258.
          DATA t259 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t259.
          DATA t260 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t260.
          DATA(t261) = t246.
          DATA(t262) = t251.
          DATA t263 TYPE REF TO object.
          t263 = t261->get( p0 = t262 ).
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t264.
          CLEAR t260.
          IF t263 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t264 ?= t263.
            DATA t265 TYPE REF TO object.
            t265 = t264->as_ref( ).
            t260 ?= t265.
          ELSE.
            t260 ?= t263.
          ENDIF.
          t259 = t260.
          t258 = t259.
          DATA(t266) = VALUE abap_bool( ).
          DATA(t267) = VALUE string( ).
          DATA(t268) = VALUE string( ).
          DATA t269 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t270) = t258.
          t269 = t270.
          DATA(t271) = VALUE string( ).
          DATA t272 TYPE string.
          DATA t273 TYPE string.
          DATA t274 TYPE REF TO zcl_lnt_abstract_token.
          DATA t275 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t276) = t269.
          t275 = t276->token.
          t274 = t275.
          DATA t277 TYPE string.
          DATA(t278) = t274.
          t277 = t278->str.
          t273 = t277.
          t272 = t273.
          DATA(t279) = VALUE abap_bool( ).
          DATA(t280) = VALUE string( ).
          DATA(t281) = t272.
          DATA(t282) = 0.
          DATA(t283) = 1.
          DATA(t284) = strlen( t281 ).
          IF t282 < 0.
            t282 = t282 + t284.
            IF t282 < 0.
              t282 = 0.
            ENDIF.
          ENDIF.
          IF t282 > t284 OR t283 <= 0.
            CLEAR t280.
          ELSE.
            IF t283 > t284 - t282.
              t283 = t284 - t282.
            ENDIF.
            t280 = t281+t282(t283).
          ENDIF.
          DATA(t285) = |!|.
          t279 = xsdbool( t280 = t285 ).
          IF t279 = abap_true.
            DATA(t286) = VALUE string( ).
            DATA t287 TYPE string.
            DATA(t288) = t272.
            t287 = t288.
            DATA(t289) = VALUE string( ).
            DATA(t290) = t287.
            DATA(t291) = 1.
            DATA t292 TYPE i.
            DATA(t293) = t287.
            DATA(t294) = strlen( t293 ).
            t292 = t294.
            DATA(t295) = strlen( t290 ).
            IF t291 < 0.
              t291 = t291 + t295.
              IF t291 < 0.
                t291 = 0.
              ENDIF.
            ENDIF.
            IF t291 > t295 OR t292 <= 0.
              CLEAR t289.
            ELSE.
              IF t292 > t295 - t291.
                t292 = t295 - t291.
              ENDIF.
              t289 = t290+t291(t292).
            ENDIF.
            t286 = t289.
            t272 = t286.
          ENDIF.
          DATA(t296) = t272.
          t271 = t296.
          t268 = t271.
          DATA(t297) = strlen( t268 ).
          t267 = t268.
          IF t267 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t267 TO UPPER CASE.
          ELSE.
            t267 = zlnt_runtime_uppe_91169605024d=>full( t267 ).
          ENDIF.
          DATA t298 TYPE string.
          DATA(t299) = t193.
          t298 = t299->value.
          t266 = xsdbool( t267 = t298 ).
          IF t266 = abap_true.
            DATA t300 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t300.
            DATA(t301) = abap_true.
            IF t301 = abap_true.
              DATA(t302) = t258.
              t300 = t302.
            ELSE.
              DATA t303 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t303.
              t300 = t303.
            ENDIF.
            t253 = t300.
            EXIT.
          ENDIF.
          DATA t304 TYPE i.
          DATA(t305) = t251.
          DATA(t306) = 1.
          t304 = t305 + t306.
          t251 = t304.
        ENDDO.
        DATA(t307) = t253.
        t245 = t307.
        t241 = t245.
      ENDIF.
      t238 = t241.
      t237 = t238.
      DATA(t308) = VALUE abap_bool( ).
      DATA t309 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t310) = t237.
      t309 = t310.
      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      t311 = t312.
      DATA(t313) = VALUE abap_bool( ).
      DATA(t314) = t309.
      IF t314 IS INITIAL.
        t313 = abap_true.
      ENDIF.
      t308 = t313.
      IF t308 = abap_true.
        DATA t315 TYPE string.
        DATA t316 TYPE string.
        DATA t317 TYPE string.
        DATA(t318) = |constructor parameter "|.
        DATA t319 TYPE string.
        DATA(t320) = t193.
        t319 = t320->value.
        DATA(t321) = strlen( t318 ).
        t317 = |{ t318 }{ t319 }|.
        DATA(t322) = |" does not exist|.
        DATA(t323) = strlen( t317 ).
        t316 = |{ t317 }{ t322 }|.
        t315 = t316.
        DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t325) = t3.
        t324 = t325->issues.
        DATA t326 TYPE REF TO zcl_lnt_issue.
        DATA(t327) = t3.
        DATA t328 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t329) = t2.
        t328 = t329->get_first_token( ).
        DATA(t330) = t315.
        DATA t331 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t331.
        t326 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t327 i_token = t328 i_message_26cb = t330 i_fix = t331 ).
        t324->load( ).
        APPEND t326 TO t324->items.
        t324->save( ).
        RETURN.
      ELSE.
        DATA(t332) = VALUE abap_bool( ).
        DATA(t333) = VALUE abap_bool( ).
        DATA t334 TYPE REF TO zcl_lnt_type_utils.
        DATA t335 TYPE REF TO zcl_lnt_current_scope.
        DATA(t336) = t3.
        t335 = t336->scope.
        t334 = NEW zcl_lnt_type_utils( i_scope = t335 ).
        DATA(t337) = t229.
        DATA t338 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t338.
        DATA(t339) = abap_true.
        IF t339 = abap_true.
          DATA t340 TYPE REF TO zcl_lnt_abstract_type.
          DATA t341 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t342 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t343) = t237.
          t342 = t343.
          t341 = t342.
          DATA t344 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t345) = t341.
          t344 = t345->type_cba0.
          t340 = t344.
          t338 = t340.
        ELSE.
          DATA t346 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t346.
          t338 = t346.
        ENDIF.
        DATA(t347) = t225.
        t333 = t334->is_assignable_strict( i_source_75cf = t337 i_target_5f8a = t338 i_node = t347 ).
        DATA(t348) = abap_false.
        t332 = xsdbool( t333 = t348 ).
        IF t332 = abap_true.
          DATA t349 TYPE string.
          DATA t350 TYPE string.
          DATA t351 TYPE string.
          DATA(t352) = |constructor parameter "|.
          DATA t353 TYPE string.
          DATA(t354) = t193.
          t353 = t354->value.
          DATA(t355) = strlen( t352 ).
          t351 = |{ t352 }{ t353 }|.
          DATA(t356) = |" type not compatible|.
          DATA(t357) = strlen( t351 ).
          t350 = |{ t351 }{ t356 }|.
          t349 = t350.
          DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t359) = t3.
          t358 = t359->issues.
          DATA t360 TYPE REF TO zcl_lnt_issue.
          DATA(t361) = t3.
          DATA t362 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t363) = t2.
          t362 = t363->get_first_token( ).
          DATA(t364) = t349.
          DATA t365 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t365.
          t360 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t361 i_token = t362 i_message_26cb = t364 i_fix = t365 ).
          t358->load( ).
          APPEND t360 TO t358->items.
          t358->save( ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA t366 TYPE abap_bool.
      DATA(t367) = t92.
      DATA t368 TYPE string.
      DATA(t369) = t193.
      t368 = t369->value.
      t366 = t367->delete( p0 = t368 ).
    ENDDO.
    DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t371) = t92.
    t370 = t371->values( ).
    DATA(t372) = VALUE string( ).
    t370->dense( ).
    DATA(t373) = VALUE i( ).
    DO.
      t370->load( ).
      IF t373 >= lines( t370->items ).
        EXIT.
      ENDIF.
      CLEAR t372.
      READ TABLE t370->items INDEX t373 + 1 INTO t372.
      IF t370->has( t373 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t373 = t373 + 1.
      DATA t374 TYPE string.
      DATA t375 TYPE string.
      DATA t376 TYPE string.
      DATA(t377) = |constructor parameter "|.
      DATA(t378) = t372.
      DATA(t379) = strlen( t377 ).
      t376 = |{ t377 }{ t378 }|.
      DATA(t380) = |" must be supplied|.
      DATA(t381) = strlen( t376 ).
      t375 = |{ t376 }{ t380 }|.
      t374 = t375.
      DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t383) = t3.
      t382 = t383->issues.
      DATA t384 TYPE REF TO zcl_lnt_issue.
      DATA(t385) = t3.
      DATA t386 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t387) = t2.
      t386 = t387->get_first_token( ).
      DATA(t388) = t374.
      DATA t389 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t389.
      t384 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t385 i_token = t386 i_message_26cb = t388 i_fix = t389 ).
      t382->load( ).
      APPEND t384 TO t382->items.
      t382->save( ).
      RETURN.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d885_b4be87ef71b1.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
