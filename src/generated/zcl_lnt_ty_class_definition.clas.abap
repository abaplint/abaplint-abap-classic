* TS: src/abap/types/class_definition.ts:23:1 ClassDefinition
CLASS zcl_lnt_ty_class_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_class_definition.
    INTERFACES zif_lnt_interface_definition.
    INTERFACES zif_lnt_union_865ccdda.
    INTERFACES zif_lnt_union_f405367a.
    DATA method_defs TYPE REF TO zcl_lnt_method_definitions.
    DATA types TYPE REF TO zcl_lnt_type_definitions.
    DATA attributes TYPE REF TO zcl_lnt_attributes.
    DATA events_f95a TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA friends TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA super_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA implementing TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA testing TYPE abap_bool.
    DATA abstract TYPE abap_bool.
    DATA final_value TYPE abap_bool.
    DATA global_value TYPE abap_bool.
    DATA shared_memory TYPE abap_bool.
    DATA aliases_62bb TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA create_visibility_value TYPE int8.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_friends RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_events RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_method_definitions RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definitions.
    METHODS g_t_d_i_s_ab_ty_cl_df_ts_cl_df RETURNING VALUE(result) TYPE REF TO zcl_lnt_type_definitions.
    METHODS get_super_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS g_a_in_sr_ab_ty_cl_df_ts_cl_df RETURNING VALUE(result) TYPE REF TO zcl_lnt_attributes.
    METHODS is_global RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_final RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_implementing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_aliases RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_for_testing RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_abstract RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_shared_memory RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_create_visibility RETURNING VALUE(result) TYPE int8.
    METHODS check_class_name_length IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS find_super IMPORTING i_def TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS check_method_name_length IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS check_class_constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS check_interface_visibility IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input i_node TYPE REF TO zcl_lnt_structure_node.
    METHODS chck_mthds_frm_spr_clsss IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS check_method_name_conflicts IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS check_event_name_conflicts IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS find_friends IMPORTING i_def TYPE REF TO zcl_lnt_statement_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS add_reference IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS parse IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input i_input_node TYPE REF TO zcl_lnt_structure_node.
    METHODS get_type_definitions RETURNING VALUE(result) TYPE REF TO zif_lnt_type_definitions.
    METHODS get_attributes RETURNING VALUE(result) TYPE REF TO zif_lnt_attributes.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_class_definition IMPLEMENTATION.
  METHOD constructor.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE REF TO zif_lnt_structure.
    DATA(t6) = t1.
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |ClassDefinition, unexpected node type|.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_statement_node.
    DATA t15 TYPE REF TO zcl_lnt_statement_node.
    DATA(t16) = t1.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d394_f6e1a10c8513.
    t15 = t16->find_first_statement( i_type_9913 = t17 ).
    t14 = t15.
    DATA t18 TYPE REF TO zcl_lnt_abstract_token.
    DATA t19 TYPE REF TO zcl_lnt_abstract_token.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
    DATA(t23) = t14.
    t22 = t23.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
    t21 = t22->find_direct_expression( i_type_9913 = t24 ).
    t20 = t21.
    t19 = t20->get_first_token( ).
    t18 = t19.
    DATA(t25) = t18.
    DATA t26 TYPE string.
    DATA(t27) = t2.
    t26 = t27->filename.
    super->constructor( i_token = t25 i_filename = t26 ).
    DATA t28 TYPE REF TO zcl_lnt_current_scope.
    DATA(t29) = t2.
    t28 = t29->scope.
    DATA(t30) = me.
    t28->add_class_definition( i_c = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    me->events_f95a = t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    me->implementing = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    DATA t36 TYPE REF TO zcl_lnt_statement_node.
    DATA(t37) = t14.
    t36 = t37.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t35 = t36->find_first_expression( i_type_9913 = t38 ).
    t34 = t35.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    t39 = t40.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = t34.
    IF t43 IS INITIAL.
      t42 = abap_true.
    ENDIF.
    t41 = xsdbool( t42 = abap_false ).
    t33 = t41.
    me->global_value = t33.
    DATA(t44) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zcl_lnt_expression_node.
    DATA t46 TYPE REF TO zcl_lnt_expression_node.
    DATA t47 TYPE REF TO zcl_lnt_statement_node.
    DATA(t48) = t14.
    t47 = t48.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
    t46 = t47->find_first_expression( i_type_9913 = t49 ).
    t45 = t46.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    t50 = t51.
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = t45.
    IF t54 IS INITIAL.
      t53 = abap_true.
    ENDIF.
    t52 = xsdbool( t53 = abap_false ).
    t44 = t52.
    me->final_value = t44.
    DATA t55 TYPE REF TO zcl_lnt_current_scope.
    DATA t56 TYPE REF TO zcl_lnt_current_scope.
    DATA(t57) = t2.
    t56 = t57->scope.
    t55 = t56.
    DATA t58 TYPE string.
    DATA t59 TYPE string.
    DATA t60 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t61) = t18.
    t60 = t61.
    DATA t62 TYPE string.
    DATA(t63) = t60.
    t62 = t63->str.
    t59 = t62.
    t58 = t59.
    DATA t64 TYPE REF TO zcl_lnt_position.
    DATA t65 TYPE REF TO zcl_lnt_position.
    DATA t66 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t67) = t18.
    t66 = t67.
    DATA t68 TYPE REF TO zcl_lnt_position.
    DATA(t69) = t66.
    t68 = t69->start.
    t65 = t68.
    t64 = t65.
    DATA t70 TYPE string.
    DATA t71 TYPE string.
    DATA(t72) = t2.
    t71 = t72->filename.
    t70 = t71.
    DATA t73 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t74 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t75) = |class_definition|.
    DATA(t76) = t58.
    DATA(t77) = t70.
    DATA(t78) = t64.
    DATA t79 TYPE REF TO zcl_lnt_position.
    CLEAR t79.
    t74 = NEW zcl_lnt_iscope_identifier( i_stype = t75 i_sname = t76 i_filename = t77 i_start = t78 i_end = t79 ).
    t73 = t74.
    DATA(t80) = VALUE abap_bool( ).
    DATA t81 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t83) = t55.
    t82 = t83->current.
    t81 = t82.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    t84 = t85.
    DATA(t86) = VALUE abap_bool( ).
    DATA(t87) = t81.
    IF t87 IS INITIAL.
      t86 = abap_true.
    ENDIF.
    t80 = t86.
    IF t80 = abap_true.
      DATA(t88) = t55.
      DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t89.
      DATA(t90) = abap_true.
      IF t90 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t92) = t73.
        DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t93.
        t91 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t92 i_parent = t93 ).
        t89 = t91.
      ELSE.
        DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t94.
        t89 = t94.
      ENDIF.
      t88->current = t89.
    ELSE.
      DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t96 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t97 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t98) = t55.
      t97 = t98->current.
      t96 = t97.
      t95 = t96.
      DATA(t99) = t55.
      DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t100.
      DATA(t101) = abap_true.
      IF t101 = abap_true.
        DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t102.
        DATA(t103) = t73.
        DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t104.
        DATA(t105) = abap_true.
        IF t105 = abap_true.
          DATA(t106) = t95.
          t104 = t106.
        ELSE.
          DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t107.
          t104 = t107.
        ENDIF.
        t102 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t103 i_parent = t104 ).
        t100 = t102.
      ELSE.
        DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t108.
        t100 = t108.
      ENDIF.
      t99->current = t100.
      DATA(t109) = t95.
      DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t111 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t112) = t55.
      t111 = t112->current.
      t110 = t111.
      t109->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t110 ).
    ENDIF.
    DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t113.
    DATA t114 TYPE REF TO zcl_lnt_statement_node.
    DATA(t115) = t14.
    t114 = t115.
    DATA t116 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t117) = t2.
    t116 = t117.
    DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t118.
    DATA t119 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t119.
    DATA t120 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t120.
    DATA t121 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t121.
    DATA t122 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t122.
    DATA t123 TYPE REF TO zcl_lnt_statement_node.
    DATA(t124) = t114.
    t123 = t124.
    DATA t125 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t125.
    DATA(t126) = VALUE abap_bool( ).
    DATA(t127) = t123.
    IF t127 IS INITIAL.
      t126 = abap_true.
    ENDIF.
    IF t126 = abap_true.
      DATA t128 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t128.
      t125 = t128.
    ELSE.
      DATA t129 TYPE REF TO zcl_lnt_expression_node.
      DATA t130 TYPE REF TO zcl_lnt_statement_node.
      DATA(t131) = t123.
      t130 = t131.
      DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d331_0a1ba381b33b.
      t129 = t130->find_direct_expression( i_type_9913 = t132 ).
      t125 = t129.
    ENDIF.
    t122 = t125.
    t121 = t122.
    DATA t133 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t133.
    DATA(t134) = VALUE abap_bool( ).
    DATA(t135) = t121.
    IF t135 IS INITIAL.
      t134 = abap_true.
    ENDIF.
    IF t134 = abap_true.
      DATA t136 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t136.
      t133 = t136.
    ELSE.
      DATA t137 TYPE REF TO zcl_lnt_abstract_token.
      DATA t138 TYPE REF TO zcl_lnt_expression_node.
      DATA(t139) = t121.
      t138 = t139.
      t137 = t138->get_first_token( ).
      t133 = t137.
    ENDIF.
    t120 = t133.
    t119 = t120.
    DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t140.
    DATA t141 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t142) = t119.
    t141 = t142.
    DATA t143 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t144) = t116.
    t143 = t144.
    DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t146.
    DATA t147 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t148) = t141.
    t147 = t148.
    DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t149.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = t147.
    IF t151 IS INITIAL.
      t150 = abap_true.
    ENDIF.
    IF t150 = abap_true.
      DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t152.
      t149 = t152.
    ELSE.
      DATA t153 TYPE string.
      DATA t154 TYPE REF TO zcl_lnt_abstract_token.
      DATA t155 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t156) = t147.
      t155 = t156.
      t154 = t155.
      DATA t157 TYPE string.
      DATA(t158) = t154.
      t157 = t158->str.
      t153 = t157.
      DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t159->has = abap_true.
      t159->value = t153.
      t149 = t159.
    ENDIF.
    t146 = t149.
    t145 = t146.
    DATA(t160) = VALUE abap_bool( ).
    DATA(t161) = t145.
    IF t161 IS BOUND.
      IF t161->has = abap_true.
        t160 = xsdbool( strlen( t161->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t160 = abap_true.
      DATA t162 TYPE REF TO zif_lnt_class_definition.
      CLEAR t162.
      DATA t163 TYPE REF TO zif_lnt_class_definition.
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_current_scope.
      DATA t165 TYPE REF TO zcl_lnt_current_scope.
      DATA(t166) = t143.
      t165 = t166->scope.
      t164 = t165.
      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t167.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t168.
      DATA(t169) = abap_true.
      IF t169 = abap_true.
        DATA t170 TYPE string.
        DATA(t171) = t145.
        t170 = t171->value.
        DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t172->has = abap_true.
        t172->value = t170.
        t168 = t172.
      ELSE.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        t168 = t173.
      ENDIF.
      t167 = t168.
      DATA t174 TYPE REF TO zif_lnt_class_definition.
      CLEAR t174.
      DATA(t175) = VALUE abap_bool( ).
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t177) = t167.
      t176 = t177.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      t178 = t179.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = t176.
      IF t181 IS INITIAL.
        t180 = abap_true.
      ELSEIF t181->has = abap_false.
        t180 = abap_true.
      ENDIF.
      t175 = t180.
      IF t175 = abap_true.
        DATA t182 TYPE REF TO zif_lnt_class_definition.
        CLEAR t182.
        t174 = t182.
      ELSE.
        DATA t183 TYPE REF TO zif_lnt_class_definition.
        CLEAR t183.
        DATA t184 TYPE REF TO zif_lnt_class_definition.
        CLEAR t184.
        DATA t185 TYPE REF TO zif_lnt_class_definition.
        CLEAR t185.
        DATA t186 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t187 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t188) = t164.
        t187 = t188->current.
        t186 = t187.
        DATA t189 TYPE REF TO zif_lnt_class_definition.
        CLEAR t189.
        DATA(t190) = VALUE abap_bool( ).
        DATA(t191) = t186.
        IF t191 IS INITIAL.
          t190 = abap_true.
        ENDIF.
        IF t190 = abap_true.
          DATA t192 TYPE REF TO zif_lnt_class_definition.
          CLEAR t192.
          t189 = t192.
        ELSE.
          DATA t193 TYPE REF TO zif_lnt_class_definition.
          DATA t194 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t195) = t186.
          t194 = t195.
          DATA t196 TYPE string.
          DATA(t197) = t167.
          t196 = t197->value.
          t193 = t194->find_class_definition( i_name = t196 ).
          t189 = t193.
        ENDIF.
        t185 = t189.
        t184 = t185.
        DATA t198 TYPE REF TO zif_lnt_class_definition.
        CLEAR t198.
        DATA t199 TYPE abap_bool.
        DATA(t200) = t184.
        t199 = xsdbool( t200 IS BOUND ).
        IF t199 = abap_true.
          DATA t201 TYPE REF TO zif_lnt_class_definition.
          CLEAR t201.
          DATA(t202) = abap_true.
          IF t202 = abap_true.
            DATA t203 TYPE REF TO zif_lnt_class_definition.
            DATA(t204) = t184.
            t203 = t204.
            t201 = t203.
          ELSE.
            DATA t205 TYPE REF TO zif_lnt_class_definition.
            CLEAR t205.
            t201 = t205.
          ENDIF.
          t198 = t201.
        ELSE.
          DATA t206 TYPE REF TO zif_lnt_class_definition.
          CLEAR t206.
          DATA t207 TYPE REF TO zcl_lnt_class.
          CLEAR t207.
          DATA t208 TYPE REF TO zcl_lnt_class.
          CLEAR t208.
          DATA t209 TYPE REF TO zif_lnt_object.
          CLEAR t209.
          DATA t210 TYPE REF TO zif_lnt_registry.
          DATA(t211) = t164.
          t210 = t211->reg.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA(t213) = abap_true.
          IF t213 = abap_true.
            DATA(t214) = |CLAS|.
            DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t215->has = abap_true.
            t215->value = t214.
            t212 = t215.
          ELSE.
            DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t216.
            t212 = t216.
          ENDIF.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          DATA(t218) = abap_true.
          IF t218 = abap_true.
            DATA t219 TYPE string.
            DATA(t220) = t167.
            t219 = t220->value.
            DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t221->has = abap_true.
            t221->value = t219.
            t217 = t221.
          ELSE.
            DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t222.
            t217 = t222.
          ENDIF.
          t209 = t210->get_object( i_type_9913 = t212 i_name = t217 ).
          DATA t223 TYPE REF TO object.
          t223 = t209.
          t208 ?= t223.
          t207 = t208.
          DATA t224 TYPE REF TO zif_lnt_class_definition.
          CLEAR t224.
          DATA t225 TYPE abap_bool.
          DATA(t226) = t207.
          t225 = xsdbool( t226 IS BOUND ).
          IF t225 = abap_true.
            DATA t227 TYPE REF TO zif_lnt_class_definition.
            DATA t228 TYPE REF TO zcl_lnt_class.
            DATA(t229) = t207.
            t228 = t229.
            t227 = t228->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t224 = t227.
          ELSE.
            DATA t230 TYPE REF TO zif_lnt_class_definition.
            CLEAR t230.
            t224 = t230.
          ENDIF.
          t206 = t224.
          t198 = t206.
        ENDIF.
        t183 = t198.
        t174 = t183.
      ENDIF.
      t163 = t174.
      t162 = t163.
      DATA t231 TYPE abap_bool.
      DATA(t232) = t162.
      t231 = xsdbool( t232 IS BOUND ).
      IF t231 = abap_true.
        DATA t233 TYPE REF TO zcl_lnt_current_scope.
        DATA(t234) = t143.
        t233 = t234->scope.
        DATA(t235) = t141.
        DATA t236 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t236.
        DATA(t237) = abap_true.
        IF t237 = abap_true.
          DATA t238 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t239 TYPE REF TO zif_lnt_class_definition.
          DATA(t240) = t162.
          t239 = t240.
          t238 ?= t239.
          t236 = t238.
        ELSE.
          DATA t241 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t241.
          t236 = t241.
        ENDIF.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t243) = |Object|.
        CREATE OBJECT t242.
        t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t242->sval = t243.
        DATA t244 TYPE string.
        DATA(t245) = t143.
        t244 = t245->filename.
        DATA t246 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t246.
        DATA(t247) = abap_true.
        IF t247 = abap_true.
          DATA t248 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t248.
          DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t249.
          DATA(t250) = abap_true.
          IF t250 = abap_true.
            DATA t251 TYPE string.
            DATA t252 TYPE string.
            DATA(t253) = t145.
            t252 = t253->value.
            DATA(t254) = strlen( t252 ).
            t251 = t252.
            IF t251 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t251 TO UPPER CASE.
            ELSE.
              t251 = zlnt_runtime_uppe_91169605024d=>full( t251 ).
            ENDIF.
            DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t255->has = abap_true.
            t255->value = t251.
            t249 = t255.
          ELSE.
            DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t256.
            t249 = t256.
          ENDIF.
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t257.
          DATA(t258) = abap_true.
          IF t258 = abap_true.
            DATA(t259) = |CLAS|.
            DATA(t260) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t260->has = abap_true.
            t260->value = t259.
            t257 = t260.
          ELSE.
            DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t261.
            t257 = t261.
          ENDIF.
          DATA t262 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t262.
          t248 = NEW zcl_lnt_ireference_extras( i_oo_name = t249 i_oo_type = t257 i_found_qualified = t262 ).
          t246 = t248.
        ELSE.
          DATA t263 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t263.
          t246 = t263.
        ENDIF.
        t233->add_reference( i_usage = t235 i_referencing = t236 i_type_9913 = t242 i_filename = t244 i_extra = t246 ).
      ELSE.
        DATA(t264) = VALUE abap_bool( ).
        DATA(t265) = VALUE abap_bool( ).
        DATA t266 TYPE REF TO zcl_lnt_ddic.
        DATA t267 TYPE REF TO zcl_lnt_ddic.
        DATA t268 TYPE REF TO zcl_lnt_current_scope.
        DATA t269 TYPE REF TO zcl_lnt_current_scope.
        DATA(t270) = t143.
        t269 = t270->scope.
        t268 = t269.
        DATA t271 TYPE REF TO zcl_lnt_ddic.
        DATA t272 TYPE REF TO zif_lnt_registry.
        DATA(t273) = t268.
        t272 = t273->reg.
        t271 = NEW zcl_lnt_ddic( i_reg_f149 = t272 ).
        t267 = t271.
        t266 = t267.
        DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t274.
        DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t275.
        DATA(t276) = abap_true.
        IF t276 = abap_true.
          DATA t277 TYPE string.
          DATA(t278) = t145.
          t277 = t278->value.
          DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t279->has = abap_true.
          t279->value = t277.
          t275 = t279.
        ELSE.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          t275 = t280.
        ENDIF.
        t274 = t275.
        DATA(t281) = VALUE abap_bool( ).
        DATA(t282) = VALUE abap_bool( ).
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t284) = t274.
        t283 = t284.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        t285 = t286.
        DATA(t287) = VALUE abap_bool( ).
        DATA(t288) = t283.
        IF t288 IS INITIAL.
          t287 = abap_true.
        ELSEIF t288->has = abap_false.
          t287 = abap_true.
        ENDIF.
        t282 = t287.
        IF t282 = abap_true.
          DATA(t289) = abap_true.
          t281 = t289.
        ELSE.
          DATA t290 TYPE abap_bool.
          DATA t291 TYPE REF TO zif_lnt_registry.
          DATA(t292) = t266.
          t291 = t292->reg.
          DATA t293 TYPE string.
          DATA(t294) = t274.
          t293 = t294->value.
          t290 = t291->in_error_namespace( i_name = t293 ).
          t281 = t290.
        ENDIF.
        t265 = t281.
        DATA(t295) = abap_false.
        t264 = xsdbool( t265 = t295 ).
        IF t264 = abap_true.
          DATA t296 TYPE REF TO zcl_lnt_current_scope.
          DATA(t297) = t143.
          t296 = t297->scope.
          DATA(t298) = t141.
          DATA t299 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t299.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t301) = |Object (Void)|.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t300->sval = t301.
          DATA t302 TYPE string.
          DATA(t303) = t143.
          t302 = t303->filename.
          DATA t304 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t304.
          t296->add_reference( i_usage = t298 i_referencing = t299 i_type_9913 = t300 i_filename = t302 i_extra = t304 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t306.
    DATA t307 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t308) = t119.
    t307 = t308.
    DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t309.
    DATA(t310) = VALUE abap_bool( ).
    DATA(t311) = t307.
    IF t311 IS INITIAL.
      t310 = abap_true.
    ENDIF.
    IF t310 = abap_true.
      DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t312.
      t309 = t312.
    ELSE.
      DATA t313 TYPE string.
      DATA t314 TYPE REF TO zcl_lnt_abstract_token.
      DATA t315 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t316) = t307.
      t315 = t316.
      t314 = t315.
      DATA t317 TYPE string.
      DATA(t318) = t314.
      t317 = t318->str.
      t313 = t317.
      DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t319->has = abap_true.
      t319->value = t313.
      t309 = t319.
    ENDIF.
    t306 = t309.
    t305 = t306.
    DATA(t320) = t305.
    t140 = t320.
    t118 = t140.
    t113 = t118.
    me->super_class = t113.
    DATA t321 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t322) = t14.
    DATA(t323) = t2.
    t321 = me->find_friends( i_def = t322 i_input_967e = t323 ).
    me->friends = t321.
    DATA(t324) = t2.
    DATA(t325) = t1.
    me->parse( i_input_967e = t324 i_input_node = t325 ).
    DATA t326 TYPE REF TO zcl_lnt_object_oriented.
    DATA t327 TYPE REF TO zcl_lnt_object_oriented.
    DATA t328 TYPE REF TO zcl_lnt_current_scope.
    DATA(t329) = t2.
    t328 = t329->scope.
    t327 = NEW zcl_lnt_object_oriented( i_scope = t328 ).
    t326 = t327.
    DATA t330 TYPE REF TO zcl_lnt_object_oriented.
    DATA(t331) = t326.
    t330 = t331.
    DATA t332 TYPE REF TO zif_lnt_class_definition.
    DATA(t333) = me.
    t332 = t333.
    DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t336) = t330.
    DATA(t337) = t332.
    t335 = t336->from_super_classes( i_child = t337 ).
    t334 = t335.
    DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t338.
    DATA(t339) = t330.
    DATA t340 TYPE REF TO zif_lnt_interface_definition.
    DATA(t341) = t332.
    t340 ?= t341.
    DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t342.
    DATA(t343) = abap_true.
    IF t343 = abap_true.
      DATA(t344) = t334.
      t342 = t344.
    ELSE.
      DATA t345 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t345.
      t342 = t345.
    ENDIF.
    t338 = t339->from_interfaces( i_definition = t340 i_skip_34cc = t342 ).
    DATA t346 TYPE REF TO zcl_lnt_attributes.
    DATA(t347) = t1.
    DATA(t348) = t2.
    t346 = NEW zcl_lnt_attributes( i_node = t347 i_input_967e = t348 ).
    me->attributes = t346.
    DATA t349 TYPE REF TO zcl_lnt_type_definitions.
    DATA(t350) = me->attributes.
    t349 = t350->gt_ty_in_sr_ab_ty_cl_at_ts_att( ).
    me->types = t349.
    DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t352 TYPE REF TO zcl_lnt_attributes.
    DATA(t353) = me->attributes.
    t352 = t353.
    DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t355) = t352.
    t354 = t355->aliases_62bb.
    t351 = t354.
    me->aliases_62bb = t351.
    DATA t356 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t357 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t358) = t1.
    DATA(t359) = zlnt_runtime_desc_78196487750d=>zlnt_member_d471_fd10061a16af.
    t357 = t358->find_all_statements( i_type_9913 = t359 ).
    t356 = t357.
    DATA(t360) = t356.
    DATA t361 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t361.
    DATA t362 TYPE REF TO object.
    CLEAR t362.
    LOOP AT t360->items INTO t362.
      t361 ?= t362.
      DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t363.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t364.
      DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t365.
      DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t366.
      DATA t367 TYPE REF TO zcl_lnt_expression_node.
      DATA t368 TYPE REF TO zcl_lnt_expression_node.
      DATA(t369) = t361.
      DATA(t370) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
      t368 = t369->find_direct_expression( i_type_9913 = t370 ).
      t367 = t368.
      DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t371.
      DATA(t372) = VALUE abap_bool( ).
      DATA(t373) = t367.
      IF t373 IS INITIAL.
        t372 = abap_true.
      ENDIF.
      IF t372 = abap_true.
        DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t374.
        t371 = t374.
      ELSE.
        DATA t375 TYPE string.
        DATA t376 TYPE REF TO zcl_lnt_expression_node.
        DATA(t377) = t367.
        t376 = t377.
        t375 = t376->concat_tokens( ).
        DATA(t378) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t378->has = abap_true.
        t378->value = t375.
        t371 = t378.
      ENDIF.
      t366 = t371.
      t365 = t366.
      DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t379.
      DATA(t380) = VALUE abap_bool( ).
      DATA(t381) = t365.
      IF t381 IS INITIAL.
        t380 = abap_true.
      ELSEIF t381->has = abap_false.
        t380 = abap_true.
      ENDIF.
      IF t380 = abap_true.
        DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t382.
        t379 = t382.
      ELSE.
        DATA t383 TYPE string.
        DATA t384 TYPE string.
        DATA(t385) = t365.
        t384 = t385->value.
        DATA(t386) = strlen( t384 ).
        t383 = t384.
        IF t383 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t383 TO UPPER CASE.
        ELSE.
          t383 = zlnt_runtime_uppe_91169605024d=>full( t383 ).
        ENDIF.
        DATA(t387) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t387->has = abap_true.
        t387->value = t383.
        t379 = t387.
      ENDIF.
      t364 = t379.
      t363 = t364.
      DATA(t388) = VALUE abap_bool( ).
      DATA t389 TYPE REF TO zif_lnt_event_definition.
      CLEAR t389.
      DATA t390 TYPE REF TO zif_lnt_event_definition.
      CLEAR t390.
      DATA t391 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t392) = me->events_f95a.
      t391 = t392.
      DATA t393 TYPE i.
      DATA t394 TYPE i.
      DATA(t395) = t391.
      t394 = lines( t395->items ).
      t393 = t394.
      DATA t396 TYPE i.
      DATA(t397) = 0.
      t396 = t397.
      DATA t398 TYPE REF TO zif_lnt_event_definition.
      DATA t399 TYPE REF TO zif_lnt_event_definition.
      CLEAR t399.
      t398 = t399.
      DO.
        DATA t400 TYPE abap_bool.
        DATA(t401) = t396.
        DATA(t402) = t393.
        t400 = xsdbool( t401 < t402 ).
        IF t400 = abap_false.
          EXIT.
        ENDIF.
        DATA t403 TYPE REF TO zif_lnt_event_definition.
        DATA t404 TYPE REF TO zif_lnt_event_definition.
        DATA t405 TYPE REF TO zif_lnt_event_definition.
        DATA(t406) = t391.
        DATA(t407) = t396.
        DATA t408 TYPE REF TO object.
        t408 = t406->get( p0 = t407 ).
        t405 ?= t408.
        t404 = t405.
        t403 = t404.
        DATA(t409) = VALUE abap_bool( ).
        DATA t410 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t410.
        DATA(t411) = abap_true.
        IF t411 = abap_true.
          DATA t412 TYPE string.
          DATA t413 TYPE string.
          DATA(t414) = t403.
          t413 = t414->get_name( ).
          DATA(t415) = strlen( t413 ).
          t412 = t413.
          IF t412 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t412 TO UPPER CASE.
          ELSE.
            t412 = zlnt_runtime_uppe_91169605024d=>full( t412 ).
          ENDIF.
          DATA(t416) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t416->has = abap_true.
          t416->value = t412.
          t410 = t416.
        ELSE.
          DATA t417 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t417.
          t410 = t417.
        ENDIF.
        DATA(t418) = t363.
        DATA(t419) = VALUE abap_bool( ).
        DATA(t420) = VALUE abap_bool( ).
        IF t410 IS BOUND.
          t419 = t410->has.
        ENDIF.
        IF t418 IS BOUND.
          t420 = t418->has.
        ENDIF.
        IF t419 = t420.
          IF t419 = abap_false.
            t409 = abap_true.
          ELSEIF t410->value = t418->value.
            t409 = abap_true.
          ENDIF.
        ENDIF.
        IF t409 = abap_true.
          DATA t421 TYPE REF TO zif_lnt_event_definition.
          CLEAR t421.
          DATA(t422) = abap_true.
          IF t422 = abap_true.
            DATA(t423) = t403.
            t421 = t423.
          ELSE.
            DATA t424 TYPE REF TO zif_lnt_event_definition.
            CLEAR t424.
            t421 = t424.
          ENDIF.
          t398 = t421.
          EXIT.
        ENDIF.
        DATA t425 TYPE i.
        DATA(t426) = t396.
        DATA(t427) = 1.
        t425 = t426 + t427.
        t396 = t425.
      ENDDO.
      DATA(t428) = t398.
      t390 = t428.
      t389 = t390.
      DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t430.
      t429 = t430.
      DATA(t431) = VALUE abap_bool( ).
      DATA(t432) = VALUE abap_bool( ).
      DATA(t433) = t389.
      IF t433 IS INITIAL.
        t432 = abap_true.
      ENDIF.
      t431 = xsdbool( t432 = abap_false ).
      t388 = t431.
      IF t388 = abap_true.
        DATA t434 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t435) = t2.
        t434 = t435->issues.
        DATA t436 TYPE REF TO zcl_lnt_issue.
        CLEAR t436.
        DATA(t437) = t2.
        DATA t438 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t439) = t361.
        t438 = t439->get_first_token( ).
        DATA(t440) = VALUE string( ).
        DATA(t441) = VALUE string( ).
        DATA(t442) = |Event |.
        DATA(t443) = VALUE string( ).
        DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t445) = t363.
        t444 = t445.
        DATA(t446) = VALUE string( ).
        DATA(t447) = VALUE abap_bool( ).
        DATA(t448) = t444.
        IF t448 IS INITIAL.
          t447 = abap_true.
        ELSEIF t448->has = abap_false.
          t447 = abap_true.
        ENDIF.
        IF t447 = abap_true.
          DATA(t449) = |undefined|.
          t446 = t449.
        ELSE.
          DATA t450 TYPE string.
          DATA(t451) = t444.
          t450 = t451->value.
          t446 = t450.
        ENDIF.
        t443 = t446.
        DATA(t452) = strlen( t442 ).
        t441 = |{ t442 }{ t443 }|.
        DATA(t453) = | already defined|.
        DATA(t454) = strlen( t441 ).
        t440 = |{ t441 }{ t453 }|.
        DATA t455 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t455.
        t436 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t437 i_token = t438 i_message_26cb = t440 i_fix = t455 ).
        APPEND t436 TO t434->items.
        CONTINUE.
      ENDIF.
      DATA(t456) = me->events_f95a.
      DATA t457 TYPE REF TO zcl_lnt_event_definition.
      DATA(t458) = t361.
      DATA(t459) = CONV int8( 3 ).
      DATA(t460) = t2.
      t457 = NEW zcl_lnt_event_definition( i_node = t458 i_visibility_33e6 = t459 i_input_967e = t460 ).
      APPEND t457 TO t456->items.
    ENDLOOP.
    DATA t461 TYPE REF TO zcl_lnt_method_definitions.
    DATA(t462) = t1.
    DATA(t463) = t2.
    t461 = NEW zcl_lnt_method_definitions( i_node = t462 i_input_967e = t463 ).
    me->method_defs = t461.
    DATA t464 TYPE REF TO zcl_lnt_spaghetti_scope.
    CLEAR t464.
    DATA t465 TYPE REF TO zcl_lnt_current_scope.
    DATA(t466) = t2.
    t465 = t466->scope.
    DATA t467 TYPE REF TO zcl_lnt_position.
    CLEAR t467.
    DATA t468 TYPE REF TO zcl_lnt_abstract_token.
    DATA t469 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t470) = t1.
    t469 = t470->get_last_token( ).
    t468 = t469.
    DATA t471 TYPE REF TO zcl_lnt_position.
    CLEAR t471.
    DATA t472 TYPE int8.
    DATA t473 TYPE REF TO zcl_lnt_position.
    DATA t474 TYPE REF TO zcl_lnt_position.
    DATA(t475) = t468.
    t474 = t475->start.
    t473 = t474.
    DATA t476 TYPE int8.
    DATA(t477) = t473.
    t476 = t477->row.
    t472 = t476.
    DATA t478 TYPE int8.
    DATA t479 TYPE int8.
    DATA t480 TYPE REF TO zcl_lnt_position.
    DATA t481 TYPE REF TO zcl_lnt_position.
    DATA(t482) = t468.
    t481 = t482->start.
    t480 = t481.
    DATA t483 TYPE int8.
    DATA(t484) = t480.
    t483 = t484->col.
    t479 = t483.
    DATA t485 TYPE int8.
    DATA t486 TYPE i.
    DATA t487 TYPE string.
    DATA(t488) = t468.
    t487 = t488->str.
    DATA(t489) = strlen( t487 ).
    t486 = t489.
    t485 = t486.
    t478 = t479 + t485.
    IF t478 < range_int8_bound_min OR t478 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t471 = NEW zcl_lnt_position( i_row = t472 i_col = t478 ).
    t467 = t471.
    t464 = t465->pop( i_end = t467 ).
    DATA(t490) = VALUE string( ).
    DATA t491 TYPE string.
    DATA t492 TYPE string.
    DATA t493 TYPE REF TO zcl_lnt_statement_node.
    DATA(t494) = t14.
    t493 = t494.
    t492 = t493->concat_tokens( ).
    DATA(t495) = strlen( t492 ).
    t491 = t492.
    IF t491 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t491 TO UPPER CASE.
    ELSE.
      t491 = zlnt_runtime_uppe_91169605024d=>full( t491 ).
    ENDIF.
    t490 = t491.
    DATA(t496) = VALUE abap_bool( ).
    DATA(t497) = VALUE i( ).
    DATA(t498) = t490.
    DATA(t499) = | FOR TESTING|.
    DATA(t500) = strlen( t498 ).
    IF t499 IS INITIAL.
      t497 = 0.
    ELSE.
      FIND t499 IN t498 MATCH OFFSET t497.
      IF sy-subrc <> 0.
        t497 = -1.
      ENDIF.
    ENDIF.
    DATA(t501) = 0.
    t496 = xsdbool( t497 >= t501 ).
    me->testing = t496.
    DATA(t502) = VALUE abap_bool( ).
    DATA(t503) = VALUE i( ).
    DATA(t504) = t490.
    DATA(t505) = | SHARED MEMORY ENABLED|.
    DATA(t506) = strlen( t504 ).
    IF t505 IS INITIAL.
      t503 = 0.
    ELSE.
      FIND t505 IN t504 MATCH OFFSET t503.
      IF sy-subrc <> 0.
        t503 = -1.
      ENDIF.
    ENDIF.
    DATA(t507) = 0.
    t502 = xsdbool( t503 >= t507 ).
    me->shared_memory = t502.
    DATA(t508) = VALUE abap_bool( ).
    DATA t509 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t509.
    DATA t510 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t510.
    DATA t511 TYPE REF TO zcl_lnt_statement_node.
    DATA(t512) = t14.
    t511 = t512.
    DATA t513 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t513.
    DATA(t514) = VALUE abap_bool( ).
    DATA(t515) = t511.
    IF t515 IS INITIAL.
      t514 = abap_true.
    ENDIF.
    IF t514 = abap_true.
      DATA t516 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t516.
      t513 = t516.
    ELSE.
      DATA t517 TYPE REF TO zcl_lnt_abstract_token.
      DATA t518 TYPE REF TO zcl_lnt_statement_node.
      DATA(t519) = t511.
      t518 = t519.
      DATA(t520) = |ABSTRACT|.
      t517 = t518->find_direct_token_by_text( i_text = t520 ).
      t513 = t517.
    ENDIF.
    t510 = t513.
    t509 = t510.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t522.
    t521 = t522.
    DATA(t523) = VALUE abap_bool( ).
    DATA(t524) = VALUE abap_bool( ).
    DATA(t525) = t509.
    IF t525 IS INITIAL.
      t524 = abap_true.
    ENDIF.
    t523 = xsdbool( t524 = abap_false ).
    t508 = t523.
    me->abstract = t508.
    DATA(t526) = VALUE abap_bool( ).
    DATA(t527) = VALUE i( ).
    DATA(t528) = t490.
    DATA(t529) = | CREATE PRIVATE|.
    DATA(t530) = strlen( t528 ).
    IF t529 IS INITIAL.
      t527 = 0.
    ELSE.
      FIND t529 IN t528 MATCH OFFSET t527.
      IF sy-subrc <> 0.
        t527 = -1.
      ENDIF.
    ENDIF.
    DATA(t531) = 0.
    t526 = xsdbool( t527 >= t531 ).
    IF t526 = abap_true.
      DATA(t532) = CONV int8( 1 ).
      me->create_visibility_value = t532.
    ELSE.
      DATA(t533) = VALUE abap_bool( ).
      DATA(t534) = VALUE i( ).
      DATA(t535) = t490.
      DATA(t536) = | CREATE PROTECTED|.
      DATA(t537) = strlen( t535 ).
      IF t536 IS INITIAL.
        t534 = 0.
      ELSE.
        FIND t536 IN t535 MATCH OFFSET t534.
        IF sy-subrc <> 0.
          t534 = -1.
        ENDIF.
      ENDIF.
      DATA(t538) = 0.
      t533 = xsdbool( t534 >= t538 ).
      IF t533 = abap_true.
        DATA(t539) = CONV int8( 2 ).
        me->create_visibility_value = t539.
      ELSE.
        DATA(t540) = CONV int8( 3 ).
        me->create_visibility_value = t540.
      ENDIF.
    ENDIF.
    DATA(t541) = t2.
    DATA(t542) = t1.
    me->check_interface_visibility( i_input_967e = t541 i_node = t542 ).
    DATA(t543) = t2.
    me->chck_mthds_frm_spr_clsss( i_input_967e = t543 ).
    DATA(t544) = t2.
    me->check_method_name_conflicts( i_input_967e = t544 ).
    DATA(t545) = t2.
    me->check_event_name_conflicts( i_input_967e = t545 ).
    DATA t546 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t547) = t2.
    t546 = t547.
    DATA(t548) = VALUE abap_bool( ).
    DATA(t549) = VALUE i( ).
    DATA(t550) = VALUE string( ).
    DATA t551 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t552) = me.
    t551 = t552.
    DATA(t553) = VALUE string( ).
    DATA t554 TYPE string.
    DATA t555 TYPE string.
    DATA t556 TYPE REF TO zcl_lnt_abstract_token.
    DATA t557 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t558) = t551.
    t557 = t558->token.
    t556 = t557.
    DATA t559 TYPE string.
    DATA(t560) = t556.
    t559 = t560->str.
    t555 = t559.
    t554 = t555.
    DATA(t561) = VALUE abap_bool( ).
    DATA(t562) = VALUE string( ).
    DATA(t563) = t554.
    DATA(t564) = 0.
    DATA(t565) = 1.
    DATA(t566) = strlen( t563 ).
    IF t564 < 0.
      t564 = t564 + t566.
      IF t564 < 0.
        t564 = 0.
      ENDIF.
    ENDIF.
    IF t564 > t566 OR t565 <= 0.
      CLEAR t562.
    ELSE.
      IF t565 > t566 - t564.
        t565 = t566 - t564.
      ENDIF.
      t562 = t563+t564(t565).
    ENDIF.
    DATA(t567) = |!|.
    t561 = xsdbool( t562 = t567 ).
    IF t561 = abap_true.
      DATA(t568) = VALUE string( ).
      DATA t569 TYPE string.
      DATA(t570) = t554.
      t569 = t570.
      DATA(t571) = VALUE string( ).
      DATA(t572) = t569.
      DATA(t573) = 1.
      DATA t574 TYPE i.
      DATA(t575) = t569.
      DATA(t576) = strlen( t575 ).
      t574 = t576.
      DATA(t577) = strlen( t572 ).
      IF t573 < 0.
        t573 = t573 + t577.
        IF t573 < 0.
          t573 = 0.
        ENDIF.
      ENDIF.
      IF t573 > t577 OR t574 <= 0.
        CLEAR t571.
      ELSE.
        IF t574 > t577 - t573.
          t574 = t577 - t573.
        ENDIF.
        t571 = t572+t573(t574).
      ENDIF.
      t568 = t571.
      t554 = t568.
    ENDIF.
    DATA(t578) = t554.
    t553 = t578.
    t550 = t553.
    DATA(t579) = strlen( t550 ).
    t549 = t579.
    DATA(t580) = 30.
    t548 = xsdbool( t549 > t580 ).
    IF t548 = abap_true.
      DATA(t581) = VALUE string( ).
      DATA(t582) = VALUE string( ).
      DATA(t583) = VALUE string( ).
      DATA(t584) = |Class name "|.
      DATA(t585) = VALUE string( ).
      DATA t586 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t587) = me.
      t586 = t587.
      DATA(t588) = VALUE string( ).
      DATA t589 TYPE string.
      DATA t590 TYPE string.
      DATA t591 TYPE REF TO zcl_lnt_abstract_token.
      DATA t592 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t593) = t586.
      t592 = t593->token.
      t591 = t592.
      DATA t594 TYPE string.
      DATA(t595) = t591.
      t594 = t595->str.
      t590 = t594.
      t589 = t590.
      DATA(t596) = VALUE abap_bool( ).
      DATA(t597) = VALUE string( ).
      DATA(t598) = t589.
      DATA(t599) = 0.
      DATA(t600) = 1.
      DATA(t601) = strlen( t598 ).
      IF t599 < 0.
        t599 = t599 + t601.
        IF t599 < 0.
          t599 = 0.
        ENDIF.
      ENDIF.
      IF t599 > t601 OR t600 <= 0.
        CLEAR t597.
      ELSE.
        IF t600 > t601 - t599.
          t600 = t601 - t599.
        ENDIF.
        t597 = t598+t599(t600).
      ENDIF.
      DATA(t602) = |!|.
      t596 = xsdbool( t597 = t602 ).
      IF t596 = abap_true.
        DATA(t603) = VALUE string( ).
        DATA t604 TYPE string.
        DATA(t605) = t589.
        t604 = t605.
        DATA(t606) = VALUE string( ).
        DATA(t607) = t604.
        DATA(t608) = 1.
        DATA t609 TYPE i.
        DATA(t610) = t604.
        DATA(t611) = strlen( t610 ).
        t609 = t611.
        DATA(t612) = strlen( t607 ).
        IF t608 < 0.
          t608 = t608 + t612.
          IF t608 < 0.
            t608 = 0.
          ENDIF.
        ENDIF.
        IF t608 > t612 OR t609 <= 0.
          CLEAR t606.
        ELSE.
          IF t609 > t612 - t608.
            t609 = t612 - t608.
          ENDIF.
          t606 = t607+t608(t609).
        ENDIF.
        t603 = t606.
        t589 = t603.
      ENDIF.
      DATA(t613) = t589.
      t588 = t613.
      t585 = t588.
      DATA(t614) = strlen( t584 ).
      t583 = |{ t584 }{ t585 }|.
      DATA(t615) = |" is too long, maximum length is 30 characters|.
      DATA(t616) = strlen( t583 ).
      t582 = |{ t583 }{ t615 }|.
      t581 = t582.
      DATA t617 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t618) = t546.
      t617 = t618->issues.
      DATA t619 TYPE REF TO zcl_lnt_issue.
      DATA(t620) = t546.
      DATA t621 TYPE REF TO zcl_lnt_abstract_token.
      DATA t622 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t623) = me.
      t622 = t623.
      DATA t624 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t625) = t622.
      t624 = t625->token.
      t621 = t624.
      DATA(t626) = t581.
      DATA t627 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t627.
      t619 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t620 i_token = t621 i_message_26cb = t626 i_fix = t627 ).
      APPEND t619 TO t617->items.
    ENDIF.
    DATA(t628) = t2.
    me->check_method_name_length( i_input_967e = t628 ).
    DATA(t629) = t2.
    me->check_class_constructor( i_input_967e = t629 ).
  ENDMETHOD.

  METHOD get_friends.
    DATA(t1) = me->friends.
    result = t1.

  ENDMETHOD.

  METHOD get_events.
    DATA(t1) = me->events_f95a.
    result = t1.

  ENDMETHOD.

  METHOD get_method_definitions.
    DATA(t1) = me->method_defs.
    result = t1.

  ENDMETHOD.

  METHOD g_t_d_i_s_ab_ty_cl_df_ts_cl_df.
    DATA(t1) = me->types.
    result = t1.

  ENDMETHOD.

  METHOD get_super_class.
    DATA(t1) = me->super_class.
    result = t1.

  ENDMETHOD.

  METHOD g_a_in_sr_ab_ty_cl_df_ts_cl_df.
    DATA(t1) = me->attributes.
    result = t1.

  ENDMETHOD.

  METHOD is_global.
    DATA(t1) = CONV abap_bool( me->global_value ).
    result = t1.

  ENDMETHOD.

  METHOD is_final.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/class_definition.ts:133|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_implementing.
    DATA(t1) = me->implementing.
    result = t1.

  ENDMETHOD.

  METHOD get_aliases.
    DATA(t1) = me->aliases_62bb.
    result = t1.

  ENDMETHOD.

  METHOD is_for_testing.
    DATA(t1) = CONV abap_bool( me->testing ).
    result = t1.

  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = CONV abap_bool( me->abstract ).
    result = t1.

  ENDMETHOD.

  METHOD is_shared_memory.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/class_definition.ts:153|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_create_visibility.
    DATA(t1) = CONV int8( me->create_visibility_value ).
    result = t1.

  ENDMETHOD.

  METHOD check_class_name_length.
    DATA(t1) = i_input_967e.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE i( ).
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t6) = me.
    t5 = t6.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA t9 TYPE string.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t12) = t5.
    t11 = t12->token.
    t10 = t11.
    DATA t13 TYPE string.
    DATA(t14) = t10.
    t13 = t14->str.
    t9 = t13.
    t8 = t9.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE string( ).
    DATA(t17) = t8.
    DATA(t18) = 0.
    DATA(t19) = 1.
    DATA(t20) = strlen( t17 ).
    IF t18 < 0.
      t18 = t18 + t20.
      IF t18 < 0.
        t18 = 0.
      ENDIF.
    ENDIF.
    IF t18 > t20 OR t19 <= 0.
      CLEAR t16.
    ELSE.
      IF t19 > t20 - t18.
        t19 = t20 - t18.
      ENDIF.
      t16 = t17+t18(t19).
    ENDIF.
    DATA(t21) = |!|.
    t15 = xsdbool( t16 = t21 ).
    IF t15 = abap_true.
      DATA(t22) = VALUE string( ).
      DATA t23 TYPE string.
      DATA(t24) = t8.
      t23 = t24.
      DATA(t25) = VALUE string( ).
      DATA(t26) = t23.
      DATA(t27) = 1.
      DATA t28 TYPE i.
      DATA(t29) = t23.
      DATA(t30) = strlen( t29 ).
      t28 = t30.
      DATA(t31) = strlen( t26 ).
      IF t27 < 0.
        t27 = t27 + t31.
        IF t27 < 0.
          t27 = 0.
        ENDIF.
      ENDIF.
      IF t27 > t31 OR t28 <= 0.
        CLEAR t25.
      ELSE.
        IF t28 > t31 - t27.
          t28 = t31 - t27.
        ENDIF.
        t25 = t26+t27(t28).
      ENDIF.
      t22 = t25.
      t8 = t22.
    ENDIF.
    DATA(t32) = t8.
    t7 = t32.
    t4 = t7.
    DATA(t33) = strlen( t4 ).
    t3 = t33.
    DATA(t34) = 30.
    t2 = xsdbool( t3 > t34 ).
    IF t2 = abap_true.
      DATA(t35) = VALUE string( ).
      DATA(t36) = VALUE string( ).
      DATA(t37) = VALUE string( ).
      DATA(t38) = |Class name "|.
      DATA(t39) = VALUE string( ).
      DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t41) = me.
      t40 = t41.
      DATA(t42) = VALUE string( ).
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t47) = t40.
      t46 = t47->token.
      t45 = t46.
      DATA t48 TYPE string.
      DATA(t49) = t45.
      t48 = t49->str.
      t44 = t48.
      t43 = t44.
      DATA(t50) = VALUE abap_bool( ).
      DATA(t51) = VALUE string( ).
      DATA(t52) = t43.
      DATA(t53) = 0.
      DATA(t54) = 1.
      DATA(t55) = strlen( t52 ).
      IF t53 < 0.
        t53 = t53 + t55.
        IF t53 < 0.
          t53 = 0.
        ENDIF.
      ENDIF.
      IF t53 > t55 OR t54 <= 0.
        CLEAR t51.
      ELSE.
        IF t54 > t55 - t53.
          t54 = t55 - t53.
        ENDIF.
        t51 = t52+t53(t54).
      ENDIF.
      DATA(t56) = |!|.
      t50 = xsdbool( t51 = t56 ).
      IF t50 = abap_true.
        DATA(t57) = VALUE string( ).
        DATA t58 TYPE string.
        DATA(t59) = t43.
        t58 = t59.
        DATA(t60) = VALUE string( ).
        DATA(t61) = t58.
        DATA(t62) = 1.
        DATA t63 TYPE i.
        DATA(t64) = t58.
        DATA(t65) = strlen( t64 ).
        t63 = t65.
        DATA(t66) = strlen( t61 ).
        IF t62 < 0.
          t62 = t62 + t66.
          IF t62 < 0.
            t62 = 0.
          ENDIF.
        ENDIF.
        IF t62 > t66 OR t63 <= 0.
          CLEAR t60.
        ELSE.
          IF t63 > t66 - t62.
            t63 = t66 - t62.
          ENDIF.
          t60 = t61+t62(t63).
        ENDIF.
        t57 = t60.
        t43 = t57.
      ENDIF.
      DATA(t67) = t43.
      t42 = t67.
      t39 = t42.
      DATA(t68) = strlen( t38 ).
      t37 = |{ t38 }{ t39 }|.
      DATA(t69) = |" is too long, maximum length is 30 characters|.
      DATA(t70) = strlen( t37 ).
      t36 = |{ t37 }{ t69 }|.
      t35 = t36.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t72) = t1.
      t71 = t72->issues.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      DATA(t74) = t1.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA t76 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t77) = me.
      t76 = t77.
      DATA t78 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t79) = t76.
      t78 = t79->token.
      t75 = t78.
      DATA(t80) = t35.
      DATA t81 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t81.
      t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t74 i_token = t75 i_message_26cb = t80 i_fix = t81 ).
      APPEND t73 TO t71->items.
    ENDIF.
  ENDMETHOD.

  METHOD find_super.
    DATA(t1) = i_def.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_statement_node.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t7.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_statement_node.
      DATA(t15) = t7.
      t14 = t15.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d331_0a1ba381b33b.
      t13 = t14->find_direct_expression( i_type_9913 = t16 ).
      t9 = t13.
    ENDIF.
    t6 = t9.
    t5 = t6.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t5.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t20.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = t5.
      t22 = t23.
      t21 = t22->get_first_token( ).
      t17 = t21.
    ENDIF.
    t4 = t17.
    t3 = t4.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t25) = t3.
    t24 = t25.
    DATA t26 TYPE REF TO zcl_lnt_syntax_input.
    DATA(t27) = t2.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t31) = t24.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t30.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t32 = t35.
    ELSE.
      DATA t36 TYPE string.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t39) = t30.
      t38 = t39.
      t37 = t38.
      DATA t40 TYPE string.
      DATA(t41) = t37.
      t40 = t41->str.
      t36 = t40.
      DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t42->has = abap_true.
      t42->value = t36.
      t32 = t42.
    ENDIF.
    t29 = t32.
    t28 = t29.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = t28.
    IF t44 IS BOUND.
      IF t44->has = abap_true.
        t43 = xsdbool( strlen( t44->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t43 = abap_true.
      DATA t45 TYPE REF TO zif_lnt_class_definition.
      CLEAR t45.
      DATA t46 TYPE REF TO zif_lnt_class_definition.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_current_scope.
      DATA t48 TYPE REF TO zcl_lnt_current_scope.
      DATA(t49) = t26.
      t48 = t49->scope.
      t47 = t48.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = abap_true.
      IF t52 = abap_true.
        DATA t53 TYPE string.
        DATA(t54) = t28.
        t53 = t54->value.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = t53.
        t51 = t55.
      ELSE.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        t51 = t56.
      ENDIF.
      t50 = t51.
      DATA t57 TYPE REF TO zif_lnt_class_definition.
      CLEAR t57.
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t60) = t50.
      t59 = t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t61 = t62.
      DATA(t63) = VALUE abap_bool( ).
      DATA(t64) = t59.
      IF t64 IS INITIAL.
        t63 = abap_true.
      ELSEIF t64->has = abap_false.
        t63 = abap_true.
      ENDIF.
      t58 = t63.
      IF t58 = abap_true.
        DATA t65 TYPE REF TO zif_lnt_class_definition.
        CLEAR t65.
        t57 = t65.
      ELSE.
        DATA t66 TYPE REF TO zif_lnt_class_definition.
        CLEAR t66.
        DATA t67 TYPE REF TO zif_lnt_class_definition.
        CLEAR t67.
        DATA t68 TYPE REF TO zif_lnt_class_definition.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t71) = t47.
        t70 = t71->current.
        t69 = t70.
        DATA t72 TYPE REF TO zif_lnt_class_definition.
        CLEAR t72.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = t69.
        IF t74 IS INITIAL.
          t73 = abap_true.
        ENDIF.
        IF t73 = abap_true.
          DATA t75 TYPE REF TO zif_lnt_class_definition.
          CLEAR t75.
          t72 = t75.
        ELSE.
          DATA t76 TYPE REF TO zif_lnt_class_definition.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t78) = t69.
          t77 = t78.
          DATA t79 TYPE string.
          DATA(t80) = t50.
          t79 = t80->value.
          t76 = t77->find_class_definition( i_name = t79 ).
          t72 = t76.
        ENDIF.
        t68 = t72.
        t67 = t68.
        DATA t81 TYPE REF TO zif_lnt_class_definition.
        CLEAR t81.
        DATA t82 TYPE abap_bool.
        DATA(t83) = t67.
        t82 = xsdbool( t83 IS BOUND ).
        IF t82 = abap_true.
          DATA t84 TYPE REF TO zif_lnt_class_definition.
          CLEAR t84.
          DATA(t85) = abap_true.
          IF t85 = abap_true.
            DATA t86 TYPE REF TO zif_lnt_class_definition.
            DATA(t87) = t67.
            t86 = t87.
            t84 = t86.
          ELSE.
            DATA t88 TYPE REF TO zif_lnt_class_definition.
            CLEAR t88.
            t84 = t88.
          ENDIF.
          t81 = t84.
        ELSE.
          DATA t89 TYPE REF TO zif_lnt_class_definition.
          CLEAR t89.
          DATA t90 TYPE REF TO zcl_lnt_class.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_class.
          CLEAR t91.
          DATA t92 TYPE REF TO zif_lnt_object.
          CLEAR t92.
          DATA t93 TYPE REF TO zif_lnt_registry.
          DATA(t94) = t47.
          t93 = t94->reg.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t96) = abap_true.
          IF t96 = abap_true.
            DATA(t97) = |CLAS|.
            DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t98->has = abap_true.
            t98->value = t97.
            t95 = t98.
          ELSE.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            t95 = t99.
          ENDIF.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t101) = abap_true.
          IF t101 = abap_true.
            DATA t102 TYPE string.
            DATA(t103) = t50.
            t102 = t103->value.
            DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t104->has = abap_true.
            t104->value = t102.
            t100 = t104.
          ELSE.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            t100 = t105.
          ENDIF.
          t92 = t93->get_object( i_type_9913 = t95 i_name = t100 ).
          DATA t106 TYPE REF TO object.
          t106 = t92.
          t91 ?= t106.
          t90 = t91.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          CLEAR t107.
          DATA t108 TYPE abap_bool.
          DATA(t109) = t90.
          t108 = xsdbool( t109 IS BOUND ).
          IF t108 = abap_true.
            DATA t110 TYPE REF TO zif_lnt_class_definition.
            DATA t111 TYPE REF TO zcl_lnt_class.
            DATA(t112) = t90.
            t111 = t112.
            t110 = t111->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t107 = t110.
          ELSE.
            DATA t113 TYPE REF TO zif_lnt_class_definition.
            CLEAR t113.
            t107 = t113.
          ENDIF.
          t89 = t107.
          t81 = t89.
        ENDIF.
        t66 = t81.
        t57 = t66.
      ENDIF.
      t46 = t57.
      t45 = t46.
      DATA t114 TYPE abap_bool.
      DATA(t115) = t45.
      t114 = xsdbool( t115 IS BOUND ).
      IF t114 = abap_true.
        DATA t116 TYPE REF TO zcl_lnt_current_scope.
        DATA(t117) = t26.
        t116 = t117->scope.
        DATA(t118) = t24.
        DATA t119 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t119.
        DATA(t120) = abap_true.
        IF t120 = abap_true.
          DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t122 TYPE REF TO zif_lnt_class_definition.
          DATA(t123) = t45.
          t122 = t123.
          t121 ?= t122.
          t119 = t121.
        ELSE.
          DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t124.
          t119 = t124.
        ENDIF.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t126) = |Object|.
        CREATE OBJECT t125.
        t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t125->sval = t126.
        DATA t127 TYPE string.
        DATA(t128) = t26.
        t127 = t128->filename.
        DATA t129 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA t131 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t131.
          DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t132.
          DATA(t133) = abap_true.
          IF t133 = abap_true.
            DATA t134 TYPE string.
            DATA t135 TYPE string.
            DATA(t136) = t28.
            t135 = t136->value.
            DATA(t137) = strlen( t135 ).
            t134 = t135.
            IF t134 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t134 TO UPPER CASE.
            ELSE.
              t134 = zlnt_runtime_uppe_91169605024d=>full( t134 ).
            ENDIF.
            DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t138->has = abap_true.
            t138->value = t134.
            t132 = t138.
          ELSE.
            DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t139.
            t132 = t139.
          ENDIF.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          DATA(t141) = abap_true.
          IF t141 = abap_true.
            DATA(t142) = |CLAS|.
            DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t143->has = abap_true.
            t143->value = t142.
            t140 = t143.
          ELSE.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t144.
            t140 = t144.
          ENDIF.
          DATA t145 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t145.
          t131 = NEW zcl_lnt_ireference_extras( i_oo_name = t132 i_oo_type = t140 i_found_qualified = t145 ).
          t129 = t131.
        ELSE.
          DATA t146 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t146.
          t129 = t146.
        ENDIF.
        t116->add_reference( i_usage = t118 i_referencing = t119 i_type_9913 = t125 i_filename = t127 i_extra = t129 ).
      ELSE.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = VALUE abap_bool( ).
        DATA t149 TYPE REF TO zcl_lnt_ddic.
        DATA t150 TYPE REF TO zcl_lnt_ddic.
        DATA t151 TYPE REF TO zcl_lnt_current_scope.
        DATA t152 TYPE REF TO zcl_lnt_current_scope.
        DATA(t153) = t26.
        t152 = t153->scope.
        t151 = t152.
        DATA t154 TYPE REF TO zcl_lnt_ddic.
        DATA t155 TYPE REF TO zif_lnt_registry.
        DATA(t156) = t151.
        t155 = t156->reg.
        t154 = NEW zcl_lnt_ddic( i_reg_f149 = t155 ).
        t150 = t154.
        t149 = t150.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        DATA(t159) = abap_true.
        IF t159 = abap_true.
          DATA t160 TYPE string.
          DATA(t161) = t28.
          t160 = t161->value.
          DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t162->has = abap_true.
          t162->value = t160.
          t158 = t162.
        ELSE.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t163.
          t158 = t163.
        ENDIF.
        t157 = t158.
        DATA(t164) = VALUE abap_bool( ).
        DATA(t165) = VALUE abap_bool( ).
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t167) = t157.
        t166 = t167.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        t168 = t169.
        DATA(t170) = VALUE abap_bool( ).
        DATA(t171) = t166.
        IF t171 IS INITIAL.
          t170 = abap_true.
        ELSEIF t171->has = abap_false.
          t170 = abap_true.
        ENDIF.
        t165 = t170.
        IF t165 = abap_true.
          DATA(t172) = abap_true.
          t164 = t172.
        ELSE.
          DATA t173 TYPE abap_bool.
          DATA t174 TYPE REF TO zif_lnt_registry.
          DATA(t175) = t149.
          t174 = t175->reg.
          DATA t176 TYPE string.
          DATA(t177) = t157.
          t176 = t177->value.
          t173 = t174->in_error_namespace( i_name = t176 ).
          t164 = t173.
        ENDIF.
        t148 = t164.
        DATA(t178) = abap_false.
        t147 = xsdbool( t148 = t178 ).
        IF t147 = abap_true.
          DATA t179 TYPE REF TO zcl_lnt_current_scope.
          DATA(t180) = t26.
          t179 = t180->scope.
          DATA(t181) = t24.
          DATA t182 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t182.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t184) = |Object (Void)|.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t183->sval = t184.
          DATA t185 TYPE string.
          DATA(t186) = t26.
          t185 = t186->filename.
          DATA t187 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t187.
          t179->add_reference( i_usage = t181 i_referencing = t182 i_type_9913 = t183 i_filename = t185 i_extra = t187 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t189.
    DATA t190 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t191) = t3.
    t190 = t191.
    DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t192.
    DATA(t193) = VALUE abap_bool( ).
    DATA(t194) = t190.
    IF t194 IS INITIAL.
      t193 = abap_true.
    ENDIF.
    IF t193 = abap_true.
      DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t195.
      t192 = t195.
    ELSE.
      DATA t196 TYPE string.
      DATA t197 TYPE REF TO zcl_lnt_abstract_token.
      DATA t198 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t199) = t190.
      t198 = t199.
      t197 = t198.
      DATA t200 TYPE string.
      DATA(t201) = t197.
      t200 = t201->str.
      t196 = t200.
      DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t202->has = abap_true.
      t202->value = t196.
      t192 = t202.
    ENDIF.
    t189 = t192.
    t188 = t189.
    DATA(t203) = t188.
    result = t203.

  ENDMETHOD.

  METHOD check_method_name_length.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->method_defs.
    t2 = t3->get_all( ).
    DATA t4 TYPE REF TO zif_lnt_method_definition.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t2->items INTO t5.
      t4 ?= t5.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE i.
      DATA t9 TYPE string.
      DATA(t10) = t4.
      t9 = t10->get_name( ).
      DATA(t11) = strlen( t9 ).
      t8 = t11.
      DATA(t12) = 30.
      t7 = xsdbool( t8 > t12 ).
      t6 = t7.
      IF t7 = abap_true.
        DATA(t13) = VALUE abap_bool( ).
        DATA(t14) = VALUE abap_bool( ).
        DATA(t15) = VALUE i( ).
        DATA t16 TYPE string.
        DATA(t17) = t4.
        t16 = t17->get_name( ).
        DATA(t18) = |~|.
        DATA(t19) = strlen( t16 ).
        IF t18 IS INITIAL.
          t15 = 0.
        ELSE.
          FIND t18 IN t16 MATCH OFFSET t15.
          IF sy-subrc <> 0.
            t15 = -1.
          ENDIF.
        ENDIF.
        DATA(t20) = 0.
        t14 = xsdbool( t15 >= t20 ).
        DATA(t21) = abap_false.
        t13 = xsdbool( t14 = t21 ).
        t6 = t13.
      ENDIF.
      IF t6 = abap_true.
        DATA t22 TYPE string.
        DATA t23 TYPE string.
        DATA t24 TYPE string.
        DATA(t25) = |Method name "|.
        DATA t26 TYPE string.
        DATA(t27) = t4.
        t26 = t27->get_name( ).
        DATA(t28) = strlen( t25 ).
        t24 = |{ t25 }{ t26 }|.
        DATA(t29) = |" is too long, maximum length is 30 characters|.
        DATA(t30) = strlen( t24 ).
        t23 = |{ t24 }{ t29 }|.
        t22 = t23.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t32) = t1.
        t31 = t32->issues.
        DATA t33 TYPE REF TO zcl_lnt_issue.
        DATA(t34) = t1.
        DATA t35 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t36) = t4.
        t35 = t36->get_token( ).
        DATA(t37) = t22.
        DATA t38 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t38.
        t33 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t34 i_token = t35 i_message_26cb = t37 i_fix = t38 ).
        APPEND t33 TO t31->items.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD check_class_constructor.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->method_defs.
    t2 = t3->get_all( ).
    DATA t4 TYPE REF TO zif_lnt_method_definition.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t2->items INTO t5.
      t4 ?= t5.
      DATA(t6) = VALUE abap_bool( ).
      DATA t7 TYPE string.
      DATA t8 TYPE string.
      DATA(t9) = t4.
      t8 = t9->get_name( ).
      DATA(t10) = strlen( t8 ).
      t7 = t8.
      IF t7 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t7 TO UPPER CASE.
      ELSE.
        t7 = zlnt_runtime_uppe_91169605024d=>full( t7 ).
      ENDIF.
      DATA(t11) = |CLASS_CONSTRUCTOR|.
      t6 = xsdbool( t7 <> t11 ).
      IF t6 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA(t14) = t4.
      t13 = t14->is_static_4685( ).
      DATA(t15) = abap_false.
      t12 = xsdbool( t13 = t15 ).
      IF t12 = abap_true.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t17) = t1.
        t16 = t17->issues.
        DATA t18 TYPE REF TO zcl_lnt_issue.
        DATA(t19) = t1.
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t21) = t4.
        t20 = t21->get_token( ).
        DATA(t22) = |CLASS_CONSTRUCTOR must be static|.
        DATA t23 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t23.
        t18 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t19 i_token = t20 i_message_26cb = t22 i_fix = t23 ).
        APPEND t18 TO t16->items.
      ELSE.
        DATA t24 TYPE abap_bool.
        DATA t25 TYPE int8.
        DATA(t26) = t4.
        t25 = t26->get_visibility( ).
        DATA(t27) = CONV int8( 3 ).
        t24 = xsdbool( t25 <> t27 ).
        IF t24 = abap_true.
          DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t29) = t1.
          t28 = t29->issues.
          DATA t30 TYPE REF TO zcl_lnt_issue.
          DATA(t31) = t1.
          DATA t32 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t33) = t4.
          t32 = t33->get_token( ).
          DATA(t34) = |CLASS_CONSTRUCTOR must be declared in the public section|.
          DATA t35 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t35.
          t30 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t31 i_token = t32 i_message_26cb = t34 i_fix = t35 ).
          APPEND t30 TO t28->items.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD check_interface_visibility.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_ac33216d35c4.
    DATA t4 TYPE REF TO zlnt_runtime_arra_ac33216d35c4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_ac33216d35c4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_ac33216d35c4.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = t5.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t2.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t8 = t9->find_direct_structure( i_type_9913 = t10 ).
    APPEND t8 TO t7->items.
    DATA(t11) = t5.
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA(t13) = t2.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t12 = t13->find_direct_structure( i_type_9913 = t14 ).
    APPEND t12 TO t11->items.
    DATA(t15) = t5.
    t4 = t15.
    t3 = t4.
    DATA(t16) = t3.
    DATA t17 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t17.
    LOOP AT t16->items INTO t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_structure_node.
      DATA(t22) = t17.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t23.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t21.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      IF t24 = abap_true.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t26.
        t23 = t26.
      ELSE.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t28 TYPE REF TO zcl_lnt_structure_node.
        DATA(t29) = t21.
        t28 = t29.
        DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d523_88ac7053af9c.
        t27 = t28->find_all_statements( i_type_9913 = t30 ).
        t23 = t27.
      ENDIF.
      t20 = t23.
      t19 = t20.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t31.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t19.
      t32 = xsdbool( t33 IS BOUND ).
      IF t32 = abap_true.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t35) = t19.
        t34 = t35.
        t31 = t34.
      ELSE.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t36.
        t31 = t36.
      ENDIF.
      t18 = t31.
      DATA t37 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      LOOP AT t18->items INTO t38.
        t37 ?= t38.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t40) = t1.
        t39 = t40->issues.
        DATA t41 TYPE REF TO zcl_lnt_issue.
        DATA(t42) = t1.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t44) = t37.
        t43 = t44->get_first_token( ).
        DATA(t45) = |INTERFACES can only be declared in public sections|.
        DATA t46 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t46.
        t41 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t42 i_token = t43 i_message_26cb = t45 i_fix = t46 ).
        APPEND t41 TO t39->items.
      ENDLOOP.
    ENDLOOP.
  ENDMETHOD.

  METHOD chck_mthds_frm_spr_clsss.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_current_scope.
    DATA t3 TYPE REF TO zcl_lnt_current_scope.
    DATA(t4) = t1.
    t3 = t4->scope.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = me->super_class.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t8) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__117a2401283c.
    DATA(t10) = NEW zlnt_runtime_map__117a2401283c( ).
    t9 = t10.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t13) = t5.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t12.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ELSEIF t18->has = abap_false.
        t17 = abap_true.
      ENDIF.
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_class_definition.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_class_definition.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_current_scope.
      DATA(t22) = t2.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA t26 TYPE string.
        DATA(t27) = t5.
        t26 = t27->value.
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = t26.
        t24 = t28.
      ELSE.
        DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t29.
        t24 = t29.
      ENDIF.
      t23 = t24.
      DATA t30 TYPE REF TO zif_lnt_class_definition.
      CLEAR t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t33) = t23.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      t34 = t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t32.
      IF t37 IS INITIAL.
        t36 = abap_true.
      ELSEIF t37->has = abap_false.
        t36 = abap_true.
      ENDIF.
      t31 = t36.
      IF t31 = abap_true.
        DATA t38 TYPE REF TO zif_lnt_class_definition.
        CLEAR t38.
        t30 = t38.
      ELSE.
        DATA t39 TYPE REF TO zif_lnt_class_definition.
        CLEAR t39.
        DATA t40 TYPE REF TO zif_lnt_class_definition.
        CLEAR t40.
        DATA t41 TYPE REF TO zif_lnt_class_definition.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t44) = t21.
        t43 = t44->current.
        t42 = t43.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t42.
        IF t47 IS INITIAL.
          t46 = abap_true.
        ENDIF.
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zif_lnt_class_definition.
          CLEAR t48.
          t45 = t48.
        ELSE.
          DATA t49 TYPE REF TO zif_lnt_class_definition.
          DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t51) = t42.
          t50 = t51.
          DATA t52 TYPE string.
          DATA(t53) = t23.
          t52 = t53->value.
          t49 = t50->find_class_definition( i_name = t52 ).
          t45 = t49.
        ENDIF.
        t41 = t45.
        t40 = t41.
        DATA t54 TYPE REF TO zif_lnt_class_definition.
        CLEAR t54.
        DATA t55 TYPE abap_bool.
        DATA(t56) = t40.
        t55 = xsdbool( t56 IS BOUND ).
        IF t55 = abap_true.
          DATA t57 TYPE REF TO zif_lnt_class_definition.
          CLEAR t57.
          DATA(t58) = abap_true.
          IF t58 = abap_true.
            DATA t59 TYPE REF TO zif_lnt_class_definition.
            DATA(t60) = t40.
            t59 = t60.
            t57 = t59.
          ELSE.
            DATA t61 TYPE REF TO zif_lnt_class_definition.
            CLEAR t61.
            t57 = t61.
          ENDIF.
          t54 = t57.
        ELSE.
          DATA t62 TYPE REF TO zif_lnt_class_definition.
          CLEAR t62.
          DATA t63 TYPE REF TO zcl_lnt_class.
          CLEAR t63.
          DATA t64 TYPE REF TO zcl_lnt_class.
          CLEAR t64.
          DATA t65 TYPE REF TO zif_lnt_object.
          CLEAR t65.
          DATA t66 TYPE REF TO zif_lnt_registry.
          DATA(t67) = t21.
          t66 = t67->reg.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          DATA(t69) = abap_true.
          IF t69 = abap_true.
            DATA(t70) = |CLAS|.
            DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t71->has = abap_true.
            t71->value = t70.
            t68 = t71.
          ELSE.
            DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t72.
            t68 = t72.
          ENDIF.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          DATA(t74) = abap_true.
          IF t74 = abap_true.
            DATA t75 TYPE string.
            DATA(t76) = t23.
            t75 = t76->value.
            DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t77->has = abap_true.
            t77->value = t75.
            t73 = t77.
          ELSE.
            DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t78.
            t73 = t78.
          ENDIF.
          t65 = t66->get_object( i_type_9913 = t68 i_name = t73 ).
          DATA t79 TYPE REF TO object.
          t79 = t65.
          t64 ?= t79.
          t63 = t64.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          CLEAR t80.
          DATA t81 TYPE abap_bool.
          DATA(t82) = t63.
          t81 = xsdbool( t82 IS BOUND ).
          IF t81 = abap_true.
            DATA t83 TYPE REF TO zif_lnt_class_definition.
            DATA t84 TYPE REF TO zcl_lnt_class.
            DATA(t85) = t63.
            t84 = t85.
            t83 = t84->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t80 = t83.
          ELSE.
            DATA t86 TYPE REF TO zif_lnt_class_definition.
            CLEAR t86.
            t80 = t86.
          ENDIF.
          t62 = t80.
          t54 = t62.
        ENDIF.
        t39 = t54.
        t30 = t39.
      ENDIF.
      t20 = t30.
      t19 = t20.
      DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t87.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t89.
      DATA t90 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t90.
      DATA t91 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t91.
      DATA t92 TYPE REF TO zif_lnt_class_definition.
      DATA(t93) = t19.
      t92 = t93.
      DATA t94 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = t92.
      IF t96 IS INITIAL.
        t95 = abap_true.
      ENDIF.
      IF t95 = abap_true.
        DATA t97 TYPE REF TO zif_lnt_method_definitions.
        CLEAR t97.
        t94 = t97.
      ELSE.
        DATA t98 TYPE REF TO zif_lnt_method_definitions.
        DATA t99 TYPE REF TO zif_lnt_class_definition.
        DATA(t100) = t92.
        t99 = t100.
        t98 = t99->get_method_definitions( ).
        t94 = t98.
      ENDIF.
      t91 = t94.
      t90 = t91.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = t90.
      IF t103 IS INITIAL.
        t102 = abap_true.
      ENDIF.
      IF t102 = abap_true.
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t104.
        t101 = t104.
      ELSE.
        DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t106 TYPE REF TO zif_lnt_method_definitions.
        DATA(t107) = t90.
        t106 = t107.
        t105 = t106->get_all( ).
        t101 = t105.
      ENDIF.
      t89 = t101.
      t88 = t89.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t108.
      DATA t109 TYPE abap_bool.
      DATA(t110) = t88.
      t109 = xsdbool( t110 IS BOUND ).
      IF t109 = abap_true.
        DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t112) = t88.
        t111 = t112.
        t108 = t111.
      ELSE.
        DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t113.
        t108 = t113.
      ENDIF.
      t87 = t108.
      DATA t114 TYPE REF TO zif_lnt_method_definition.
      CLEAR t114.
      DATA t115 TYPE REF TO object.
      CLEAR t115.
      LOOP AT t87->items INTO t115.
        t114 ?= t115.
        DATA(t116) = VALUE string( ).
        DATA t117 TYPE string.
        DATA t118 TYPE string.
        DATA(t119) = t114.
        t118 = t119->get_name( ).
        DATA(t120) = strlen( t118 ).
        t117 = t118.
        IF t117 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t117 TO UPPER CASE.
        ELSE.
          t117 = zlnt_runtime_uppe_91169605024d=>full( t117 ).
        ENDIF.
        t116 = t117.
        DATA t121 TYPE abap_bool.
        DATA t122 TYPE int8.
        DATA(t123) = t114.
        t122 = t123->get_visibility( ).
        DATA(t124) = CONV int8( 1 ).
        t121 = xsdbool( t122 = t124 ).
        IF t121 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t125) = VALUE abap_bool( ).
          DATA t126 TYPE abap_bool.
          DATA t127 TYPE abap_bool.
          DATA(t128) = t116.
          DATA(t129) = |CONSTRUCTOR|.
          t127 = xsdbool( t128 = t129 ).
          t126 = t127.
          IF t127 = abap_false.
            DATA t130 TYPE abap_bool.
            DATA(t131) = t116.
            DATA(t132) = |DESTRUCTOR|.
            t130 = xsdbool( t131 = t132 ).
            t126 = t130.
          ENDIF.
          t125 = t126.
          IF t126 = abap_false.
            DATA t133 TYPE abap_bool.
            DATA(t134) = t116.
            DATA(t135) = |CLASS_CONSTRUCTOR|.
            t133 = xsdbool( t134 = t135 ).
            t125 = t133.
          ENDIF.
          IF t125 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t136 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t137) = t7.
        DATA(t138) = t116.
        t136 = t137->add( p0 = t138 ).
        DATA t139 TYPE abap_bool.
        DATA t140 TYPE abap_bool.
        DATA(t141) = t9.
        DATA(t142) = t116.
        t140 = t141->has( p0 = t142 ).
        DATA(t143) = abap_false.
        t139 = xsdbool( t140 = t143 ).
        IF t139 = abap_true.
          DATA t144 TYPE REF TO zlnt_runtime_map__117a2401283c.
          DATA(t145) = t9.
          DATA(t146) = t116.
          DATA t147 TYPE int8.
          DATA(t148) = t114.
          t147 = t148->get_visibility( ).
          t144 = t145->set( p0 = t146 p1 = t147 ).
        ENDIF.
      ENDLOOP.
      DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t149.
      DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t150.
      DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t151.
      DATA t152 TYPE REF TO zif_lnt_class_definition.
      DATA(t153) = t19.
      t152 = t153.
      DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t154.
      DATA(t155) = VALUE abap_bool( ).
      DATA(t156) = t152.
      IF t156 IS INITIAL.
        t155 = abap_true.
      ENDIF.
      IF t155 = abap_true.
        DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t157.
        t154 = t157.
      ELSE.
        DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t159 TYPE REF TO zif_lnt_class_definition.
        DATA(t160) = t152.
        t159 = t160.
        t158 = t159->get_aliases( ).
        t154 = t158.
      ENDIF.
      t151 = t154.
      t150 = t151.
      DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t161.
      DATA t162 TYPE abap_bool.
      DATA(t163) = t150.
      t162 = xsdbool( t163 IS BOUND ).
      IF t162 = abap_true.
        DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t165) = t150.
        t164 = t165.
        t161 = t164.
      ELSE.
        DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t166.
        t161 = t166.
      ENDIF.
      t149 = t161.
      DATA t167 TYPE REF TO zcl_lnt_alias.
      CLEAR t167.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      LOOP AT t149->items INTO t168.
        t167 ?= t168.
        DATA t169 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t169.
        DATA(t170) = t7.
        DATA(t171) = VALUE string( ).
        DATA(t172) = VALUE string( ).
        DATA t173 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t174) = t167.
        t173 = t174.
        DATA(t175) = VALUE string( ).
        DATA t176 TYPE string.
        DATA t177 TYPE string.
        DATA t178 TYPE REF TO zcl_lnt_abstract_token.
        DATA t179 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t180) = t173.
        t179 = t180->token.
        t178 = t179.
        DATA t181 TYPE string.
        DATA(t182) = t178.
        t181 = t182->str.
        t177 = t181.
        t176 = t177.
        DATA(t183) = VALUE abap_bool( ).
        DATA(t184) = VALUE string( ).
        DATA(t185) = t176.
        DATA(t186) = 0.
        DATA(t187) = 1.
        DATA(t188) = strlen( t185 ).
        IF t186 < 0.
          t186 = t186 + t188.
          IF t186 < 0.
            t186 = 0.
          ENDIF.
        ENDIF.
        IF t186 > t188 OR t187 <= 0.
          CLEAR t184.
        ELSE.
          IF t187 > t188 - t186.
            t187 = t188 - t186.
          ENDIF.
          t184 = t185+t186(t187).
        ENDIF.
        DATA(t189) = |!|.
        t183 = xsdbool( t184 = t189 ).
        IF t183 = abap_true.
          DATA(t190) = VALUE string( ).
          DATA t191 TYPE string.
          DATA(t192) = t176.
          t191 = t192.
          DATA(t193) = VALUE string( ).
          DATA(t194) = t191.
          DATA(t195) = 1.
          DATA t196 TYPE i.
          DATA(t197) = t191.
          DATA(t198) = strlen( t197 ).
          t196 = t198.
          DATA(t199) = strlen( t194 ).
          IF t195 < 0.
            t195 = t195 + t199.
            IF t195 < 0.
              t195 = 0.
            ENDIF.
          ENDIF.
          IF t195 > t199 OR t196 <= 0.
            CLEAR t193.
          ELSE.
            IF t196 > t199 - t195.
              t196 = t199 - t195.
            ENDIF.
            t193 = t194+t195(t196).
          ENDIF.
          t190 = t193.
          t176 = t190.
        ENDIF.
        DATA(t200) = t176.
        t175 = t200.
        t172 = t175.
        DATA(t201) = strlen( t172 ).
        t171 = t172.
        IF t171 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t171 TO UPPER CASE.
        ELSE.
          t171 = zlnt_runtime_uppe_91169605024d=>full( t171 ).
        ENDIF.
        t169 = t170->add( p0 = t171 ).
      ENDLOOP.
      DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t202.
      DATA t203 TYPE REF TO zif_lnt_class_definition.
      DATA(t204) = t19.
      t203 = t204.
      DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t205.
      DATA(t206) = VALUE abap_bool( ).
      DATA(t207) = t203.
      IF t207 IS INITIAL.
        t206 = abap_true.
      ENDIF.
      IF t206 = abap_true.
        DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t208.
        t205 = t208.
      ELSE.
        DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t210 TYPE REF TO zif_lnt_class_definition.
        DATA(t211) = t203.
        t210 = t211.
        t209 = t210->get_super_class( ).
        t205 = t209.
      ENDIF.
      t202 = t205.
      t5 = t202.
    ENDDO.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t213) = CAST zif_lnt_method_definitions( me->get_method_definitions( ) ).
    t212 = t213->get_all( ).
    DATA t214 TYPE REF TO zif_lnt_method_definition.
    CLEAR t214.
    DATA t215 TYPE REF TO object.
    CLEAR t215.
    LOOP AT t212->items INTO t215.
      t214 ?= t215.
      DATA(t216) = VALUE abap_bool( ).
      DATA(t217) = VALUE abap_bool( ).
      DATA(t218) = t7.
      DATA t219 TYPE string.
      DATA t220 TYPE string.
      DATA(t221) = t214.
      t220 = t221->get_name( ).
      DATA(t222) = strlen( t220 ).
      t219 = t220.
      IF t219 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t219 TO UPPER CASE.
      ELSE.
        t219 = zlnt_runtime_uppe_91169605024d=>full( t219 ).
      ENDIF.
      t217 = t218->has( p0 = t219 ).
      t216 = t217.
      IF t217 = abap_true.
        DATA t223 TYPE abap_bool.
        DATA t224 TYPE abap_bool.
        DATA(t225) = t214.
        t224 = t225->is_redefinition( ).
        DATA(t226) = abap_false.
        t223 = xsdbool( t224 = t226 ).
        t216 = t223.
      ENDIF.
      IF t216 = abap_true.
        DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t228) = t1.
        t227 = t228->issues.
        DATA t229 TYPE REF TO zcl_lnt_issue.
        CLEAR t229.
        DATA(t230) = t1.
        DATA t231 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t232) = t214.
        t231 = t232->get_token( ).
        DATA(t233) = VALUE string( ).
        DATA(t234) = VALUE string( ).
        DATA(t235) = ||.
        DATA t236 TYPE string.
        DATA t237 TYPE string.
        DATA(t238) = t214.
        t237 = t238->get_name( ).
        DATA(t239) = strlen( t237 ).
        t236 = t237.
        IF t236 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t236 TO UPPER CASE.
        ELSE.
          t236 = zlnt_runtime_uppe_91169605024d=>full( t236 ).
        ENDIF.
        DATA(t240) = strlen( t235 ).
        t234 = |{ t235 }{ t236 }|.
        DATA(t241) = | already declared in superclass|.
        DATA(t242) = strlen( t234 ).
        t233 = |{ t234 }{ t241 }|.
        DATA t243 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t243.
        t229 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t230 i_token = t231 i_message_26cb = t233 i_fix = t243 ).
        APPEND t229 TO t227->items.
      ENDIF.
      DATA t244 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t244.
      DATA t245 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t245.
      DATA(t246) = t9.
      DATA t247 TYPE string.
      DATA t248 TYPE string.
      DATA(t249) = t214.
      t248 = t249->get_name( ).
      DATA(t250) = strlen( t248 ).
      t247 = t248.
      IF t247 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t247 TO UPPER CASE.
      ELSE.
        t247 = zlnt_runtime_uppe_91169605024d=>full( t247 ).
      ENDIF.
      t245 = t246->get( p0 = t247 ).
      t244 = t245.
      DATA(t251) = VALUE abap_bool( ).
      DATA t252 TYPE abap_bool.
      DATA t253 TYPE abap_bool.
      DATA t254 TYPE abap_bool.
      DATA(t255) = t214.
      t254 = t255->is_redefinition( ).
      DATA(t256) = abap_true.
      t253 = xsdbool( t254 = t256 ).
      t252 = t253.
      IF t253 = abap_true.
        DATA(t257) = VALUE abap_bool( ).
        DATA t258 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        DATA(t259) = t244.
        t258 = t259.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t261.
        t260 = t261.
        DATA(t262) = VALUE abap_bool( ).
        DATA(t263) = VALUE abap_bool( ).
        DATA(t264) = t258.
        IF t264 IS INITIAL.
          t263 = abap_true.
        ELSEIF t264->has = abap_false.
          t263 = abap_true.
        ENDIF.
        t262 = xsdbool( t263 = abap_false ).
        t257 = t262.
        t252 = t257.
      ENDIF.
      t251 = t252.
      IF t252 = abap_true.
        DATA t265 TYPE abap_bool.
        DATA t266 TYPE int8.
        DATA(t267) = t214.
        t266 = t267->get_visibility( ).
        DATA t268 TYPE int8.
        DATA(t269) = t244.
        t268 = t269->value.
        t265 = xsdbool( t266 <> t268 ).
        t251 = t265.
      ENDIF.
      IF t251 = abap_true.
        DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t271) = t1.
        t270 = t271->issues.
        DATA t272 TYPE REF TO zcl_lnt_issue.
        CLEAR t272.
        DATA(t273) = t1.
        DATA t274 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t275) = t214.
        t274 = t275->get_token( ).
        DATA(t276) = VALUE string( ).
        DATA(t277) = VALUE string( ).
        DATA(t278) = ||.
        DATA t279 TYPE string.
        DATA t280 TYPE string.
        DATA(t281) = t214.
        t280 = t281->get_name( ).
        DATA(t282) = strlen( t280 ).
        t279 = t280.
        IF t279 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t279 TO UPPER CASE.
        ELSE.
          t279 = zlnt_runtime_uppe_91169605024d=>full( t279 ).
        ENDIF.
        DATA(t283) = strlen( t278 ).
        t277 = |{ t278 }{ t279 }|.
        DATA(t284) = | redefinition visibility cannot be changed|.
        DATA(t285) = strlen( t277 ).
        t276 = |{ t277 }{ t284 }|.
        DATA t286 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t286.
        t272 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t273 i_token = t274 i_message_26cb = t276 i_fix = t286 ).
        APPEND t272 TO t270->items.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD check_method_name_conflicts.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->method_defs.
    t2 = t3->get_all( ).
    DATA t4 TYPE REF TO zif_lnt_method_definition.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t2->items INTO t5.
      t4 ?= t5.
      DATA(t6) = VALUE abap_bool( ).
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t8.
      DATA t9 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_attributes.
      DATA(t11) = me->attributes.
      t10 = t11.
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA(t14) = t4.
      t13 = t14->get_name( ).
      t12 = t13.
      DATA t15 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
      DATA(t17) = t10.
      t16 = t17->by_name.
      DATA t18 TYPE string.
      DATA(t19) = t12.
      DATA(t20) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      t15 = t16->get( p0 = t18 ).
      t9 = t15.
      t8 = t9.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      t21 = t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t8.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      t23 = xsdbool( t24 = abap_false ).
      t7 = t23.
      t6 = t7.
      IF t7 = abap_false.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_type_definitions.
        DATA(t30) = me->types.
        t29 = t30.
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA(t33) = t4.
        t32 = t33->get_name( ).
        t31 = t32.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t36.
        DATA t37 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
        DATA(t38) = t29.
        t37 = t38->map.
        DATA t39 TYPE string.
        DATA(t40) = t31.
        DATA(t41) = strlen( t40 ).
        t39 = t40.
        IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t39 TO UPPER CASE.
        ELSE.
          t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
        ENDIF.
        t36 = t37->get( p0 = t39 ).
        t35 = t36.
        DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t42.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = t35.
        IF t44 IS INITIAL.
          t43 = abap_true.
        ENDIF.
        IF t43 = abap_true.
          DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t45.
          t42 = t45.
        ELSE.
          DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t47 TYPE REF TO zcl_lnt_type_definitions_entry.
          DATA(t48) = t35.
          t47 = t48.
          t46 = t47->type_cba0.
          t42 = t46.
        ENDIF.
        t34 = t42.
        t28 = t34.
        t27 = t28.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t50.
        t49 = t50.
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = t27.
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        t51 = xsdbool( t52 = abap_false ).
        t26 = t51.
        t6 = t26.
      ENDIF.
      IF t6 = abap_true.
        DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t55) = t1.
        t54 = t55->issues.
        DATA t56 TYPE REF TO zcl_lnt_issue.
        DATA(t57) = t1.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t59) = t4.
        t58 = t59->get_token( ).
        DATA t60 TYPE string.
        DATA t61 TYPE string.
        DATA(t62) = |"|.
        DATA t63 TYPE string.
        DATA(t64) = t4.
        t63 = t64->get_name( ).
        DATA(t65) = strlen( t62 ).
        t61 = |{ t62 }{ t63 }|.
        DATA(t66) = |" already defined|.
        DATA(t67) = strlen( t61 ).
        t60 = |{ t61 }{ t66 }|.
        DATA t68 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t68.
        t56 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t57 i_token = t58 i_message_26cb = t60 i_fix = t68 ).
        APPEND t56 TO t54->items.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD check_event_name_conflicts.
    DATA(t1) = i_input_967e.
    DATA(t2) = me->events_f95a.
    DATA t3 TYPE REF TO zif_lnt_event_definition.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t2->items INTO t4.
      t3 ?= t4.
      DATA(t5) = VALUE abap_bool( ).
      DATA(t6) = VALUE abap_bool( ).
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t8.
      DATA t9 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_attributes.
      DATA(t11) = me->attributes.
      t10 = t11.
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA(t14) = t3.
      t13 = t14->get_name( ).
      t12 = t13.
      DATA t15 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
      DATA(t17) = t10.
      t16 = t17->by_name.
      DATA t18 TYPE string.
      DATA(t19) = t12.
      DATA(t20) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      t15 = t16->get( p0 = t18 ).
      t9 = t15.
      t8 = t9.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      t21 = t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = t8.
      IF t25 IS INITIAL.
        t24 = abap_true.
      ENDIF.
      t23 = xsdbool( t24 = abap_false ).
      t7 = t23.
      t6 = t7.
      IF t7 = abap_false.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_type_definitions.
        DATA(t30) = me->types.
        t29 = t30.
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA(t33) = t3.
        t32 = t33->get_name( ).
        t31 = t32.
        DATA t34 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t35.
        DATA t36 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t36.
        DATA t37 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
        DATA(t38) = t29.
        t37 = t38->map.
        DATA t39 TYPE string.
        DATA(t40) = t31.
        DATA(t41) = strlen( t40 ).
        t39 = t40.
        IF t39 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t39 TO UPPER CASE.
        ELSE.
          t39 = zlnt_runtime_uppe_91169605024d=>full( t39 ).
        ENDIF.
        t36 = t37->get( p0 = t39 ).
        t35 = t36.
        DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t42.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = t35.
        IF t44 IS INITIAL.
          t43 = abap_true.
        ENDIF.
        IF t43 = abap_true.
          DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t45.
          t42 = t45.
        ELSE.
          DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t47 TYPE REF TO zcl_lnt_type_definitions_entry.
          DATA(t48) = t35.
          t47 = t48.
          t46 = t47->type_cba0.
          t42 = t46.
        ENDIF.
        t34 = t42.
        t28 = t34.
        t27 = t28.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t50.
        t49 = t50.
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = t27.
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        t51 = xsdbool( t52 = abap_false ).
        t26 = t51.
        t6 = t26.
      ENDIF.
      t5 = t6.
      IF t6 = abap_false.
        DATA(t54) = VALUE abap_bool( ).
        DATA t55 TYPE REF TO zif_lnt_method_definition.
        CLEAR t55.
        DATA t56 TYPE REF TO zif_lnt_method_definition.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_method_definitions.
        DATA(t58) = me->method_defs.
        t57 = t58.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA t62 TYPE string.
          DATA(t63) = t3.
          t62 = t63->get_name( ).
          DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t64->has = abap_true.
          t64->value = t62.
          t60 = t64.
        ELSE.
          DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t65.
          t60 = t65.
        ENDIF.
        t59 = t60.
        DATA t66 TYPE REF TO zif_lnt_method_definition.
        CLEAR t66.
        DATA(t67) = VALUE abap_bool( ).
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t69) = t59.
        t68 = t69.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        t70 = t71.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = t68.
        IF t73 IS INITIAL.
          t72 = abap_true.
        ELSEIF t73->has = abap_false.
          t72 = abap_true.
        ENDIF.
        t67 = t72.
        IF t67 = abap_true.
          DATA t74 TYPE REF TO zif_lnt_method_definition.
          CLEAR t74.
          t66 = t74.
        ELSE.
          DATA t75 TYPE REF TO zif_lnt_method_definition.
          CLEAR t75.
          DATA t76 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
          DATA(t77) = t57.
          t76 = t77->all.
          DATA t78 TYPE string.
          DATA t79 TYPE string.
          DATA(t80) = t59.
          t79 = t80->value.
          DATA(t81) = strlen( t79 ).
          t78 = t79.
          IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t78 TO UPPER CASE.
          ELSE.
            t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
          ENDIF.
          t75 = t76->get( p0 = t78 ).
          t66 = t75.
        ENDIF.
        t56 = t66.
        t55 = t56.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        t82 = t83.
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = t55.
        IF t86 IS INITIAL.
          t85 = abap_true.
        ENDIF.
        t84 = xsdbool( t85 = abap_false ).
        t54 = t84.
        t5 = t54.
      ENDIF.
      IF t5 = abap_true.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t88) = t1.
        t87 = t88->issues.
        DATA t89 TYPE REF TO zcl_lnt_issue.
        DATA(t90) = t1.
        DATA t91 TYPE REF TO zcl_lnt_abstract_token.
        DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t93 TYPE REF TO zcl_lnt_event_definition.
        DATA(t94) = t3.
        t93 ?= t94.
        t92 = t93.
        DATA t95 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t96) = t92.
        t95 = t96->token.
        t91 = t95.
        DATA t97 TYPE string.
        DATA t98 TYPE string.
        DATA(t99) = |"|.
        DATA t100 TYPE string.
        DATA(t101) = t3.
        t100 = t101->get_name( ).
        DATA(t102) = strlen( t99 ).
        t98 = |{ t99 }{ t100 }|.
        DATA(t103) = |" already defined|.
        DATA(t104) = strlen( t98 ).
        t97 = |{ t98 }{ t103 }|.
        DATA t105 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t105.
        t89 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t90 i_token = t91 i_message_26cb = t97 i_fix = t105 ).
        APPEND t89 TO t87->items.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD find_friends.
    DATA(t1) = i_def.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t10.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA t17 TYPE REF TO zcl_lnt_statement_node.
      DATA(t18) = t10.
      t17 = t18.
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d115_e681bc20f5c0.
      t16 = t17->find_direct_expression( i_type_9913 = t19 ).
      t12 = t16.
    ENDIF.
    t9 = t12.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t8.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t23.
      t20 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA(t26) = t8.
      t25 = t26.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
      t24 = t25->find_direct_expressions( i_type_9913 = t27 ).
      t20 = t24.
    ENDIF.
    t7 = t20.
    t6 = t7.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE abap_bool.
    DATA(t30) = t6.
    t29 = xsdbool( t30 IS BOUND ).
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = t6.
      t31 = t32.
      t28 = t31.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      t28 = t33.
    ENDIF.
    t5 = t28.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t34.
    DATA t35 TYPE REF TO object.
    CLEAR t35.
    LOOP AT t5->items INTO t35.
      t34 ?= t35.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t38) = t34.
      t37 = t38->get_first_token( ).
      t36 = t37.
      DATA t39 TYPE string.
      DATA t40 TYPE string.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t42) = t36.
      t41 = t42.
      DATA t43 TYPE string.
      DATA(t44) = t41.
      t43 = t44->str.
      t40 = t43.
      t39 = t40.
      DATA t45 TYPE REF TO zif_lnt_class_definition.
      CLEAR t45.
      DATA t46 TYPE REF TO zif_lnt_class_definition.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_current_scope.
      DATA t48 TYPE REF TO zcl_lnt_current_scope.
      DATA(t49) = t2.
      t48 = t49->scope.
      t47 = t48.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = abap_true.
      IF t52 = abap_true.
        DATA(t53) = t39.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t53.
        t51 = t54.
      ELSE.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t51 = t55.
      ENDIF.
      t50 = t51.
      DATA t56 TYPE REF TO zif_lnt_class_definition.
      CLEAR t56.
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t59) = t50.
      t58 = t59.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      t60 = t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t58.
      IF t63 IS INITIAL.
        t62 = abap_true.
      ELSEIF t63->has = abap_false.
        t62 = abap_true.
      ENDIF.
      t57 = t62.
      IF t57 = abap_true.
        DATA t64 TYPE REF TO zif_lnt_class_definition.
        CLEAR t64.
        t56 = t64.
      ELSE.
        DATA t65 TYPE REF TO zif_lnt_class_definition.
        CLEAR t65.
        DATA t66 TYPE REF TO zif_lnt_class_definition.
        CLEAR t66.
        DATA t67 TYPE REF TO zif_lnt_class_definition.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t70) = t47.
        t69 = t70->current.
        t68 = t69.
        DATA t71 TYPE REF TO zif_lnt_class_definition.
        CLEAR t71.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = t68.
        IF t73 IS INITIAL.
          t72 = abap_true.
        ENDIF.
        IF t72 = abap_true.
          DATA t74 TYPE REF TO zif_lnt_class_definition.
          CLEAR t74.
          t71 = t74.
        ELSE.
          DATA t75 TYPE REF TO zif_lnt_class_definition.
          DATA t76 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t77) = t68.
          t76 = t77.
          DATA t78 TYPE string.
          DATA(t79) = t50.
          t78 = t79->value.
          t75 = t76->find_class_definition( i_name = t78 ).
          t71 = t75.
        ENDIF.
        t67 = t71.
        t66 = t67.
        DATA t80 TYPE REF TO zif_lnt_class_definition.
        CLEAR t80.
        DATA t81 TYPE abap_bool.
        DATA(t82) = t66.
        t81 = xsdbool( t82 IS BOUND ).
        IF t81 = abap_true.
          DATA t83 TYPE REF TO zif_lnt_class_definition.
          CLEAR t83.
          DATA(t84) = abap_true.
          IF t84 = abap_true.
            DATA t85 TYPE REF TO zif_lnt_class_definition.
            DATA(t86) = t66.
            t85 = t86.
            t83 = t85.
          ELSE.
            DATA t87 TYPE REF TO zif_lnt_class_definition.
            CLEAR t87.
            t83 = t87.
          ENDIF.
          t80 = t83.
        ELSE.
          DATA t88 TYPE REF TO zif_lnt_class_definition.
          CLEAR t88.
          DATA t89 TYPE REF TO zcl_lnt_class.
          CLEAR t89.
          DATA t90 TYPE REF TO zcl_lnt_class.
          CLEAR t90.
          DATA t91 TYPE REF TO zif_lnt_object.
          CLEAR t91.
          DATA t92 TYPE REF TO zif_lnt_registry.
          DATA(t93) = t47.
          t92 = t93->reg.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          DATA(t95) = abap_true.
          IF t95 = abap_true.
            DATA(t96) = |CLAS|.
            DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t97->has = abap_true.
            t97->value = t96.
            t94 = t97.
          ELSE.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            t94 = t98.
          ENDIF.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t99.
          DATA(t100) = abap_true.
          IF t100 = abap_true.
            DATA t101 TYPE string.
            DATA(t102) = t50.
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
          t91 = t92->get_object( i_type_9913 = t94 i_name = t99 ).
          DATA t105 TYPE REF TO object.
          t105 = t91.
          t90 ?= t105.
          t89 = t90.
          DATA t106 TYPE REF TO zif_lnt_class_definition.
          CLEAR t106.
          DATA t107 TYPE abap_bool.
          DATA(t108) = t89.
          t107 = xsdbool( t108 IS BOUND ).
          IF t107 = abap_true.
            DATA t109 TYPE REF TO zif_lnt_class_definition.
            DATA t110 TYPE REF TO zcl_lnt_class.
            DATA(t111) = t89.
            t110 = t111.
            t109 = t110->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t106 = t109.
          ELSE.
            DATA t112 TYPE REF TO zif_lnt_class_definition.
            CLEAR t112.
            t106 = t112.
          ENDIF.
          t88 = t106.
          t80 = t88.
        ENDIF.
        t65 = t80.
        t56 = t65.
      ENDIF.
      t46 = t56.
      t45 = t46.
      DATA t113 TYPE abap_bool.
      DATA(t114) = t45.
      t113 = xsdbool( t114 IS BOUND ).
      IF t113 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_current_scope.
        DATA(t116) = t2.
        t115 = t116->scope.
        DATA t117 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA(t119) = t36.
          t117 = t119.
        ELSE.
          DATA t120 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t120.
          t117 = t120.
        ENDIF.
        DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t124 TYPE REF TO zif_lnt_class_definition.
          DATA(t125) = t45.
          t124 = t125.
          t123 ?= t124.
          t121 = t123.
        ELSE.
          DATA t126 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t126.
          t121 = t126.
        ENDIF.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t128) = |Object|.
        CREATE OBJECT t127.
        t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t127->sval = t128.
        DATA t129 TYPE string.
        DATA(t130) = t2.
        t129 = t130->filename.
        DATA t131 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t131.
        DATA(t132) = abap_true.
        IF t132 = abap_true.
          DATA t133 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t133.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          DATA(t135) = abap_true.
          IF t135 = abap_true.
            DATA t136 TYPE string.
            DATA(t137) = t39.
            DATA(t138) = strlen( t137 ).
            t136 = t137.
            IF t136 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t136 TO UPPER CASE.
            ELSE.
              t136 = zlnt_runtime_uppe_91169605024d=>full( t136 ).
            ENDIF.
            DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t139->has = abap_true.
            t139->value = t136.
            t134 = t139.
          ELSE.
            DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t140.
            t134 = t140.
          ENDIF.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          DATA(t142) = abap_true.
          IF t142 = abap_true.
            DATA(t143) = |CLAS|.
            DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t144->has = abap_true.
            t144->value = t143.
            t141 = t144.
          ELSE.
            DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t145.
            t141 = t145.
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t146.
          t133 = NEW zcl_lnt_ireference_extras( i_oo_name = t134 i_oo_type = t141 i_found_qualified = t146 ).
          t131 = t133.
        ELSE.
          DATA t147 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t147.
          t131 = t147.
        ENDIF.
        t115->add_reference( i_usage = t117 i_referencing = t121 i_type_9913 = t127 i_filename = t129 i_extra = t131 ).
      ELSE.
        DATA(t148) = VALUE abap_bool( ).
        DATA t149 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t149.
        DATA t150 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t150.
        DATA t151 TYPE REF TO zcl_lnt_current_scope.
        DATA(t152) = t2.
        t151 = t152->scope.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA(t154) = abap_true.
        IF t154 = abap_true.
          DATA(t155) = t39.
          DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t156->has = abap_true.
          t156->value = t155.
          t153 = t156.
        ELSE.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          t153 = t157.
        ENDIF.
        t150 = t151->exists_object( i_name = t153 ).
        t149 = t150.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        t158 = t159.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = t149.
        IF t162 IS INITIAL.
          t161 = abap_true.
        ENDIF.
        t160 = xsdbool( t161 = abap_false ).
        t148 = t160.
        IF t148 = abap_true.
        ELSE.
          DATA(t163) = VALUE abap_bool( ).
          DATA(t164) = VALUE abap_bool( ).
          DATA t165 TYPE REF TO zcl_lnt_ddic.
          DATA t166 TYPE REF TO zcl_lnt_ddic.
          DATA t167 TYPE REF TO zcl_lnt_current_scope.
          DATA t168 TYPE REF TO zcl_lnt_current_scope.
          DATA(t169) = t2.
          t168 = t169->scope.
          t167 = t168.
          DATA t170 TYPE REF TO zcl_lnt_ddic.
          DATA t171 TYPE REF TO zif_lnt_registry.
          DATA(t172) = t167.
          t171 = t172->reg.
          t170 = NEW zcl_lnt_ddic( i_reg_f149 = t171 ).
          t166 = t170.
          t165 = t166.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          DATA(t175) = abap_true.
          IF t175 = abap_true.
            DATA(t176) = t39.
            DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t177->has = abap_true.
            t177->value = t176.
            t174 = t177.
          ELSE.
            DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t178.
            t174 = t178.
          ENDIF.
          t173 = t174.
          DATA(t179) = VALUE abap_bool( ).
          DATA(t180) = VALUE abap_bool( ).
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t182) = t173.
          t181 = t182.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          t183 = t184.
          DATA(t185) = VALUE abap_bool( ).
          DATA(t186) = t181.
          IF t186 IS INITIAL.
            t185 = abap_true.
          ELSEIF t186->has = abap_false.
            t185 = abap_true.
          ENDIF.
          t180 = t185.
          IF t180 = abap_true.
            DATA(t187) = abap_true.
            t179 = t187.
          ELSE.
            DATA t188 TYPE abap_bool.
            DATA t189 TYPE REF TO zif_lnt_registry.
            DATA(t190) = t165.
            t189 = t190->reg.
            DATA t191 TYPE string.
            DATA(t192) = t173.
            t191 = t192->value.
            t188 = t189->in_error_namespace( i_name = t191 ).
            t179 = t188.
          ENDIF.
          t164 = t179.
          DATA(t193) = abap_false.
          t163 = xsdbool( t164 = t193 ).
          IF t163 = abap_true.
            DATA t194 TYPE REF TO zcl_lnt_current_scope.
            DATA(t195) = t2.
            t194 = t195->scope.
            DATA t196 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t196.
            DATA(t197) = abap_true.
            IF t197 = abap_true.
              DATA(t198) = t36.
              t196 = t198.
            ELSE.
              DATA t199 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t199.
              t196 = t199.
            ENDIF.
            DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t200.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t202) = |Object (Void)|.
            CREATE OBJECT t201.
            t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t201->sval = t202.
            DATA t203 TYPE string.
            DATA(t204) = t2.
            t203 = t204->filename.
            DATA t205 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t205.
            t194->add_reference( i_usage = t196 i_referencing = t200 i_type_9913 = t201 i_filename = t203 i_extra = t205 ).
          ELSE.
            DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t207) = t2.
            t206 = t207->issues.
            DATA t208 TYPE REF TO zcl_lnt_issue.
            CLEAR t208.
            DATA(t209) = t2.
            DATA(t210) = t36.
            DATA(t211) = VALUE string( ).
            DATA(t212) = VALUE string( ).
            DATA(t213) = |Friend class |.
            DATA t214 TYPE string.
            DATA(t215) = t39.
            DATA(t216) = strlen( t215 ).
            t214 = t215.
            IF t214 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t214 TO UPPER CASE.
            ELSE.
              t214 = zlnt_runtime_uppe_91169605024d=>full( t214 ).
            ENDIF.
            DATA(t217) = strlen( t213 ).
            t212 = |{ t213 }{ t214 }|.
            DATA(t218) = | does not exist|.
            DATA(t219) = strlen( t212 ).
            t211 = |{ t212 }{ t218 }|.
            DATA t220 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t220.
            t208 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t209 i_token = t210 i_message_26cb = t211 i_fix = t220 ).
            APPEND t208 TO t206->items.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t221) = t3.
      DATA(t222) = t39.
      APPEND t222 TO t221->items.
    ENDLOOP.
    DATA(t223) = t3.
    result = t223.

  ENDMETHOD.

  METHOD add_reference.
    DATA(t1) = i_token.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t5.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE string.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t14) = t5.
      t13 = t14.
      t12 = t13.
      DATA t15 TYPE string.
      DATA(t16) = t12.
      t15 = t16->str.
      t11 = t15.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t11.
      t7 = t17.
    ENDIF.
    t4 = t7.
    t3 = t4.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t3.
    IF t19 IS BOUND.
      IF t19->has = abap_true.
        t18 = xsdbool( strlen( t19->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zif_lnt_class_definition.
      CLEAR t20.
      DATA t21 TYPE REF TO zif_lnt_class_definition.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_current_scope.
      DATA t23 TYPE REF TO zcl_lnt_current_scope.
      DATA(t24) = t2.
      t23 = t24->scope.
      t22 = t23.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA(t27) = abap_true.
      IF t27 = abap_true.
        DATA t28 TYPE string.
        DATA(t29) = t3.
        t28 = t29->value.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t28.
        t26 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t26 = t31.
      ENDIF.
      t25 = t26.
      DATA t32 TYPE REF TO zif_lnt_class_definition.
      CLEAR t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t35) = t25.
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
        DATA t40 TYPE REF TO zif_lnt_class_definition.
        CLEAR t40.
        t32 = t40.
      ELSE.
        DATA t41 TYPE REF TO zif_lnt_class_definition.
        CLEAR t41.
        DATA t42 TYPE REF TO zif_lnt_class_definition.
        CLEAR t42.
        DATA t43 TYPE REF TO zif_lnt_class_definition.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t46) = t22.
        t45 = t46->current.
        t44 = t45.
        DATA t47 TYPE REF TO zif_lnt_class_definition.
        CLEAR t47.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = t44.
        IF t49 IS INITIAL.
          t48 = abap_true.
        ENDIF.
        IF t48 = abap_true.
          DATA t50 TYPE REF TO zif_lnt_class_definition.
          CLEAR t50.
          t47 = t50.
        ELSE.
          DATA t51 TYPE REF TO zif_lnt_class_definition.
          DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t53) = t44.
          t52 = t53.
          DATA t54 TYPE string.
          DATA(t55) = t25.
          t54 = t55->value.
          t51 = t52->find_class_definition( i_name = t54 ).
          t47 = t51.
        ENDIF.
        t43 = t47.
        t42 = t43.
        DATA t56 TYPE REF TO zif_lnt_class_definition.
        CLEAR t56.
        DATA t57 TYPE abap_bool.
        DATA(t58) = t42.
        t57 = xsdbool( t58 IS BOUND ).
        IF t57 = abap_true.
          DATA t59 TYPE REF TO zif_lnt_class_definition.
          CLEAR t59.
          DATA(t60) = abap_true.
          IF t60 = abap_true.
            DATA t61 TYPE REF TO zif_lnt_class_definition.
            DATA(t62) = t42.
            t61 = t62.
            t59 = t61.
          ELSE.
            DATA t63 TYPE REF TO zif_lnt_class_definition.
            CLEAR t63.
            t59 = t63.
          ENDIF.
          t56 = t59.
        ELSE.
          DATA t64 TYPE REF TO zif_lnt_class_definition.
          CLEAR t64.
          DATA t65 TYPE REF TO zcl_lnt_class.
          CLEAR t65.
          DATA t66 TYPE REF TO zcl_lnt_class.
          CLEAR t66.
          DATA t67 TYPE REF TO zif_lnt_object.
          CLEAR t67.
          DATA t68 TYPE REF TO zif_lnt_registry.
          DATA(t69) = t22.
          t68 = t69->reg.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          DATA(t71) = abap_true.
          IF t71 = abap_true.
            DATA(t72) = |CLAS|.
            DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t73->has = abap_true.
            t73->value = t72.
            t70 = t73.
          ELSE.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t74.
            t70 = t74.
          ENDIF.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA t77 TYPE string.
            DATA(t78) = t25.
            t77 = t78->value.
            DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t79->has = abap_true.
            t79->value = t77.
            t75 = t79.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            t75 = t80.
          ENDIF.
          t67 = t68->get_object( i_type_9913 = t70 i_name = t75 ).
          DATA t81 TYPE REF TO object.
          t81 = t67.
          t66 ?= t81.
          t65 = t66.
          DATA t82 TYPE REF TO zif_lnt_class_definition.
          CLEAR t82.
          DATA t83 TYPE abap_bool.
          DATA(t84) = t65.
          t83 = xsdbool( t84 IS BOUND ).
          IF t83 = abap_true.
            DATA t85 TYPE REF TO zif_lnt_class_definition.
            DATA t86 TYPE REF TO zcl_lnt_class.
            DATA(t87) = t65.
            t86 = t87.
            t85 = t86->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t82 = t85.
          ELSE.
            DATA t88 TYPE REF TO zif_lnt_class_definition.
            CLEAR t88.
            t82 = t88.
          ENDIF.
          t64 = t82.
          t56 = t64.
        ENDIF.
        t41 = t56.
        t32 = t41.
      ENDIF.
      t21 = t32.
      t20 = t21.
      DATA t89 TYPE abap_bool.
      DATA(t90) = t20.
      t89 = xsdbool( t90 IS BOUND ).
      IF t89 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_current_scope.
        DATA(t92) = t2.
        t91 = t92->scope.
        DATA(t93) = t1.
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t94.
        DATA(t95) = abap_true.
        IF t95 = abap_true.
          DATA t96 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t97 TYPE REF TO zif_lnt_class_definition.
          DATA(t98) = t20.
          t97 = t98.
          t96 ?= t97.
          t94 = t96.
        ELSE.
          DATA t99 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t99.
          t94 = t99.
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t101) = |Object|.
        CREATE OBJECT t100.
        t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t100->sval = t101.
        DATA t102 TYPE string.
        DATA(t103) = t2.
        t102 = t103->filename.
        DATA t104 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t104.
        DATA(t105) = abap_true.
        IF t105 = abap_true.
          DATA t106 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t106.
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t107.
          DATA(t108) = abap_true.
          IF t108 = abap_true.
            DATA t109 TYPE string.
            DATA t110 TYPE string.
            DATA(t111) = t3.
            t110 = t111->value.
            DATA(t112) = strlen( t110 ).
            t109 = t110.
            IF t109 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t109 TO UPPER CASE.
            ELSE.
              t109 = zlnt_runtime_uppe_91169605024d=>full( t109 ).
            ENDIF.
            DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t113->has = abap_true.
            t113->value = t109.
            t107 = t113.
          ELSE.
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            t107 = t114.
          ENDIF.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t116) = abap_true.
          IF t116 = abap_true.
            DATA(t117) = |CLAS|.
            DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t118->has = abap_true.
            t118->value = t117.
            t115 = t118.
          ELSE.
            DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t119.
            t115 = t119.
          ENDIF.
          DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t120.
          t106 = NEW zcl_lnt_ireference_extras( i_oo_name = t107 i_oo_type = t115 i_found_qualified = t120 ).
          t104 = t106.
        ELSE.
          DATA t121 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t121.
          t104 = t121.
        ENDIF.
        t91->add_reference( i_usage = t93 i_referencing = t94 i_type_9913 = t100 i_filename = t102 i_extra = t104 ).
      ELSE.
        DATA(t122) = VALUE abap_bool( ).
        DATA(t123) = VALUE abap_bool( ).
        DATA t124 TYPE REF TO zcl_lnt_ddic.
        DATA t125 TYPE REF TO zcl_lnt_ddic.
        DATA t126 TYPE REF TO zcl_lnt_current_scope.
        DATA t127 TYPE REF TO zcl_lnt_current_scope.
        DATA(t128) = t2.
        t127 = t128->scope.
        t126 = t127.
        DATA t129 TYPE REF TO zcl_lnt_ddic.
        DATA t130 TYPE REF TO zif_lnt_registry.
        DATA(t131) = t126.
        t130 = t131->reg.
        t129 = NEW zcl_lnt_ddic( i_reg_f149 = t130 ).
        t125 = t129.
        t124 = t125.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        DATA(t134) = abap_true.
        IF t134 = abap_true.
          DATA t135 TYPE string.
          DATA(t136) = t3.
          t135 = t136->value.
          DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t137->has = abap_true.
          t137->value = t135.
          t133 = t137.
        ELSE.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          t133 = t138.
        ENDIF.
        t132 = t133.
        DATA(t139) = VALUE abap_bool( ).
        DATA(t140) = VALUE abap_bool( ).
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t142) = t132.
        t141 = t142.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        t143 = t144.
        DATA(t145) = VALUE abap_bool( ).
        DATA(t146) = t141.
        IF t146 IS INITIAL.
          t145 = abap_true.
        ELSEIF t146->has = abap_false.
          t145 = abap_true.
        ENDIF.
        t140 = t145.
        IF t140 = abap_true.
          DATA(t147) = abap_true.
          t139 = t147.
        ELSE.
          DATA t148 TYPE abap_bool.
          DATA t149 TYPE REF TO zif_lnt_registry.
          DATA(t150) = t124.
          t149 = t150->reg.
          DATA t151 TYPE string.
          DATA(t152) = t132.
          t151 = t152->value.
          t148 = t149->in_error_namespace( i_name = t151 ).
          t139 = t148.
        ENDIF.
        t123 = t139.
        DATA(t153) = abap_false.
        t122 = xsdbool( t123 = t153 ).
        IF t122 = abap_true.
          DATA t154 TYPE REF TO zcl_lnt_current_scope.
          DATA(t155) = t2.
          t154 = t155->scope.
          DATA(t156) = t1.
          DATA t157 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t159) = |Object (Void)|.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t158->sval = t159.
          DATA t160 TYPE string.
          DATA(t161) = t2.
          t160 = t161->filename.
          DATA t162 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t162.
          t154->add_reference( i_usage = t156 i_referencing = t157 i_type_9913 = t158 i_filename = t160 i_extra = t162 ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_input_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t2.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d523_88ac7053af9c.
    t3 = t4->find_all_statements( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t3->items INTO t7.
      t6 ?= t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zcl_lnt_abstract_token.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t12) = t6.
      DATA(t13) = |PARTIALLY|.
      t11 = t12->find_direct_token_by_text( i_text = t13 ).
      t10 = t11.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = t10.
      IF t18 IS INITIAL.
        t17 = abap_true.
      ENDIF.
      t16 = xsdbool( t17 = abap_false ).
      t9 = t16.
      t8 = t9.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = t6.
      DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
      t22 = t23->find_first_expression( i_type_9913 = t24 ).
      t21 = t22.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = t21.
      IF t27 IS INITIAL.
        t26 = abap_true.
      ENDIF.
      IF t26 = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t28.
        t25 = t28.
      ELSE.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        DATA(t31) = t21.
        t30 = t31.
        t29 = t30->get_first_token( ).
        t25 = t29.
      ENDIF.
      t20 = t25.
      t19 = t20.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t34) = t19.
      t33 = t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t35 = t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t33.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      t32 = t37.
      IF t32 = abap_true.
        DATA t39 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t39.
        DATA t40 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA(t43) = |ClassDefinition, unable to find interface token|.
          DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t44->has = abap_true.
          t44->value = t43.
          t41 = t44.
        ELSE.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          t41 = t45.
        ENDIF.
        t40 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t41 ).
        t39 = NEW #( ).
        t39->payload = t40.
        RAISE EXCEPTION t39.
      ENDIF.
      DATA(t46) = VALUE string( ).
      DATA t47 TYPE string.
      DATA t48 TYPE string.
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t51) = t19.
      t50 = t51.
      t49 = t50.
      DATA t52 TYPE string.
      DATA(t53) = t49.
      t52 = t53->str.
      t48 = t52.
      DATA(t54) = strlen( t48 ).
      t47 = t48.
      IF t47 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t47 TO UPPER CASE.
      ELSE.
        t47 = zlnt_runtime_uppe_91169605024d=>full( t47 ).
      ENDIF.
      t46 = t47.
      DATA(t55) = me->implementing.
      DATA t56 TYPE REF TO zcl_lnt_iimplementing.
      DATA(t57) = t46.
      DATA(t58) = t8.
      t56 = NEW zcl_lnt_iimplementing( i_name = t57 i_partial = t58 ).
      APPEND t56 TO t55->items.
      DATA t59 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t59.
      DATA t60 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t60.
      DATA t61 TYPE REF TO zcl_lnt_current_scope.
      DATA t62 TYPE REF TO zcl_lnt_current_scope.
      DATA(t63) = t1.
      t62 = t63->scope.
      t61 = t62.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA(t67) = t46.
        DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t68->has = abap_true.
        t68->value = t67.
        t65 = t68.
      ELSE.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t65 = t69.
      ENDIF.
      t64 = t65.
      DATA t70 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t73) = t64.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t74 = t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = t72.
      IF t77 IS INITIAL.
        t76 = abap_true.
      ELSEIF t77->has = abap_false.
        t76 = abap_true.
      ENDIF.
      t71 = t76.
      IF t71 = abap_true.
        DATA t78 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t78.
        t70 = t78.
      ELSE.
        DATA t79 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t79.
        DATA t80 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t80.
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t83 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t84) = t61.
        t83 = t84->current.
        t82 = t83.
        DATA t85 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t85.
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = t82.
        IF t87 IS INITIAL.
          t86 = abap_true.
        ENDIF.
        IF t86 = abap_true.
          DATA t88 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t88.
          t85 = t88.
        ELSE.
          DATA t89 TYPE REF TO zif_lnt_interface_definition.
          DATA t90 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t91) = t82.
          t90 = t91.
          DATA t92 TYPE string.
          DATA(t93) = t64.
          t92 = t93->value.
          t89 = t90->find_interface_definition( i_name = t92 ).
          t85 = t89.
        ENDIF.
        t81 = t85.
        t80 = t81.
        DATA t94 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t94.
        DATA t95 TYPE abap_bool.
        DATA(t96) = t80.
        t95 = xsdbool( t96 IS BOUND ).
        IF t95 = abap_true.
          DATA t97 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t97.
          DATA(t98) = abap_true.
          IF t98 = abap_true.
            DATA t99 TYPE REF TO zif_lnt_interface_definition.
            DATA(t100) = t80.
            t99 = t100.
            t97 = t99.
          ELSE.
            DATA t101 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t101.
            t97 = t101.
          ENDIF.
          t94 = t97.
        ELSE.
          DATA t102 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t102.
          DATA t103 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t103.
          DATA t104 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t104.
          DATA t105 TYPE REF TO zif_lnt_object.
          CLEAR t105.
          DATA t106 TYPE REF TO zif_lnt_registry.
          DATA(t107) = t61.
          t106 = t107->reg.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          DATA(t109) = abap_true.
          IF t109 = abap_true.
            DATA(t110) = |INTF|.
            DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t111->has = abap_true.
            t111->value = t110.
            t108 = t111.
          ELSE.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            t108 = t112.
          ENDIF.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA(t114) = abap_true.
          IF t114 = abap_true.
            DATA t115 TYPE string.
            DATA(t116) = t64.
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
          t105 = t106->get_object( i_type_9913 = t108 i_name = t113 ).
          DATA t119 TYPE REF TO object.
          t119 = t105.
          t104 ?= t119.
          t103 = t104.
          DATA t120 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t120.
          DATA t121 TYPE abap_bool.
          DATA(t122) = t103.
          t121 = xsdbool( t122 IS BOUND ).
          IF t121 = abap_true.
            DATA t123 TYPE REF TO zif_lnt_interface_definition.
            DATA t124 TYPE REF TO zcl_lnt_ob_interface.
            DATA t125 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t126) = t103.
            t125 = t126.
            t124 = t125.
            DATA t127 TYPE REF TO zif_lnt_interface_definition.
            DATA(t128) = t124.
            t127 = t128->def.
            t123 = t127.
            t120 = t123.
          ELSE.
            DATA t129 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t129.
            t120 = t129.
          ENDIF.
          t102 = t120.
          t94 = t102.
        ENDIF.
        t79 = t94.
        t70 = t79.
      ENDIF.
      t60 = t70.
      t59 = t60.
      DATA t130 TYPE abap_bool.
      DATA(t131) = t59.
      t130 = xsdbool( t131 IS BOUND ).
      IF t130 = abap_true.
        DATA t132 TYPE REF TO zcl_lnt_current_scope.
        DATA(t133) = t1.
        t132 = t133->scope.
        DATA t134 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t134.
        DATA(t135) = abap_true.
        IF t135 = abap_true.
          DATA t136 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t137) = t19.
          t136 = t137.
          t134 = t136.
        ELSE.
          DATA t138 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t138.
          t134 = t138.
        ENDIF.
        DATA t139 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t139.
        DATA(t140) = abap_true.
        IF t140 = abap_true.
          DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t142 TYPE REF TO zif_lnt_interface_definition.
          DATA(t143) = t59.
          t142 = t143.
          t141 ?= t142.
          t139 = t141.
        ELSE.
          DATA t144 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t144.
          t139 = t144.
        ENDIF.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t146) = |Object|.
        CREATE OBJECT t145.
        t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t145->sval = t146.
        DATA t147 TYPE string.
        DATA(t148) = t1.
        t147 = t148->filename.
        DATA t149 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t149.
        DATA(t150) = abap_true.
        IF t150 = abap_true.
          DATA t151 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t151.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA(t153) = abap_true.
          IF t153 = abap_true.
            DATA t154 TYPE string.
            DATA(t155) = t46.
            DATA(t156) = strlen( t155 ).
            t154 = t155.
            IF t154 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t154 TO UPPER CASE.
            ELSE.
              t154 = zlnt_runtime_uppe_91169605024d=>full( t154 ).
            ENDIF.
            DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t157->has = abap_true.
            t157->value = t154.
            t152 = t157.
          ELSE.
            DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t158.
            t152 = t158.
          ENDIF.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA(t160) = abap_true.
          IF t160 = abap_true.
            DATA(t161) = |INTF|.
            DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t162->has = abap_true.
            t162->value = t161.
            t159 = t162.
          ELSE.
            DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t163.
            t159 = t163.
          ENDIF.
          DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t164.
          t151 = NEW zcl_lnt_ireference_extras( i_oo_name = t152 i_oo_type = t159 i_found_qualified = t164 ).
          t149 = t151.
        ELSE.
          DATA t165 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t165.
          t149 = t165.
        ENDIF.
        t132->add_reference( i_usage = t134 i_referencing = t139 i_type_9913 = t145 i_filename = t147 i_extra = t149 ).
      ELSE.
        DATA(t166) = VALUE abap_bool( ).
        DATA(t167) = VALUE abap_bool( ).
        DATA t168 TYPE REF TO zcl_lnt_ddic.
        DATA t169 TYPE REF TO zcl_lnt_ddic.
        DATA t170 TYPE REF TO zcl_lnt_current_scope.
        DATA t171 TYPE REF TO zcl_lnt_current_scope.
        DATA(t172) = t1.
        t171 = t172->scope.
        t170 = t171.
        DATA t173 TYPE REF TO zcl_lnt_ddic.
        DATA t174 TYPE REF TO zif_lnt_registry.
        DATA(t175) = t170.
        t174 = t175->reg.
        t173 = NEW zcl_lnt_ddic( i_reg_f149 = t174 ).
        t169 = t173.
        t168 = t169.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t177.
        DATA(t178) = abap_true.
        IF t178 = abap_true.
          DATA(t179) = t46.
          DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t180->has = abap_true.
          t180->value = t179.
          t177 = t180.
        ELSE.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          t177 = t181.
        ENDIF.
        t176 = t177.
        DATA(t182) = VALUE abap_bool( ).
        DATA(t183) = VALUE abap_bool( ).
        DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t185) = t176.
        t184 = t185.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t187.
        t186 = t187.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = t184.
        IF t189 IS INITIAL.
          t188 = abap_true.
        ELSEIF t189->has = abap_false.
          t188 = abap_true.
        ENDIF.
        t183 = t188.
        IF t183 = abap_true.
          DATA(t190) = abap_true.
          t182 = t190.
        ELSE.
          DATA t191 TYPE abap_bool.
          DATA t192 TYPE REF TO zif_lnt_registry.
          DATA(t193) = t168.
          t192 = t193->reg.
          DATA t194 TYPE string.
          DATA(t195) = t176.
          t194 = t195->value.
          t191 = t192->in_error_namespace( i_name = t194 ).
          t182 = t191.
        ENDIF.
        t167 = t182.
        DATA(t196) = abap_false.
        t166 = xsdbool( t167 = t196 ).
        IF t166 = abap_true.
          DATA t197 TYPE REF TO zcl_lnt_current_scope.
          DATA(t198) = t1.
          t197 = t198->scope.
          DATA t199 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t199.
          DATA(t200) = abap_true.
          IF t200 = abap_true.
            DATA t201 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t202) = t19.
            t201 = t202.
            t199 = t201.
          ELSE.
            DATA t203 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t203.
            t199 = t203.
          ENDIF.
          DATA t204 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t204.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t206) = |Object (Void)|.
          CREATE OBJECT t205.
          t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t205->sval = t206.
          DATA t207 TYPE string.
          DATA(t208) = t1.
          t207 = t208->filename.
          DATA t209 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t209.
          DATA(t210) = abap_true.
          IF t210 = abap_true.
            DATA t211 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t211.
            DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t212.
            DATA(t213) = abap_true.
            IF t213 = abap_true.
              DATA t214 TYPE string.
              DATA(t215) = t46.
              DATA(t216) = strlen( t215 ).
              t214 = t215.
              IF t214 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t214 TO UPPER CASE.
              ELSE.
                t214 = zlnt_runtime_uppe_91169605024d=>full( t214 ).
              ENDIF.
              DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t217->has = abap_true.
              t217->value = t214.
              t212 = t217.
            ELSE.
              DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t218.
              t212 = t218.
            ENDIF.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t219.
            DATA(t220) = abap_true.
            IF t220 = abap_true.
              DATA(t221) = |INTF|.
              DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t222->has = abap_true.
              t222->value = t221.
              t219 = t222.
            ELSE.
              DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t223.
              t219 = t223.
            ENDIF.
            DATA t224 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t224.
            t211 = NEW zcl_lnt_ireference_extras( i_oo_name = t212 i_oo_type = t219 i_found_qualified = t224 ).
            t209 = t211.
          ELSE.
            DATA t225 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t225.
            t209 = t225.
          ENDIF.
          t197->add_reference( i_usage = t199 i_referencing = t204 i_type_9913 = t205 i_filename = t207 i_extra = t209 ).
        ELSE.
          DATA t226 TYPE REF TO zcl_lnt_current_scope.
          DATA(t227) = t1.
          t226 = t227->scope.
          DATA t228 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t228.
          DATA(t229) = abap_true.
          IF t229 = abap_true.
            DATA t230 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t231) = t19.
            t230 = t231.
            t228 = t230.
          ELSE.
            DATA t232 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t232.
            t228 = t232.
          ENDIF.
          DATA t233 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t233.
          DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t235) = |Object (Unknown)|.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t234->sval = t235.
          DATA t236 TYPE string.
          DATA(t237) = t1.
          t236 = t237->filename.
          DATA t238 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t238.
          DATA(t239) = abap_true.
          IF t239 = abap_true.
            DATA t240 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t240.
            DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t241.
            DATA(t242) = abap_true.
            IF t242 = abap_true.
              DATA t243 TYPE string.
              DATA(t244) = t46.
              DATA(t245) = strlen( t244 ).
              t243 = t244.
              IF t243 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t243 TO UPPER CASE.
              ELSE.
                t243 = zlnt_runtime_uppe_91169605024d=>full( t243 ).
              ENDIF.
              DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t246->has = abap_true.
              t246->value = t243.
              t241 = t246.
            ELSE.
              DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t247.
              t241 = t247.
            ENDIF.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t248.
            DATA(t249) = abap_true.
            IF t249 = abap_true.
              DATA(t250) = |INTF|.
              DATA(t251) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t251->has = abap_true.
              t251->value = t250.
              t248 = t251.
            ELSE.
              DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t252.
              t248 = t252.
            ENDIF.
            DATA t253 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t253.
            t240 = NEW zcl_lnt_ireference_extras( i_oo_name = t241 i_oo_type = t248 i_found_qualified = t253 ).
            t238 = t240.
          ELSE.
            DATA t254 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t254.
            t238 = t254.
          ENDIF.
          t226->add_reference( i_usage = t228 i_referencing = t233 i_type_9913 = t234 i_filename = t236 i_extra = t238 ).
        ENDIF.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD get_type_definitions.
    DATA(t1) = CAST zcl_lnt_type_definitions( me->g_t_d_i_s_ab_ty_cl_df_ts_cl_df( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_attributes.
    DATA(t1) = CAST zcl_lnt_attributes( me->g_a_in_sr_ab_ty_cl_df_ts_cl_df( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1032_f78e39381f78.
  ENDMETHOD.

  METHOD zif_lnt_class_definition~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~is_final.
    result = me->is_final( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~is_for_testing.
    result = me->is_for_testing( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~is_abstract.
    result = me->is_abstract( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~is_shared_memory.
    result = me->is_shared_memory( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_friends.
    result = me->get_friends( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_create_visibility.
    result = me->get_create_visibility( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_attributes.
    result = me->get_attributes( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_type_definitions.
    result = me->get_type_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_method_definitions.
    result = me->get_method_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_events.
    result = me->get_events( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~is_global.
    result = me->is_global( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_super_class.
    result = me->get_super_class( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_aliases.
    result = me->get_aliases( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_implementing.
    result = me->get_implementing( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_class_definition~get_token.
    result = me->get_token( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_attributes.
    result = me->get_attributes( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_type_definitions.
    result = me->get_type_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_method_definitions.
    result = me->get_method_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_events.
    result = me->get_events( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~is_global.
    result = me->is_global( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_super_class.
    result = me->get_super_class( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_aliases.
    result = me->get_aliases( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_implementing.
    result = me->get_implementing( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_interface_definition~get_token.
    result = me->get_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_aliases.
    result = me->get_aliases( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_attributes.
    result = me->get_attributes( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_events.
    result = me->get_events( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_implementing.
    result = me->get_implementing( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_method_definitions.
    result = me->get_method_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_super_class.
    result = me->get_super_class( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_token.
    result = me->get_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~get_type_definitions.
    result = me->get_type_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_union_865ccdda~is_global.
    result = me->is_global( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_union_f405367a~get_token.
    result = me->get_token( ).
  ENDMETHOD.
ENDCLASS.
