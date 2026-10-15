* TS: src/abap/types/method_definition.ts:11:1 MethodDefinition
CLASS zcl_lnt_method_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_method_definition.
    INTERFACES zif_lnt_union_8cd68e5e.
    INTERFACES zif_lnt_union_b6d4892d.
    DATA visibility TYPE f.
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
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_statement_node i_visibility_5c1f TYPE f i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_visibility RETURNING VALUE(result) TYPE f.
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
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = i_input_967e.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_statement.
    CLEAR t6.
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
      CLEAR t8->source_value.
      IF t9 IS BOUND.
        DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t15.
        DATA t16 TYPE REF TO object.
        CLEAR t16.
        CLEAR t15.
        t16 = t9.
        TRY.
            t8->source_value ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8->source_value IS NOT BOUND.
          TRY.
              t15 ?= t9.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t15 IS BOUND.
            t8->source_value = t15->source( ).
          ENDIF.
          IF t8->source_value IS NOT BOUND.
            CREATE OBJECT t8->source_value.
            t8->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t8->source_value->oval = t9.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA(t19) = t1.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t18 = t19->find_direct_expression( i_type_9913 = t20 ).
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t22.
    DATA(t23) = t17.
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
      DATA t28 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = |MethodDefinition, expected MethodDef as part of input node|.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
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
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t38.
    DATA(t39) = t17.
    t38 = t39.
    t37 = t38->get_first_token( ).
    DATA(t40) = VALUE string( ).
    DATA(t41) = t3.
    t40 = t41->filename.
    super->constructor( i_token = t37 i_filename = t40 ).
    DATA(t42) = VALUE string( ).
    DATA t43 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t43.
    DATA(t44) = t3.
    t43 = t44->scope.
    t42 = t43->get_name( ).
    me->class_name = t42.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `className`.
    DATA(t45) = abap_false.
    me->redefinition = t45.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `redefinition`.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t47.
    DATA(t48) = t1.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167.
    t47 = t48->find_direct_expression( i_type_9913 = t49 ).
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA(t50) = abap_true.
      me->redefinition = t50.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `redefinition`.
      DATA(t51) = VALUE string( ).
      DATA(t52) = VALUE string( ).
      DATA t53 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t53.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t55.
      DATA(t56) = t17.
      t55 = t56.
      t54 = t55->get_first_token( ).
      t53 = t54.
      DATA(t57) = VALUE string( ).
      DATA(t58) = t53.
      t57 = t58->str.
      t52 = t57.
      t51 = t52.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE i( ).
      DATA(t61) = t51.
      DATA(t62) = |~|.
      DATA(t63) = strlen( t61 ).
      IF t62 IS INITIAL.
        t60 = 0.
      ELSE.
        FIND t62 IN t61 MATCH OFFSET t60.
        IF sy-subrc <> 0.
          t60 = -1.
        ENDIF.
      ENDIF.
      DATA(t64) = 0.
      t59 = xsdbool( t60 >= t64 ).
      IF t59 = abap_true.
        DATA t65 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t65.
        DATA t66 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t66.
        DATA t67 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t68.
        DATA(t69) = t3.
        t68 = t69->scope.
        t67 = t68.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t72.
        DATA(t73) = t51.
        DATA(t74) = |~|.
        DATA(t75) = strlen( t73 ).
        DATA(t76) = VALUE i( ).
        DATA(t77) = VALUE i( ).
        DATA(t78) = VALUE i( ).
        DATA(t79) = VALUE i( ).
        DATA(t80) = VALUE string( ).
        CREATE OBJECT t72.
        t79 = strlen( t74 ).
        t76 = 0.
        IF t79 = 0.
          WHILE t76 < t75.
            t80 = t73+t76(1).
            APPEND t80 TO t72->items.
            t76 = t76 + 1.
          ENDWHILE.
        ELSE.
          WHILE t76 <= t75.
            FIND FIRST OCCURRENCE OF t74 IN SECTION OFFSET t76 OF t73 MATCH OFFSET t77.
            IF sy-subrc = 0.
              t78 = t77 - t76.
            ELSE.
              t77 = -1.
              t78 = t75 - t76.
            ENDIF.
            CLEAR t80.
            IF t78 > 0.
              t80 = t73+t76(t78).
            ENDIF.
            APPEND t80 TO t72->items.
            IF t77 < 0.
              EXIT.
            ENDIF.
            t76 = t77 + t79.
          ENDWHILE.
        ENDIF.
        DATA(t81) = 0.
        t71 = t72->get( p0 = t81 ).
        t70 = t71.
        DATA t82 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t82.
        DATA(t83) = VALUE abap_bool( ).
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA(t85) = t70.
        t84 = t85.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        t86 = t87.
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = t84.
        IF t89 IS INITIAL.
          t88 = abap_true.
        ELSEIF t89->has = abap_false.
          t88 = abap_true.
        ENDIF.
        t83 = t88.
        IF t83 = abap_true.
          DATA t90 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t90.
          t82 = t90.
        ELSE.
          DATA t91 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t91.
          DATA t92 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t92.
          DATA t93 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t93.
          DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t94.
          DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t95.
          DATA(t96) = t67.
          t95 = t96->current.
          t94 = t95.
          DATA t97 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t97.
          DATA(t98) = VALUE abap_bool( ).
          DATA(t99) = t94.
          IF t99 IS INITIAL.
            t98 = abap_true.
          ENDIF.
          IF t98 = abap_true.
            DATA t100 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t100.
            t97 = t100.
          ELSE.
            DATA t101 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t101.
            DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t102.
            DATA(t103) = t94.
            t102 = t103.
            DATA(t104) = VALUE string( ).
            DATA(t105) = t70.
            t104 = t105->value.
            t101 = t102->find_interface_definition( i_name = t104 ).
            t97 = t101.
          ENDIF.
          t93 = t97.
          t92 = t93.
          DATA t106 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t106.
          DATA(t107) = VALUE abap_bool( ).
          DATA(t108) = t92.
          t107 = xsdbool( t108 IS BOUND ).
          IF t107 = abap_true.
            DATA t109 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t109.
            DATA(t110) = abap_true.
            IF t110 = abap_true.
              DATA t111 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t111.
              DATA(t112) = t92.
              t111 = t112.
              t109 = t111.
            ELSE.
              DATA t113 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t113.
              t109 = t113.
            ENDIF.
            t106 = t109.
          ELSE.
            DATA t114 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t114.
            DATA t115 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t115.
            DATA t116 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t116.
            DATA t117 TYPE REF TO zif_lnt_object.
            CLEAR t117.
            DATA t118 TYPE REF TO zif_lnt_registry.
            CLEAR t118.
            DATA(t119) = t67.
            t118 = t119->reg.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            DATA(t121) = abap_true.
            IF t121 = abap_true.
              DATA(t122) = |INTF|.
              DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t123->has = abap_true.
              t123->value = t122.
              t120 = t123.
            ELSE.
              DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t124.
              t120 = t124.
            ENDIF.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            DATA(t126) = abap_true.
            IF t126 = abap_true.
              DATA(t127) = VALUE string( ).
              DATA(t128) = t70.
              t127 = t128->value.
              DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t129->has = abap_true.
              t129->value = t127.
              t125 = t129.
            ELSE.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t130.
              t125 = t130.
            ENDIF.
            t117 = t118->get_object( i_type_9913 = t120 i_name = t125 ).
            DATA t131 TYPE REF TO object.
            CLEAR t131.
            t131 = t117.
            t116 ?= t131.
            t115 = t116.
            DATA t132 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t132.
            DATA(t133) = VALUE abap_bool( ).
            DATA(t134) = t115.
            t133 = xsdbool( t134 IS BOUND ).
            IF t133 = abap_true.
              DATA t135 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t135.
              DATA t136 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t136.
              DATA t137 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t137.
              DATA(t138) = t115.
              t137 = t138.
              t136 = t137.
              DATA t139 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t139.
              DATA(t140) = t136.
              t139 = t140->def.
              t135 = t139.
              t132 = t135.
            ELSE.
              DATA t141 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t141.
              t132 = t141.
            ENDIF.
            t114 = t132.
            t106 = t114.
          ENDIF.
          t91 = t106.
          t82 = t91.
        ENDIF.
        t66 = t82.
        t65 = t66.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = t65.
        t142 = xsdbool( t143 IS BOUND ).
        IF t142 = abap_true.
          DATA t144 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t144.
          DATA(t145) = t3.
          t144 = t145->scope.
          DATA t146 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t146.
          DATA(t147) = abap_true.
          IF t147 = abap_true.
            DATA t148 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t148.
            DATA t149 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t149.
            DATA(t150) = t17.
            t149 = t150.
            t148 = t149->get_first_token( ).
            t146 = t148.
          ELSE.
            DATA t151 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t151.
            t146 = t151.
          ENDIF.
          DATA t152 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t152.
          DATA(t153) = abap_true.
          IF t153 = abap_true.
            DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t154.
            DATA t155 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t155.
            DATA(t156) = t65.
            t155 = t156.
            t154 ?= t155.
            t152 = t154.
          ELSE.
            DATA t157 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t157.
            t152 = t157.
          ENDIF.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          DATA(t159) = |Object|.
          CLEAR t158.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t158->sval = t159.
          DATA(t160) = VALUE string( ).
          DATA(t161) = t3.
          t160 = t161->filename.
          DATA t162 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t162.
          t144->add_reference( i_usage = t146 i_referencing = t152 i_type_9913 = t158 i_filename = t160 i_extra = t162 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t163) = abap_false.
    me->event_handler = t163.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `eventHandler`.
    DATA t164 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t164.
    DATA t165 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t165.
    DATA(t166) = t1.
    DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133.
    t165 = t166->find_direct_expression( i_type_9913 = t167 ).
    t164 = t165.
    DATA(t168) = VALUE abap_bool( ).
    DATA(t169) = t164.
    t168 = xsdbool( t169 IS BOUND ).
    IF t168 = abap_true.
      DATA(t170) = abap_true.
      me->event_handler = t170.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `eventHandler`.
      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t171.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t172.
      DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t173.
      DATA t174 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t174.
      DATA t175 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t175.
      DATA t176 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t176.
      DATA(t177) = t164.
      t176 = t177.
      DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t175 = t176->find_direct_expression( i_type_9913 = t178 ).
      t174 = t175.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = t174.
      IF t181 IS INITIAL.
        t180 = abap_true.
      ENDIF.
      IF t180 = abap_true.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        t179 = t182.
      ELSE.
        DATA(t183) = VALUE string( ).
        DATA t184 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t184.
        DATA(t185) = t174.
        t184 = t185.
        t183 = t184->concat_tokens( ).
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t183.
        t179 = t186.
      ENDIF.
      t173 = t179.
      t172 = t173.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = t172.
      IF t189 IS INITIAL.
        t188 = abap_true.
      ELSEIF t189->has = abap_false.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t187 = t190.
      ELSE.
        DATA(t191) = VALUE string( ).
        DATA(t192) = VALUE string( ).
        DATA(t193) = t172.
        t192 = t193->value.
        DATA(t194) = strlen( t192 ).
        t191 = t192.
        IF t191 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t191 TO UPPER CASE.
        ELSE.
          t191 = zlnt_runtime_uppe_91169605024d=>full( t191 ).
        ENDIF.
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t191.
        t187 = t195.
      ENDIF.
      t171 = t187.
      me->event_name = t171.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `eventName`.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t196.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t197.
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t198.
      DATA t199 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t199.
      DATA t200 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t200.
      DATA t201 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t201.
      DATA(t202) = t164.
      t201 = t202.
      DATA(t203) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t200 = t201->find_direct_expression( i_type_9913 = t203 ).
      t199 = t200.
      DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t204.
      DATA(t205) = VALUE abap_bool( ).
      DATA(t206) = t199.
      IF t206 IS INITIAL.
        t205 = abap_true.
      ENDIF.
      IF t205 = abap_true.
        DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t207.
        t204 = t207.
      ELSE.
        DATA(t208) = VALUE string( ).
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t209.
        DATA(t210) = t199.
        t209 = t210.
        t208 = t209->concat_tokens( ).
        DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t211->has = abap_true.
        t211->value = t208.
        t204 = t211.
      ENDIF.
      t198 = t204.
      t197 = t198.
      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t212.
      DATA(t213) = VALUE abap_bool( ).
      DATA(t214) = t197.
      IF t214 IS INITIAL.
        t213 = abap_true.
      ELSEIF t214->has = abap_false.
        t213 = abap_true.
      ENDIF.
      IF t213 = abap_true.
        DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t215.
        t212 = t215.
      ELSE.
        DATA(t216) = VALUE string( ).
        DATA(t217) = VALUE string( ).
        DATA(t218) = t197.
        t217 = t218->value.
        DATA(t219) = strlen( t217 ).
        t216 = t217.
        IF t216 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t216 TO UPPER CASE.
        ELSE.
          t216 = zlnt_runtime_uppe_91169605024d=>full( t216 ).
        ENDIF.
        DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t220->has = abap_true.
        t220->value = t216.
        t212 = t220.
      ENDIF.
      t196 = t212.
      me->event_class = t196.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `eventClass`.
    ENDIF.
    DATA(t221) = abap_false.
    me->abstract = t221.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstract`.
    DATA(t222) = VALUE abap_bool( ).
    DATA t223 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t223.
    DATA(t224) = t1.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d87_b6ca272efa9462.
    t223 = t224->find_direct_expression( i_type_9913 = t225 ).
    t222 = xsdbool( t223 IS BOUND ).
    IF t222 = abap_true.
      DATA(t226) = abap_true.
      me->abstract = t226.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstract`.
    ENDIF.
    DATA(t227) = abap_false.
    me->static_9977 = t227.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `static`.
    DATA(t228) = VALUE abap_bool( ).
    DATA(t229) = VALUE string( ).
    DATA(t230) = VALUE string( ).
    DATA t231 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t231.
    DATA t232 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t232.
    DATA(t233) = t1.
    t232 = t233->get_first_token( ).
    t231 = t232.
    DATA(t234) = VALUE string( ).
    DATA(t235) = t231.
    t234 = t235->str.
    t230 = t234.
    DATA(t236) = strlen( t230 ).
    t229 = t230.
    IF t229 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t229 TO UPPER CASE.
    ELSE.
      t229 = zlnt_runtime_uppe_91169605024d=>full( t229 ).
    ENDIF.
    DATA(t237) = |CLASS|.
    DATA(t238) = strlen( t229 ).
    DATA(t239) = VALUE i( ).
    DATA(t240) = VALUE i( ).
    DATA(t241) = VALUE string( ).
    t239 = strlen( t237 ).
    IF t239 = 0.
      t228 = abap_true.
    ELSEIF t239 <= t238.
      t240 = 0.
      t241 = t229+t240(t239).
      IF t241 = t237.
        t228 = abap_true.
      ENDIF.
    ENDIF.
    IF t228 = abap_true.
      DATA(t242) = abap_true.
      me->static_9977 = t242.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `static`.
    ENDIF.
    DATA t243 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t243.
    CREATE OBJECT t243.
    me->raising = t243.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `raising`.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t246.
    DATA t247 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t247.
    DATA t248 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t248.
    DATA(t249) = t1.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d233_66b4b8df8ddb.
    t248 = t249->find_direct_expression( i_type_9913 = t250 ).
    t247 = t248.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t251.
    DATA(t252) = VALUE abap_bool( ).
    DATA(t253) = t247.
    IF t253 IS INITIAL.
      t252 = abap_true.
    ENDIF.
    IF t252 = abap_true.
      DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t254.
      t251 = t254.
    ELSE.
      DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t255.
      DATA t256 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t256.
      DATA(t257) = t247.
      t256 = t257.
      DATA(t258) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t255 = t256->find_all_expressions( i_type_9913 = t258 ).
      t251 = t255.
    ENDIF.
    t246 = t251.
    t245 = t246.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t259.
    DATA(t260) = VALUE abap_bool( ).
    DATA(t261) = t245.
    t260 = xsdbool( t261 IS BOUND ).
    IF t260 = abap_true.
      DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t262.
      DATA(t263) = t245.
      t262 = t263.
      t259 = t262.
    ELSE.
      DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t264.
      CREATE OBJECT t264.
      t259 = t264.
    ENDIF.
    t244 = t259.
    DATA t265 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t265.
    DATA t266 TYPE REF TO object.
    CLEAR t266.
    DATA(t267) = VALUE i( ).
    DO.
      t244->load( ).
      IF t267 >= lines( t244->items ).
        EXIT.
      ENDIF.
      CLEAR t266.
      READ TABLE t244->items INDEX t267 + 1 INTO t266.
      t267 = t267 + 1.
      DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t268.
      CLEAR t265.
      IF t266 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t268 ?= t266.
        DATA t269 TYPE REF TO object.
        CLEAR t269.
        t269 = t268->as_ref( ).
        t265 ?= t269.
      ELSE.
        t265 ?= t266.
      ENDIF.
      DATA t270 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t270.
      DATA t271 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t271.
      DATA(t272) = t265.
      t271 = t272->get_first_token( ).
      t270 = t271.
      DATA(t273) = VALUE string( ).
      DATA(t274) = VALUE string( ).
      DATA t275 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t275.
      DATA(t276) = t270.
      t275 = t276.
      DATA(t277) = VALUE string( ).
      DATA(t278) = t275.
      t277 = t278->str.
      t274 = t277.
      t273 = t274.
      DATA(t279) = me->raising.
      DATA(t280) = t273.
      t279->load( ).
      APPEND t280 TO t279->items.
      t279->save( ).
      DATA t281 TYPE REF TO zif_lnt_class_definition.
      CLEAR t281.
      DATA t282 TYPE REF TO zif_lnt_class_definition.
      CLEAR t282.
      DATA t283 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t283.
      DATA t284 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t284.
      DATA(t285) = t3.
      t284 = t285->scope.
      t283 = t284.
      DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t286.
      DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t287.
      DATA(t288) = abap_true.
      IF t288 = abap_true.
        DATA(t289) = t273.
        DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t290->has = abap_true.
        t290->value = t289.
        t287 = t290.
      ELSE.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t291.
        t287 = t291.
      ENDIF.
      t286 = t287.
      DATA t292 TYPE REF TO zif_lnt_class_definition.
      CLEAR t292.
      DATA(t293) = VALUE abap_bool( ).
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      DATA(t295) = t286.
      t294 = t295.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t297.
      t296 = t297.
      DATA(t298) = VALUE abap_bool( ).
      DATA(t299) = t294.
      IF t299 IS INITIAL.
        t298 = abap_true.
      ELSEIF t299->has = abap_false.
        t298 = abap_true.
      ENDIF.
      t293 = t298.
      IF t293 = abap_true.
        DATA t300 TYPE REF TO zif_lnt_class_definition.
        CLEAR t300.
        t292 = t300.
      ELSE.
        DATA t301 TYPE REF TO zif_lnt_class_definition.
        CLEAR t301.
        DATA t302 TYPE REF TO zif_lnt_class_definition.
        CLEAR t302.
        DATA t303 TYPE REF TO zif_lnt_class_definition.
        CLEAR t303.
        DATA t304 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t304.
        DATA t305 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t305.
        DATA(t306) = t283.
        t305 = t306->current.
        t304 = t305.
        DATA t307 TYPE REF TO zif_lnt_class_definition.
        CLEAR t307.
        DATA(t308) = VALUE abap_bool( ).
        DATA(t309) = t304.
        IF t309 IS INITIAL.
          t308 = abap_true.
        ENDIF.
        IF t308 = abap_true.
          DATA t310 TYPE REF TO zif_lnt_class_definition.
          CLEAR t310.
          t307 = t310.
        ELSE.
          DATA t311 TYPE REF TO zif_lnt_class_definition.
          CLEAR t311.
          DATA t312 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t312.
          DATA(t313) = t304.
          t312 = t313.
          DATA(t314) = VALUE string( ).
          DATA(t315) = t286.
          t314 = t315->value.
          t311 = t312->find_class_definition( i_name = t314 ).
          t307 = t311.
        ENDIF.
        t303 = t307.
        t302 = t303.
        DATA t316 TYPE REF TO zif_lnt_class_definition.
        CLEAR t316.
        DATA(t317) = VALUE abap_bool( ).
        DATA(t318) = t302.
        t317 = xsdbool( t318 IS BOUND ).
        IF t317 = abap_true.
          DATA t319 TYPE REF TO zif_lnt_class_definition.
          CLEAR t319.
          DATA(t320) = abap_true.
          IF t320 = abap_true.
            DATA t321 TYPE REF TO zif_lnt_class_definition.
            CLEAR t321.
            DATA(t322) = t302.
            t321 = t322.
            t319 = t321.
          ELSE.
            DATA t323 TYPE REF TO zif_lnt_class_definition.
            CLEAR t323.
            t319 = t323.
          ENDIF.
          t316 = t319.
        ELSE.
          DATA t324 TYPE REF TO zif_lnt_class_definition.
          CLEAR t324.
          DATA t325 TYPE REF TO zcl_lnt_class.
          CLEAR t325.
          DATA t326 TYPE REF TO zcl_lnt_class.
          CLEAR t326.
          DATA t327 TYPE REF TO zif_lnt_object.
          CLEAR t327.
          DATA t328 TYPE REF TO zif_lnt_registry.
          CLEAR t328.
          DATA(t329) = t283.
          t328 = t329->reg.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t330.
          DATA(t331) = abap_true.
          IF t331 = abap_true.
            DATA(t332) = |CLAS|.
            DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t333->has = abap_true.
            t333->value = t332.
            t330 = t333.
          ELSE.
            DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t334.
            t330 = t334.
          ENDIF.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t335.
          DATA(t336) = abap_true.
          IF t336 = abap_true.
            DATA(t337) = VALUE string( ).
            DATA(t338) = t286.
            t337 = t338->value.
            DATA(t339) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t339->has = abap_true.
            t339->value = t337.
            t335 = t339.
          ELSE.
            DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t340.
            t335 = t340.
          ENDIF.
          t327 = t328->get_object( i_type_9913 = t330 i_name = t335 ).
          DATA t341 TYPE REF TO object.
          CLEAR t341.
          t341 = t327.
          t326 ?= t341.
          t325 = t326.
          DATA t342 TYPE REF TO zif_lnt_class_definition.
          CLEAR t342.
          DATA(t343) = VALUE abap_bool( ).
          DATA(t344) = t325.
          t343 = xsdbool( t344 IS BOUND ).
          IF t343 = abap_true.
            DATA t345 TYPE REF TO zif_lnt_class_definition.
            CLEAR t345.
            DATA t346 TYPE REF TO zcl_lnt_class.
            CLEAR t346.
            DATA(t347) = t325.
            t346 = t347.
            t345 = t346->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t342 = t345.
          ELSE.
            DATA t348 TYPE REF TO zif_lnt_class_definition.
            CLEAR t348.
            t342 = t348.
          ENDIF.
          t324 = t342.
          t316 = t324.
        ENDIF.
        t301 = t316.
        t292 = t301.
      ENDIF.
      t282 = t292.
      t281 = t282.
      DATA(t349) = VALUE abap_bool( ).
      DATA(t350) = t281.
      t349 = xsdbool( t350 IS BOUND ).
      IF t349 = abap_true.
        DATA t351 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t351.
        DATA(t352) = t3.
        t351 = t352->scope.
        DATA t353 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t353.
        DATA(t354) = abap_true.
        IF t354 = abap_true.
          DATA(t355) = t270.
          t353 = t355.
        ELSE.
          DATA t356 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t356.
          t353 = t356.
        ENDIF.
        DATA t357 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t357.
        DATA(t358) = abap_true.
        IF t358 = abap_true.
          DATA t359 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t359.
          DATA t360 TYPE REF TO zif_lnt_class_definition.
          CLEAR t360.
          DATA(t361) = t281.
          t360 = t361.
          t359 ?= t360.
          t357 = t359.
        ELSE.
          DATA t362 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t362.
          t357 = t362.
        ENDIF.
        DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t363.
        DATA(t364) = |Object|.
        CLEAR t363.
        CREATE OBJECT t363.
        t363->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t363->sval = t364.
        DATA(t365) = VALUE string( ).
        DATA(t366) = t3.
        t365 = t366->filename.
        DATA t367 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t367.
        DATA(t368) = abap_true.
        IF t368 = abap_true.
          DATA t369 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t369.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t371.
          DATA(t372) = abap_true.
          IF t372 = abap_true.
            DATA(t373) = VALUE string( ).
            DATA(t374) = t273.
            DATA(t375) = strlen( t374 ).
            t373 = t374.
            IF t373 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t373 TO UPPER CASE.
            ELSE.
              t373 = zlnt_runtime_uppe_91169605024d=>full( t373 ).
            ENDIF.
            DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t376->has = abap_true.
            t376->value = t373.
            t371 = t376.
          ELSE.
            DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t377.
            t371 = t377.
          ENDIF.
          t370 = t371.
          DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t378.
          DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t379.
          DATA(t380) = abap_true.
          IF t380 = abap_true.
            DATA(t381) = |CLAS|.
            DATA(t382) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t382->has = abap_true.
            t382->value = t381.
            t379 = t382.
          ELSE.
            DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t383.
            t379 = t383.
          ENDIF.
          t378 = t379.
          DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t384.
          DATA t385 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t385.
          t384 = t385.
          t369 = NEW zcl_lnt_ireference_extras( i_oo_name = t370 i_oo_type = t378 i_found_qualified = t384 ).
          CREATE OBJECT t369->zlnt_view_ownkeys_b0e8086400eb.
          t369->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t386.
          IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t386 ).
          ENDIF.
          DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t387.
          IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t387 ).
          ENDIF.
          CREATE OBJECT t369->zlnt_json_ownkeys_70e5fd461788.
          t369->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t388) = |ooName|.
          DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t389.
          IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t388 p1 = t389 ).
          ENDIF.
          DATA(t390) = |ooType|.
          DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t391.
          IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t390 p1 = t391 ).
          ENDIF.
          t367 = t369.
        ELSE.
          DATA t392 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t392.
          t367 = t392.
        ENDIF.
        t351->add_reference( i_usage = t353 i_referencing = t357 i_type_9913 = t363 i_filename = t365 i_extra = t367 ).
      ELSE.
        DATA(t393) = VALUE abap_bool( ).
        DATA(t394) = VALUE abap_bool( ).
        DATA t395 TYPE REF TO zcl_lnt_ddic.
        CLEAR t395.
        DATA t396 TYPE REF TO zcl_lnt_ddic.
        CLEAR t396.
        DATA t397 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t397.
        DATA t398 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t398.
        DATA(t399) = t3.
        t398 = t399->scope.
        t397 = t398.
        DATA t400 TYPE REF TO zcl_lnt_ddic.
        CLEAR t400.
        DATA t401 TYPE REF TO zif_lnt_registry.
        CLEAR t401.
        DATA(t402) = t397.
        t401 = t402->reg.
        t400 = NEW zcl_lnt_ddic( i_reg_f149 = t401 ).
        t396 = t400.
        t395 = t396.
        DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t403.
        DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t404.
        DATA(t405) = abap_true.
        IF t405 = abap_true.
          DATA(t406) = t273.
          DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t407->has = abap_true.
          t407->value = t406.
          t404 = t407.
        ELSE.
          DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t408.
          t404 = t408.
        ENDIF.
        t403 = t404.
        DATA(t409) = VALUE abap_bool( ).
        DATA(t410) = VALUE abap_bool( ).
        DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t411.
        DATA(t412) = t403.
        t411 = t412.
        DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t413.
        DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t414.
        t413 = t414.
        DATA(t415) = VALUE abap_bool( ).
        DATA(t416) = t411.
        IF t416 IS INITIAL.
          t415 = abap_true.
        ELSEIF t416->has = abap_false.
          t415 = abap_true.
        ENDIF.
        t410 = t415.
        IF t410 = abap_true.
          DATA(t417) = abap_true.
          t409 = t417.
        ELSE.
          DATA(t418) = VALUE abap_bool( ).
          DATA t419 TYPE REF TO zif_lnt_registry.
          CLEAR t419.
          DATA(t420) = t395.
          t419 = t420->reg.
          DATA(t421) = VALUE string( ).
          DATA(t422) = t403.
          t421 = t422->value.
          t418 = t419->in_error_namespace( i_name = t421 ).
          t409 = t418.
        ENDIF.
        t394 = t409.
        DATA(t423) = abap_false.
        t393 = xsdbool( t394 = t423 ).
        IF t393 = abap_true.
          DATA t424 TYPE REF TO zif_lnt_class_definition.
          CLEAR t424.
          DATA(t425) = t281.
          t424 = t425.
          DATA t426 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t426.
          DATA(t427) = t3.
          t426 = t427->scope.
          DATA t428 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t428.
          DATA(t429) = abap_true.
          IF t429 = abap_true.
            DATA(t430) = t270.
            t428 = t430.
          ELSE.
            DATA t431 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t431.
            t428 = t431.
          ENDIF.
          DATA t432 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t432.
          DATA(t433) = VALUE abap_bool( ).
          DATA(t434) = t424.
          IF t434 IS INITIAL.
            t433 = abap_true.
          ENDIF.
          IF t433 = abap_true.
            DATA t435 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t435.
            t432 = t435.
          ELSE.
            DATA t436 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t436.
            DATA t437 TYPE REF TO zif_lnt_class_definition.
            CLEAR t437.
            DATA(t438) = t424.
            t437 = t438.
            t436 ?= t437.
            t432 = t436.
          ENDIF.
          DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t439.
          DATA(t440) = |Object (Void)|.
          CLEAR t439.
          CREATE OBJECT t439.
          t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t439->sval = t440.
          DATA(t441) = VALUE string( ).
          DATA(t442) = t3.
          t441 = t442->filename.
          DATA t443 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t443.
          DATA(t444) = abap_true.
          IF t444 = abap_true.
            DATA t445 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t445.
            DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t446.
            DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t447.
            DATA(t448) = abap_true.
            IF t448 = abap_true.
              DATA(t449) = VALUE string( ).
              DATA(t450) = t273.
              DATA(t451) = strlen( t450 ).
              t449 = t450.
              IF t449 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t449 TO UPPER CASE.
              ELSE.
                t449 = zlnt_runtime_uppe_91169605024d=>full( t449 ).
              ENDIF.
              DATA(t452) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t452->has = abap_true.
              t452->value = t449.
              t447 = t452.
            ELSE.
              DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t453.
              t447 = t453.
            ENDIF.
            t446 = t447.
            DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t454.
            DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t455.
            DATA(t456) = abap_true.
            IF t456 = abap_true.
              DATA(t457) = |CLAS|.
              DATA(t458) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t458->has = abap_true.
              t458->value = t457.
              t455 = t458.
            ELSE.
              DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t459.
              t455 = t459.
            ENDIF.
            t454 = t455.
            DATA t460 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t460.
            DATA t461 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t461.
            t460 = t461.
            t445 = NEW zcl_lnt_ireference_extras( i_oo_name = t446 i_oo_type = t454 i_found_qualified = t460 ).
            CREATE OBJECT t445->zlnt_view_ownkeys_b0e8086400eb.
            t445->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t462.
            IF t445->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t445->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t462 ).
            ENDIF.
            DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t463.
            IF t445->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t445->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t463 ).
            ENDIF.
            CREATE OBJECT t445->zlnt_json_ownkeys_70e5fd461788.
            t445->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t464) = |ooName|.
            DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t465.
            IF t445->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t445->zlnt_json_ownkeys_70e5fd461788->put( p0 = t464 p1 = t465 ).
            ENDIF.
            DATA(t466) = |ooType|.
            DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t467.
            IF t445->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t445->zlnt_json_ownkeys_70e5fd461788->put( p0 = t466 p1 = t467 ).
            ENDIF.
            t443 = t445.
          ELSE.
            DATA t468 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t468.
            t443 = t468.
          ENDIF.
          t426->add_reference( i_usage = t428 i_referencing = t432 i_type_9913 = t439 i_filename = t441 i_extra = t443 ).
        ELSE.
          DATA t469 TYPE REF TO zif_lnt_class_definition.
          CLEAR t469.
          DATA(t470) = t281.
          t469 = t470.
          DATA t471 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t471.
          DATA(t472) = t3.
          t471 = t472->scope.
          DATA t473 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t473.
          DATA(t474) = abap_true.
          IF t474 = abap_true.
            DATA(t475) = t270.
            t473 = t475.
          ELSE.
            DATA t476 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t476.
            t473 = t476.
          ENDIF.
          DATA t477 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t477.
          DATA(t478) = VALUE abap_bool( ).
          DATA(t479) = t469.
          IF t479 IS INITIAL.
            t478 = abap_true.
          ENDIF.
          IF t478 = abap_true.
            DATA t480 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t480.
            t477 = t480.
          ELSE.
            DATA t481 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t481.
            DATA t482 TYPE REF TO zif_lnt_class_definition.
            CLEAR t482.
            DATA(t483) = t469.
            t482 = t483.
            t481 ?= t482.
            t477 = t481.
          ENDIF.
          DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t484.
          DATA(t485) = |Object (Unknown)|.
          CLEAR t484.
          CREATE OBJECT t484.
          t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t484->sval = t485.
          DATA(t486) = VALUE string( ).
          DATA(t487) = t3.
          t486 = t487->filename.
          DATA t488 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t488.
          DATA(t489) = abap_true.
          IF t489 = abap_true.
            DATA t490 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t490.
            DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t491.
            DATA t492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t492.
            DATA(t493) = abap_true.
            IF t493 = abap_true.
              DATA(t494) = VALUE string( ).
              DATA(t495) = t273.
              DATA(t496) = strlen( t495 ).
              t494 = t495.
              IF t494 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t494 TO UPPER CASE.
              ELSE.
                t494 = zlnt_runtime_uppe_91169605024d=>full( t494 ).
              ENDIF.
              DATA(t497) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t497->has = abap_true.
              t497->value = t494.
              t492 = t497.
            ELSE.
              DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t498.
              t492 = t498.
            ENDIF.
            t491 = t492.
            DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t499.
            DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t500.
            DATA(t501) = abap_true.
            IF t501 = abap_true.
              DATA(t502) = |CLAS|.
              DATA(t503) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t503->has = abap_true.
              t503->value = t502.
              t500 = t503.
            ELSE.
              DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t504.
              t500 = t504.
            ENDIF.
            t499 = t500.
            DATA t505 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t505.
            DATA t506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t506.
            t505 = t506.
            t490 = NEW zcl_lnt_ireference_extras( i_oo_name = t491 i_oo_type = t499 i_found_qualified = t505 ).
            CREATE OBJECT t490->zlnt_view_ownkeys_b0e8086400eb.
            t490->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t507.
            IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t507 ).
            ENDIF.
            DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t508.
            IF t490->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t508 ).
            ENDIF.
            CREATE OBJECT t490->zlnt_json_ownkeys_70e5fd461788.
            t490->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t509) = |ooName|.
            DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t510.
            IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
            ENDIF.
            DATA(t511) = |ooType|.
            DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t512.
            IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
            ENDIF.
            t488 = t490.
          ELSE.
            DATA t513 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t513.
            t488 = t513.
          ENDIF.
          t471->add_reference( i_usage = t473 i_referencing = t477 i_type_9913 = t484 i_filename = t486 i_extra = t488 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t514 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t514.
    CREATE OBJECT t514.
    me->exceptions = t514.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exceptions`.
    DATA t515 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t515.
    DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t516.
    DATA t517 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t517.
    DATA t518 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t518.
    DATA t519 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t519.
    DATA(t520) = t1.
    DATA(t521) = zlnt_runtime_desc_78196487750d=>zlnt_member_d229_3a5c1215c384.
    t519 = t520->find_direct_expression( i_type_9913 = t521 ).
    t518 = t519.
    DATA t522 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t522.
    DATA(t523) = VALUE abap_bool( ).
    DATA(t524) = t518.
    IF t524 IS INITIAL.
      t523 = abap_true.
    ENDIF.
    IF t523 = abap_true.
      DATA t525 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t525.
      t522 = t525.
    ELSE.
      DATA t526 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t526.
      DATA t527 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t527.
      DATA(t528) = t518.
      t527 = t528.
      DATA(t529) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t526 = t527->find_all_expressions( i_type_9913 = t529 ).
      t522 = t526.
    ENDIF.
    t517 = t522.
    t516 = t517.
    DATA t530 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t530.
    DATA(t531) = VALUE abap_bool( ).
    DATA(t532) = t516.
    t531 = xsdbool( t532 IS BOUND ).
    IF t531 = abap_true.
      DATA t533 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t533.
      DATA(t534) = t516.
      t533 = t534.
      t530 = t533.
    ELSE.
      DATA t535 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t535.
      CREATE OBJECT t535.
      t530 = t535.
    ENDIF.
    t515 = t530.
    DATA t536 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t536.
    DATA t537 TYPE REF TO object.
    CLEAR t537.
    DATA(t538) = VALUE i( ).
    DO.
      t515->load( ).
      IF t538 >= lines( t515->items ).
        EXIT.
      ENDIF.
      CLEAR t537.
      READ TABLE t515->items INDEX t538 + 1 INTO t537.
      t538 = t538 + 1.
      DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t539.
      CLEAR t536.
      IF t537 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t539 ?= t537.
        DATA t540 TYPE REF TO object.
        CLEAR t540.
        t540 = t539->as_ref( ).
        t536 ?= t540.
      ELSE.
        t536 ?= t537.
      ENDIF.
      DATA t541 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t541.
      DATA t542 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t542.
      DATA(t543) = t536.
      t542 = t543->get_first_token( ).
      t541 = t542.
      DATA(t544) = VALUE string( ).
      DATA(t545) = VALUE string( ).
      DATA t546 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t546.
      DATA(t547) = t541.
      t546 = t547.
      DATA(t548) = VALUE string( ).
      DATA(t549) = t546.
      t548 = t549->str.
      t545 = t548.
      t544 = t545.
      DATA(t550) = me->exceptions.
      DATA(t551) = t544.
      t550->load( ).
      APPEND t551 TO t550->items.
      t550->save( ).
    ENDDO.
    DATA(t552) = t2.
    me->visibility = t552.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `visibility`.
    DATA t553 TYPE REF TO zcl_lnt_ty_method_parameters.
    CLEAR t553.
    DATA(t554) = t1.
    DATA(t555) = t3.
    DATA(t556) = CONV abap_bool( me->abstract ).
    t553 = NEW zcl_lnt_ty_method_parameters( i_node = t554 i_input_967e = t555 i_abstract_method = t556 ).
    me->parameters = t553.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parameters`.
  ENDMETHOD.

  METHOD get_visibility.
    DATA(t1) = CONV f( me->visibility ).
    result = t1.

  ENDMETHOD.

  METHOD get_class_name.
    DATA(t1) = CONV string( me->class_name ).
    result = t1.

  ENDMETHOD.

  METHOD is_redefinition.
    DATA(t1) = CONV abap_bool( me->redefinition ).
    result = t1.

  ENDMETHOD.

  METHOD is_abstract.
    DATA(t1) = CONV abap_bool( me->abstract ).
    result = t1.

  ENDMETHOD.

  METHOD is_static_4685.
    DATA(t1) = CONV abap_bool( me->static_9977 ).
    result = t1.

  ENDMETHOD.

  METHOD is_event_handler.
    DATA(t1) = CONV abap_bool( me->event_handler ).
    result = t1.

  ENDMETHOD.

  METHOD get_event_name.
    DATA(t1) = me->event_name.
    result = t1.

  ENDMETHOD.

  METHOD get_event_class.
    DATA(t1) = me->event_class.
    result = t1.

  ENDMETHOD.

  METHOD g_p_in_sr_ab_ty_mt_df_ts_mt_df.
    DATA(t1) = me->parameters.
    result = t1.

  ENDMETHOD.

  METHOD get_raising.
    DATA(t1) = me->raising.
    result = t1.

  ENDMETHOD.

  METHOD get_exceptions.
    DATA(t1) = me->exceptions.
    result = t1.

  ENDMETHOD.

  METHOD get_parameters.
    DATA(t1) = CAST zcl_lnt_ty_method_parameters( me->g_p_in_sr_ab_ty_mt_df_ts_mt_df( ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1062_1146100580cf.
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
