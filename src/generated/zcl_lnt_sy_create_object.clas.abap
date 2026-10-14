* TS: src/abap/5_syntax/statements/create_object.ts:16:1 CreateObject
CLASS zcl_lnt_sy_create_object DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_syntax.
    METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    CLASS-METHODS check_instantiation_allowed IMPORTING i_cdef TYPE REF TO zif_lnt_class_definition i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS validate_parameters IMPORTING i_cdef TYPE REF TO zif_lnt_class_definition i_node TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_create_object IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zif_lnt_class_definition.
    DATA t4 TYPE REF TO zif_lnt_class_definition.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t8) = |TYPE|.
    t6 = t7->find_expression_after_token( i_text = t8 ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    DATA(t11) = CAST zcl_lnt_expression_node( t5 ).
    t10 = xsdbool( t11 IS BOUND ).
    t9 = t10.
    IF t10 = abap_true.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zif_lnt_statement_runnable.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = CAST zcl_lnt_expression_node( t5 ).
      t14 = t15.
      t13 = t14->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_class_name ).
      t9 = t12.
    ENDIF.
    IF t9 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      DATA(t19) = CAST zcl_lnt_expression_node( t5 ).
      t18 = t19.
      t17 = t18->get_first_token( ).
      t16 = t17.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t23) = CAST zcl_lnt_abstract_token( t16 ).
      t22 = t23.
      DATA t24 TYPE string.
      DATA(t25) = CAST zcl_lnt_abstract_token( t22 ).
      t24 = t25->str.
      t21 = t24.
      t20 = t21.
      DATA t26 TYPE REF TO zif_lnt_class_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_current_scope.
      DATA t28 TYPE REF TO zcl_lnt_current_scope.
      DATA(t29) = CAST zcl_lnt_syntax_input( t2 ).
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
      DATA(t39) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
      t38 = t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      t40 = t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = CAST zlnt_runtime_opti_4ba3bdccd169( t38 ).
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
        DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t50) = CAST zcl_lnt_current_scope( t27 ).
        t49 = t50->current.
        t48 = t49.
        DATA t51 TYPE REF TO zif_lnt_class_definition.
        CLEAR t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = CAST zcl_lnt_spaghetti_scope_node( t48 ).
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zif_lnt_class_definition.
          CLEAR t54.
          t51 = t54.
        ELSE.
          DATA t55 TYPE REF TO zif_lnt_class_definition.
          DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t57) = CAST zcl_lnt_spaghetti_scope_node( t48 ).
          t56 = t57.
          DATA t58 TYPE string.
          DATA(t59) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
          t58 = t59->value.
          t55 = t56->find_class_definition( i_name = t58 ).
          t51 = t55.
        ENDIF.
        t47 = t51.
        t46 = t47.
        DATA t60 TYPE REF TO zif_lnt_class_definition.
        CLEAR t60.
        DATA t61 TYPE abap_bool.
        DATA(t62) = CAST zif_lnt_class_definition( t46 ).
        t61 = xsdbool( t62 IS BOUND ).
        IF t61 = abap_true.
          DATA t63 TYPE REF TO zif_lnt_class_definition.
          CLEAR t63.
          DATA(t64) = abap_true.
          IF t64 = abap_true.
            DATA t65 TYPE REF TO zif_lnt_class_definition.
            DATA(t66) = CAST zif_lnt_class_definition( t46 ).
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
          DATA(t73) = CAST zcl_lnt_current_scope( t27 ).
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
            DATA t81 TYPE string.
            DATA(t82) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
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
          t85 = t71.
          t70 ?= t85.
          t69 = t70.
          DATA t86 TYPE REF TO zif_lnt_class_definition.
          CLEAR t86.
          DATA t87 TYPE abap_bool.
          DATA(t88) = CAST zcl_lnt_class( t69 ).
          t87 = xsdbool( t88 IS BOUND ).
          IF t87 = abap_true.
            DATA t89 TYPE REF TO zif_lnt_class_definition.
            DATA t90 TYPE REF TO zcl_lnt_class.
            DATA(t91) = CAST zcl_lnt_class( t69 ).
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
      DATA t93 TYPE abap_bool.
      DATA(t94) = CAST zif_lnt_class_definition( t3 ).
      t93 = xsdbool( t94 IS BOUND ).
      IF t93 = abap_true.
        DATA t95 TYPE REF TO zcl_lnt_current_scope.
        DATA(t96) = CAST zcl_lnt_syntax_input( t2 ).
        t95 = t96->scope.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        DATA(t98) = abap_true.
        IF t98 = abap_true.
          DATA(t99) = CAST zcl_lnt_abstract_token( t16 ).
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
          DATA t104 TYPE REF TO zif_lnt_class_definition.
          DATA(t105) = CAST zif_lnt_class_definition( t3 ).
          t104 = t105.
          t103 ?= t104.
          t101 = t103.
        ELSE.
          DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t106.
          t101 = t106.
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t108) = |Object|.
        CREATE OBJECT t107.
        t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t107->sval = t108.
        DATA t109 TYPE string.
        DATA(t110) = CAST zcl_lnt_syntax_input( t2 ).
        t109 = t110->filename.
        DATA t111 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t111.
        t95->add_reference( i_usage = t97 i_referencing = t101 i_type_9913 = t107 i_filename = t109 i_extra = t111 ).
        DATA t112 TYPE REF TO zcl_lnt_current_scope.
        DATA(t113) = CAST zcl_lnt_syntax_input( t2 ).
        t112 = t113->scope.
        DATA t114 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t114.
        DATA(t115) = abap_true.
        IF t115 = abap_true.
          DATA(t116) = CAST zcl_lnt_abstract_token( t16 ).
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
          DATA t121 TYPE REF TO zif_lnt_class_definition.
          DATA(t122) = CAST zif_lnt_class_definition( t3 ).
          t121 = t122.
          t120 ?= t121.
          t118 = t120.
        ELSE.
          DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t123.
          t118 = t123.
        ENDIF.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t125) = |Constructor Reference|.
        CREATE OBJECT t124.
        t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t124->sval = t125.
        DATA t126 TYPE string.
        DATA(t127) = CAST zcl_lnt_syntax_input( t2 ).
        t126 = t127->filename.
        DATA t128 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t130.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA(t132) = abap_true.
          IF t132 = abap_true.
            DATA t133 TYPE string.
            DATA t134 TYPE REF TO zif_lnt_class_definition.
            DATA(t135) = CAST zif_lnt_class_definition( t3 ).
            t134 = t135.
            t133 = t134->get_name( ).
            DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t136->has = abap_true.
            t136->value = t133.
            t131 = t136.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            t131 = t137.
          ENDIF.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t139.
          t130 = NEW zcl_lnt_ireference_extras( i_oo_name = t131 i_oo_type = t138 i_found_qualified = t139 ).
          t128 = t130.
        ELSE.
          DATA t140 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t140.
          t128 = t140.
        ENDIF.
        t112->add_reference( i_usage = t114 i_referencing = t118 i_type_9913 = t124 i_filename = t126 i_extra = t128 ).
        DATA t141 TYPE abap_bool.
        DATA t142 TYPE abap_bool.
        DATA t143 TYPE REF TO zif_lnt_class_definition.
        DATA(t144) = CAST zif_lnt_class_definition( t3 ).
        t143 = t144.
        t142 = t143->is_abstract( ).
        DATA(t145) = abap_true.
        t141 = xsdbool( t142 = t145 ).
        IF t141 = abap_true.
          DATA t146 TYPE string.
          DATA t147 TYPE string.
          DATA t148 TYPE string.
          DATA t149 TYPE REF TO zif_lnt_class_definition.
          DATA(t150) = CAST zif_lnt_class_definition( t3 ).
          t149 = t150.
          t148 = t149->get_name( ).
          DATA(t151) = | is abstract, cannot be instantiated|.
          DATA(t152) = strlen( t148 ).
          t147 = |{ t148 }{ t151 }|.
          t146 = t147.
          DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t154) = CAST zcl_lnt_syntax_input( t2 ).
          t153 = t154->issues.
          DATA t155 TYPE REF TO zcl_lnt_issue.
          DATA(t156) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t157 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t158) = CAST zcl_lnt_statement_node( t1 ).
          t157 = t158->get_first_token( ).
          DATA(t159) = t146.
          DATA t160 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t160.
          t155 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t156 i_token = t157 i_message_26cb = t159 i_fix = t160 ).
          APPEND t155 TO t153->items.
          RETURN.
        ENDIF.
      ELSE.
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = VALUE abap_bool( ).
        DATA t163 TYPE REF TO zcl_lnt_ddic.
        DATA t164 TYPE REF TO zcl_lnt_ddic.
        DATA t165 TYPE REF TO zcl_lnt_current_scope.
        DATA t166 TYPE REF TO zcl_lnt_current_scope.
        DATA(t167) = CAST zcl_lnt_syntax_input( t2 ).
        t166 = t167->scope.
        t165 = t166.
        DATA t168 TYPE REF TO zcl_lnt_ddic.
        DATA t169 TYPE REF TO zif_lnt_registry.
        DATA(t170) = CAST zcl_lnt_current_scope( t165 ).
        t169 = t170->reg.
        t168 = NEW zcl_lnt_ddic( i_reg_f149 = t169 ).
        t164 = t168.
        t163 = t164.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA(t173) = abap_true.
        IF t173 = abap_true.
          DATA(t174) = t20.
          DATA(t175) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t175->has = abap_true.
          t175->value = t174.
          t172 = t175.
        ELSE.
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          t172 = t176.
        ENDIF.
        t171 = t172.
        DATA(t177) = VALUE abap_bool( ).
        DATA(t178) = VALUE abap_bool( ).
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t180) = CAST zlnt_runtime_opti_4ba3bdccd169( t171 ).
        t179 = t180.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        t181 = t182.
        DATA(t183) = VALUE abap_bool( ).
        DATA(t184) = CAST zlnt_runtime_opti_4ba3bdccd169( t179 ).
        IF t184 IS INITIAL.
          t183 = abap_true.
        ELSEIF t184->has = abap_false.
          t183 = abap_true.
        ENDIF.
        t178 = t183.
        IF t178 = abap_true.
          DATA(t185) = abap_true.
          t177 = t185.
        ELSE.
          DATA t186 TYPE abap_bool.
          DATA t187 TYPE REF TO zif_lnt_registry.
          DATA(t188) = CAST zcl_lnt_ddic( t163 ).
          t187 = t188->reg.
          DATA t189 TYPE string.
          DATA(t190) = CAST zlnt_runtime_opti_4ba3bdccd169( t171 ).
          t189 = t190->value.
          t186 = t187->in_error_namespace( i_name = t189 ).
          t177 = t186.
        ENDIF.
        t162 = t177.
        DATA(t191) = abap_false.
        t161 = xsdbool( t162 = t191 ).
        IF t161 = abap_true.
          DATA t192 TYPE REF TO zcl_lnt_current_scope.
          DATA(t193) = CAST zcl_lnt_syntax_input( t2 ).
          t192 = t193->scope.
          DATA t194 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t194.
          DATA(t195) = abap_true.
          IF t195 = abap_true.
            DATA(t196) = CAST zcl_lnt_abstract_token( t16 ).
            t194 = t196.
          ELSE.
            DATA t197 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t197.
            t194 = t197.
          ENDIF.
          DATA t198 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t198.
          DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t200) = |Object (Void)|.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t199->sval = t200.
          DATA t201 TYPE string.
          DATA(t202) = CAST zcl_lnt_syntax_input( t2 ).
          t201 = t202->filename.
          DATA t203 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t203.
          DATA(t204) = abap_true.
          IF t204 = abap_true.
            DATA t205 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t205.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t206.
            DATA(t207) = abap_true.
            IF t207 = abap_true.
              DATA(t208) = t20.
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
              DATA(t213) = |CLAS|.
              DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t214->has = abap_true.
              t214->value = t213.
              t211 = t214.
            ELSE.
              DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t215.
              t211 = t215.
            ENDIF.
            DATA t216 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t216.
            t205 = NEW zcl_lnt_ireference_extras( i_oo_name = t206 i_oo_type = t211 i_found_qualified = t216 ).
            t203 = t205.
          ELSE.
            DATA t217 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t217.
            t203 = t217.
          ENDIF.
          t192->add_reference( i_usage = t194 i_referencing = t198 i_type_9913 = t199 i_filename = t201 i_extra = t203 ).
        ELSE.
          DATA t218 TYPE string.
          DATA t219 TYPE string.
          DATA t220 TYPE string.
          DATA(t221) = |TYPE "|.
          DATA(t222) = t20.
          DATA(t223) = strlen( t221 ).
          t220 = |{ t221 }{ t222 }|.
          DATA(t224) = |" not found|.
          DATA(t225) = strlen( t220 ).
          t219 = |{ t220 }{ t224 }|.
          t218 = t219.
          DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t227) = CAST zcl_lnt_syntax_input( t2 ).
          t226 = t227->issues.
          DATA t228 TYPE REF TO zcl_lnt_issue.
          DATA(t229) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t230 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t231) = CAST zcl_lnt_statement_node( t1 ).
          t230 = t231->get_first_token( ).
          DATA(t232) = t218.
          DATA t233 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t233.
          t228 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t229 i_token = t230 i_message_26cb = t232 i_fix = t233 ).
          APPEND t228 TO t226->items.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t235) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t236) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    t234 = t235->find_direct_expressions( i_type_9913 = t236 ).
    DATA t237 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t237.
    DATA t238 TYPE REF TO object.
    CLEAR t238.
    LOOP AT t234->items INTO t238.
      t237 ?= t238.
      DATA t239 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t239.
      DATA t240 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t240.
      DATA(t241) = abap_true.
      IF t241 = abap_true.
        DATA(t242) = CAST zcl_lnt_expression_node( t237 ).
        t240 = t242.
      ELSE.
        DATA t243 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t243.
        t240 = t243.
      ENDIF.
      DATA(t244) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t245 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t245.
      DATA t246 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t246.
      DATA t247 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t247.
      DATA t248 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t248.
      t239 = zcl_lnt_sy_source=>run_syntax( i_node = t240 i_input_967e = t244 i_target_type = t245 i_write_reference = t246 i_allow_generic_deference = t247 i_read_reference = t248 ).
    ENDLOOP.
    DATA t249 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t251.
    DATA t252 TYPE REF TO zcl_lnt_expression_node.
    DATA t253 TYPE REF TO zcl_lnt_expression_node.
    DATA(t254) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t255) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d191_203ebd87c4e5 ).
    t253 = t254->find_direct_expression( i_type_9913 = t255 ).
    t252 = t253.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t256.
    DATA(t257) = VALUE abap_bool( ).
    DATA(t258) = CAST zcl_lnt_expression_node( t252 ).
    IF t258 IS INITIAL.
      t257 = abap_true.
    ENDIF.
    IF t257 = abap_true.
      DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t259.
      t256 = t259.
    ELSE.
      DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t261 TYPE REF TO zcl_lnt_expression_node.
      DATA(t262) = CAST zcl_lnt_expression_node( t252 ).
      t261 = t262.
      DATA(t263) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
      t260 = t261->find_all_expressions( i_type_9913 = t263 ).
      t256 = t260.
    ENDIF.
    t251 = t256.
    t250 = t251.
    DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t264.
    DATA t265 TYPE abap_bool.
    DATA(t266) = CAST zlnt_runtime_arra_c22708faf2e3( t250 ).
    t265 = xsdbool( t266 IS BOUND ).
    IF t265 = abap_true.
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t268) = CAST zlnt_runtime_arra_c22708faf2e3( t250 ).
      t267 = t268.
      t264 = t267.
    ELSE.
      DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t269.
      t264 = t269.
    ENDIF.
    t249 = t264.
    DATA t270 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t270.
    DATA t271 TYPE REF TO object.
    CLEAR t271.
    LOOP AT t249->items INTO t271.
      t270 ?= t271.
      DATA t272 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t273) = CAST zcl_lnt_expression_node( t270 ).
      DATA(t274) = CAST zcl_lnt_syntax_input( t2 ).
      t272 = zcl_lnt_sy_target=>run_syntax( i_node = t273 i_input_967e = t274 ).
    ENDLOOP.
    DATA t275 TYPE REF TO zcl_lnt_expression_node.
    DATA t276 TYPE REF TO zcl_lnt_expression_node.
    DATA(t277) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t278) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    t276 = t277->find_direct_expression( i_type_9913 = t278 ).
    t275 = t276.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    t279 = t280.
    DATA t281 TYPE abap_bool.
    DATA(t282) = CAST zcl_lnt_expression_node( t275 ).
    t281 = xsdbool( t282 IS BOUND ).
    IF t281 = abap_true.
      DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t283.
      DATA(t284) = abap_true.
      IF t284 = abap_true.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        DATA t286 TYPE REF TO zcl_lnt_abstract_type.
        DATA t287 TYPE REF TO zcl_lnt_expression_node.
        DATA(t288) = CAST zcl_lnt_expression_node( t275 ).
        t287 = t288.
        DATA(t289) = CAST zcl_lnt_syntax_input( t2 ).
        t286 = zcl_lnt_sy_target=>run_syntax( i_node = t287 i_input_967e = t289 ).
        IF t286 IS BOUND.
          IF t286 IS BOUND.
            CREATE OBJECT t285.
            t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            DATA t290 TYPE REF TO object.
            t290 = t286.
            t285->oval = t290.
          ENDIF.
        ENDIF.
        t283 = t285.
      ELSE.
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t291.
        t283 = t291.
      ENDIF.
      t279 = t283.
      DATA(t292) = VALUE abap_bool( ).
      DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t294) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
      t293 = t294.
      DATA(t295) = VALUE abap_bool( ).
      DATA(t296) = VALUE abap_bool( ).
      DATA(t297) = VALUE abap_bool( ).
      DATA(t298) = CAST zlnt_runtime_dyna_a429568d5be8( t293 ).
      IF t298 IS INITIAL.
        t297 = abap_true.
      ENDIF.
      t296 = xsdbool( t297 = abap_false ).
      t295 = t296.
      IF t296 = abap_true.
        DATA t299 TYPE abap_bool.
        DATA t300 TYPE REF TO object.
        DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t302) = CAST zlnt_runtime_dyna_a429568d5be8( t293 ).
        t301 = t302.
        DATA t303 TYPE REF TO object.
        t303 = t301->as_ref( ).
        t300 ?= t303.
        t299 = xsdbool( t300 IS BOUND AND t300 IS INSTANCE OF zcl_lnt_void_type ).
        t295 = t299.
      ENDIF.
      t292 = t295.
      IF t292 = abap_true.
      ELSE.
        DATA(t304) = VALUE abap_bool( ).
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t306) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
        t305 = t306.
        DATA(t307) = VALUE abap_bool( ).
        DATA(t308) = VALUE abap_bool( ).
        DATA(t309) = VALUE abap_bool( ).
        DATA(t310) = CAST zlnt_runtime_dyna_a429568d5be8( t305 ).
        IF t310 IS INITIAL.
          t309 = abap_true.
        ENDIF.
        t308 = xsdbool( t309 = abap_false ).
        t307 = t308.
        IF t308 = abap_true.
          DATA t311 TYPE abap_bool.
          DATA t312 TYPE REF TO object.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t314) = CAST zlnt_runtime_dyna_a429568d5be8( t305 ).
          t313 = t314.
          DATA t315 TYPE REF TO object.
          t315 = t313->as_ref( ).
          t312 ?= t315.
          t311 = xsdbool( t312 IS BOUND AND t312 IS INSTANCE OF zcl_lnt_unknown_type ).
          t307 = t311.
        ENDIF.
        t304 = t307.
        IF t304 = abap_true.
          DATA t316 TYPE string.
          DATA t317 TYPE string.
          DATA(t318) = |Target type unknown, |.
          DATA t319 TYPE string.
          DATA t320 TYPE REF TO zcl_lnt_expression_node.
          DATA(t321) = CAST zcl_lnt_expression_node( t275 ).
          t320 = t321.
          t319 = t320->concat_tokens( ).
          DATA(t322) = strlen( t318 ).
          t317 = |{ t318 }{ t319 }|.
          t316 = t317.
          DATA t323 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t324) = CAST zcl_lnt_syntax_input( t2 ).
          t323 = t324->issues.
          DATA t325 TYPE REF TO zcl_lnt_issue.
          DATA(t326) = CAST zcl_lnt_syntax_input( t2 ).
          DATA t327 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t328) = CAST zcl_lnt_statement_node( t1 ).
          t327 = t328->get_first_token( ).
          DATA(t329) = t316.
          DATA t330 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t330.
          t325 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t326 i_token = t327 i_message_26cb = t329 i_fix = t330 ).
          APPEND t325 TO t323->items.
          RETURN.
        ELSE.
          DATA(t331) = VALUE abap_bool( ).
          DATA(t332) = VALUE abap_bool( ).
          DATA(t333) = VALUE abap_bool( ).
          DATA(t334) = VALUE abap_bool( ).
          DATA(t335) = VALUE abap_bool( ).
          DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t337) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
          t336 = t337.
          DATA(t338) = VALUE abap_bool( ).
          DATA(t339) = VALUE abap_bool( ).
          DATA(t340) = VALUE abap_bool( ).
          DATA(t341) = CAST zlnt_runtime_dyna_a429568d5be8( t336 ).
          IF t341 IS INITIAL.
            t340 = abap_true.
          ENDIF.
          t339 = xsdbool( t340 = abap_false ).
          t338 = t339.
          IF t339 = abap_true.
            DATA t342 TYPE abap_bool.
            DATA t343 TYPE REF TO object.
            DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t345) = CAST zlnt_runtime_dyna_a429568d5be8( t336 ).
            t344 = t345.
            DATA t346 TYPE REF TO object.
            t346 = t344->as_ref( ).
            t343 ?= t346.
            t342 = xsdbool( t343 IS BOUND AND t343 IS INSTANCE OF zcl_lnt_object_reference_type ).
            t338 = t342.
          ENDIF.
          t335 = t338.
          t334 = xsdbool( t335 = abap_false ).
          t333 = t334.
          IF t334 = abap_true.
            DATA(t347) = VALUE abap_bool( ).
            DATA(t348) = VALUE abap_bool( ).
            DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t350) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
            t349 = t350.
            DATA(t351) = VALUE abap_bool( ).
            DATA(t352) = VALUE abap_bool( ).
            DATA(t353) = VALUE abap_bool( ).
            DATA(t354) = CAST zlnt_runtime_dyna_a429568d5be8( t349 ).
            IF t354 IS INITIAL.
              t353 = abap_true.
            ENDIF.
            t352 = xsdbool( t353 = abap_false ).
            t351 = t352.
            IF t352 = abap_true.
              DATA t355 TYPE abap_bool.
              DATA t356 TYPE REF TO object.
              DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t358) = CAST zlnt_runtime_dyna_a429568d5be8( t349 ).
              t357 = t358.
              DATA t359 TYPE REF TO object.
              t359 = t357->as_ref( ).
              t356 ?= t359.
              t355 = xsdbool( t356 IS BOUND AND t356 IS INSTANCE OF zcl_lnt_any_type ).
              t351 = t355.
            ENDIF.
            t348 = t351.
            t347 = xsdbool( t348 = abap_false ).
            t333 = t347.
          ENDIF.
          t332 = t333.
          IF t333 = abap_true.
            DATA(t360) = VALUE abap_bool( ).
            DATA(t361) = VALUE abap_bool( ).
            DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t363) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
            t362 = t363.
            DATA(t364) = VALUE abap_bool( ).
            DATA(t365) = VALUE abap_bool( ).
            DATA(t366) = VALUE abap_bool( ).
            DATA(t367) = CAST zlnt_runtime_dyna_a429568d5be8( t362 ).
            IF t367 IS INITIAL.
              t366 = abap_true.
            ENDIF.
            t365 = xsdbool( t366 = abap_false ).
            t364 = t365.
            IF t365 = abap_true.
              DATA t368 TYPE abap_bool.
              DATA t369 TYPE REF TO object.
              DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t371) = CAST zlnt_runtime_dyna_a429568d5be8( t362 ).
              t370 = t371.
              DATA t372 TYPE REF TO object.
              t372 = t370->as_ref( ).
              t369 ?= t372.
              t368 = xsdbool( t369 IS BOUND AND t369 IS INSTANCE OF zcl_lnt_data_type ).
              t364 = t368.
            ENDIF.
            t361 = t364.
            t360 = xsdbool( t361 = abap_false ).
            t332 = t360.
          ENDIF.
          t331 = t332.
          IF t332 = abap_true.
            DATA(t373) = VALUE abap_bool( ).
            DATA(t374) = VALUE abap_bool( ).
            DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t376) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
            t375 = t376.
            DATA(t377) = VALUE abap_bool( ).
            DATA(t378) = VALUE abap_bool( ).
            DATA(t379) = VALUE abap_bool( ).
            DATA(t380) = CAST zlnt_runtime_dyna_a429568d5be8( t375 ).
            IF t380 IS INITIAL.
              t379 = abap_true.
            ENDIF.
            t378 = xsdbool( t379 = abap_false ).
            t377 = t378.
            IF t378 = abap_true.
              DATA t381 TYPE abap_bool.
              DATA t382 TYPE REF TO object.
              DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t384) = CAST zlnt_runtime_dyna_a429568d5be8( t375 ).
              t383 = t384.
              DATA t385 TYPE REF TO object.
              t385 = t383->as_ref( ).
              t382 ?= t385.
              t381 = xsdbool( t382 IS BOUND AND t382 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
              t377 = t381.
            ENDIF.
            t374 = t377.
            t373 = xsdbool( t374 = abap_false ).
            t331 = t373.
          ENDIF.
          IF t331 = abap_true.
            DATA t386 TYPE string.
            DATA t387 TYPE string.
            DATA(t388) = |Target must be an object reference, |.
            DATA t389 TYPE string.
            DATA t390 TYPE REF TO zcl_lnt_expression_node.
            DATA(t391) = CAST zcl_lnt_expression_node( t275 ).
            t390 = t391.
            t389 = t390->concat_tokens( ).
            DATA(t392) = strlen( t388 ).
            t387 = |{ t388 }{ t389 }|.
            t386 = t387.
            DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t394) = CAST zcl_lnt_syntax_input( t2 ).
            t393 = t394->issues.
            DATA t395 TYPE REF TO zcl_lnt_issue.
            DATA(t396) = CAST zcl_lnt_syntax_input( t2 ).
            DATA t397 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t398) = CAST zcl_lnt_statement_node( t1 ).
            t397 = t398->get_first_token( ).
            DATA(t399) = t386.
            DATA t400 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t400.
            t395 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t396 i_token = t397 i_message_26cb = t399 i_fix = t400 ).
            APPEND t395 TO t393->items.
            RETURN.
          ELSE.
            DATA(t401) = VALUE abap_bool( ).
            DATA(t402) = VALUE abap_bool( ).
            DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t404) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
            t403 = t404.
            DATA(t405) = VALUE abap_bool( ).
            DATA(t406) = VALUE abap_bool( ).
            DATA(t407) = VALUE abap_bool( ).
            DATA(t408) = CAST zlnt_runtime_dyna_a429568d5be8( t403 ).
            IF t408 IS INITIAL.
              t407 = abap_true.
            ENDIF.
            t406 = xsdbool( t407 = abap_false ).
            t405 = t406.
            IF t406 = abap_true.
              DATA t409 TYPE abap_bool.
              DATA t410 TYPE REF TO object.
              DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t412) = CAST zlnt_runtime_dyna_a429568d5be8( t403 ).
              t411 = t412.
              DATA t413 TYPE REF TO object.
              t413 = t411->as_ref( ).
              t410 ?= t413.
              t409 = xsdbool( t410 IS BOUND AND t410 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
              t405 = t409.
            ENDIF.
            t402 = t405.
            t401 = t402.
            IF t402 = abap_true.
              DATA(t414) = VALUE abap_bool( ).
              DATA t415 TYPE REF TO zcl_lnt_expression_node.
              DATA(t416) = CAST zcl_lnt_expression_node( t5 ).
              t415 = t416.
              DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t418.
              t417 = t418.
              DATA(t419) = VALUE abap_bool( ).
              DATA(t420) = CAST zcl_lnt_expression_node( t415 ).
              IF t420 IS INITIAL.
                t419 = abap_true.
              ENDIF.
              t414 = t419.
              t401 = t414.
            ENDIF.
            IF t401 = abap_true.
              DATA t421 TYPE string.
              DATA(t422) = |Generic type, cannot be instantiated|.
              t421 = t422.
              DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t424) = CAST zcl_lnt_syntax_input( t2 ).
              t423 = t424->issues.
              DATA t425 TYPE REF TO zcl_lnt_issue.
              DATA(t426) = CAST zcl_lnt_syntax_input( t2 ).
              DATA t427 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t428) = CAST zcl_lnt_statement_node( t1 ).
              t427 = t428->get_first_token( ).
              DATA(t429) = t421.
              DATA t430 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t430.
              t425 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t426 i_token = t427 i_message_26cb = t429 i_fix = t430 ).
              APPEND t425 TO t423->items.
              RETURN.
            ELSE.
              DATA(t431) = VALUE abap_bool( ).
              DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t433) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
              t432 = t433.
              DATA(t434) = VALUE abap_bool( ).
              DATA(t435) = VALUE abap_bool( ).
              DATA(t436) = VALUE abap_bool( ).
              DATA(t437) = CAST zlnt_runtime_dyna_a429568d5be8( t432 ).
              IF t437 IS INITIAL.
                t436 = abap_true.
              ENDIF.
              t435 = xsdbool( t436 = abap_false ).
              t434 = t435.
              IF t435 = abap_true.
                DATA t438 TYPE abap_bool.
                DATA t439 TYPE REF TO object.
                DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t441) = CAST zlnt_runtime_dyna_a429568d5be8( t432 ).
                t440 = t441.
                DATA t442 TYPE REF TO object.
                t442 = t440->as_ref( ).
                t439 ?= t442.
                t438 = xsdbool( t439 IS BOUND AND t439 IS INSTANCE OF zcl_lnt_object_reference_type ).
                t434 = t438.
              ENDIF.
              t431 = t434.
              IF t431 = abap_true.
                DATA t443 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t444 TYPE REF TO zcl_lnt_fi_identifier.
                DATA t445 TYPE REF TO zcl_lnt_object_reference_type.
                DATA t446 TYPE REF TO zcl_lnt_object_reference_type.
                DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t448) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
                t447 = t448.
                DATA t449 TYPE REF TO object.
                t449 = t447->as_ref( ).
                t446 ?= t449.
                t445 = t446.
                DATA t450 TYPE REF TO zcl_lnt_fi_identifier.
                DATA(t451) = CAST zcl_lnt_object_reference_type( t445 ).
                t450 = t451->identifier.
                t444 = t450.
                t443 = t444.
                DATA t452 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t452.
                DATA t453 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t453.
                DATA t454 TYPE REF TO zcl_lnt_current_scope.
                DATA t455 TYPE REF TO zcl_lnt_current_scope.
                DATA(t456) = CAST zcl_lnt_syntax_input( t2 ).
                t455 = t456->scope.
                t454 = t455.
                DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t457.
                DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t458.
                DATA(t459) = abap_true.
                IF t459 = abap_true.
                  DATA(t460) = VALUE string( ).
                  DATA t461 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA(t462) = CAST zcl_lnt_fi_identifier( t443 ).
                  t461 = t462.
                  DATA(t463) = VALUE string( ).
                  DATA t464 TYPE string.
                  DATA t465 TYPE string.
                  DATA t466 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t467 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t468) = CAST zcl_lnt_fi_identifier( t461 ).
                  t467 = t468->token.
                  t466 = t467.
                  DATA t469 TYPE string.
                  DATA(t470) = CAST zcl_lnt_abstract_token( t466 ).
                  t469 = t470->str.
                  t465 = t469.
                  t464 = t465.
                  DATA(t471) = VALUE abap_bool( ).
                  DATA(t472) = VALUE string( ).
                  DATA(t473) = t464.
                  DATA(t474) = 0.
                  DATA(t475) = 1.
                  DATA(t476) = strlen( t473 ).
                  IF t474 < 0.
                    t474 = t474 + t476.
                    IF t474 < 0.
                      t474 = 0.
                    ENDIF.
                  ENDIF.
                  IF t474 > t476 OR t475 <= 0.
                    CLEAR t472.
                  ELSE.
                    IF t475 > t476 - t474.
                      t475 = t476 - t474.
                    ENDIF.
                    t472 = t473+t474(t475).
                  ENDIF.
                  DATA(t477) = |!|.
                  t471 = xsdbool( t472 = t477 ).
                  IF t471 = abap_true.
                    DATA(t478) = VALUE string( ).
                    DATA t479 TYPE string.
                    DATA(t480) = t464.
                    t479 = t480.
                    DATA(t481) = VALUE string( ).
                    DATA(t482) = t479.
                    DATA(t483) = 1.
                    DATA t484 TYPE i.
                    DATA(t485) = t479.
                    DATA(t486) = strlen( t485 ).
                    t484 = t486.
                    DATA(t487) = strlen( t482 ).
                    IF t483 < 0.
                      t483 = t483 + t487.
                      IF t483 < 0.
                        t483 = 0.
                      ENDIF.
                    ENDIF.
                    IF t483 > t487 OR t484 <= 0.
                      CLEAR t481.
                    ELSE.
                      IF t484 > t487 - t483.
                        t484 = t487 - t483.
                      ENDIF.
                      t481 = t482+t483(t484).
                    ENDIF.
                    t478 = t481.
                    t464 = t478.
                  ENDIF.
                  DATA(t488) = t464.
                  t463 = t488.
                  t460 = t463.
                  DATA(t489) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t489->has = abap_true.
                  t489->value = t460.
                  t458 = t489.
                ELSE.
                  DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t490.
                  t458 = t490.
                ENDIF.
                t457 = t458.
                DATA t491 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t491.
                DATA(t492) = VALUE abap_bool( ).
                DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t494) = CAST zlnt_runtime_opti_4ba3bdccd169( t457 ).
                t493 = t494.
                DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t496.
                t495 = t496.
                DATA(t497) = VALUE abap_bool( ).
                DATA(t498) = CAST zlnt_runtime_opti_4ba3bdccd169( t493 ).
                IF t498 IS INITIAL.
                  t497 = abap_true.
                ELSEIF t498->has = abap_false.
                  t497 = abap_true.
                ENDIF.
                t492 = t497.
                IF t492 = abap_true.
                  DATA t499 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t499.
                  t491 = t499.
                ELSE.
                  DATA t500 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t500.
                  DATA t501 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t501.
                  DATA t502 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t502.
                  DATA t503 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t503.
                  DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t504.
                  DATA(t505) = abap_true.
                  IF t505 = abap_true.
                    DATA t506 TYPE string.
                    DATA(t507) = CAST zlnt_runtime_opti_4ba3bdccd169( t457 ).
                    t506 = t507->value.
                    DATA(t508) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t508->has = abap_true.
                    t508->value = t506.
                    t504 = t508.
                  ELSE.
                    DATA t509 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t509.
                    t504 = t509.
                  ENDIF.
                  t503 = t504.
                  DATA t510 TYPE REF TO zif_lnt_class_definition.
                  CLEAR t510.
                  DATA(t511) = VALUE abap_bool( ).
                  DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t513) = CAST zlnt_runtime_opti_4ba3bdccd169( t503 ).
                  t512 = t513.
                  DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t515.
                  t514 = t515.
                  DATA(t516) = VALUE abap_bool( ).
                  DATA(t517) = CAST zlnt_runtime_opti_4ba3bdccd169( t512 ).
                  IF t517 IS INITIAL.
                    t516 = abap_true.
                  ELSEIF t517->has = abap_false.
                    t516 = abap_true.
                  ENDIF.
                  t511 = t516.
                  IF t511 = abap_true.
                    DATA t518 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t518.
                    t510 = t518.
                  ELSE.
                    DATA t519 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t519.
                    DATA t520 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t520.
                    DATA t521 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t521.
                    DATA t522 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    DATA t523 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    DATA(t524) = CAST zcl_lnt_current_scope( t454 ).
                    t523 = t524->current.
                    t522 = t523.
                    DATA t525 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t525.
                    DATA(t526) = VALUE abap_bool( ).
                    DATA(t527) = CAST zcl_lnt_spaghetti_scope_node( t522 ).
                    IF t527 IS INITIAL.
                      t526 = abap_true.
                    ENDIF.
                    IF t526 = abap_true.
                      DATA t528 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t528.
                      t525 = t528.
                    ELSE.
                      DATA t529 TYPE REF TO zif_lnt_class_definition.
                      DATA t530 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA(t531) = CAST zcl_lnt_spaghetti_scope_node( t522 ).
                      t530 = t531.
                      DATA t532 TYPE string.
                      DATA(t533) = CAST zlnt_runtime_opti_4ba3bdccd169( t503 ).
                      t532 = t533->value.
                      t529 = t530->find_class_definition( i_name = t532 ).
                      t525 = t529.
                    ENDIF.
                    t521 = t525.
                    t520 = t521.
                    DATA t534 TYPE REF TO zif_lnt_class_definition.
                    CLEAR t534.
                    DATA t535 TYPE abap_bool.
                    DATA(t536) = CAST zif_lnt_class_definition( t520 ).
                    t535 = xsdbool( t536 IS BOUND ).
                    IF t535 = abap_true.
                      DATA t537 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t537.
                      DATA(t538) = abap_true.
                      IF t538 = abap_true.
                        DATA t539 TYPE REF TO zif_lnt_class_definition.
                        DATA(t540) = CAST zif_lnt_class_definition( t520 ).
                        t539 = t540.
                        t537 = t539.
                      ELSE.
                        DATA t541 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t541.
                        t537 = t541.
                      ENDIF.
                      t534 = t537.
                    ELSE.
                      DATA t542 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t542.
                      DATA t543 TYPE REF TO zcl_lnt_class.
                      CLEAR t543.
                      DATA t544 TYPE REF TO zcl_lnt_class.
                      CLEAR t544.
                      DATA t545 TYPE REF TO zif_lnt_object.
                      CLEAR t545.
                      DATA t546 TYPE REF TO zif_lnt_registry.
                      DATA(t547) = CAST zcl_lnt_current_scope( t454 ).
                      t546 = t547->reg.
                      DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t548.
                      DATA(t549) = abap_true.
                      IF t549 = abap_true.
                        DATA(t550) = |CLAS|.
                        DATA(t551) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t551->has = abap_true.
                        t551->value = t550.
                        t548 = t551.
                      ELSE.
                        DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t552.
                        t548 = t552.
                      ENDIF.
                      DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t553.
                      DATA(t554) = abap_true.
                      IF t554 = abap_true.
                        DATA t555 TYPE string.
                        DATA(t556) = CAST zlnt_runtime_opti_4ba3bdccd169( t503 ).
                        t555 = t556->value.
                        DATA(t557) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t557->has = abap_true.
                        t557->value = t555.
                        t553 = t557.
                      ELSE.
                        DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t558.
                        t553 = t558.
                      ENDIF.
                      t545 = t546->get_object( i_type_9913 = t548 i_name = t553 ).
                      DATA t559 TYPE REF TO object.
                      t559 = t545.
                      t544 ?= t559.
                      t543 = t544.
                      DATA t560 TYPE REF TO zif_lnt_class_definition.
                      CLEAR t560.
                      DATA t561 TYPE abap_bool.
                      DATA(t562) = CAST zcl_lnt_class( t543 ).
                      t561 = xsdbool( t562 IS BOUND ).
                      IF t561 = abap_true.
                        DATA t563 TYPE REF TO zif_lnt_class_definition.
                        DATA t564 TYPE REF TO zcl_lnt_class.
                        DATA(t565) = CAST zcl_lnt_class( t543 ).
                        t564 = t565.
                        t563 = t564->gt_dfn_ins_src_obj_cls_ts_clss( ).
                        t560 = t563.
                      ELSE.
                        DATA t566 TYPE REF TO zif_lnt_class_definition.
                        CLEAR t566.
                        t560 = t566.
                      ENDIF.
                      t542 = t560.
                      t534 = t542.
                    ENDIF.
                    t519 = t534.
                    t510 = t519.
                  ENDIF.
                  t502 = t510.
                  t501 = t502.
                  DATA t567 TYPE REF TO zif_lnt_interface_definition.
                  CLEAR t567.
                  DATA t568 TYPE abap_bool.
                  DATA(t569) = CAST zif_lnt_class_definition( t501 ).
                  t568 = xsdbool( t569 IS BOUND ).
                  IF t568 = abap_true.
                    DATA t570 TYPE REF TO zif_lnt_interface_definition.
                    DATA t571 TYPE REF TO zif_lnt_class_definition.
                    DATA(t572) = CAST zif_lnt_class_definition( t501 ).
                    t571 = t572.
                    t570 ?= t571.
                    t567 = t570.
                  ELSE.
                    DATA t573 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t573.
                    DATA t574 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t574.
                    DATA t575 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t575.
                    DATA t576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t576.
                    DATA t577 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t577.
                    DATA(t578) = abap_true.
                    IF t578 = abap_true.
                      DATA t579 TYPE string.
                      DATA(t580) = CAST zlnt_runtime_opti_4ba3bdccd169( t457 ).
                      t579 = t580->value.
                      DATA(t581) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t581->has = abap_true.
                      t581->value = t579.
                      t577 = t581.
                    ELSE.
                      DATA t582 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t582.
                      t577 = t582.
                    ENDIF.
                    t576 = t577.
                    DATA t583 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t583.
                    DATA(t584) = VALUE abap_bool( ).
                    DATA t585 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t586) = CAST zlnt_runtime_opti_4ba3bdccd169( t576 ).
                    t585 = t586.
                    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t588.
                    t587 = t588.
                    DATA(t589) = VALUE abap_bool( ).
                    DATA(t590) = CAST zlnt_runtime_opti_4ba3bdccd169( t585 ).
                    IF t590 IS INITIAL.
                      t589 = abap_true.
                    ELSEIF t590->has = abap_false.
                      t589 = abap_true.
                    ENDIF.
                    t584 = t589.
                    IF t584 = abap_true.
                      DATA t591 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t591.
                      t583 = t591.
                    ELSE.
                      DATA t592 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t592.
                      DATA t593 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t593.
                      DATA t594 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t594.
                      DATA t595 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA t596 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA(t597) = CAST zcl_lnt_current_scope( t454 ).
                      t596 = t597->current.
                      t595 = t596.
                      DATA t598 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t598.
                      DATA(t599) = VALUE abap_bool( ).
                      DATA(t600) = CAST zcl_lnt_spaghetti_scope_node( t595 ).
                      IF t600 IS INITIAL.
                        t599 = abap_true.
                      ENDIF.
                      IF t599 = abap_true.
                        DATA t601 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t601.
                        t598 = t601.
                      ELSE.
                        DATA t602 TYPE REF TO zif_lnt_interface_definition.
                        DATA t603 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA(t604) = CAST zcl_lnt_spaghetti_scope_node( t595 ).
                        t603 = t604.
                        DATA t605 TYPE string.
                        DATA(t606) = CAST zlnt_runtime_opti_4ba3bdccd169( t576 ).
                        t605 = t606->value.
                        t602 = t603->find_interface_definition( i_name = t605 ).
                        t598 = t602.
                      ENDIF.
                      t594 = t598.
                      t593 = t594.
                      DATA t607 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t607.
                      DATA t608 TYPE abap_bool.
                      DATA(t609) = CAST zif_lnt_interface_definition( t593 ).
                      t608 = xsdbool( t609 IS BOUND ).
                      IF t608 = abap_true.
                        DATA t610 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t610.
                        DATA(t611) = abap_true.
                        IF t611 = abap_true.
                          DATA t612 TYPE REF TO zif_lnt_interface_definition.
                          DATA(t613) = CAST zif_lnt_interface_definition( t593 ).
                          t612 = t613.
                          t610 = t612.
                        ELSE.
                          DATA t614 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t614.
                          t610 = t614.
                        ENDIF.
                        t607 = t610.
                      ELSE.
                        DATA t615 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t615.
                        DATA t616 TYPE REF TO zcl_lnt_ob_interface.
                        CLEAR t616.
                        DATA t617 TYPE REF TO zcl_lnt_ob_interface.
                        CLEAR t617.
                        DATA t618 TYPE REF TO zif_lnt_object.
                        CLEAR t618.
                        DATA t619 TYPE REF TO zif_lnt_registry.
                        DATA(t620) = CAST zcl_lnt_current_scope( t454 ).
                        t619 = t620->reg.
                        DATA t621 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t621.
                        DATA(t622) = abap_true.
                        IF t622 = abap_true.
                          DATA(t623) = |INTF|.
                          DATA(t624) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t624->has = abap_true.
                          t624->value = t623.
                          t621 = t624.
                        ELSE.
                          DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t625.
                          t621 = t625.
                        ENDIF.
                        DATA t626 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t626.
                        DATA(t627) = abap_true.
                        IF t627 = abap_true.
                          DATA t628 TYPE string.
                          DATA(t629) = CAST zlnt_runtime_opti_4ba3bdccd169( t576 ).
                          t628 = t629->value.
                          DATA(t630) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t630->has = abap_true.
                          t630->value = t628.
                          t626 = t630.
                        ELSE.
                          DATA t631 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t631.
                          t626 = t631.
                        ENDIF.
                        t618 = t619->get_object( i_type_9913 = t621 i_name = t626 ).
                        DATA t632 TYPE REF TO object.
                        t632 = t618.
                        t617 ?= t632.
                        t616 = t617.
                        DATA t633 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t633.
                        DATA t634 TYPE abap_bool.
                        DATA(t635) = CAST zcl_lnt_ob_interface( t616 ).
                        t634 = xsdbool( t635 IS BOUND ).
                        IF t634 = abap_true.
                          DATA t636 TYPE REF TO zif_lnt_interface_definition.
                          DATA t637 TYPE REF TO zcl_lnt_ob_interface.
                          DATA t638 TYPE REF TO zcl_lnt_ob_interface.
                          DATA(t639) = CAST zcl_lnt_ob_interface( t616 ).
                          t638 = t639.
                          t637 = t638.
                          DATA t640 TYPE REF TO zif_lnt_interface_definition.
                          DATA(t641) = CAST zcl_lnt_ob_interface( t637 ).
                          t640 = t641->def.
                          t636 = t640.
                          t633 = t636.
                        ELSE.
                          DATA t642 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t642.
                          t633 = t642.
                        ENDIF.
                        t615 = t633.
                        t607 = t615.
                      ENDIF.
                      t592 = t607.
                      t583 = t592.
                    ENDIF.
                    t575 = t583.
                    t574 = t575.
                    DATA t643 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t643.
                    DATA t644 TYPE abap_bool.
                    DATA(t645) = CAST zif_lnt_interface_definition( t574 ).
                    t644 = xsdbool( t645 IS BOUND ).
                    IF t644 = abap_true.
                      DATA t646 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t646.
                      DATA(t647) = abap_true.
                      IF t647 = abap_true.
                        DATA t648 TYPE REF TO zif_lnt_interface_definition.
                        DATA(t649) = CAST zif_lnt_interface_definition( t574 ).
                        t648 = t649.
                        t646 = t648.
                      ELSE.
                        DATA t650 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t650.
                        t646 = t650.
                      ENDIF.
                      t643 = t646.
                    ELSE.
                      DATA t651 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t651.
                      t643 = t651.
                    ENDIF.
                    t573 = t643.
                    t567 = t573.
                  ENDIF.
                  t500 = t567.
                  t491 = t500.
                ENDIF.
                t453 = t491.
                t452 = t453.
                DATA t652 TYPE abap_bool.
                DATA t653 TYPE abap_bool.
                DATA(t654) = CAST zif_lnt_interface_definition( t452 ).
                t653 = xsdbool( t654 IS BOUND AND t654 IS INSTANCE OF zcl_lnt_interface_definition ).
                t652 = t653.
                IF t653 = abap_true.
                  DATA(t655) = VALUE abap_bool( ).
                  DATA t656 TYPE REF TO zcl_lnt_expression_node.
                  DATA(t657) = CAST zcl_lnt_expression_node( t5 ).
                  t656 = t657.
                  DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t659.
                  t658 = t659.
                  DATA(t660) = VALUE abap_bool( ).
                  DATA(t661) = CAST zcl_lnt_expression_node( t656 ).
                  IF t661 IS INITIAL.
                    t660 = abap_true.
                  ENDIF.
                  t655 = t660.
                  t652 = t655.
                ENDIF.
                IF t652 = abap_true.
                  DATA t662 TYPE string.
                  DATA(t663) = |Interface reference, cannot be instantiated|.
                  t662 = t663.
                  DATA t664 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t665) = CAST zcl_lnt_syntax_input( t2 ).
                  t664 = t665->issues.
                  DATA t666 TYPE REF TO zcl_lnt_issue.
                  DATA(t667) = CAST zcl_lnt_syntax_input( t2 ).
                  DATA t668 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t669) = CAST zcl_lnt_statement_node( t1 ).
                  t668 = t669->get_first_token( ).
                  DATA(t670) = t662.
                  DATA t671 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t671.
                  t666 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t667 i_token = t668 i_message_26cb = t670 i_fix = t671 ).
                  APPEND t666 TO t664->items.
                  RETURN.
                ELSE.
                  DATA(t672) = VALUE abap_bool( ).
                  DATA(t673) = VALUE abap_bool( ).
                  DATA(t674) = VALUE abap_bool( ).
                  DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t676) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
                  t675 = t676.
                  DATA(t677) = VALUE abap_bool( ).
                  DATA(t678) = VALUE abap_bool( ).
                  DATA(t679) = VALUE abap_bool( ).
                  DATA(t680) = CAST zlnt_runtime_dyna_a429568d5be8( t675 ).
                  IF t680 IS INITIAL.
                    t679 = abap_true.
                  ENDIF.
                  t678 = xsdbool( t679 = abap_false ).
                  t677 = t678.
                  IF t678 = abap_true.
                    DATA t681 TYPE abap_bool.
                    DATA t682 TYPE REF TO object.
                    DATA t683 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t684) = CAST zlnt_runtime_dyna_a429568d5be8( t675 ).
                    t683 = t684.
                    DATA t685 TYPE REF TO object.
                    t685 = t683->as_ref( ).
                    t682 ?= t685.
                    t681 = xsdbool( t682 IS BOUND AND t682 IS INSTANCE OF zcl_lnt_object_reference_type ).
                    t677 = t681.
                  ENDIF.
                  t674 = t677.
                  t673 = t674.
                  IF t674 = abap_true.
                    DATA(t686) = VALUE abap_bool( ).
                    DATA t687 TYPE REF TO zcl_lnt_expression_node.
                    DATA(t688) = CAST zcl_lnt_expression_node( t5 ).
                    t687 = t688.
                    DATA t689 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t690 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t690.
                    t689 = t690.
                    DATA(t691) = VALUE abap_bool( ).
                    DATA(t692) = CAST zcl_lnt_expression_node( t687 ).
                    IF t692 IS INITIAL.
                      t691 = abap_true.
                    ENDIF.
                    t686 = t691.
                    t673 = t686.
                  ENDIF.
                  t672 = t673.
                  IF t673 = abap_true.
                    DATA(t693) = VALUE abap_bool( ).
                    DATA t694 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t694.
                    DATA t695 TYPE REF TO zcl_lnt_current_scope.
                    DATA t696 TYPE REF TO zcl_lnt_current_scope.
                    DATA(t697) = CAST zcl_lnt_syntax_input( t2 ).
                    t696 = t697->scope.
                    t695 = t696.
                    DATA t698 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t698.
                    DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t699.
                    DATA t700 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t701 TYPE REF TO zcl_lnt_object_reference_type.
                    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA(t703) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
                    t702 = t703.
                    DATA t704 TYPE REF TO object.
                    t704 = t702->as_ref( ).
                    t701 ?= t704.
                    t700 = t701.
                    DATA t705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t705.
                    DATA t706 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA t707 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA(t708) = CAST zcl_lnt_abstract_type( t700 ).
                    t707 = t708->data_56cc.
                    t706 = t707.
                    DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t709.
                    DATA(t710) = VALUE abap_bool( ).
                    DATA(t711) = CAST zcl_lnt_abstract_type_data( t706 ).
                    IF t711 IS INITIAL.
                      t710 = abap_true.
                    ENDIF.
                    IF t710 = abap_true.
                      DATA t712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t712.
                      t709 = t712.
                    ELSE.
                      DATA t713 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t714 TYPE REF TO zcl_lnt_abstract_type_data.
                      DATA(t715) = CAST zcl_lnt_abstract_type_data( t706 ).
                      t714 = t715.
                      t713 = t714->qualified_name.
                      t709 = t713.
                    ENDIF.
                    t705 = t709.
                    t699 = t705.
                    t698 = t699.
                    DATA t716 TYPE REF TO zif_lnt_interface_definition.
                    CLEAR t716.
                    DATA(t717) = VALUE abap_bool( ).
                    DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t719) = CAST zlnt_runtime_opti_4ba3bdccd169( t698 ).
                    t718 = t719.
                    DATA t720 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    DATA t721 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t721.
                    t720 = t721.
                    DATA(t722) = VALUE abap_bool( ).
                    DATA(t723) = CAST zlnt_runtime_opti_4ba3bdccd169( t718 ).
                    IF t723 IS INITIAL.
                      t722 = abap_true.
                    ELSEIF t723->has = abap_false.
                      t722 = abap_true.
                    ENDIF.
                    t717 = t722.
                    IF t717 = abap_true.
                      DATA t724 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t724.
                      t716 = t724.
                    ELSE.
                      DATA t725 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t725.
                      DATA t726 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t726.
                      DATA t727 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t727.
                      DATA t728 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA t729 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                      DATA(t730) = CAST zcl_lnt_current_scope( t695 ).
                      t729 = t730->current.
                      t728 = t729.
                      DATA t731 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t731.
                      DATA(t732) = VALUE abap_bool( ).
                      DATA(t733) = CAST zcl_lnt_spaghetti_scope_node( t728 ).
                      IF t733 IS INITIAL.
                        t732 = abap_true.
                      ENDIF.
                      IF t732 = abap_true.
                        DATA t734 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t734.
                        t731 = t734.
                      ELSE.
                        DATA t735 TYPE REF TO zif_lnt_interface_definition.
                        DATA t736 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                        DATA(t737) = CAST zcl_lnt_spaghetti_scope_node( t728 ).
                        t736 = t737.
                        DATA t738 TYPE string.
                        DATA(t739) = CAST zlnt_runtime_opti_4ba3bdccd169( t698 ).
                        t738 = t739->value.
                        t735 = t736->find_interface_definition( i_name = t738 ).
                        t731 = t735.
                      ENDIF.
                      t727 = t731.
                      t726 = t727.
                      DATA t740 TYPE REF TO zif_lnt_interface_definition.
                      CLEAR t740.
                      DATA t741 TYPE abap_bool.
                      DATA(t742) = CAST zif_lnt_interface_definition( t726 ).
                      t741 = xsdbool( t742 IS BOUND ).
                      IF t741 = abap_true.
                        DATA t743 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t743.
                        DATA(t744) = abap_true.
                        IF t744 = abap_true.
                          DATA t745 TYPE REF TO zif_lnt_interface_definition.
                          DATA(t746) = CAST zif_lnt_interface_definition( t726 ).
                          t745 = t746.
                          t743 = t745.
                        ELSE.
                          DATA t747 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t747.
                          t743 = t747.
                        ENDIF.
                        t740 = t743.
                      ELSE.
                        DATA t748 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t748.
                        DATA t749 TYPE REF TO zcl_lnt_ob_interface.
                        CLEAR t749.
                        DATA t750 TYPE REF TO zcl_lnt_ob_interface.
                        CLEAR t750.
                        DATA t751 TYPE REF TO zif_lnt_object.
                        CLEAR t751.
                        DATA t752 TYPE REF TO zif_lnt_registry.
                        DATA(t753) = CAST zcl_lnt_current_scope( t695 ).
                        t752 = t753->reg.
                        DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t754.
                        DATA(t755) = abap_true.
                        IF t755 = abap_true.
                          DATA(t756) = |INTF|.
                          DATA(t757) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t757->has = abap_true.
                          t757->value = t756.
                          t754 = t757.
                        ELSE.
                          DATA t758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t758.
                          t754 = t758.
                        ENDIF.
                        DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t759.
                        DATA(t760) = abap_true.
                        IF t760 = abap_true.
                          DATA t761 TYPE string.
                          DATA(t762) = CAST zlnt_runtime_opti_4ba3bdccd169( t698 ).
                          t761 = t762->value.
                          DATA(t763) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t763->has = abap_true.
                          t763->value = t761.
                          t759 = t763.
                        ELSE.
                          DATA t764 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t764.
                          t759 = t764.
                        ENDIF.
                        t751 = t752->get_object( i_type_9913 = t754 i_name = t759 ).
                        DATA t765 TYPE REF TO object.
                        t765 = t751.
                        t750 ?= t765.
                        t749 = t750.
                        DATA t766 TYPE REF TO zif_lnt_interface_definition.
                        CLEAR t766.
                        DATA t767 TYPE abap_bool.
                        DATA(t768) = CAST zcl_lnt_ob_interface( t749 ).
                        t767 = xsdbool( t768 IS BOUND ).
                        IF t767 = abap_true.
                          DATA t769 TYPE REF TO zif_lnt_interface_definition.
                          DATA t770 TYPE REF TO zcl_lnt_ob_interface.
                          DATA t771 TYPE REF TO zcl_lnt_ob_interface.
                          DATA(t772) = CAST zcl_lnt_ob_interface( t749 ).
                          t771 = t772.
                          t770 = t771.
                          DATA t773 TYPE REF TO zif_lnt_interface_definition.
                          DATA(t774) = CAST zcl_lnt_ob_interface( t770 ).
                          t773 = t774->def.
                          t769 = t773.
                          t766 = t769.
                        ELSE.
                          DATA t775 TYPE REF TO zif_lnt_interface_definition.
                          CLEAR t775.
                          t766 = t775.
                        ENDIF.
                        t748 = t766.
                        t740 = t748.
                      ENDIF.
                      t725 = t740.
                      t716 = t725.
                    ENDIF.
                    t694 = t716.
                    t693 = xsdbool( t694 IS BOUND ).
                    t672 = t693.
                  ENDIF.
                  IF t672 = abap_true.
                    DATA t776 TYPE string.
                    DATA(t777) = |Interface reference, cannot be instantiated|.
                    t776 = t777.
                    DATA t778 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t779) = CAST zcl_lnt_syntax_input( t2 ).
                    t778 = t779->issues.
                    DATA t780 TYPE REF TO zcl_lnt_issue.
                    DATA(t781) = CAST zcl_lnt_syntax_input( t2 ).
                    DATA t782 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t783) = CAST zcl_lnt_statement_node( t1 ).
                    t782 = t783->get_first_token( ).
                    DATA(t784) = t776.
                    DATA t785 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t785.
                    t780 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t781 i_token = t782 i_message_26cb = t784 i_fix = t785 ).
                    APPEND t780 TO t778->items.
                    RETURN.
                  ELSE.
                    DATA t786 TYPE abap_bool.
                    DATA t787 TYPE abap_bool.
                    DATA(t788) = CAST zif_lnt_interface_definition( t452 ).
                    t787 = xsdbool( t788 IS BOUND AND t788 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                    t786 = t787.
                    IF t787 = abap_true.
                      DATA(t789) = VALUE abap_bool( ).
                      DATA t790 TYPE REF TO zif_lnt_class_definition.
                      DATA(t791) = CAST zif_lnt_class_definition( t3 ).
                      t790 = t791.
                      DATA t792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t793.
                      t792 = t793.
                      DATA(t794) = VALUE abap_bool( ).
                      DATA(t795) = CAST zif_lnt_class_definition( t790 ).
                      IF t795 IS INITIAL.
                        t794 = abap_true.
                      ENDIF.
                      t789 = t794.
                      t786 = t789.
                    ENDIF.
                    IF t786 = abap_true.
                      DATA t796 TYPE REF TO zcl_lnt_ty_class_definition.
                      DATA(t797) = CAST zif_lnt_interface_definition( t452 ).
                      DATA t798 TYPE REF TO object.
                      t798 = t797.
                      t796 ?= t798.
                      t3 = t796.
                    ENDIF.
                  ENDIF.
                ENDIF.
                DATA(t799) = VALUE abap_bool( ).
                DATA(t800) = VALUE abap_bool( ).
                DATA(t801) = VALUE abap_bool( ).
                DATA t802 TYPE REF TO zcl_lnt_expression_node.
                DATA(t803) = CAST zcl_lnt_expression_node( t5 ).
                t802 = t803.
                DATA t804 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t805.
                t804 = t805.
                DATA(t806) = VALUE abap_bool( ).
                DATA(t807) = CAST zcl_lnt_expression_node( t802 ).
                IF t807 IS INITIAL.
                  t806 = abap_true.
                ENDIF.
                t801 = t806.
                t800 = t801.
                IF t801 = abap_true.
                  DATA t808 TYPE abap_bool.
                  DATA(t809) = CAST zif_lnt_interface_definition( t452 ).
                  t808 = xsdbool( t809 IS BOUND AND t809 IS INSTANCE OF zcl_lnt_ty_class_definition ).
                  t800 = t808.
                ENDIF.
                t799 = t800.
                IF t800 = abap_true.
                  DATA t810 TYPE abap_bool.
                  DATA t811 TYPE abap_bool.
                  DATA t812 TYPE REF TO zcl_lnt_ty_class_definition.
                  DATA t813 TYPE REF TO zcl_lnt_ty_class_definition.
                  DATA(t814) = CAST zif_lnt_interface_definition( t452 ).
                  DATA t815 TYPE REF TO object.
                  t815 = t814.
                  t813 ?= t815.
                  t812 = t813.
                  DATA t816 TYPE abap_bool.
                  DATA(t817) = CAST zcl_lnt_ty_class_definition( t812 ).
                  t816 = t817->abstract.
                  t811 = t816.
                  DATA(t818) = abap_true.
                  t810 = xsdbool( t811 = t818 ).
                  t799 = t810.
                ENDIF.
                IF t799 = abap_true.
                  DATA(t819) = VALUE string( ).
                  DATA(t820) = VALUE string( ).
                  DATA(t821) = VALUE string( ).
                  DATA t822 TYPE REF TO zcl_lnt_fi_identifier.
                  DATA(t823) = CAST zcl_lnt_fi_identifier( t443 ).
                  t822 = t823.
                  DATA(t824) = VALUE string( ).
                  DATA t825 TYPE string.
                  DATA t826 TYPE string.
                  DATA t827 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t828 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t829) = CAST zcl_lnt_fi_identifier( t822 ).
                  t828 = t829->token.
                  t827 = t828.
                  DATA t830 TYPE string.
                  DATA(t831) = CAST zcl_lnt_abstract_token( t827 ).
                  t830 = t831->str.
                  t826 = t830.
                  t825 = t826.
                  DATA(t832) = VALUE abap_bool( ).
                  DATA(t833) = VALUE string( ).
                  DATA(t834) = t825.
                  DATA(t835) = 0.
                  DATA(t836) = 1.
                  DATA(t837) = strlen( t834 ).
                  IF t835 < 0.
                    t835 = t835 + t837.
                    IF t835 < 0.
                      t835 = 0.
                    ENDIF.
                  ENDIF.
                  IF t835 > t837 OR t836 <= 0.
                    CLEAR t833.
                  ELSE.
                    IF t836 > t837 - t835.
                      t836 = t837 - t835.
                    ENDIF.
                    t833 = t834+t835(t836).
                  ENDIF.
                  DATA(t838) = |!|.
                  t832 = xsdbool( t833 = t838 ).
                  IF t832 = abap_true.
                    DATA(t839) = VALUE string( ).
                    DATA t840 TYPE string.
                    DATA(t841) = t825.
                    t840 = t841.
                    DATA(t842) = VALUE string( ).
                    DATA(t843) = t840.
                    DATA(t844) = 1.
                    DATA t845 TYPE i.
                    DATA(t846) = t840.
                    DATA(t847) = strlen( t846 ).
                    t845 = t847.
                    DATA(t848) = strlen( t843 ).
                    IF t844 < 0.
                      t844 = t844 + t848.
                      IF t844 < 0.
                        t844 = 0.
                      ENDIF.
                    ENDIF.
                    IF t844 > t848 OR t845 <= 0.
                      CLEAR t842.
                    ELSE.
                      IF t845 > t848 - t844.
                        t845 = t848 - t844.
                      ENDIF.
                      t842 = t843+t844(t845).
                    ENDIF.
                    t839 = t842.
                    t825 = t839.
                  ENDIF.
                  DATA(t849) = t825.
                  t824 = t849.
                  t821 = t824.
                  DATA(t850) = | is abstract, cannot be instantiated|.
                  DATA(t851) = strlen( t821 ).
                  t820 = |{ t821 }{ t850 }|.
                  t819 = t820.
                  DATA t852 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t853) = CAST zcl_lnt_syntax_input( t2 ).
                  t852 = t853->issues.
                  DATA t854 TYPE REF TO zcl_lnt_issue.
                  DATA(t855) = CAST zcl_lnt_syntax_input( t2 ).
                  DATA t856 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t857) = CAST zcl_lnt_statement_node( t1 ).
                  t856 = t857->get_first_token( ).
                  DATA(t858) = t819.
                  DATA t859 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t859.
                  t854 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t855 i_token = t856 i_message_26cb = t858 i_fix = t859 ).
                  APPEND t854 TO t852->items.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t860) = VALUE abap_bool( ).
      DATA(t861) = VALUE abap_bool( ).
      DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t863) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
      t862 = t863.
      DATA(t864) = VALUE abap_bool( ).
      DATA(t865) = VALUE abap_bool( ).
      DATA(t866) = VALUE abap_bool( ).
      DATA(t867) = CAST zlnt_runtime_dyna_a429568d5be8( t862 ).
      IF t867 IS INITIAL.
        t866 = abap_true.
      ENDIF.
      t865 = xsdbool( t866 = abap_false ).
      t864 = t865.
      IF t865 = abap_true.
        DATA t868 TYPE abap_bool.
        DATA t869 TYPE REF TO object.
        DATA t870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t871) = CAST zlnt_runtime_dyna_a429568d5be8( t862 ).
        t870 = t871.
        DATA t872 TYPE REF TO object.
        t872 = t870->as_ref( ).
        t869 ?= t872.
        t868 = xsdbool( t869 IS BOUND AND t869 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t864 = t868.
      ENDIF.
      t861 = t864.
      t860 = t861.
      IF t861 = abap_true.
        DATA(t873) = VALUE abap_bool( ).
        DATA t874 TYPE REF TO zif_lnt_class_definition.
        DATA(t875) = CAST zif_lnt_class_definition( t3 ).
        t874 = t875.
        DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t877.
        t876 = t877.
        DATA(t878) = VALUE abap_bool( ).
        DATA(t879) = CAST zif_lnt_class_definition( t874 ).
        IF t879 IS INITIAL.
          t878 = abap_true.
        ENDIF.
        t873 = t878.
        t860 = t873.
      ENDIF.
      IF t860 = abap_true.
        DATA t880 TYPE REF TO zif_lnt_class_definition.
        CLEAR t880.
        DATA t881 TYPE REF TO zcl_lnt_current_scope.
        DATA t882 TYPE REF TO zcl_lnt_current_scope.
        DATA(t883) = CAST zcl_lnt_syntax_input( t2 ).
        t882 = t883->scope.
        t881 = t882.
        DATA t884 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t884.
        DATA t885 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t885.
        DATA t886 TYPE REF TO zcl_lnt_abstract_type.
        DATA t887 TYPE REF TO zcl_lnt_object_reference_type.
        DATA t888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t889) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
        t888 = t889.
        DATA t890 TYPE REF TO object.
        t890 = t888->as_ref( ).
        t887 ?= t890.
        t886 = t887.
        DATA t891 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t891.
        DATA t892 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA t893 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t894) = CAST zcl_lnt_abstract_type( t886 ).
        t893 = t894->data_56cc.
        t892 = t893.
        DATA t895 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t895.
        DATA(t896) = VALUE abap_bool( ).
        DATA(t897) = CAST zcl_lnt_abstract_type_data( t892 ).
        IF t897 IS INITIAL.
          t896 = abap_true.
        ENDIF.
        IF t896 = abap_true.
          DATA t898 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t898.
          t895 = t898.
        ELSE.
          DATA t899 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t900 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA(t901) = CAST zcl_lnt_abstract_type_data( t892 ).
          t900 = t901.
          t899 = t900->qualified_name.
          t895 = t899.
        ENDIF.
        t891 = t895.
        t885 = t891.
        t884 = t885.
        DATA t902 TYPE REF TO zif_lnt_class_definition.
        CLEAR t902.
        DATA(t903) = VALUE abap_bool( ).
        DATA t904 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t905) = CAST zlnt_runtime_opti_4ba3bdccd169( t884 ).
        t904 = t905.
        DATA t906 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t907.
        t906 = t907.
        DATA(t908) = VALUE abap_bool( ).
        DATA(t909) = CAST zlnt_runtime_opti_4ba3bdccd169( t904 ).
        IF t909 IS INITIAL.
          t908 = abap_true.
        ELSEIF t909->has = abap_false.
          t908 = abap_true.
        ENDIF.
        t903 = t908.
        IF t903 = abap_true.
          DATA t910 TYPE REF TO zif_lnt_class_definition.
          CLEAR t910.
          t902 = t910.
        ELSE.
          DATA t911 TYPE REF TO zif_lnt_class_definition.
          CLEAR t911.
          DATA t912 TYPE REF TO zif_lnt_class_definition.
          CLEAR t912.
          DATA t913 TYPE REF TO zif_lnt_class_definition.
          CLEAR t913.
          DATA t914 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t915 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t916) = CAST zcl_lnt_current_scope( t881 ).
          t915 = t916->current.
          t914 = t915.
          DATA t917 TYPE REF TO zif_lnt_class_definition.
          CLEAR t917.
          DATA(t918) = VALUE abap_bool( ).
          DATA(t919) = CAST zcl_lnt_spaghetti_scope_node( t914 ).
          IF t919 IS INITIAL.
            t918 = abap_true.
          ENDIF.
          IF t918 = abap_true.
            DATA t920 TYPE REF TO zif_lnt_class_definition.
            CLEAR t920.
            t917 = t920.
          ELSE.
            DATA t921 TYPE REF TO zif_lnt_class_definition.
            DATA t922 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t923) = CAST zcl_lnt_spaghetti_scope_node( t914 ).
            t922 = t923.
            DATA t924 TYPE string.
            DATA(t925) = CAST zlnt_runtime_opti_4ba3bdccd169( t884 ).
            t924 = t925->value.
            t921 = t922->find_class_definition( i_name = t924 ).
            t917 = t921.
          ENDIF.
          t913 = t917.
          t912 = t913.
          DATA t926 TYPE REF TO zif_lnt_class_definition.
          CLEAR t926.
          DATA t927 TYPE abap_bool.
          DATA(t928) = CAST zif_lnt_class_definition( t912 ).
          t927 = xsdbool( t928 IS BOUND ).
          IF t927 = abap_true.
            DATA t929 TYPE REF TO zif_lnt_class_definition.
            CLEAR t929.
            DATA(t930) = abap_true.
            IF t930 = abap_true.
              DATA t931 TYPE REF TO zif_lnt_class_definition.
              DATA(t932) = CAST zif_lnt_class_definition( t912 ).
              t931 = t932.
              t929 = t931.
            ELSE.
              DATA t933 TYPE REF TO zif_lnt_class_definition.
              CLEAR t933.
              t929 = t933.
            ENDIF.
            t926 = t929.
          ELSE.
            DATA t934 TYPE REF TO zif_lnt_class_definition.
            CLEAR t934.
            DATA t935 TYPE REF TO zcl_lnt_class.
            CLEAR t935.
            DATA t936 TYPE REF TO zcl_lnt_class.
            CLEAR t936.
            DATA t937 TYPE REF TO zif_lnt_object.
            CLEAR t937.
            DATA t938 TYPE REF TO zif_lnt_registry.
            DATA(t939) = CAST zcl_lnt_current_scope( t881 ).
            t938 = t939->reg.
            DATA t940 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t940.
            DATA(t941) = abap_true.
            IF t941 = abap_true.
              DATA(t942) = |CLAS|.
              DATA(t943) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t943->has = abap_true.
              t943->value = t942.
              t940 = t943.
            ELSE.
              DATA t944 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t944.
              t940 = t944.
            ENDIF.
            DATA t945 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t945.
            DATA(t946) = abap_true.
            IF t946 = abap_true.
              DATA t947 TYPE string.
              DATA(t948) = CAST zlnt_runtime_opti_4ba3bdccd169( t884 ).
              t947 = t948->value.
              DATA(t949) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t949->has = abap_true.
              t949->value = t947.
              t945 = t949.
            ELSE.
              DATA t950 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t950.
              t945 = t950.
            ENDIF.
            t937 = t938->get_object( i_type_9913 = t940 i_name = t945 ).
            DATA t951 TYPE REF TO object.
            t951 = t937.
            t936 ?= t951.
            t935 = t936.
            DATA t952 TYPE REF TO zif_lnt_class_definition.
            CLEAR t952.
            DATA t953 TYPE abap_bool.
            DATA(t954) = CAST zcl_lnt_class( t935 ).
            t953 = xsdbool( t954 IS BOUND ).
            IF t953 = abap_true.
              DATA t955 TYPE REF TO zif_lnt_class_definition.
              DATA t956 TYPE REF TO zcl_lnt_class.
              DATA(t957) = CAST zcl_lnt_class( t935 ).
              t956 = t957.
              t955 = t956->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t952 = t955.
            ELSE.
              DATA t958 TYPE REF TO zif_lnt_class_definition.
              CLEAR t958.
              t952 = t958.
            ENDIF.
            t934 = t952.
            t926 = t934.
          ENDIF.
          t911 = t926.
          t902 = t911.
        ENDIF.
        t880 = t902.
        t3 = t880.
      ENDIF.
    ENDIF.
    DATA t959 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t960) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t961) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    t959 = t960->find_direct_expressions( i_type_9913 = t961 ).
    DATA t962 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t962.
    DATA t963 TYPE REF TO object.
    CLEAR t963.
    LOOP AT t959->items INTO t963.
      t962 ?= t963.
      DATA(t964) = CAST zcl_lnt_expression_node( t962 ).
      DATA(t965) = CAST zcl_lnt_syntax_input( t2 ).
      zcl_lnt_sy_dynamic=>run_syntax( i_node = t964 i_input_967e = t965 ).
    ENDLOOP.
    DATA t966 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t966.
    DATA t967 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t967.
    DATA t968 TYPE REF TO zif_lnt_class_definition.
    DATA(t969) = CAST zif_lnt_class_definition( t3 ).
    t968 = t969.
    DATA t970 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t970.
    DATA(t971) = VALUE abap_bool( ).
    DATA(t972) = CAST zif_lnt_class_definition( t968 ).
    IF t972 IS INITIAL.
      t971 = abap_true.
    ENDIF.
    IF t971 = abap_true.
      DATA t973 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t973.
      t970 = t973.
    ELSE.
      DATA t974 TYPE string.
      DATA t975 TYPE REF TO zif_lnt_class_definition.
      DATA(t976) = CAST zif_lnt_class_definition( t968 ).
      t975 = t976.
      t974 = t975->get_name( ).
      DATA(t977) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t977->has = abap_true.
      t977->value = t974.
      t970 = t977.
    ENDIF.
    t967 = t970.
    t966 = t967.
    DATA(t978) = VALUE abap_bool( ).
    DATA(t979) = VALUE abap_bool( ).
    DATA t980 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t981) = CAST zlnt_runtime_opti_4ba3bdccd169( t966 ).
    t980 = t981.
    DATA t982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t983.
    t982 = t983.
    DATA(t984) = VALUE abap_bool( ).
    DATA(t985) = CAST zlnt_runtime_opti_4ba3bdccd169( t980 ).
    IF t985 IS INITIAL.
      t984 = abap_true.
    ELSEIF t985->has = abap_false.
      t984 = abap_true.
    ENDIF.
    t979 = t984.
    t978 = t979.
    IF t979 = abap_true.
      DATA(t986) = VALUE abap_bool( ).
      DATA t987 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t988) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
      t987 = t988.
      DATA(t989) = VALUE abap_bool( ).
      DATA(t990) = VALUE abap_bool( ).
      DATA(t991) = VALUE abap_bool( ).
      DATA(t992) = CAST zlnt_runtime_dyna_a429568d5be8( t987 ).
      IF t992 IS INITIAL.
        t991 = abap_true.
      ENDIF.
      t990 = xsdbool( t991 = abap_false ).
      t989 = t990.
      IF t990 = abap_true.
        DATA t993 TYPE abap_bool.
        DATA t994 TYPE REF TO object.
        DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t996) = CAST zlnt_runtime_dyna_a429568d5be8( t987 ).
        t995 = t996.
        DATA t997 TYPE REF TO object.
        t997 = t995->as_ref( ).
        t994 ?= t997.
        t993 = xsdbool( t994 IS BOUND AND t994 IS INSTANCE OF zcl_lnt_void_type ).
        t989 = t993.
      ENDIF.
      t986 = t989.
      t978 = t986.
    ENDIF.
    IF t978 = abap_true.
      DATA t998 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t999 TYPE REF TO zcl_lnt_void_type.
      DATA t1000 TYPE REF TO zcl_lnt_void_type.
      DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t1002) = CAST zlnt_runtime_dyna_a429568d5be8( t279 ).
      t1001 = t1002.
      DATA t1003 TYPE REF TO object.
      t1003 = t1001->as_ref( ).
      t1000 ?= t1003.
      t999 = t1000.
      DATA t1004 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1005) = CAST zcl_lnt_void_type( t999 ).
      t1004 = t1005->voided.
      t998 = t1004.
      t966 = t998.
    ENDIF.
    DATA t1006 TYPE REF TO zif_lnt_class_definition.
    DATA(t1007) = CAST zif_lnt_class_definition( t3 ).
    t1006 = t1007.
    DATA t1008 TYPE REF TO zcl_lnt_current_scope.
    DATA(t1009) = CAST zcl_lnt_syntax_input( t2 ).
    t1008 = t1009->scope.
    DATA t1010 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t1010.
    DATA t1011 TYPE REF TO zcl_lnt_expression_node.
    DATA(t1012) = CAST zcl_lnt_expression_node( t275 ).
    t1011 = t1012.
    DATA t1013 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t1013.
    DATA(t1014) = VALUE abap_bool( ).
    DATA(t1015) = CAST zcl_lnt_expression_node( t1011 ).
    IF t1015 IS INITIAL.
      t1014 = abap_true.
    ENDIF.
    IF t1014 = abap_true.
      DATA t1016 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t1016.
      t1013 = t1016.
    ELSE.
      DATA t1017 TYPE REF TO zcl_lnt_abstract_token.
      DATA t1018 TYPE REF TO zcl_lnt_expression_node.
      DATA(t1019) = CAST zcl_lnt_expression_node( t1011 ).
      t1018 = t1019.
      t1017 = t1018->get_first_token( ).
      t1013 = t1017.
    ENDIF.
    t1010 = t1013.
    DATA t1020 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t1020.
    DATA(t1021) = VALUE abap_bool( ).
    DATA(t1022) = CAST zif_lnt_class_definition( t1006 ).
    IF t1022 IS INITIAL.
      t1021 = abap_true.
    ENDIF.
    IF t1021 = abap_true.
      DATA t1023 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t1023.
      t1020 = t1023.
    ELSE.
      DATA t1024 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t1025 TYPE REF TO zif_lnt_class_definition.
      DATA(t1026) = CAST zif_lnt_class_definition( t1006 ).
      t1025 = t1026.
      t1024 ?= t1025.
      t1020 = t1024.
    ENDIF.
    DATA t1027 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1028) = |Constructor Reference|.
    CREATE OBJECT t1027.
    t1027->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1027->sval = t1028.
    DATA t1029 TYPE string.
    DATA(t1030) = CAST zcl_lnt_syntax_input( t2 ).
    t1029 = t1030->filename.
    DATA t1031 TYPE REF TO zcl_lnt_ireference_extras.
    CLEAR t1031.
    DATA(t1032) = abap_true.
    IF t1032 = abap_true.
      DATA t1033 TYPE REF TO zcl_lnt_ireference_extras.
      DATA(t1034) = CAST zlnt_runtime_opti_4ba3bdccd169( t966 ).
      DATA t1035 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1035.
      DATA t1036 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t1036.
      t1033 = NEW zcl_lnt_ireference_extras( i_oo_name = t1034 i_oo_type = t1035 i_found_qualified = t1036 ).
      t1031 = t1033.
    ELSE.
      DATA t1037 TYPE REF TO zcl_lnt_ireference_extras.
      CLEAR t1037.
      t1031 = t1037.
    ENDIF.
    t1008->add_reference( i_usage = t1010 i_referencing = t1020 i_type_9913 = t1027 i_filename = t1029 i_extra = t1031 ).
    DATA(t1038) = VALUE abap_bool( ).
    DATA t1039 TYPE REF TO zif_lnt_class_definition.
    DATA(t1040) = CAST zif_lnt_class_definition( t3 ).
    t1039 = t1040.
    DATA t1041 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1042 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1042.
    t1041 = t1042.
    DATA(t1043) = VALUE abap_bool( ).
    DATA(t1044) = VALUE abap_bool( ).
    DATA(t1045) = CAST zif_lnt_class_definition( t1039 ).
    IF t1045 IS INITIAL.
      t1044 = abap_true.
    ENDIF.
    t1043 = xsdbool( t1044 = abap_false ).
    t1038 = t1043.
    IF t1038 = abap_true.
      DATA t1046 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1047 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1048 TYPE REF TO zif_lnt_class_definition.
      DATA(t1049) = CAST zif_lnt_class_definition( t3 ).
      t1048 = t1049.
      DATA(t1050) = CAST zcl_lnt_syntax_input( t2 ).
      t1047 = zcl_lnt_sy_create_object=>check_instantiation_allowed( i_cdef = t1048 i_input_967e = t1050 ).
      t1046 = t1047.
      DATA(t1051) = VALUE abap_bool( ).
      DATA(t1052) = CAST zlnt_runtime_opti_4ba3bdccd169( t1046 ).
      IF t1052 IS BOUND.
        IF t1052->has = abap_true.
          t1051 = xsdbool( strlen( t1052->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t1051 = abap_true.
        DATA t1053 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t1054) = CAST zcl_lnt_syntax_input( t2 ).
        t1053 = t1054->issues.
        DATA t1055 TYPE REF TO zcl_lnt_issue.
        DATA(t1056) = CAST zcl_lnt_syntax_input( t2 ).
        DATA t1057 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t1058) = CAST zcl_lnt_statement_node( t1 ).
        t1057 = t1058->get_first_token( ).
        DATA t1059 TYPE string.
        DATA(t1060) = CAST zlnt_runtime_opti_4ba3bdccd169( t1046 ).
        t1059 = t1060->value.
        DATA t1061 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t1061.
        t1055 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1056 i_token = t1057 i_message_26cb = t1059 i_fix = t1061 ).
        APPEND t1055 TO t1053->items.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t1062) = CAST zif_lnt_class_definition( t3 ).
    DATA(t1063) = CAST zcl_lnt_statement_node( t1 ).
    DATA(t1064) = CAST zcl_lnt_syntax_input( t2 ).
    me->validate_parameters( i_cdef = t1062 i_node = t1063 i_input_967e = t1064 ).
  ENDMETHOD.

  METHOD check_instantiation_allowed.
    DATA(t1) = CAST zif_lnt_class_definition( i_cdef ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE int8.
    DATA t4 TYPE int8.
    DATA(t5) = CAST zif_lnt_class_definition( t1 ).
    t4 = t5->get_create_visibility( ).
    t3 = t4.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t3.
    DATA(t8) = CONV int8( 3 ).
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
    DATA(t13) = CAST zcl_lnt_syntax_input( t2 ).
    t12 = t13->scope.
    t11 = t12->get_enclosing_class_name( ).
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = CAST zlnt_runtime_opti_4ba3bdccd169( t15 ).
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
        DATA(t26) = CAST zif_lnt_class_definition( t1 ).
        t25 = t26->get_name( ).
        DATA(t27) = | cannot be instantiated, class is defined as |.
        DATA(t28) = strlen( t25 ).
        t24 = |{ t25 }{ t27 }|.
        DATA(t29) = VALUE string( ).
        DATA t30 TYPE abap_bool.
        DATA(t31) = t3.
        DATA(t32) = CONV int8( 1 ).
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
    DATA(t41) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
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
    DATA(t45) = CAST zif_lnt_class_definition( t1 ).
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
    DATA(t51) = CAST zcl_lnt_syntax_input( t2 ).
    t50 = t51->scope.
    t49 = NEW zcl_lnt_object_oriented( i_scope = t50 ).
    DATA(t52) = CAST zif_lnt_class_definition( t1 ).
    DATA t53 TYPE string.
    DATA(t54) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
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
    DATA(t58) = CONV int8( 2 ).
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
      DATA(t65) = CAST zcl_lnt_syntax_input( t2 ).
      t64 = t65->scope.
      t63 = t64.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = abap_true.
      IF t68 = abap_true.
        DATA t69 TYPE string.
        DATA(t70) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
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
      DATA(t76) = CAST zlnt_runtime_opti_4ba3bdccd169( t66 ).
      t75 = t76.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      t77 = t78.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t75 ).
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
        DATA(t87) = CAST zcl_lnt_current_scope( t63 ).
        t86 = t87->current.
        t85 = t86.
        DATA t88 TYPE REF TO zif_lnt_class_definition.
        CLEAR t88.
        DATA(t89) = VALUE abap_bool( ).
        DATA(t90) = CAST zcl_lnt_spaghetti_scope_node( t85 ).
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
          DATA(t94) = CAST zcl_lnt_spaghetti_scope_node( t85 ).
          t93 = t94.
          DATA t95 TYPE string.
          DATA(t96) = CAST zlnt_runtime_opti_4ba3bdccd169( t66 ).
          t95 = t96->value.
          t92 = t93->find_class_definition( i_name = t95 ).
          t88 = t92.
        ENDIF.
        t84 = t88.
        t83 = t84.
        DATA t97 TYPE REF TO zif_lnt_class_definition.
        CLEAR t97.
        DATA t98 TYPE abap_bool.
        DATA(t99) = CAST zif_lnt_class_definition( t83 ).
        t98 = xsdbool( t99 IS BOUND ).
        IF t98 = abap_true.
          DATA t100 TYPE REF TO zif_lnt_class_definition.
          CLEAR t100.
          DATA(t101) = abap_true.
          IF t101 = abap_true.
            DATA t102 TYPE REF TO zif_lnt_class_definition.
            DATA(t103) = CAST zif_lnt_class_definition( t83 ).
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
          DATA(t110) = CAST zcl_lnt_current_scope( t63 ).
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
            DATA(t119) = CAST zlnt_runtime_opti_4ba3bdccd169( t66 ).
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
          DATA(t125) = CAST zcl_lnt_class( t106 ).
          t124 = xsdbool( t125 IS BOUND ).
          IF t124 = abap_true.
            DATA t126 TYPE REF TO zif_lnt_class_definition.
            DATA t127 TYPE REF TO zcl_lnt_class.
            DATA(t128) = CAST zcl_lnt_class( t106 ).
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
      DATA(t132) = CAST zif_lnt_class_definition( t61 ).
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
        DATA(t136) = CAST zif_lnt_class_definition( t61 ).
        t135 = t136.
        t134 = t135->get_super_class( ).
        t130 = t134.
      ENDIF.
      t60 = t130.
      t59 = t60.
      DO.
        DATA(t137) = VALUE abap_bool( ).
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t139) = CAST zlnt_runtime_opti_4ba3bdccd169( t59 ).
        t138 = t139.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        t140 = t141.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = CAST zlnt_runtime_opti_4ba3bdccd169( t138 ).
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
        DATA(t148) = CAST zlnt_runtime_opti_4ba3bdccd169( t59 ).
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
        DATA(t152) = CAST zif_lnt_class_definition( t1 ).
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
        DATA(t160) = CAST zcl_lnt_syntax_input( t2 ).
        t159 = t160->scope.
        t158 = t159.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        DATA(t163) = abap_true.
        IF t163 = abap_true.
          DATA t164 TYPE string.
          DATA(t165) = CAST zlnt_runtime_opti_4ba3bdccd169( t59 ).
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
        DATA(t171) = CAST zlnt_runtime_opti_4ba3bdccd169( t161 ).
        t170 = t171.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        t172 = t173.
        DATA(t174) = VALUE abap_bool( ).
        DATA(t175) = CAST zlnt_runtime_opti_4ba3bdccd169( t170 ).
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
          DATA(t182) = CAST zcl_lnt_current_scope( t158 ).
          t181 = t182->current.
          t180 = t181.
          DATA t183 TYPE REF TO zif_lnt_class_definition.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = CAST zcl_lnt_spaghetti_scope_node( t180 ).
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
            DATA(t189) = CAST zcl_lnt_spaghetti_scope_node( t180 ).
            t188 = t189.
            DATA t190 TYPE string.
            DATA(t191) = CAST zlnt_runtime_opti_4ba3bdccd169( t161 ).
            t190 = t191->value.
            t187 = t188->find_class_definition( i_name = t190 ).
            t183 = t187.
          ENDIF.
          t179 = t183.
          t178 = t179.
          DATA t192 TYPE REF TO zif_lnt_class_definition.
          CLEAR t192.
          DATA t193 TYPE abap_bool.
          DATA(t194) = CAST zif_lnt_class_definition( t178 ).
          t193 = xsdbool( t194 IS BOUND ).
          IF t193 = abap_true.
            DATA t195 TYPE REF TO zif_lnt_class_definition.
            CLEAR t195.
            DATA(t196) = abap_true.
            IF t196 = abap_true.
              DATA t197 TYPE REF TO zif_lnt_class_definition.
              DATA(t198) = CAST zif_lnt_class_definition( t178 ).
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
            DATA(t205) = CAST zcl_lnt_current_scope( t158 ).
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
              DATA(t214) = CAST zlnt_runtime_opti_4ba3bdccd169( t161 ).
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
            DATA(t220) = CAST zcl_lnt_class( t201 ).
            t219 = xsdbool( t220 IS BOUND ).
            IF t219 = abap_true.
              DATA t221 TYPE REF TO zif_lnt_class_definition.
              DATA t222 TYPE REF TO zcl_lnt_class.
              DATA(t223) = CAST zcl_lnt_class( t201 ).
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
        DATA(t227) = CAST zif_lnt_class_definition( t156 ).
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
          DATA(t231) = CAST zif_lnt_class_definition( t156 ).
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
      DATA(t237) = CAST zif_lnt_class_definition( t1 ).
      t236 = t237->get_name( ).
      DATA(t238) = | cannot be instantiated, class is defined as |.
      DATA(t239) = strlen( t236 ).
      t235 = |{ t236 }{ t238 }|.
      DATA(t240) = VALUE string( ).
      DATA t241 TYPE abap_bool.
      DATA(t242) = t3.
      DATA(t243) = CONV int8( 1 ).
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
    DATA(t1) = CAST zif_lnt_class_definition( i_cdef ).
    DATA(t2) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t3) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_class_definition.
    DATA(t6) = CAST zif_lnt_class_definition( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zif_lnt_class_definition( t5 ).
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
      DATA(t15) = CAST zcl_lnt_statement_node( t2 ).
      DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14 ).
      t14 = t15->find_direct_expression( i_type_9913 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = CAST zcl_lnt_expression_node( t13 ).
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
        DATA(t23) = CAST zcl_lnt_expression_node( t13 ).
        t22 = t23.
        DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
        t21 = t22->find_all_expressions( i_type_9913 = t24 ).
        t17 = t21.
      ENDIF.
      t12 = t17.
      t11 = t12.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t28.
      DATA t29 TYPE abap_bool.
      DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
      t29 = xsdbool( t30 IS BOUND ).
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
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
      LOOP AT t25->items INTO t35.
        t34 ?= t35.
        DATA t36 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA(t39) = CAST zcl_lnt_expression_node( t34 ).
          t37 = t39.
        ELSE.
          DATA t40 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t40.
          t37 = t40.
        ENDIF.
        DATA(t41) = CAST zcl_lnt_syntax_input( t3 ).
        DATA t42 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t45.
        t36 = zcl_lnt_sy_source=>run_syntax( i_node = t37 i_input_967e = t41 i_target_type = t42 i_write_reference = t43 i_allow_generic_deference = t44 i_read_reference = t45 ).
      ENDLOOP.
      RETURN.
    ENDIF.
    DATA t46 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_shape_a38e878f.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_object_oriented.
    DATA t49 TYPE REF TO zcl_lnt_current_scope.
    DATA(t50) = CAST zcl_lnt_syntax_input( t3 ).
    t49 = t50->scope.
    t48 = NEW zcl_lnt_object_oriented( i_scope = t49 ).
    DATA t51 TYPE REF TO zif_lnt_interface_definition.
    DATA t52 TYPE REF TO zif_lnt_class_definition.
    DATA(t53) = CAST zif_lnt_class_definition( t1 ).
    t52 = t53.
    t51 ?= t52.
    DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t54.
    DATA(t55) = abap_true.
    IF t55 = abap_true.
      DATA(t56) = |CONSTRUCTOR|.
      DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t57->has = abap_true.
      t57->value = t56.
      t54 = t57.
    ELSE.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      t54 = t58.
    ENDIF.
    t47 = t48->search_method_name( i_def = t51 i_name = t54 ).
    t46 = t47.
    DATA t59 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_method_definition.
    DATA t62 TYPE REF TO zif_lnt_method_definition.
    DATA(t63) = CAST zcl_lnt_shape_a38e878f( t46 ).
    t62 = t63->method.
    t61 = t62.
    DATA t64 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t64.
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = CAST zif_lnt_method_definition( t61 ).
    IF t66 IS INITIAL.
      t65 = abap_true.
    ENDIF.
    IF t65 = abap_true.
      DATA t67 TYPE REF TO zif_lnt_method_parameters.
      CLEAR t67.
      t64 = t67.
    ELSE.
      DATA t68 TYPE REF TO zif_lnt_method_parameters.
      DATA(t69) = CAST zif_lnt_method_definition( t61 ).
      t68 = t69->get_parameters( ).
      t64 = t68.
    ENDIF.
    t60 = t64.
    t59 = t60.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_method_parameters.
    DATA(t75) = CAST zif_lnt_method_parameters( t59 ).
    t74 = t75.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA(t77) = VALUE abap_bool( ).
    DATA(t78) = CAST zif_lnt_method_parameters( t74 ).
    IF t78 IS INITIAL.
      t77 = abap_true.
    ENDIF.
    IF t77 = abap_true.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t79.
      t76 = t79.
    ELSE.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t81 TYPE REF TO zif_lnt_method_parameters.
      DATA(t82) = CAST zif_lnt_method_parameters( t74 ).
      t81 = t82.
      t80 = t81->get_importing( ).
      t76 = t80.
    ENDIF.
    t73 = t76.
    t72 = t73.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    DATA t84 TYPE abap_bool.
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t72 ).
    t84 = xsdbool( t85 IS BOUND ).
    IF t84 = abap_true.
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t87) = CAST zlnt_runtime_arra_c22708faf2e3( t72 ).
      t86 = t87.
      t83 = t86.
    ELSE.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t88.
      t83 = t88.
    ENDIF.
    t71 = t83.
    t70 = t71.
    DATA t89 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_method_parameters.
    DATA(t96) = CAST zif_lnt_method_parameters( t59 ).
    t95 = t96.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t97.
    DATA(t98) = VALUE abap_bool( ).
    DATA(t99) = CAST zif_lnt_method_parameters( t95 ).
    IF t99 IS INITIAL.
      t98 = abap_true.
    ENDIF.
    IF t98 = abap_true.
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t100.
      t97 = t100.
    ELSE.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t102 TYPE REF TO zif_lnt_method_parameters.
      DATA(t103) = CAST zif_lnt_method_parameters( t95 ).
      t102 = t103.
      t101 = t102->get_required_parameters( ).
      t97 = t101.
    ENDIF.
    t94 = t97.
    t93 = t94.
    DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t104.
    DATA(t105) = VALUE abap_bool( ).
    DATA(t106) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
    IF t106 IS INITIAL.
      t105 = abap_true.
    ENDIF.
    IF t105 = abap_true.
      DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t107.
      t104 = t107.
    ELSE.
      DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t108.
      DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t110.
      t109 = t110.
      DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t93 ).
      t111 = t112.
      DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t113.
      DATA t114 TYPE REF TO object.
      CLEAR t114.
      LOOP AT t111->items INTO t114.
        t113 ?= t114.
        DATA(t115) = CAST zlnt_runtime_arra_8ecd6afe19e0( t109 ).
        DATA(t116) = VALUE string( ).
        DATA(t117) = VALUE string( ).
        DATA t118 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t119) = CAST zcl_lnt_typed_identifier( t113 ).
        t118 = t119.
        DATA(t120) = VALUE string( ).
        DATA t121 TYPE string.
        DATA t122 TYPE string.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        DATA t124 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t125) = CAST zcl_lnt_fi_identifier( t118 ).
        t124 = t125->token.
        t123 = t124.
        DATA t126 TYPE string.
        DATA(t127) = CAST zcl_lnt_abstract_token( t123 ).
        t126 = t127->str.
        t122 = t126.
        t121 = t122.
        DATA(t128) = VALUE abap_bool( ).
        DATA(t129) = VALUE string( ).
        DATA(t130) = t121.
        DATA(t131) = 0.
        DATA(t132) = 1.
        DATA(t133) = strlen( t130 ).
        IF t131 < 0.
          t131 = t131 + t133.
          IF t131 < 0.
            t131 = 0.
          ENDIF.
        ENDIF.
        IF t131 > t133 OR t132 <= 0.
          CLEAR t129.
        ELSE.
          IF t132 > t133 - t131.
            t132 = t133 - t131.
          ENDIF.
          t129 = t130+t131(t132).
        ENDIF.
        DATA(t134) = |!|.
        t128 = xsdbool( t129 = t134 ).
        IF t128 = abap_true.
          DATA(t135) = VALUE string( ).
          DATA t136 TYPE string.
          DATA(t137) = t121.
          t136 = t137.
          DATA(t138) = VALUE string( ).
          DATA(t139) = t136.
          DATA(t140) = 1.
          DATA t141 TYPE i.
          DATA(t142) = t136.
          DATA(t143) = strlen( t142 ).
          t141 = t143.
          DATA(t144) = strlen( t139 ).
          IF t140 < 0.
            t140 = t140 + t144.
            IF t140 < 0.
              t140 = 0.
            ENDIF.
          ENDIF.
          IF t140 > t144 OR t141 <= 0.
            CLEAR t138.
          ELSE.
            IF t141 > t144 - t140.
              t141 = t144 - t140.
            ENDIF.
            t138 = t139+t140(t141).
          ENDIF.
          t135 = t138.
          t121 = t135.
        ENDIF.
        DATA(t145) = t121.
        t120 = t145.
        t117 = t120.
        DATA(t146) = strlen( t117 ).
        t116 = t117.
        IF t116 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t116 TO UPPER CASE.
        ELSE.
          t116 = zlnt_runtime_uppe_91169605024d=>full( t116 ).
        ENDIF.
        APPEND t116 TO t115->items.
      ENDLOOP.
      DATA(t147) = CAST zlnt_runtime_arra_8ecd6afe19e0( t109 ).
      t108 = t147.
      t104 = t108.
    ENDIF.
    t92 = t104.
    t91 = t92.
    DATA t148 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t149) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t148 = t149.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = VALUE abap_bool( ).
    DATA(t152) = CAST zlnt_runtime_arra_8ecd6afe19e0( t91 ).
    IF t152 IS INITIAL.
      t151 = abap_true.
    ENDIF.
    t150 = xsdbool( t151 = abap_false ).
    IF t150 = abap_true.
      DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t154) = CAST zlnt_runtime_arra_8ecd6afe19e0( t91 ).
      t153 = t154.
      DATA(t155) = VALUE string( ).
      LOOP AT t153->items INTO t155.
        DATA t156 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t157) = CAST zlnt_runtime_set__1827558fd4c7( t148 ).
        DATA(t158) = t155.
        t156 = t157->add( p0 = t158 ).
      ENDLOOP.
    ENDIF.
    DATA(t159) = CAST zlnt_runtime_set__1827558fd4c7( t148 ).
    t90 = t159.
    t89 = t90.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    DATA t163 TYPE REF TO zcl_lnt_expression_node.
    DATA t164 TYPE REF TO zcl_lnt_expression_node.
    DATA(t165) = CAST zcl_lnt_statement_node( t2 ).
    DATA(t166) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d219_2dee75409f14 ).
    t164 = t165->find_direct_expression( i_type_9913 = t166 ).
    t163 = t164.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t167.
    DATA(t168) = VALUE abap_bool( ).
    DATA(t169) = CAST zcl_lnt_expression_node( t163 ).
    IF t169 IS INITIAL.
      t168 = abap_true.
    ENDIF.
    IF t168 = abap_true.
      DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t170.
      t167 = t170.
    ELSE.
      DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t172 TYPE REF TO zcl_lnt_expression_node.
      DATA(t173) = CAST zcl_lnt_expression_node( t163 ).
      t172 = t173.
      DATA(t174) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb ).
      t171 = t172->find_all_expressions( i_type_9913 = t174 ).
      t167 = t171.
    ENDIF.
    t162 = t167.
    t161 = t162.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t175.
    DATA t176 TYPE abap_bool.
    DATA(t177) = CAST zlnt_runtime_arra_c22708faf2e3( t161 ).
    t176 = xsdbool( t177 IS BOUND ).
    IF t176 = abap_true.
      DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t179) = CAST zlnt_runtime_arra_c22708faf2e3( t161 ).
      t178 = t179.
      t175 = t178.
    ELSE.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t180.
      t175 = t180.
    ENDIF.
    t160 = t175.
    DATA t181 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t181.
    DATA t182 TYPE REF TO object.
    CLEAR t182.
    LOOP AT t160->items INTO t182.
      t181 ?= t182.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t183.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t185.
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t186.
      DATA t187 TYPE REF TO zcl_lnt_expression_node.
      DATA t188 TYPE REF TO zcl_lnt_expression_node.
      DATA(t189) = CAST zcl_lnt_expression_node( t181 ).
      DATA(t190) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9 ).
      t188 = t189->find_direct_expression( i_type_9913 = t190 ).
      t187 = t188.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      DATA(t192) = VALUE abap_bool( ).
      DATA(t193) = CAST zcl_lnt_expression_node( t187 ).
      IF t193 IS INITIAL.
        t192 = abap_true.
      ENDIF.
      IF t192 = abap_true.
        DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t194.
        t191 = t194.
      ELSE.
        DATA t195 TYPE string.
        DATA t196 TYPE REF TO zcl_lnt_expression_node.
        DATA(t197) = CAST zcl_lnt_expression_node( t187 ).
        t196 = t197.
        t195 = t196->concat_tokens( ).
        DATA(t198) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t198->has = abap_true.
        t198->value = t195.
        t191 = t198.
      ENDIF.
      t186 = t191.
      t185 = t186.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t199.
      DATA(t200) = VALUE abap_bool( ).
      DATA(t201) = CAST zlnt_runtime_opti_4ba3bdccd169( t185 ).
      IF t201 IS INITIAL.
        t200 = abap_true.
      ELSEIF t201->has = abap_false.
        t200 = abap_true.
      ENDIF.
      IF t200 = abap_true.
        DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t202.
        t199 = t202.
      ELSE.
        DATA t203 TYPE string.
        DATA t204 TYPE string.
        DATA(t205) = CAST zlnt_runtime_opti_4ba3bdccd169( t185 ).
        t204 = t205->value.
        DATA(t206) = strlen( t204 ).
        t203 = t204.
        IF t203 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t203 TO UPPER CASE.
        ELSE.
          t203 = zlnt_runtime_uppe_91169605024d=>full( t203 ).
        ENDIF.
        DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t207->has = abap_true.
        t207->value = t203.
        t199 = t207.
      ENDIF.
      t184 = t199.
      t183 = t184.
      DATA(t208) = VALUE abap_bool( ).
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t210) = CAST zlnt_runtime_opti_4ba3bdccd169( t183 ).
      t209 = t210.
      DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      t211 = t212.
      DATA(t213) = VALUE abap_bool( ).
      DATA(t214) = CAST zlnt_runtime_opti_4ba3bdccd169( t209 ).
      IF t214 IS INITIAL.
        t213 = abap_true.
      ELSEIF t214->has = abap_false.
        t213 = abap_true.
      ENDIF.
      t208 = t213.
      IF t208 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t215 TYPE REF TO zcl_lnt_expression_node.
      DATA t216 TYPE REF TO zcl_lnt_expression_node.
      DATA(t217) = CAST zcl_lnt_expression_node( t181 ).
      DATA(t218) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
      t216 = t217->find_direct_expression( i_type_9913 = t218 ).
      t215 = t216.
      DATA t219 TYPE REF TO zcl_lnt_abstract_type.
      DATA t220 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t221) = CAST zcl_lnt_expression_node( t215 ).
      DATA(t222) = CAST zcl_lnt_syntax_input( t3 ).
      DATA t223 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t225.
      DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t226.
      t220 = zcl_lnt_sy_source=>run_syntax( i_node = t221 i_input_967e = t222 i_target_type = t223 i_write_reference = t224 i_allow_generic_deference = t225 i_read_reference = t226 ).
      t219 = t220.
      DATA t227 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t227.
      DATA t228 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t230) = CAST zlnt_runtime_arra_c22708faf2e3( t70 ).
      t229 = t230.
      DATA t231 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t231.
      DATA(t232) = VALUE abap_bool( ).
      DATA(t233) = CAST zlnt_runtime_arra_c22708faf2e3( t229 ).
      IF t233 IS INITIAL.
        t232 = abap_true.
      ENDIF.
      IF t232 = abap_true.
        DATA t234 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t234.
        t231 = t234.
      ELSE.
        DATA t235 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t235.
        DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t237) = CAST zlnt_runtime_arra_c22708faf2e3( t229 ).
        t236 = t237.
        DATA t238 TYPE i.
        DATA t239 TYPE i.
        DATA(t240) = CAST zlnt_runtime_arra_c22708faf2e3( t236 ).
        t239 = lines( t240->items ).
        t238 = t239.
        DATA t241 TYPE i.
        DATA(t242) = 0.
        t241 = t242.
        DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t244 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t244.
        t243 = t244.
        DO.
          DATA t245 TYPE abap_bool.
          DATA(t246) = t241.
          DATA(t247) = t238.
          t245 = xsdbool( t246 < t247 ).
          IF t245 = abap_false.
            EXIT.
          ENDIF.
          DATA t248 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t249 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t250 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t236 ).
          DATA(t252) = t241.
          DATA t253 TYPE REF TO object.
          t253 = t251->get( p0 = t252 ).
          t250 ?= t253.
          t249 = t250.
          t248 = t249.
          DATA(t254) = VALUE abap_bool( ).
          DATA(t255) = VALUE string( ).
          DATA(t256) = VALUE string( ).
          DATA t257 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t258) = CAST zcl_lnt_typed_identifier( t248 ).
          t257 = t258.
          DATA(t259) = VALUE string( ).
          DATA t260 TYPE string.
          DATA t261 TYPE string.
          DATA t262 TYPE REF TO zcl_lnt_abstract_token.
          DATA t263 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t264) = CAST zcl_lnt_fi_identifier( t257 ).
          t263 = t264->token.
          t262 = t263.
          DATA t265 TYPE string.
          DATA(t266) = CAST zcl_lnt_abstract_token( t262 ).
          t265 = t266->str.
          t261 = t265.
          t260 = t261.
          DATA(t267) = VALUE abap_bool( ).
          DATA(t268) = VALUE string( ).
          DATA(t269) = t260.
          DATA(t270) = 0.
          DATA(t271) = 1.
          DATA(t272) = strlen( t269 ).
          IF t270 < 0.
            t270 = t270 + t272.
            IF t270 < 0.
              t270 = 0.
            ENDIF.
          ENDIF.
          IF t270 > t272 OR t271 <= 0.
            CLEAR t268.
          ELSE.
            IF t271 > t272 - t270.
              t271 = t272 - t270.
            ENDIF.
            t268 = t269+t270(t271).
          ENDIF.
          DATA(t273) = |!|.
          t267 = xsdbool( t268 = t273 ).
          IF t267 = abap_true.
            DATA(t274) = VALUE string( ).
            DATA t275 TYPE string.
            DATA(t276) = t260.
            t275 = t276.
            DATA(t277) = VALUE string( ).
            DATA(t278) = t275.
            DATA(t279) = 1.
            DATA t280 TYPE i.
            DATA(t281) = t275.
            DATA(t282) = strlen( t281 ).
            t280 = t282.
            DATA(t283) = strlen( t278 ).
            IF t279 < 0.
              t279 = t279 + t283.
              IF t279 < 0.
                t279 = 0.
              ENDIF.
            ENDIF.
            IF t279 > t283 OR t280 <= 0.
              CLEAR t277.
            ELSE.
              IF t280 > t283 - t279.
                t280 = t283 - t279.
              ENDIF.
              t277 = t278+t279(t280).
            ENDIF.
            t274 = t277.
            t260 = t274.
          ENDIF.
          DATA(t284) = t260.
          t259 = t284.
          t256 = t259.
          DATA(t285) = strlen( t256 ).
          t255 = t256.
          IF t255 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t255 TO UPPER CASE.
          ELSE.
            t255 = zlnt_runtime_uppe_91169605024d=>full( t255 ).
          ENDIF.
          DATA t286 TYPE string.
          DATA(t287) = CAST zlnt_runtime_opti_4ba3bdccd169( t183 ).
          t286 = t287->value.
          t254 = xsdbool( t255 = t286 ).
          IF t254 = abap_true.
            DATA t288 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t288.
            DATA(t289) = abap_true.
            IF t289 = abap_true.
              DATA(t290) = CAST zcl_lnt_typed_identifier( t248 ).
              t288 = t290.
            ELSE.
              DATA t291 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t291.
              t288 = t291.
            ENDIF.
            t243 = t288.
            EXIT.
          ENDIF.
          DATA t292 TYPE i.
          DATA(t293) = t241.
          DATA(t294) = 1.
          t292 = t293 + t294.
          t241 = t292.
        ENDDO.
        DATA(t295) = CAST zcl_lnt_typed_identifier( t243 ).
        t235 = t295.
        t231 = t235.
      ENDIF.
      t228 = t231.
      t227 = t228.
      DATA(t296) = VALUE abap_bool( ).
      DATA t297 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t298) = CAST zcl_lnt_typed_identifier( t227 ).
      t297 = t298.
      DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t300.
      t299 = t300.
      DATA(t301) = VALUE abap_bool( ).
      DATA(t302) = CAST zcl_lnt_typed_identifier( t297 ).
      IF t302 IS INITIAL.
        t301 = abap_true.
      ENDIF.
      t296 = t301.
      IF t296 = abap_true.
        DATA t303 TYPE string.
        DATA t304 TYPE string.
        DATA t305 TYPE string.
        DATA(t306) = |constructor parameter "|.
        DATA t307 TYPE string.
        DATA(t308) = CAST zlnt_runtime_opti_4ba3bdccd169( t183 ).
        t307 = t308->value.
        DATA(t309) = strlen( t306 ).
        t305 = |{ t306 }{ t307 }|.
        DATA(t310) = |" does not exist|.
        DATA(t311) = strlen( t305 ).
        t304 = |{ t305 }{ t310 }|.
        t303 = t304.
        DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t313) = CAST zcl_lnt_syntax_input( t3 ).
        t312 = t313->issues.
        DATA t314 TYPE REF TO zcl_lnt_issue.
        DATA(t315) = CAST zcl_lnt_syntax_input( t3 ).
        DATA t316 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t317) = CAST zcl_lnt_statement_node( t2 ).
        t316 = t317->get_first_token( ).
        DATA(t318) = t303.
        DATA t319 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t319.
        t314 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t315 i_token = t316 i_message_26cb = t318 i_fix = t319 ).
        APPEND t314 TO t312->items.
        RETURN.
      ELSE.
        DATA(t320) = VALUE abap_bool( ).
        DATA(t321) = VALUE abap_bool( ).
        DATA t322 TYPE REF TO zcl_lnt_type_utils.
        DATA t323 TYPE REF TO zcl_lnt_current_scope.
        DATA(t324) = CAST zcl_lnt_syntax_input( t3 ).
        t323 = t324->scope.
        t322 = NEW zcl_lnt_type_utils( i_scope = t323 ).
        DATA(t325) = CAST zcl_lnt_abstract_type( t219 ).
        DATA t326 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t326.
        DATA(t327) = abap_true.
        IF t327 = abap_true.
          DATA t328 TYPE REF TO zcl_lnt_abstract_type.
          DATA t329 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t330 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t331) = CAST zcl_lnt_typed_identifier( t227 ).
          t330 = t331.
          t329 = t330.
          DATA t332 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t333) = CAST zcl_lnt_typed_identifier( t329 ).
          t332 = t333->type_cba0.
          t328 = t332.
          t326 = t328.
        ELSE.
          DATA t334 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t334.
          t326 = t334.
        ENDIF.
        DATA(t335) = CAST zcl_lnt_expression_node( t215 ).
        t321 = t322->is_assignable_strict( i_source_75cf = t325 i_target_5f8a = t326 i_node = t335 ).
        DATA(t336) = abap_false.
        t320 = xsdbool( t321 = t336 ).
        IF t320 = abap_true.
          DATA t337 TYPE string.
          DATA t338 TYPE string.
          DATA t339 TYPE string.
          DATA(t340) = |constructor parameter "|.
          DATA t341 TYPE string.
          DATA(t342) = CAST zlnt_runtime_opti_4ba3bdccd169( t183 ).
          t341 = t342->value.
          DATA(t343) = strlen( t340 ).
          t339 = |{ t340 }{ t341 }|.
          DATA(t344) = |" type not compatible|.
          DATA(t345) = strlen( t339 ).
          t338 = |{ t339 }{ t344 }|.
          t337 = t338.
          DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t347) = CAST zcl_lnt_syntax_input( t3 ).
          t346 = t347->issues.
          DATA t348 TYPE REF TO zcl_lnt_issue.
          DATA(t349) = CAST zcl_lnt_syntax_input( t3 ).
          DATA t350 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t351) = CAST zcl_lnt_statement_node( t2 ).
          t350 = t351->get_first_token( ).
          DATA(t352) = t337.
          DATA t353 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t353.
          t348 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t349 i_token = t350 i_message_26cb = t352 i_fix = t353 ).
          APPEND t348 TO t346->items.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t354 TYPE abap_bool.
      DATA(t355) = CAST zlnt_runtime_set__1827558fd4c7( t89 ).
      DATA t356 TYPE string.
      DATA(t357) = CAST zlnt_runtime_opti_4ba3bdccd169( t183 ).
      t356 = t357->value.
      t354 = t355->delete( p0 = t356 ).
    ENDLOOP.
    DATA t358 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t359) = CAST zlnt_runtime_set__1827558fd4c7( t89 ).
    t358 = t359->values( ).
    DATA(t360) = VALUE string( ).
    LOOP AT t358->items INTO t360.
      DATA t361 TYPE string.
      DATA t362 TYPE string.
      DATA t363 TYPE string.
      DATA(t364) = |constructor parameter "|.
      DATA(t365) = t360.
      DATA(t366) = strlen( t364 ).
      t363 = |{ t364 }{ t365 }|.
      DATA(t367) = |" must be supplied|.
      DATA(t368) = strlen( t363 ).
      t362 = |{ t363 }{ t367 }|.
      t361 = t362.
      DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t370) = CAST zcl_lnt_syntax_input( t3 ).
      t369 = t370->issues.
      DATA t371 TYPE REF TO zcl_lnt_issue.
      DATA(t372) = CAST zcl_lnt_syntax_input( t3 ).
      DATA t373 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t374) = CAST zcl_lnt_statement_node( t2 ).
      t373 = t374->get_first_token( ).
      DATA(t375) = t361.
      DATA t376 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t376.
      t371 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t372 i_token = t373 i_message_26cb = t375 i_fix = t376 ).
      APPEND t371 TO t369->items.
      RETURN.
    ENDLOOP.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d863_b79207361101.
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_syntax~run_syntax.
    me->run_syntax( i_node = i_node i_input_967e = i_input_967e ).
  ENDMETHOD.
ENDCLASS.
