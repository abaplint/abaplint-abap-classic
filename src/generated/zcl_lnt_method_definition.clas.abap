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
    t6 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_method_def ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t12) = |MethodDefinition, expected MethodDef as part of input node|.
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
      t9 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t10 ).
      t8 = NEW #( ).
      t8->payload = t9.
      CLEAR t8->source_value.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t16 TYPE REF TO object.
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
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t18 = t1->find_direct_expression( i_type_9913 = t20 ).
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21 = xsdbool( t17 IS INITIAL ).
    IF t21 = abap_true.
      DATA t28 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t29 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t32) = |MethodDefinition, expected MethodDef as part of input node|.
      DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t33->has = abap_true.
      t33->value = t32.
      t30 = t33.
      t29 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t30 ).
      t28 = NEW #( ).
      t28->payload = t29.
      CLEAR t28->source_value.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
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
      RAISE EXCEPTION t28.
    ENDIF.
    DATA t37 TYPE REF TO zcl_lnt_abstract_token.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    t38 = t17.
    t37 = t38->get_first_token( ).
    DATA(t40) = VALUE string( ).
    t40 = t3->filename.
    super->constructor( i_token = t37 i_filename = t40 ).
    DATA(t42) = VALUE string( ).
    DATA t43 TYPE REF TO zcl_lnt_current_scope.
    t43 = t3->scope.
    t42 = t43->get_name( ).
    me->class_name = t42.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `className`.
    me->redefinition = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `redefinition`.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167.
    t47 = t1->find_direct_expression( i_type_9913 = t49 ).
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      me->redefinition = abap_true.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `redefinition`.
      DATA(t51) = VALUE string( ).
      DATA(t52) = VALUE string( ).
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      t55 = t17.
      t54 = t55->get_first_token( ).
      DATA(t57) = VALUE string( ).
      t57 = t54->str.
      t52 = t57.
      t51 = t52.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE i( ).
      DATA(t62) = |~|.
      DATA(t63) = strlen( t51 ).
      IF t62 IS INITIAL.
        t60 = 0.
      ELSE.
        FIND t62 IN t51 MATCH OFFSET t60.
        IF sy-subrc <> 0.
          t60 = -1.
        ENDIF.
      ENDIF.
      DATA(t64) = 0.
      t59 = xsdbool( t60 >= t64 ).
      IF t59 = abap_true.
        DATA t65 TYPE REF TO zif_lnt_interface_definition.
        DATA t67 TYPE REF TO zcl_lnt_current_scope.
        DATA t68 TYPE REF TO zcl_lnt_current_scope.
        t68 = t3->scope.
        t67 = t68.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t74) = |~|.
        DATA(t75) = strlen( t51 ).
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
            t80 = t51+t76(1).
            APPEND t80 TO t72->items.
            t76 = t76 + 1.
          ENDWHILE.
        ELSE.
          WHILE t76 <= t75.
            FIND FIRST OCCURRENCE OF t74 IN SECTION OFFSET t76 OF t51 MATCH OFFSET t77.
            IF sy-subrc = 0.
              t78 = t77 - t76.
            ELSE.
              t77 = -1.
              t78 = t75 - t76.
            ENDIF.
            CLEAR t80.
            IF t78 > 0.
              t80 = t51+t76(t78).
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
        DATA(t83) = VALUE abap_bool( ).
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t84 = t70.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t88) = VALUE abap_bool( ).
        IF t84 IS INITIAL.
          t88 = abap_true.
        ELSEIF t84->has = abap_false.
          t88 = abap_true.
        ENDIF.
        t83 = t88.
        IF t83 = abap_true.
        ELSE.
          DATA t92 TYPE REF TO zif_lnt_interface_definition.
          DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t95 = t67->current.
          t94 = t95.
          DATA t97 TYPE REF TO zif_lnt_interface_definition.
          DATA(t98) = xsdbool( t94 IS INITIAL ).
          IF t98 = abap_true.
          ELSE.
            DATA t101 TYPE REF TO zif_lnt_interface_definition.
            DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t102 = t94.
            DATA(t104) = VALUE string( ).
            t104 = t70->value.
            t101 = t102->find_interface_definition( i_name = t104 ).
            t97 = t101.
          ENDIF.
          t92 = t97.
          DATA t106 TYPE REF TO zif_lnt_interface_definition.
          DATA(t107) = VALUE abap_bool( ).
          t107 = xsdbool( t92 IS BOUND ).
          IF t107 = abap_true.
            t106 = t92.
          ELSE.
            DATA t115 TYPE REF TO zcl_lnt_ob_interface.
            DATA t116 TYPE REF TO zcl_lnt_ob_interface.
            DATA t117 TYPE REF TO zif_lnt_object.
            DATA t118 TYPE REF TO zif_lnt_registry.
            t118 = t67->reg.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t122) = |INTF|.
            DATA(t123) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t123->has = abap_true.
            t123->value = t122.
            t120 = t123.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t127) = VALUE string( ).
            t127 = t70->value.
            DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t129->has = abap_true.
            t129->value = t127.
            t125 = t129.
            t117 = t118->get_object( i_type_9913 = t120 i_name = t125 ).
            DATA t131 TYPE REF TO object.
            t131 = t117.
            t116 ?= t131.
            t115 = t116.
            DATA t132 TYPE REF TO zif_lnt_interface_definition.
            DATA(t133) = VALUE abap_bool( ).
            t133 = xsdbool( t115 IS BOUND ).
            IF t133 = abap_true.
              DATA t139 TYPE REF TO zif_lnt_interface_definition.
              t139 = t115->def.
              t132 = t139.
            ELSE.
              CLEAR t132.
            ENDIF.
            t106 = t132.
          ENDIF.
          t82 = t106.
        ENDIF.
        t65 = t82.
        DATA(t142) = VALUE abap_bool( ).
        t142 = xsdbool( t65 IS BOUND ).
        IF t142 = abap_true.
          DATA t144 TYPE REF TO zcl_lnt_current_scope.
          t144 = t3->scope.
          DATA t146 TYPE REF TO zcl_lnt_abstract_token.
          DATA t148 TYPE REF TO zcl_lnt_abstract_token.
          DATA t149 TYPE REF TO zcl_lnt_expression_node.
          t149 = t17.
          t148 = t149->get_first_token( ).
          t146 = t148.
          DATA t152 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t155 TYPE REF TO zif_lnt_interface_definition.
          t155 = t65.
          t154 ?= t155.
          t152 = t154.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t159) = |Object|.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t158->sval = t159.
          DATA(t160) = VALUE string( ).
          t160 = t3->filename.
          DATA t162 TYPE REF TO zcl_lnt_ireference_extras.
          t144->add_reference( i_usage = t146 i_referencing = t152 i_type_9913 = t158 i_filename = t160 i_extra = t162 ).
        ENDIF.
      ENDIF.
    ENDIF.
    me->event_handler = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `eventHandler`.
    DATA t164 TYPE REF TO zcl_lnt_expression_node.
    DATA t165 TYPE REF TO zcl_lnt_expression_node.
    DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d165_590ae906b133.
    t165 = t1->find_direct_expression( i_type_9913 = t167 ).
    t164 = t165.
    DATA(t168) = VALUE abap_bool( ).
    t168 = xsdbool( t164 IS BOUND ).
    IF t168 = abap_true.
      me->event_handler = abap_true.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `eventHandler`.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t174 TYPE REF TO zcl_lnt_expression_node.
      DATA t175 TYPE REF TO zcl_lnt_expression_node.
      DATA t176 TYPE REF TO zcl_lnt_expression_node.
      t176 = t164.
      DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t175 = t176->find_direct_expression( i_type_9913 = t178 ).
      t174 = t175.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t180) = xsdbool( t174 IS INITIAL ).
      IF t180 = abap_true.
      ELSE.
        DATA(t183) = VALUE string( ).
        DATA t184 TYPE REF TO zcl_lnt_expression_node.
        t184 = t174.
        t183 = t184->concat_tokens( ).
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t183.
        t179 = t186.
      ENDIF.
      t172 = t179.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t188) = VALUE abap_bool( ).
      IF t172 IS INITIAL.
        t188 = abap_true.
      ELSEIF t172->has = abap_false.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
      ELSE.
        DATA(t191) = VALUE string( ).
        DATA(t192) = VALUE string( ).
        t192 = t172->value.
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
      me->event_name = t187.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `eventName`.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t199 TYPE REF TO zcl_lnt_expression_node.
      DATA t200 TYPE REF TO zcl_lnt_expression_node.
      DATA t201 TYPE REF TO zcl_lnt_expression_node.
      t201 = t164.
      DATA(t203) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t200 = t201->find_direct_expression( i_type_9913 = t203 ).
      t199 = t200.
      DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t205) = xsdbool( t199 IS INITIAL ).
      IF t205 = abap_true.
      ELSE.
        DATA(t208) = VALUE string( ).
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        t209 = t199.
        t208 = t209->concat_tokens( ).
        DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t211->has = abap_true.
        t211->value = t208.
        t204 = t211.
      ENDIF.
      t197 = t204.
      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t213) = VALUE abap_bool( ).
      IF t197 IS INITIAL.
        t213 = abap_true.
      ELSEIF t197->has = abap_false.
        t213 = abap_true.
      ENDIF.
      IF t213 = abap_true.
      ELSE.
        DATA(t216) = VALUE string( ).
        DATA(t217) = VALUE string( ).
        t217 = t197->value.
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
      me->event_class = t212.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `eventClass`.
    ENDIF.
    me->abstract = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstract`.
    DATA(t222) = VALUE abap_bool( ).
    DATA t223 TYPE REF TO zcl_lnt_expression_node.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d87_b6ca272efa9462.
    t223 = t1->find_direct_expression( i_type_9913 = t225 ).
    t222 = xsdbool( t223 IS BOUND ).
    IF t222 = abap_true.
      me->abstract = abap_true.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstract`.
    ENDIF.
    me->static_9977 = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `static`.
    DATA(t228) = VALUE abap_bool( ).
    DATA(t229) = VALUE string( ).
    DATA(t230) = VALUE string( ).
    DATA t232 TYPE REF TO zcl_lnt_abstract_token.
    t232 = t1->get_first_token( ).
    DATA(t234) = VALUE string( ).
    t234 = t232->str.
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
      me->static_9977 = abap_true.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `static`.
    ENDIF.
    DATA t243 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t243.
    me->raising = t243.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `raising`.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t245 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t247 TYPE REF TO zcl_lnt_expression_node.
    DATA t248 TYPE REF TO zcl_lnt_expression_node.
    DATA(t250) = zlnt_runtime_desc_78196487750d=>zlnt_member_d233_66b4b8df8ddb.
    t248 = t1->find_direct_expression( i_type_9913 = t250 ).
    t247 = t248.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t252) = xsdbool( t247 IS INITIAL ).
    IF t252 = abap_true.
    ELSE.
      DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t256 TYPE REF TO zcl_lnt_expression_node.
      t256 = t247.
      DATA(t258) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t255 = t256->find_all_expressions( i_type_9913 = t258 ).
      t251 = t255.
    ENDIF.
    t245 = t251.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t260) = VALUE abap_bool( ).
    t260 = xsdbool( t245 IS BOUND ).
    IF t260 = abap_true.
      t259 = t245.
    ELSE.
      DATA t264 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t264.
      t259 = t264.
    ENDIF.
    t244 = t259.
    DATA t265 TYPE REF TO zcl_lnt_expression_node.
    DATA t266 TYPE REF TO object.
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
      t271 = t265->get_first_token( ).
      t270 = t271.
      DATA(t273) = VALUE string( ).
      DATA(t274) = VALUE string( ).
      DATA(t277) = VALUE string( ).
      t277 = t270->str.
      t274 = t277.
      t273 = t274.
      DATA(t279) = me->raising.
      t279->load( ).
      APPEND t273 TO t279->items.
      t279->save( ).
      DATA t281 TYPE REF TO zif_lnt_class_definition.
      CLEAR t281.
      DATA t283 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t283.
      DATA t284 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t284.
      t284 = t3->scope.
      t283 = t284.
      DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t286.
      DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t290->has = abap_true.
      t290->value = t273.
      t286 = t290.
      DATA t292 TYPE REF TO zif_lnt_class_definition.
      CLEAR t292.
      DATA(t293) = VALUE abap_bool( ).
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      t294 = t286.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      CLEAR t296.
      DATA(t298) = VALUE abap_bool( ).
      IF t294 IS INITIAL.
        t298 = abap_true.
      ELSEIF t294->has = abap_false.
        t298 = abap_true.
      ENDIF.
      t293 = t298.
      IF t293 = abap_true.
        CLEAR t292.
      ELSE.
        DATA t302 TYPE REF TO zif_lnt_class_definition.
        CLEAR t302.
        DATA t304 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t304.
        DATA t305 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t305.
        t305 = t283->current.
        t304 = t305.
        DATA t307 TYPE REF TO zif_lnt_class_definition.
        CLEAR t307.
        DATA(t308) = xsdbool( t304 IS INITIAL ).
        IF t308 = abap_true.
          CLEAR t307.
        ELSE.
          DATA t311 TYPE REF TO zif_lnt_class_definition.
          CLEAR t311.
          DATA t312 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t312.
          t312 = t304.
          DATA(t314) = VALUE string( ).
          t314 = t286->value.
          t311 = t312->find_class_definition( i_name = t314 ).
          t307 = t311.
        ENDIF.
        t302 = t307.
        DATA t316 TYPE REF TO zif_lnt_class_definition.
        CLEAR t316.
        DATA(t317) = VALUE abap_bool( ).
        t317 = xsdbool( t302 IS BOUND ).
        IF t317 = abap_true.
          t316 = t302.
        ELSE.
          DATA t325 TYPE REF TO zcl_lnt_class.
          CLEAR t325.
          DATA t326 TYPE REF TO zcl_lnt_class.
          CLEAR t326.
          DATA t327 TYPE REF TO zif_lnt_object.
          CLEAR t327.
          DATA t328 TYPE REF TO zif_lnt_registry.
          CLEAR t328.
          t328 = t283->reg.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t330.
          DATA(t332) = |CLAS|.
          DATA(t333) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t333->has = abap_true.
          t333->value = t332.
          t330 = t333.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t335.
          DATA(t337) = VALUE string( ).
          t337 = t286->value.
          DATA(t339) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t339->has = abap_true.
          t339->value = t337.
          t335 = t339.
          t327 = t328->get_object( i_type_9913 = t330 i_name = t335 ).
          DATA t341 TYPE REF TO object.
          CLEAR t341.
          t341 = t327.
          t326 ?= t341.
          t325 = t326.
          DATA t342 TYPE REF TO zif_lnt_class_definition.
          CLEAR t342.
          DATA(t343) = VALUE abap_bool( ).
          t343 = xsdbool( t325 IS BOUND ).
          IF t343 = abap_true.
            DATA t345 TYPE REF TO zif_lnt_class_definition.
            CLEAR t345.
            DATA t346 TYPE REF TO zcl_lnt_class.
            CLEAR t346.
            t346 = t325.
            t345 = t346->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t342 = t345.
          ELSE.
            CLEAR t342.
          ENDIF.
          t316 = t342.
        ENDIF.
        t292 = t316.
      ENDIF.
      t281 = t292.
      DATA(t349) = VALUE abap_bool( ).
      t349 = xsdbool( t281 IS BOUND ).
      IF t349 = abap_true.
        DATA t351 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t351.
        t351 = t3->scope.
        DATA t353 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t353.
        t353 = t270.
        DATA t357 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t357.
        DATA t359 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t359.
        DATA t360 TYPE REF TO zif_lnt_class_definition.
        CLEAR t360.
        t360 = t281.
        t359 ?= t360.
        t357 = t359.
        DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t363.
        DATA(t364) = |Object|.
        CLEAR t363.
        CREATE OBJECT t363.
        t363->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t363->sval = t364.
        DATA(t365) = VALUE string( ).
        t365 = t3->filename.
        DATA t367 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t367.
        DATA t369 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t369.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        DATA(t373) = VALUE string( ).
        DATA(t375) = strlen( t273 ).
        t373 = t273.
        IF t373 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t373 TO UPPER CASE.
        ELSE.
          t373 = zlnt_runtime_uppe_91169605024d=>full( t373 ).
        ENDIF.
        DATA(t376) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t376->has = abap_true.
        t376->value = t373.
        t370 = t376.
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t378.
        DATA(t381) = |CLAS|.
        DATA(t382) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t382->has = abap_true.
        t382->value = t381.
        t378 = t382.
        DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t384.
        CLEAR t384.
        t369 = NEW zcl_lnt_ireference_extras( i_oo_name = t370 i_oo_type = t378 i_found_qualified = t384 ).
        CREATE OBJECT t369->zlnt_view_ownkeys_b0e8086400eb.
        t369->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t386.
        t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t386 ).
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
        t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t388 p1 = t389 ).
        DATA(t390) = |ooType|.
        DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t391.
        IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t390 p1 = t391 ).
        ENDIF.
        t367 = t369.
        t351->add_reference( i_usage = t353 i_referencing = t357 i_type_9913 = t363 i_filename = t365 i_extra = t367 ).
      ELSE.
        DATA(t393) = VALUE abap_bool( ).
        DATA(t394) = VALUE abap_bool( ).
        DATA t398 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t398.
        t398 = t3->scope.
        DATA t400 TYPE REF TO zcl_lnt_ddic.
        CLEAR t400.
        DATA t401 TYPE REF TO zif_lnt_registry.
        CLEAR t401.
        t401 = t398->reg.
        t400 = NEW zcl_lnt_ddic( i_reg_f149 = t401 ).
        DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t403.
        DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t407->has = abap_true.
        t407->value = t273.
        t403 = t407.
        DATA(t409) = VALUE abap_bool( ).
        DATA(t410) = VALUE abap_bool( ).
        DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t411.
        t411 = t403.
        DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t413.
        CLEAR t413.
        DATA(t415) = VALUE abap_bool( ).
        IF t411 IS INITIAL.
          t415 = abap_true.
        ELSEIF t411->has = abap_false.
          t415 = abap_true.
        ENDIF.
        t410 = t415.
        IF t410 = abap_true.
          t409 = abap_true.
        ELSE.
          DATA(t418) = VALUE abap_bool( ).
          DATA t419 TYPE REF TO zif_lnt_registry.
          CLEAR t419.
          t419 = t400->reg.
          DATA(t421) = VALUE string( ).
          t421 = t403->value.
          t418 = t419->in_error_namespace( i_name = t421 ).
          t409 = t418.
        ENDIF.
        t394 = t409.
        t393 = xsdbool( t394 = abap_false ).
        IF t393 = abap_true.
          DATA t424 TYPE REF TO zif_lnt_class_definition.
          CLEAR t424.
          t424 = t281.
          DATA t426 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t426.
          t426 = t3->scope.
          DATA t428 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t428.
          t428 = t270.
          DATA t432 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t432.
          DATA(t433) = xsdbool( t424 IS INITIAL ).
          IF t433 = abap_true.
            CLEAR t432.
          ELSE.
            DATA t436 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t436.
            DATA t437 TYPE REF TO zif_lnt_class_definition.
            CLEAR t437.
            t437 = t424.
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
          t441 = t3->filename.
          DATA t443 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t443.
          DATA t445 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t445.
          DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t446.
          DATA(t449) = VALUE string( ).
          DATA(t451) = strlen( t273 ).
          t449 = t273.
          IF t449 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t449 TO UPPER CASE.
          ELSE.
            t449 = zlnt_runtime_uppe_91169605024d=>full( t449 ).
          ENDIF.
          DATA(t452) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t452->has = abap_true.
          t452->value = t449.
          t446 = t452.
          DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t454.
          DATA(t457) = |CLAS|.
          DATA(t458) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t458->has = abap_true.
          t458->value = t457.
          t454 = t458.
          DATA t460 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t460.
          CLEAR t460.
          t445 = NEW zcl_lnt_ireference_extras( i_oo_name = t446 i_oo_type = t454 i_found_qualified = t460 ).
          CREATE OBJECT t445->zlnt_view_ownkeys_b0e8086400eb.
          t445->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t462.
          t445->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t462 ).
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
          t445->zlnt_json_ownkeys_70e5fd461788->put( p0 = t464 p1 = t465 ).
          DATA(t466) = |ooType|.
          DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t467.
          IF t445->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t445->zlnt_json_ownkeys_70e5fd461788->put( p0 = t466 p1 = t467 ).
          ENDIF.
          t443 = t445.
          t426->add_reference( i_usage = t428 i_referencing = t432 i_type_9913 = t439 i_filename = t441 i_extra = t443 ).
        ELSE.
          DATA t469 TYPE REF TO zif_lnt_class_definition.
          CLEAR t469.
          t469 = t281.
          DATA t471 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t471.
          t471 = t3->scope.
          DATA t473 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t473.
          t473 = t270.
          DATA t477 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t477.
          DATA(t478) = xsdbool( t469 IS INITIAL ).
          IF t478 = abap_true.
            CLEAR t477.
          ELSE.
            DATA t481 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t481.
            DATA t482 TYPE REF TO zif_lnt_class_definition.
            CLEAR t482.
            t482 = t469.
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
          t486 = t3->filename.
          DATA t488 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t488.
          DATA t490 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t490.
          DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t491.
          DATA(t494) = VALUE string( ).
          DATA(t496) = strlen( t273 ).
          t494 = t273.
          IF t494 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t494 TO UPPER CASE.
          ELSE.
            t494 = zlnt_runtime_uppe_91169605024d=>full( t494 ).
          ENDIF.
          DATA(t497) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t497->has = abap_true.
          t497->value = t494.
          t491 = t497.
          DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t499.
          DATA(t502) = |CLAS|.
          DATA(t503) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t503->has = abap_true.
          t503->value = t502.
          t499 = t503.
          DATA t505 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t505.
          CLEAR t505.
          t490 = NEW zcl_lnt_ireference_extras( i_oo_name = t491 i_oo_type = t499 i_found_qualified = t505 ).
          CREATE OBJECT t490->zlnt_view_ownkeys_b0e8086400eb.
          t490->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t507.
          t490->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t507 ).
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
          t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
          DATA(t511) = |ooType|.
          DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t512.
          IF t490->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t490->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
          ENDIF.
          t488 = t490.
          t471->add_reference( i_usage = t473 i_referencing = t477 i_type_9913 = t484 i_filename = t486 i_extra = t488 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t514 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t514.
    me->exceptions = t514.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exceptions`.
    DATA t515 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t518 TYPE REF TO zcl_lnt_expression_node.
    DATA t519 TYPE REF TO zcl_lnt_expression_node.
    DATA(t521) = zlnt_runtime_desc_78196487750d=>zlnt_member_d229_3a5c1215c384.
    t519 = t1->find_direct_expression( i_type_9913 = t521 ).
    t518 = t519.
    DATA t522 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t523) = xsdbool( t518 IS INITIAL ).
    IF t523 = abap_true.
    ELSE.
      DATA t526 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t527 TYPE REF TO zcl_lnt_expression_node.
      t527 = t518.
      DATA(t529) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
      t526 = t527->find_all_expressions( i_type_9913 = t529 ).
      t522 = t526.
    ENDIF.
    t516 = t522.
    DATA t530 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t531) = VALUE abap_bool( ).
    t531 = xsdbool( t516 IS BOUND ).
    IF t531 = abap_true.
      t530 = t516.
    ELSE.
      DATA t535 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t535.
      t530 = t535.
    ENDIF.
    t515 = t530.
    DATA t536 TYPE REF TO zcl_lnt_expression_node.
    DATA t537 TYPE REF TO object.
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
      DATA t542 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t542.
      t542 = t536->get_first_token( ).
      DATA(t544) = VALUE string( ).
      DATA(t545) = VALUE string( ).
      DATA(t548) = VALUE string( ).
      t548 = t542->str.
      t545 = t548.
      t544 = t545.
      DATA(t550) = me->exceptions.
      t550->load( ).
      APPEND t544 TO t550->items.
      t550->save( ).
    ENDDO.
    me->visibility = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `visibility`.
    DATA t553 TYPE REF TO zcl_lnt_ty_method_parameters.
    DATA(t556) = CONV abap_bool( me->abstract ).
    t553 = NEW zcl_lnt_ty_method_parameters( i_node = t1 i_input_967e = t3 i_abstract_method = t556 ).
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
    result = me->event_name.

  ENDMETHOD.

  METHOD get_event_class.
    result = me->event_class.

  ENDMETHOD.

  METHOD g_p_in_sr_ab_ty_mt_df_ts_mt_df.
    result = me->parameters.

  ENDMETHOD.

  METHOD get_raising.
    result = me->raising.

  ENDMETHOD.

  METHOD get_exceptions.
    result = me->exceptions.

  ENDMETHOD.

  METHOD get_parameters.
    result = CAST zcl_lnt_ty_method_parameters( me->g_p_in_sr_ab_ty_mt_df_ts_mt_df( ) ).

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
