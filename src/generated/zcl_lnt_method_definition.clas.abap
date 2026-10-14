* TS: src/abap/types/method_definition.ts:11:1 MethodDefinition
CLASS zcl_lnt_method_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_method_definition.
    INTERFACES zif_lnt_union_8cd68e5e.
    INTERFACES zif_lnt_union_b6d4892d.
    DATA visibility TYPE int8.
    DATA parameters TYPE REF TO zcl_lnt_ty_method_parameters.
    DATA redefinition TYPE abap_bool.
    DATA event_handler TYPE abap_bool.
    DATA event_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA event_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA abstract TYPE abap_bool.
    DATA static_9977 TYPE abap_bool.
    DATA raising TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA exceptions TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA class_name TYPE string.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_visibility_5c1f TYPE int8 i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_visibility RETURNING VALUE(result) TYPE int8.
    METHODS get_class_name RETURNING VALUE(result) TYPE string.
    METHODS is_redefinition RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_abstract RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_static_4685 RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_event_handler RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_event_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_event_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS g_p_in_sr_ab_ty_mt_df_ts_mt_df RETURNING VALUE(result) TYPE REF TO zcl_lnt_ty_method_parameters.
    METHODS get_raising RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_exceptions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_parameters RETURNING VALUE(result) TYPE REF TO zif_lnt_method_parameters.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_input_967e.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE REF TO zif_lnt_statement.
    DATA(t7) = t1.
    t6 = t7->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_method_def ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = |MethodDefinition, expected MethodDef as part of input node|.
        DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t13->has = abap_true.
        t13->value = t12.
        t10 = t13.
      ELSE.
        DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      t9 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t10 ).
      t8 = NEW #( ).
      t8->payload = t9.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_expression_node.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = t1.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207.
    t16 = t17->find_direct_expression( i_type_9913 = t18 ).
    t15 = t16.
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t21) = t15.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t20.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    IF t19 = abap_true.
      DATA t26 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA(t30) = |MethodDefinition, expected MethodDef as part of input node|.
        DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t31->has = abap_true.
        t31->value = t30.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t32.
        t28 = t32.
      ENDIF.
      t27 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t28 ).
      t26 = NEW #( ).
      t26->payload = t27.
      RAISE EXCEPTION t26.
    ENDIF.
    DATA t33 TYPE REF TO zcl_lnt_abstract_token.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA(t35) = t15.
    t34 = t35.
    t33 = t34->get_first_token( ).
    DATA t36 TYPE string.
    DATA(t37) = t3.
    t36 = t37->filename.
    super->constructor( i_token = t33 i_filename = t36 ).
    DATA t38 TYPE string.
    DATA t39 TYPE REF TO zcl_lnt_current_scope.
    DATA(t40) = t3.
    t39 = t40->scope.
    t38 = t39->get_name( ).
    me->class_name = t38.
    DATA(t41) = abap_false.
    me->redefinition = t41.
    DATA t42 TYPE abap_bool.
    DATA t43 TYPE REF TO zcl_lnt_expression_node.
    DATA(t44) = t1.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d245_8da77b7903ad.
    t43 = t44->find_direct_expression( i_type_9913 = t45 ).
    t42 = xsdbool( t43 IS BOUND ).
    IF t42 = abap_true.
      DATA(t46) = abap_true.
      me->redefinition = t46.
      DATA t47 TYPE string.
      DATA t48 TYPE string.
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      DATA(t52) = t15.
      t51 = t52.
      t50 = t51->get_first_token( ).
      t49 = t50.
      DATA t53 TYPE string.
      DATA(t54) = t49.
      t53 = t54->str.
      t48 = t53.
      t47 = t48.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = VALUE i( ).
      DATA(t57) = t47.
      DATA(t58) = |~|.
      DATA(t59) = strlen( t57 ).
      IF t58 IS INITIAL.
        t56 = 0.
      ELSE.
        FIND t58 IN t57 MATCH OFFSET t56.
        IF sy-subrc <> 0.
          t56 = -1.
        ENDIF.
      ENDIF.
      DATA(t60) = 0.
      t55 = xsdbool( t56 >= t60 ).
      IF t55 = abap_true.
        DATA t61 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t61.
        DATA t62 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t62.
        DATA t63 TYPE REF TO zcl_lnt_current_scope.
        DATA t64 TYPE REF TO zcl_lnt_current_scope.
        DATA(t65) = t3.
        t64 = t65->scope.
        t63 = t64.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = VALUE string( ).
          DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t71) = t47.
          DATA(t72) = |~|.
          DATA(t73) = strlen( t71 ).
          DATA t74 TYPE i.
          DATA(t75) = VALUE i( ).
          DATA(t76) = VALUE i( ).
          DATA t77 TYPE i.
          DATA(t78) = VALUE string( ).
          CREATE OBJECT t70.
          t77 = strlen( t72 ).
          t74 = 0.
          IF t77 = 0.
            WHILE t74 < t73.
              t78 = t71+t74(1).
              APPEND t78 TO t70->items.
              t74 = t74 + 1.
            ENDWHILE.
          ELSE.
            WHILE t74 <= t73.
              FIND FIRST OCCURRENCE OF t72 IN SECTION OFFSET t74 OF t71 MATCH OFFSET t75.
              IF sy-subrc = 0.
                t76 = t75 - t74.
              ELSE.
                t75 = -1.
                t76 = t73 - t74.
              ENDIF.
              CLEAR t78.
              IF t76 > 0.
                t78 = t71+t74(t76).
              ENDIF.
              APPEND t78 TO t70->items.
              IF t75 < 0.
                EXIT.
              ENDIF.
              t74 = t75 + t77.
            ENDWHILE.
          ENDIF.
          READ TABLE t70->items INDEX 1 INTO t69.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t69.
          t67 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t67 = t80.
        ENDIF.
        t66 = t67.
        DATA t81 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t81.
        DATA(t82) = VALUE abap_bool( ).
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t84) = t66.
        t83 = t84.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        t85 = t86.
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = t83.
        IF t88 IS INITIAL.
          t87 = abap_true.
        ELSEIF t88->has = abap_false.
          t87 = abap_true.
        ENDIF.
        t82 = t87.
        IF t82 = abap_true.
          DATA t89 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t89.
          t81 = t89.
        ELSE.
          DATA t90 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t90.
          DATA t91 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t91.
          DATA t92 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t92.
          DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t95) = t63.
          t94 = t95->current.
          t93 = t94.
          DATA t96 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t96.
          DATA(t97) = VALUE abap_bool( ).
          DATA(t98) = t93.
          IF t98 IS INITIAL.
            t97 = abap_true.
          ENDIF.
          IF t97 = abap_true.
            DATA t99 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t99.
            t96 = t99.
          ELSE.
            DATA t100 TYPE REF TO zif_lnt_interface_definition.
            DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t102) = t93.
            t101 = t102.
            DATA t103 TYPE string.
            DATA(t104) = t66.
            t103 = t104->value.
            t100 = t101->find_interface_definition( i_name = t103 ).
            t96 = t100.
          ENDIF.
          t92 = t96.
          t91 = t92.
          DATA t105 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t105.
          DATA t106 TYPE abap_bool.
          DATA(t107) = t91.
          t106 = xsdbool( t107 IS BOUND ).
          IF t106 = abap_true.
            DATA t108 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t108.
            DATA(t109) = abap_true.
            IF t109 = abap_true.
              DATA t110 TYPE REF TO zif_lnt_interface_definition.
              DATA(t111) = t91.
              t110 = t111.
              t108 = t110.
            ELSE.
              DATA t112 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t112.
              t108 = t112.
            ENDIF.
            t105 = t108.
          ELSE.
            DATA t113 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t113.
            DATA t114 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t114.
            DATA t115 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t115.
            DATA t116 TYPE REF TO zif_lnt_object.
            CLEAR t116.
            DATA t117 TYPE REF TO zif_lnt_registry.
            DATA(t118) = t63.
            t117 = t118->reg.
            DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t119.
            DATA(t120) = abap_true.
            IF t120 = abap_true.
              DATA(t121) = |INTF|.
              DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t122->has = abap_true.
              t122->value = t121.
              t119 = t122.
            ELSE.
              DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t123.
              t119 = t123.
            ENDIF.
            DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t124.
            DATA(t125) = abap_true.
            IF t125 = abap_true.
              DATA t126 TYPE string.
              DATA(t127) = t66.
              t126 = t127->value.
              DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t128->has = abap_true.
              t128->value = t126.
              t124 = t128.
            ELSE.
              DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t129.
              t124 = t129.
            ENDIF.
            t116 = t117->get_object( i_type_9913 = t119 i_name = t124 ).
            DATA t130 TYPE REF TO object.
            t130 = t116.
            t115 ?= t130.
            t114 = t115.
            DATA t131 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t131.
            DATA t132 TYPE abap_bool.
            DATA(t133) = t114.
            t132 = xsdbool( t133 IS BOUND ).
            IF t132 = abap_true.
              DATA t134 TYPE REF TO zif_lnt_interface_definition.
              DATA t135 TYPE REF TO zcl_lnt_ob_interface.
              DATA t136 TYPE REF TO zcl_lnt_ob_interface.
              DATA(t137) = t114.
              t136 = t137.
              t135 = t136.
              DATA t138 TYPE REF TO zif_lnt_interface_definition.
              DATA(t139) = t135.
              t138 = t139->def.
              t134 = t138.
              t131 = t134.
            ELSE.
              DATA t140 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t140.
              t131 = t140.
            ENDIF.
            t113 = t131.
            t105 = t113.
          ENDIF.
          t90 = t105.
          t81 = t90.
        ENDIF.
        t62 = t81.
        t61 = t62.
        DATA t141 TYPE abap_bool.
        DATA(t142) = t61.
        t141 = xsdbool( t142 IS BOUND ).
        IF t141 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_current_scope.
          DATA(t144) = t3.
          t143 = t144->scope.
          DATA t145 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t145.
          DATA(t146) = abap_true.
          IF t146 = abap_true.
            DATA t147 TYPE REF TO zcl_lnt_abstract_token.
            DATA t148 TYPE REF TO zcl_lnt_expression_node.
            DATA(t149) = t15.
            t148 = t149.
            t147 = t148->get_first_token( ).
            t145 = t147.
          ELSE.
            DATA t150 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t150.
            t145 = t150.
          ENDIF.
          DATA t151 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t151.
          DATA(t152) = abap_true.
          IF t152 = abap_true.
            DATA t153 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t154 TYPE REF TO zif_lnt_interface_definition.
            DATA(t155) = t61.
            t154 = t155.
            t153 ?= t154.
            t151 = t153.
          ELSE.
            DATA t156 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t156.
            t151 = t156.
          ENDIF.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t158) = |Object|.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t157->sval = t158.
          DATA t159 TYPE string.
          DATA(t160) = t3.
          t159 = t160->filename.
          DATA t161 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t161.
          t143->add_reference( i_usage = t145 i_referencing = t151 i_type_9913 = t157 i_filename = t159 i_extra = t161 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t162) = abap_false.
    me->event_handler = t162.
    DATA t163 TYPE REF TO zcl_lnt_expression_node.
    DATA t164 TYPE REF TO zcl_lnt_expression_node.
    DATA(t165) = t1.
    DATA(t166) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    t164 = t165->find_direct_expression( i_type_9913 = t166 ).
    t163 = t164.
    DATA t167 TYPE abap_bool.
    DATA(t168) = t163.
    t167 = xsdbool( t168 IS BOUND ).
    IF t167 = abap_true.
      DATA(t169) = abap_true.
      me->event_handler = t169.
      DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t170.
      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t171.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t172.
      DATA t173 TYPE REF TO zcl_lnt_expression_node.
      DATA t174 TYPE REF TO zcl_lnt_expression_node.
      DATA t175 TYPE REF TO zcl_lnt_expression_node.
      DATA(t176) = t163.
      t175 = t176.
      DATA(t177) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
      t174 = t175->find_direct_expression( i_type_9913 = t177 ).
      t173 = t174.
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t178.
      DATA(t179) = VALUE abap_bool( ).
      DATA(t180) = t173.
      IF t180 IS INITIAL.
        t179 = abap_true.
      ENDIF.
      IF t179 = abap_true.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        t178 = t181.
      ELSE.
        DATA t182 TYPE string.
        DATA t183 TYPE REF TO zcl_lnt_expression_node.
        DATA(t184) = t173.
        t183 = t184.
        t182 = t183->concat_tokens( ).
        DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t185->has = abap_true.
        t185->value = t182.
        t178 = t185.
      ENDIF.
      t172 = t178.
      t171 = t172.
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t186.
      DATA(t187) = VALUE abap_bool( ).
      DATA(t188) = t171.
      IF t188 IS INITIAL.
        t187 = abap_true.
      ELSEIF t188->has = abap_false.
        t187 = abap_true.
      ENDIF.
      IF t187 = abap_true.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t186 = t189.
      ELSE.
        DATA t190 TYPE string.
        DATA t191 TYPE string.
        DATA(t192) = t171.
        t191 = t192->value.
        DATA(t193) = strlen( t191 ).
        t190 = t191.
        IF t190 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t190 TO UPPER CASE.
        ELSE.
          t190 = zlnt_runtime_uppe_91169605024d=>full( t190 ).
        ENDIF.
        DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t194->has = abap_true.
        t194->value = t190.
        t186 = t194.
      ENDIF.
      t170 = t186.
      me->event_name = t170.
      DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t195.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t197.
      DATA t198 TYPE REF TO zcl_lnt_expression_node.
      DATA t199 TYPE REF TO zcl_lnt_expression_node.
      DATA t200 TYPE REF TO zcl_lnt_expression_node.
      DATA(t201) = t163.
      t200 = t201.
      DATA(t202) = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
      t199 = t200->find_direct_expression( i_type_9913 = t202 ).
      t198 = t199.
      DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t203.
      DATA(t204) = VALUE abap_bool( ).
      DATA(t205) = t198.
      IF t205 IS INITIAL.
        t204 = abap_true.
      ENDIF.
      IF t204 = abap_true.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        t203 = t206.
      ELSE.
        DATA t207 TYPE string.
        DATA t208 TYPE REF TO zcl_lnt_expression_node.
        DATA(t209) = t198.
        t208 = t209.
        t207 = t208->concat_tokens( ).
        DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t210->has = abap_true.
        t210->value = t207.
        t203 = t210.
      ENDIF.
      t197 = t203.
      t196 = t197.
      DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t211.
      DATA(t212) = VALUE abap_bool( ).
      DATA(t213) = t196.
      IF t213 IS INITIAL.
        t212 = abap_true.
      ELSEIF t213->has = abap_false.
        t212 = abap_true.
      ENDIF.
      IF t212 = abap_true.
        DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t214.
        t211 = t214.
      ELSE.
        DATA t215 TYPE string.
        DATA t216 TYPE string.
        DATA(t217) = t196.
        t216 = t217->value.
        DATA(t218) = strlen( t216 ).
        t215 = t216.
        IF t215 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t215 TO UPPER CASE.
        ELSE.
          t215 = zlnt_runtime_uppe_91169605024d=>full( t215 ).
        ENDIF.
        DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t219->has = abap_true.
        t219->value = t215.
        t211 = t219.
      ENDIF.
      t195 = t211.
      me->event_class = t195.
    ENDIF.
    DATA(t220) = abap_false.
    me->abstract = t220.
    DATA t221 TYPE abap_bool.
    DATA t222 TYPE REF TO zcl_lnt_expression_node.
    DATA(t223) = t1.
    DATA(t224) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    t222 = t223->find_direct_expression( i_type_9913 = t224 ).
    t221 = xsdbool( t222 IS BOUND ).
    IF t221 = abap_true.
      DATA(t225) = abap_true.
      me->abstract = t225.
    ENDIF.
    DATA(t226) = abap_false.
    me->static_9977 = t226.
    DATA(t227) = VALUE abap_bool( ).
    DATA t228 TYPE string.
    DATA t229 TYPE string.
    DATA t230 TYPE REF TO zcl_lnt_abstract_token.
    DATA t231 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t232) = t1.
    t231 = t232->get_first_token( ).
    t230 = t231.
    DATA t233 TYPE string.
    DATA(t234) = t230.
    t233 = t234->str.
    t229 = t233.
    DATA(t235) = strlen( t229 ).
    t228 = t229.
    IF t228 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t228 TO UPPER CASE.
    ELSE.
      t228 = zlnt_runtime_uppe_91169605024d=>full( t228 ).
    ENDIF.
    DATA(t236) = |CLASS|.
    DATA(t237) = strlen( t228 ).
    DATA t238 TYPE i.
    DATA(t239) = VALUE i( ).
    DATA(t240) = VALUE string( ).
    t238 = strlen( t236 ).
    IF t238 = 0.
      t227 = abap_true.
    ELSEIF t238 <= t237.
      t239 = 0.
      t240 = t228+t239(t238).
      IF t240 = t236.
        t227 = abap_true.
      ENDIF.
    ENDIF.
    IF t227 = abap_true.
      DATA(t241) = abap_true.
      me->static_9977 = t241.
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t242.
    me->raising = t242.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t245.
    DATA t246 TYPE REF TO zcl_lnt_expression_node.
    DATA t247 TYPE REF TO zcl_lnt_expression_node.
    DATA(t248) = t1.
    DATA(t249) = zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4.
    t247 = t248->find_direct_expression( i_type_9913 = t249 ).
    t246 = t247.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t250.
    DATA(t251) = VALUE abap_bool( ).
    DATA(t252) = t246.
    IF t252 IS INITIAL.
      t251 = abap_true.
    ENDIF.
    IF t251 = abap_true.
      DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t253.
      t250 = t253.
    ELSE.
      DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t255 TYPE REF TO zcl_lnt_expression_node.
      DATA(t256) = t246.
      t255 = t256.
      DATA(t257) = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
      t254 = t255->find_all_expressions( i_type_9913 = t257 ).
      t250 = t254.
    ENDIF.
    t245 = t250.
    t244 = t245.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t258.
    DATA t259 TYPE abap_bool.
    DATA(t260) = t244.
    t259 = xsdbool( t260 IS BOUND ).
    IF t259 = abap_true.
      DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t262) = t244.
      t261 = t262.
      t258 = t261.
    ELSE.
      DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t263.
      t258 = t263.
    ENDIF.
    t243 = t258.
    DATA t264 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t264.
    DATA t265 TYPE REF TO object.
    CLEAR t265.
    LOOP AT t243->items INTO t265.
      t264 ?= t265.
      DATA t266 TYPE REF TO zcl_lnt_abstract_token.
      DATA t267 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t268) = t264.
      t267 = t268->get_first_token( ).
      t266 = t267.
      DATA t269 TYPE string.
      DATA t270 TYPE string.
      DATA t271 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t272) = t266.
      t271 = t272.
      DATA t273 TYPE string.
      DATA(t274) = t271.
      t273 = t274->str.
      t270 = t273.
      t269 = t270.
      DATA(t275) = me->raising.
      DATA(t276) = t269.
      APPEND t276 TO t275->items.
      DATA t277 TYPE REF TO zif_lnt_class_definition.
      CLEAR t277.
      DATA t278 TYPE REF TO zif_lnt_class_definition.
      CLEAR t278.
      DATA t279 TYPE REF TO zcl_lnt_current_scope.
      DATA t280 TYPE REF TO zcl_lnt_current_scope.
      DATA(t281) = t3.
      t280 = t281->scope.
      t279 = t280.
      DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t282.
      DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t283.
      DATA(t284) = abap_true.
      IF t284 = abap_true.
        DATA(t285) = t269.
        DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t286->has = abap_true.
        t286->value = t285.
        t283 = t286.
      ELSE.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        t283 = t287.
      ENDIF.
      t282 = t283.
      DATA t288 TYPE REF TO zif_lnt_class_definition.
      CLEAR t288.
      DATA(t289) = VALUE abap_bool( ).
      DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t291) = t282.
      t290 = t291.
      DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t293.
      t292 = t293.
      DATA(t294) = VALUE abap_bool( ).
      DATA(t295) = t290.
      IF t295 IS INITIAL.
        t294 = abap_true.
      ELSEIF t295->has = abap_false.
        t294 = abap_true.
      ENDIF.
      t289 = t294.
      IF t289 = abap_true.
        DATA t296 TYPE REF TO zif_lnt_class_definition.
        CLEAR t296.
        t288 = t296.
      ELSE.
        DATA t297 TYPE REF TO zif_lnt_class_definition.
        CLEAR t297.
        DATA t298 TYPE REF TO zif_lnt_class_definition.
        CLEAR t298.
        DATA t299 TYPE REF TO zif_lnt_class_definition.
        CLEAR t299.
        DATA t300 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t301 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t302) = t279.
        t301 = t302->current.
        t300 = t301.
        DATA t303 TYPE REF TO zif_lnt_class_definition.
        CLEAR t303.
        DATA(t304) = VALUE abap_bool( ).
        DATA(t305) = t300.
        IF t305 IS INITIAL.
          t304 = abap_true.
        ENDIF.
        IF t304 = abap_true.
          DATA t306 TYPE REF TO zif_lnt_class_definition.
          CLEAR t306.
          t303 = t306.
        ELSE.
          DATA t307 TYPE REF TO zif_lnt_class_definition.
          DATA t308 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t309) = t300.
          t308 = t309.
          DATA t310 TYPE string.
          DATA(t311) = t282.
          t310 = t311->value.
          t307 = t308->find_class_definition( i_name = t310 ).
          t303 = t307.
        ENDIF.
        t299 = t303.
        t298 = t299.
        DATA t312 TYPE REF TO zif_lnt_class_definition.
        CLEAR t312.
        DATA t313 TYPE abap_bool.
        DATA(t314) = t298.
        t313 = xsdbool( t314 IS BOUND ).
        IF t313 = abap_true.
          DATA t315 TYPE REF TO zif_lnt_class_definition.
          CLEAR t315.
          DATA(t316) = abap_true.
          IF t316 = abap_true.
            DATA t317 TYPE REF TO zif_lnt_class_definition.
            DATA(t318) = t298.
            t317 = t318.
            t315 = t317.
          ELSE.
            DATA t319 TYPE REF TO zif_lnt_class_definition.
            CLEAR t319.
            t315 = t319.
          ENDIF.
          t312 = t315.
        ELSE.
          DATA t320 TYPE REF TO zif_lnt_class_definition.
          CLEAR t320.
          DATA t321 TYPE REF TO zcl_lnt_class.
          CLEAR t321.
          DATA t322 TYPE REF TO zcl_lnt_class.
          CLEAR t322.
          DATA t323 TYPE REF TO zif_lnt_object.
          CLEAR t323.
          DATA t324 TYPE REF TO zif_lnt_registry.
          DATA(t325) = t279.
          t324 = t325->reg.
          DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t326.
          DATA(t327) = abap_true.
          IF t327 = abap_true.
            DATA(t328) = |CLAS|.
            DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t329->has = abap_true.
            t329->value = t328.
            t326 = t329.
          ELSE.
            DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t330.
            t326 = t330.
          ENDIF.
          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t331.
          DATA(t332) = abap_true.
          IF t332 = abap_true.
            DATA t333 TYPE string.
            DATA(t334) = t282.
            t333 = t334->value.
            DATA(t335) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t335->has = abap_true.
            t335->value = t333.
            t331 = t335.
          ELSE.
            DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t336.
            t331 = t336.
          ENDIF.
          t323 = t324->get_object( i_type_9913 = t326 i_name = t331 ).
          DATA t337 TYPE REF TO object.
          t337 = t323.
          t322 ?= t337.
          t321 = t322.
          DATA t338 TYPE REF TO zif_lnt_class_definition.
          CLEAR t338.
          DATA t339 TYPE abap_bool.
          DATA(t340) = t321.
          t339 = xsdbool( t340 IS BOUND ).
          IF t339 = abap_true.
            DATA t341 TYPE REF TO zif_lnt_class_definition.
            DATA t342 TYPE REF TO zcl_lnt_class.
            DATA(t343) = t321.
            t342 = t343.
            t341 = t342->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t338 = t341.
          ELSE.
            DATA t344 TYPE REF TO zif_lnt_class_definition.
            CLEAR t344.
            t338 = t344.
          ENDIF.
          t320 = t338.
          t312 = t320.
        ENDIF.
        t297 = t312.
        t288 = t297.
      ENDIF.
      t278 = t288.
      t277 = t278.
      DATA t345 TYPE abap_bool.
      DATA(t346) = t277.
      t345 = xsdbool( t346 IS BOUND ).
      IF t345 = abap_true.
        DATA t347 TYPE REF TO zcl_lnt_current_scope.
        DATA(t348) = t3.
        t347 = t348->scope.
        DATA t349 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t349.
        DATA(t350) = abap_true.
        IF t350 = abap_true.
          DATA(t351) = t266.
          t349 = t351.
        ELSE.
          DATA t352 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t352.
          t349 = t352.
        ENDIF.
        DATA t353 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t353.
        DATA(t354) = abap_true.
        IF t354 = abap_true.
          DATA t355 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t356 TYPE REF TO zif_lnt_class_definition.
          DATA(t357) = t277.
          t356 = t357.
          t355 ?= t356.
          t353 = t355.
        ELSE.
          DATA t358 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t358.
          t353 = t358.
        ENDIF.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t360) = |Object|.
        CREATE OBJECT t359.
        t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t359->sval = t360.
        DATA t361 TYPE string.
        DATA(t362) = t3.
        t361 = t362->filename.
        DATA t363 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t363.
        DATA(t364) = abap_true.
        IF t364 = abap_true.
          DATA t365 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t365.
          DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t366.
          DATA(t367) = abap_true.
          IF t367 = abap_true.
            DATA t368 TYPE string.
            DATA(t369) = t269.
            DATA(t370) = strlen( t369 ).
            t368 = t369.
            IF t368 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t368 TO UPPER CASE.
            ELSE.
              t368 = zlnt_runtime_uppe_91169605024d=>full( t368 ).
            ENDIF.
            DATA(t371) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t371->has = abap_true.
            t371->value = t368.
            t366 = t371.
          ELSE.
            DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t372.
            t366 = t372.
          ENDIF.
          DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t373.
          DATA(t374) = abap_true.
          IF t374 = abap_true.
            DATA(t375) = |CLAS|.
            DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t376->has = abap_true.
            t376->value = t375.
            t373 = t376.
          ELSE.
            DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t377.
            t373 = t377.
          ENDIF.
          DATA t378 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t378.
          t365 = NEW zcl_lnt_ireference_extras( i_oo_name = t366 i_oo_type = t373 i_found_qualified = t378 ).
          t363 = t365.
        ELSE.
          DATA t379 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t379.
          t363 = t379.
        ENDIF.
        t347->add_reference( i_usage = t349 i_referencing = t353 i_type_9913 = t359 i_filename = t361 i_extra = t363 ).
      ELSE.
        DATA(t380) = VALUE abap_bool( ).
        DATA(t381) = VALUE abap_bool( ).
        DATA t382 TYPE REF TO zcl_lnt_ddic.
        DATA t383 TYPE REF TO zcl_lnt_ddic.
        DATA t384 TYPE REF TO zcl_lnt_current_scope.
        DATA t385 TYPE REF TO zcl_lnt_current_scope.
        DATA(t386) = t3.
        t385 = t386->scope.
        t384 = t385.
        DATA t387 TYPE REF TO zcl_lnt_ddic.
        DATA t388 TYPE REF TO zif_lnt_registry.
        DATA(t389) = t384.
        t388 = t389->reg.
        t387 = NEW zcl_lnt_ddic( i_reg_f149 = t388 ).
        t383 = t387.
        t382 = t383.
        DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t390.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t391.
        DATA(t392) = abap_true.
        IF t392 = abap_true.
          DATA(t393) = t269.
          DATA(t394) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t394->has = abap_true.
          t394->value = t393.
          t391 = t394.
        ELSE.
          DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t395.
          t391 = t395.
        ENDIF.
        t390 = t391.
        DATA(t396) = VALUE abap_bool( ).
        DATA(t397) = VALUE abap_bool( ).
        DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t399) = t390.
        t398 = t399.
        DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t401.
        t400 = t401.
        DATA(t402) = VALUE abap_bool( ).
        DATA(t403) = t398.
        IF t403 IS INITIAL.
          t402 = abap_true.
        ELSEIF t403->has = abap_false.
          t402 = abap_true.
        ENDIF.
        t397 = t402.
        IF t397 = abap_true.
          DATA(t404) = abap_true.
          t396 = t404.
        ELSE.
          DATA t405 TYPE abap_bool.
          DATA t406 TYPE REF TO zif_lnt_registry.
          DATA(t407) = t382.
          t406 = t407->reg.
          DATA t408 TYPE string.
          DATA(t409) = t390.
          t408 = t409->value.
          t405 = t406->in_error_namespace( i_name = t408 ).
          t396 = t405.
        ENDIF.
        t381 = t396.
        DATA(t410) = abap_false.
        t380 = xsdbool( t381 = t410 ).
        IF t380 = abap_true.
          DATA t411 TYPE REF TO zif_lnt_class_definition.
          DATA(t412) = t277.
          t411 = t412.
          DATA t413 TYPE REF TO zcl_lnt_current_scope.
          DATA(t414) = t3.
          t413 = t414->scope.
          DATA t415 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t415.
          DATA(t416) = abap_true.
          IF t416 = abap_true.
            DATA(t417) = t266.
            t415 = t417.
          ELSE.
            DATA t418 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t418.
            t415 = t418.
          ENDIF.
          DATA t419 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t419.
          DATA(t420) = VALUE abap_bool( ).
          DATA(t421) = t411.
          IF t421 IS INITIAL.
            t420 = abap_true.
          ENDIF.
          IF t420 = abap_true.
            DATA t422 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t422.
            t419 = t422.
          ELSE.
            DATA t423 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t424 TYPE REF TO zif_lnt_class_definition.
            DATA(t425) = t411.
            t424 = t425.
            t423 ?= t424.
            t419 = t423.
          ENDIF.
          DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t427) = |Object (Void)|.
          CREATE OBJECT t426.
          t426->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t426->sval = t427.
          DATA t428 TYPE string.
          DATA(t429) = t3.
          t428 = t429->filename.
          DATA t430 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t430.
          DATA(t431) = abap_true.
          IF t431 = abap_true.
            DATA t432 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t432.
            DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t433.
            DATA(t434) = abap_true.
            IF t434 = abap_true.
              DATA t435 TYPE string.
              DATA(t436) = t269.
              DATA(t437) = strlen( t436 ).
              t435 = t436.
              IF t435 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t435 TO UPPER CASE.
              ELSE.
                t435 = zlnt_runtime_uppe_91169605024d=>full( t435 ).
              ENDIF.
              DATA(t438) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t438->has = abap_true.
              t438->value = t435.
              t433 = t438.
            ELSE.
              DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t439.
              t433 = t439.
            ENDIF.
            DATA t440 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t440.
            DATA(t441) = abap_true.
            IF t441 = abap_true.
              DATA(t442) = |CLAS|.
              DATA(t443) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t443->has = abap_true.
              t443->value = t442.
              t440 = t443.
            ELSE.
              DATA t444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t444.
              t440 = t444.
            ENDIF.
            DATA t445 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t445.
            t432 = NEW zcl_lnt_ireference_extras( i_oo_name = t433 i_oo_type = t440 i_found_qualified = t445 ).
            t430 = t432.
          ELSE.
            DATA t446 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t446.
            t430 = t446.
          ENDIF.
          t413->add_reference( i_usage = t415 i_referencing = t419 i_type_9913 = t426 i_filename = t428 i_extra = t430 ).
        ELSE.
          DATA t447 TYPE REF TO zif_lnt_class_definition.
          DATA(t448) = t277.
          t447 = t448.
          DATA t449 TYPE REF TO zcl_lnt_current_scope.
          DATA(t450) = t3.
          t449 = t450->scope.
          DATA t451 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t451.
          DATA(t452) = abap_true.
          IF t452 = abap_true.
            DATA(t453) = t266.
            t451 = t453.
          ELSE.
            DATA t454 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t454.
            t451 = t454.
          ENDIF.
          DATA t455 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t455.
          DATA(t456) = VALUE abap_bool( ).
          DATA(t457) = t447.
          IF t457 IS INITIAL.
            t456 = abap_true.
          ENDIF.
          IF t456 = abap_true.
            DATA t458 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t458.
            t455 = t458.
          ELSE.
            DATA t459 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t460 TYPE REF TO zif_lnt_class_definition.
            DATA(t461) = t447.
            t460 = t461.
            t459 ?= t460.
            t455 = t459.
          ENDIF.
          DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t463) = |Object (Unknown)|.
          CREATE OBJECT t462.
          t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t462->sval = t463.
          DATA t464 TYPE string.
          DATA(t465) = t3.
          t464 = t465->filename.
          DATA t466 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t466.
          DATA(t467) = abap_true.
          IF t467 = abap_true.
            DATA t468 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t468.
            DATA t469 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t469.
            DATA(t470) = abap_true.
            IF t470 = abap_true.
              DATA t471 TYPE string.
              DATA(t472) = t269.
              DATA(t473) = strlen( t472 ).
              t471 = t472.
              IF t471 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t471 TO UPPER CASE.
              ELSE.
                t471 = zlnt_runtime_uppe_91169605024d=>full( t471 ).
              ENDIF.
              DATA(t474) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t474->has = abap_true.
              t474->value = t471.
              t469 = t474.
            ELSE.
              DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t475.
              t469 = t475.
            ENDIF.
            DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t476.
            DATA(t477) = abap_true.
            IF t477 = abap_true.
              DATA(t478) = |CLAS|.
              DATA(t479) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t479->has = abap_true.
              t479->value = t478.
              t476 = t479.
            ELSE.
              DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t480.
              t476 = t480.
            ENDIF.
            DATA t481 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t481.
            t468 = NEW zcl_lnt_ireference_extras( i_oo_name = t469 i_oo_type = t476 i_found_qualified = t481 ).
            t466 = t468.
          ELSE.
            DATA t482 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t482.
            t466 = t482.
          ENDIF.
          t449->add_reference( i_usage = t451 i_referencing = t455 i_type_9913 = t462 i_filename = t464 i_extra = t466 ).
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t483.
    me->exceptions = t483.
    DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t484.
    DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t485.
    DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t486.
    DATA t487 TYPE REF TO zcl_lnt_expression_node.
    DATA t488 TYPE REF TO zcl_lnt_expression_node.
    DATA(t489) = t1.
    DATA(t490) = zlnt_runtime_desc_78196487750d=>zlnt_member_d223_6da5f452a761.
    t488 = t489->find_direct_expression( i_type_9913 = t490 ).
    t487 = t488.
    DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t491.
    DATA(t492) = VALUE abap_bool( ).
    DATA(t493) = t487.
    IF t493 IS INITIAL.
      t492 = abap_true.
    ENDIF.
    IF t492 = abap_true.
      DATA t494 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t494.
      t491 = t494.
    ELSE.
      DATA t495 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t496 TYPE REF TO zcl_lnt_expression_node.
      DATA(t497) = t487.
      t496 = t497.
      DATA(t498) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
      t495 = t496->find_all_expressions( i_type_9913 = t498 ).
      t491 = t495.
    ENDIF.
    t486 = t491.
    t485 = t486.
    DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t499.
    DATA t500 TYPE abap_bool.
    DATA(t501) = t485.
    t500 = xsdbool( t501 IS BOUND ).
    IF t500 = abap_true.
      DATA t502 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t503) = t485.
      t502 = t503.
      t499 = t502.
    ELSE.
      DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t504.
      t499 = t504.
    ENDIF.
    t484 = t499.
    DATA t505 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t505.
    DATA t506 TYPE REF TO object.
    CLEAR t506.
    LOOP AT t484->items INTO t506.
      t505 ?= t506.
      DATA t507 TYPE REF TO zcl_lnt_abstract_token.
      DATA t508 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t509) = t505.
      t508 = t509->get_first_token( ).
      t507 = t508.
      DATA t510 TYPE string.
      DATA t511 TYPE string.
      DATA t512 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t513) = t507.
      t512 = t513.
      DATA t514 TYPE string.
      DATA(t515) = t512.
      t514 = t515->str.
      t511 = t514.
      t510 = t511.
      DATA(t516) = me->exceptions.
      DATA(t517) = t510.
      APPEND t517 TO t516->items.
    ENDLOOP.
    DATA(t518) = t2.
    me->visibility = t518.
    DATA t519 TYPE REF TO zcl_lnt_ty_method_parameters.
    DATA(t520) = t1.
    DATA(t521) = t3.
    DATA(t522) = CONV abap_bool( me->abstract ).
    t519 = NEW zcl_lnt_ty_method_parameters( i_node = t520 i_input_967e = t521 i_abstract_method = t522 ).
    me->parameters = t519.
  ENDMETHOD.

  METHOD get_visibility.
    DATA(t1) = CONV int8( me->visibility ).
    result = t1.

  ENDMETHOD.

  METHOD get_class_name.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_definition.ts:101|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_redefinition.
    DATA(t1) = CONV abap_bool( me->redefinition ).
    result = t1.

  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_definition.ts:109|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_static_4685.
    DATA(t1) = CONV abap_bool( me->static_9977 ).
    result = t1.

  ENDMETHOD.

  METHOD is_event_handler.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_definition.ts:117|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_event_name.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_definition.ts:121|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_event_class.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_definition.ts:125|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD g_p_in_sr_ab_ty_mt_df_ts_mt_df.
    DATA(t1) = me->parameters.
    result = t1.

  ENDMETHOD.

  METHOD get_raising.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_definition.ts:133|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_exceptions.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/types/method_definition.ts:137|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_ty_method_parameters( me->g_p_in_sr_ab_ty_mt_df_ts_mt_df( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1040_e224823bc9c2.
  ENDMETHOD.

  METHOD zif_lnt_method_definition~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_visibility.
    result = me->get_visibility( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~is_redefinition.
    result = me->is_redefinition( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~is_abstract.
    result = me->is_abstract( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~is_static_4685.
    result = me->is_static_4685( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~is_event_handler.
    result = me->is_event_handler( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_event_name.
    result = me->get_event_name( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_event_class.
    result = me->get_event_class( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_parameters.
    result = me->get_parameters( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_raising.
    result = me->get_raising( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_exceptions.
    result = me->get_exceptions( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_method_definition~get_token.
    result = me->get_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8cd68e5e~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_b6d4892d~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
