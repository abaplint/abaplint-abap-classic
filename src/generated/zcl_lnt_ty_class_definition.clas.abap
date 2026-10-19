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
    DATA create_visibility_value TYPE f.
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
    METHODS get_create_visibility RETURNING VALUE(result) TYPE f.
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
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_class_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_structure.
    t5 = t1->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = |ClassDefinition, unexpected node type|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t8.
      TRY.
          t7->source_value ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7->source_value IS NOT BOUND.
        TRY.
            t14 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t7->source_value = t14->source( ).
        ENDIF.
        IF t7->source_value IS NOT BOUND.
          CREATE OBJECT t7->source_value.
          t7->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->source_value->oval = t8.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d411_59ccb35321de.
    t17 = t1->find_first_statement( i_type_9913 = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    DATA t24 TYPE REF TO zcl_lnt_statement_node.
    t24 = t16.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t23 = t24->find_direct_expression( i_type_9913 = t26 ).
    t22 = t23.
    t21 = t22->get_first_token( ).
    t20 = t21.
    DATA(t28) = VALUE string( ).
    t28 = t2->filename.
    super->constructor( i_token = t20 i_filename = t28 ).
    DATA t30 TYPE REF TO zcl_lnt_current_scope.
    t30 = t2->scope.
    t30->add_class_definition( i_c = me ).
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    me->events_f95a = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `events`.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    me->implementing = t34.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `implementing`.
    DATA(t35) = VALUE abap_bool( ).
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA t38 TYPE REF TO zcl_lnt_statement_node.
    t38 = t16.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
    t37 = t38->find_first_expression( i_type_9913 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = xsdbool( t37 IS INITIAL ).
    t43 = xsdbool( t44 = abap_false ).
    t35 = t43.
    me->global_value = t35.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalValue`.
    DATA(t46) = VALUE abap_bool( ).
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    DATA t49 TYPE REF TO zcl_lnt_statement_node.
    t49 = t16.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d115_e681bc20f5c0.
    t48 = t49->find_first_expression( i_type_9913 = t51 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = xsdbool( t48 IS INITIAL ).
    t54 = xsdbool( t55 = abap_false ).
    t46 = t54.
    me->final_value = t46.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `finalValue`.
    DATA t57 TYPE REF TO zcl_lnt_current_scope.
    DATA t58 TYPE REF TO zcl_lnt_current_scope.
    t58 = t2->scope.
    t57 = t58.
    DATA(t60) = VALUE string( ).
    DATA(t61) = VALUE string( ).
    DATA(t64) = VALUE string( ).
    t64 = t20->str.
    t61 = t64.
    t60 = t61.
    DATA t70 TYPE REF TO zcl_lnt_position.
    t70 = t20->start.
    DATA(t72) = VALUE string( ).
    DATA(t73) = VALUE string( ).
    t73 = t2->filename.
    t72 = t73.
    DATA t75 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t76 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t77) = VALUE string( ).
    t77 = |class_definition|.
    DATA(t79) = VALUE string( ).
    t79 = t60.
    DATA t81 TYPE REF TO zcl_lnt_position.
    t81 = t70.
    DATA(t83) = VALUE string( ).
    t83 = t72.
    DATA t85 TYPE REF TO zcl_lnt_position.
    t76 = NEW zcl_lnt_iscope_identifier( i_stype = t77 i_sname = t79 i_filename = t83 i_start = t81 i_end = t85 ).
    CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
    t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t87 ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t88 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t89 ).
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t90 ).
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t91 ).
    ENDIF.
    CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
    t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t92) = |stype|.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
    DATA(t94) = |sname|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
    ENDIF.
    DATA(t96) = |start|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
    ENDIF.
    DATA(t98) = |filename|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
    ENDIF.
    DATA(t100) = |end|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    ENDIF.
    t75 = t76.
    DATA(t102) = VALUE abap_bool( ).
    DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t104 = t57->current.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t102 = xsdbool( t104 IS INITIAL ).
    IF t102 = abap_true.
      DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t113 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t75 i_parent = t115 ).
      t57->current = t113.
      DELETE t57->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t119 = t57->current.
      t117 = t119.
      DATA t124 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t126 = t117.
      t124 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t75 i_parent = t126 ).
      t57->current = t124.
      DELETE t57->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t133 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t133 = t57->current.
      t132 = t133.
      t117->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t132 ).
    ENDIF.
    DATA t141 TYPE REF TO zcl_lnt_abstract_token.
    DATA t143 TYPE REF TO zcl_lnt_expression_node.
    DATA t145 TYPE REF TO zcl_lnt_statement_node.
    t145 = t16.
    DATA t147 TYPE REF TO zcl_lnt_expression_node.
    DATA(t148) = xsdbool( t145 IS INITIAL ).
    IF t148 = abap_true.
    ELSE.
      DATA t151 TYPE REF TO zcl_lnt_expression_node.
      DATA t152 TYPE REF TO zcl_lnt_statement_node.
      t152 = t145.
      DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d348_ba08da875831.
      t151 = t152->find_direct_expression( i_type_9913 = t154 ).
      t147 = t151.
    ENDIF.
    t143 = t147.
    DATA t155 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t156) = xsdbool( t143 IS INITIAL ).
    IF t156 = abap_true.
    ELSE.
      DATA t159 TYPE REF TO zcl_lnt_abstract_token.
      DATA t160 TYPE REF TO zcl_lnt_expression_node.
      t160 = t143.
      t159 = t160->get_first_token( ).
      t155 = t159.
    ENDIF.
    t141 = t155.
    DATA t163 TYPE REF TO zcl_lnt_abstract_token.
    t163 = t141.
    DATA t165 TYPE REF TO zcl_lnt_syntax_input.
    t165 = t2.
    DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t169 TYPE REF TO zcl_lnt_abstract_token.
    t169 = t163.
    DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t172) = xsdbool( t169 IS INITIAL ).
    IF t172 = abap_true.
    ELSE.
      DATA(t175) = VALUE string( ).
      DATA(t179) = VALUE string( ).
      t179 = t169->str.
      t175 = t179.
      DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t181->has = abap_true.
      t181->value = t175.
      t171 = t181.
    ENDIF.
    t167 = t171.
    DATA(t182) = VALUE abap_bool( ).
    IF t167 IS BOUND.
      IF t167->has = abap_true.
        t182 = xsdbool( strlen( t167->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t182 = abap_true.
      DATA t184 TYPE REF TO zif_lnt_class_definition.
      DATA t186 TYPE REF TO zcl_lnt_current_scope.
      DATA t187 TYPE REF TO zcl_lnt_current_scope.
      t187 = t165->scope.
      t186 = t187.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t192) = VALUE string( ).
      t192 = t167->value.
      DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t194->has = abap_true.
      t194->value = t192.
      t189 = t194.
      DATA t196 TYPE REF TO zif_lnt_class_definition.
      DATA(t197) = VALUE abap_bool( ).
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t198 = t189.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t202) = VALUE abap_bool( ).
      IF t198 IS INITIAL.
        t202 = abap_true.
      ELSEIF t198->has = abap_false.
        t202 = abap_true.
      ENDIF.
      t197 = t202.
      IF t197 = abap_true.
      ELSE.
        DATA t206 TYPE REF TO zif_lnt_class_definition.
        DATA t208 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t209 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t209 = t186->current.
        t208 = t209.
        DATA t211 TYPE REF TO zif_lnt_class_definition.
        DATA(t212) = xsdbool( t208 IS INITIAL ).
        IF t212 = abap_true.
        ELSE.
          DATA t215 TYPE REF TO zif_lnt_class_definition.
          DATA t216 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t216 = t208.
          DATA(t218) = VALUE string( ).
          t218 = t189->value.
          t215 = t216->find_class_definition( i_name = t218 ).
          t211 = t215.
        ENDIF.
        t206 = t211.
        DATA t220 TYPE REF TO zif_lnt_class_definition.
        DATA(t221) = VALUE abap_bool( ).
        t221 = xsdbool( t206 IS BOUND ).
        IF t221 = abap_true.
          t220 = t206.
        ELSE.
          DATA t229 TYPE REF TO zcl_lnt_class.
          DATA t230 TYPE REF TO zcl_lnt_class.
          DATA t231 TYPE REF TO zif_lnt_object.
          DATA t232 TYPE REF TO zif_lnt_registry.
          t232 = t186->reg.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t236) = |CLAS|.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t236.
          t234 = t237.
          DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t241) = VALUE string( ).
          t241 = t189->value.
          DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t243->has = abap_true.
          t243->value = t241.
          t239 = t243.
          t231 = t232->get_object( i_type_9913 = t234 i_name = t239 ).
          DATA t245 TYPE REF TO object.
          t245 = t231.
          t230 ?= t245.
          t229 = t230.
          DATA t246 TYPE REF TO zif_lnt_class_definition.
          DATA(t247) = VALUE abap_bool( ).
          t247 = xsdbool( t229 IS BOUND ).
          IF t247 = abap_true.
            DATA t249 TYPE REF TO zif_lnt_class_definition.
            DATA t250 TYPE REF TO zcl_lnt_class.
            t250 = t229.
            t249 = t250->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t246 = t249.
          ELSE.
            CLEAR t246.
          ENDIF.
          t220 = t246.
        ENDIF.
        t196 = t220.
      ENDIF.
      t184 = t196.
      DATA(t253) = VALUE abap_bool( ).
      t253 = xsdbool( t184 IS BOUND ).
      IF t253 = abap_true.
        DATA t255 TYPE REF TO zcl_lnt_current_scope.
        t255 = t165->scope.
        DATA t258 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t260 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t261 TYPE REF TO zif_lnt_class_definition.
        t261 = t184.
        t260 ?= t261.
        t258 = t260.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t265) = |Object|.
        CREATE OBJECT t264.
        t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t264->sval = t265.
        DATA(t266) = VALUE string( ).
        t266 = t165->filename.
        DATA t268 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t270 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t274) = VALUE string( ).
        DATA(t275) = VALUE string( ).
        t275 = t167->value.
        DATA(t277) = strlen( t275 ).
        t274 = t275.
        IF t274 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t274 TO UPPER CASE.
        ELSE.
          t274 = zlnt_runtime_uppe_91169605024d=>full( t274 ).
        ENDIF.
        DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t278->has = abap_true.
        t278->value = t274.
        t271 = t278.
        DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t283) = |CLAS|.
        DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t284->has = abap_true.
        t284->value = t283.
        t280 = t284.
        DATA t286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t270 = NEW zcl_lnt_ireference_extras( i_oo_name = t271 i_oo_type = t280 i_found_qualified = t286 ).
        CREATE OBJECT t270->zlnt_view_ownkeys_b0e8086400eb.
        t270->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t270->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t288 ).
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t270->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t270->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t289 ).
        ENDIF.
        CREATE OBJECT t270->zlnt_json_ownkeys_70e5fd461788.
        t270->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t290) = |ooName|.
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t270->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
        DATA(t292) = |ooType|.
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t270->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t270->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
        ENDIF.
        t268 = t270.
        t255->add_reference( i_usage = t163 i_referencing = t258 i_type_9913 = t264 i_filename = t266 i_extra = t268 ).
      ELSE.
        DATA(t295) = VALUE abap_bool( ).
        DATA(t296) = VALUE abap_bool( ).
        DATA t300 TYPE REF TO zcl_lnt_current_scope.
        t300 = t165->scope.
        DATA t302 TYPE REF TO zcl_lnt_ddic.
        DATA t303 TYPE REF TO zif_lnt_registry.
        t303 = t300->reg.
        t302 = NEW zcl_lnt_ddic( i_reg_f149 = t303 ).
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t308) = VALUE string( ).
        t308 = t167->value.
        DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t310->has = abap_true.
        t310->value = t308.
        t305 = t310.
        DATA(t312) = VALUE abap_bool( ).
        DATA(t313) = VALUE abap_bool( ).
        DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t314 = t305.
        DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t318) = VALUE abap_bool( ).
        IF t314 IS INITIAL.
          t318 = abap_true.
        ELSEIF t314->has = abap_false.
          t318 = abap_true.
        ENDIF.
        t313 = t318.
        IF t313 = abap_true.
          t312 = abap_true.
        ELSE.
          DATA(t321) = VALUE abap_bool( ).
          DATA t322 TYPE REF TO zif_lnt_registry.
          t322 = t302->reg.
          DATA(t324) = VALUE string( ).
          t324 = t305->value.
          t321 = t322->in_error_namespace( i_name = t324 ).
          t312 = t321.
        ENDIF.
        t296 = t312.
        t295 = xsdbool( t296 = abap_false ).
        IF t295 = abap_true.
          DATA t327 TYPE REF TO zcl_lnt_current_scope.
          t327 = t165->scope.
          DATA t330 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t332) = |Object (Void)|.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t331->sval = t332.
          DATA(t333) = VALUE string( ).
          t333 = t165->filename.
          DATA t335 TYPE REF TO zcl_lnt_ireference_extras.
          t327->add_reference( i_usage = t163 i_referencing = t330 i_type_9913 = t331 i_filename = t333 i_extra = t335 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t338 TYPE REF TO zcl_lnt_abstract_token.
    t338 = t141.
    DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t341) = xsdbool( t338 IS INITIAL ).
    IF t341 = abap_true.
    ELSE.
      DATA(t344) = VALUE string( ).
      DATA(t348) = VALUE string( ).
      t348 = t338->str.
      t344 = t348.
      DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t350->has = abap_true.
      t350->value = t344.
      t340 = t350.
    ENDIF.
    me->super_class = t340.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `superClass`.
    DATA t352 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t352 = me->find_friends( i_def = t16 i_input_967e = t2 ).
    me->friends = t352.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `friends`.
    me->parse( i_input_967e = t2 i_input_node = t1 ).
    DATA t358 TYPE REF TO zcl_lnt_object_oriented.
    DATA t359 TYPE REF TO zcl_lnt_current_scope.
    t359 = t2->scope.
    t358 = NEW zcl_lnt_object_oriented( i_scope = t359 ).
    DATA t361 TYPE REF TO zcl_lnt_object_oriented.
    t361 = t358.
    DATA t363 TYPE REF TO zif_lnt_class_definition.
    t363 = me.
    DATA t366 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t366 = t361->from_super_classes( i_child = t363 ).
    DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t371 TYPE REF TO zif_lnt_interface_definition.
    t371 ?= t363.
    DATA t373 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t373 = t366.
    t369 = t361->from_interfaces( i_definition = t371 i_skip_34cc = t373 ).
    DATA t377 TYPE REF TO zcl_lnt_attributes.
    t377 = NEW zcl_lnt_attributes( i_node = t1 i_input_967e = t2 ).
    me->attributes = t377.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `attributes`.
    DATA t380 TYPE REF TO zcl_lnt_type_definitions.
    t380 = me->attributes->gt_ty_in_sr_ab_ty_cl_at_ts_att( ).
    me->types = t380.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
    DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t385 = me->attributes->aliases_62bb.
    me->aliases_62bb = t385.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `aliases`.
    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t390) = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
    t388 = t1->find_all_statements( i_type_9913 = t390 ).
    t387 = t388.
    DATA t392 TYPE REF TO zcl_lnt_statement_node.
    DATA t393 TYPE REF TO object.
    DATA(t394) = VALUE i( ).
    DO.
      t387->load( ).
      IF t394 >= lines( t387->items ).
        EXIT.
      ENDIF.
      CLEAR t393.
      READ TABLE t387->items INDEX t394 + 1 INTO t393.
      t394 = t394 + 1.
      DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t395.
      CLEAR t392.
      IF t393 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t395 ?= t393.
        DATA t396 TYPE REF TO object.
        CLEAR t396.
        t396 = t395->as_ref( ).
        t392 ?= t396.
      ELSE.
        t392 ?= t393.
      ENDIF.
      DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t397.
      DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t399.
      DATA t401 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t401.
      DATA t402 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t402.
      DATA(t404) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t402 = t392->find_direct_expression( i_type_9913 = t404 ).
      t401 = t402.
      DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t405.
      DATA(t406) = xsdbool( t401 IS INITIAL ).
      IF t406 = abap_true.
        CLEAR t405.
      ELSE.
        DATA(t409) = VALUE string( ).
        DATA t410 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t410.
        t410 = t401.
        t409 = t410->concat_tokens( ).
        DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t412->has = abap_true.
        t412->value = t409.
        t405 = t412.
      ENDIF.
      t399 = t405.
      DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t413.
      DATA(t414) = VALUE abap_bool( ).
      IF t399 IS INITIAL.
        t414 = abap_true.
      ELSEIF t399->has = abap_false.
        t414 = abap_true.
      ENDIF.
      IF t414 = abap_true.
        CLEAR t413.
      ELSE.
        DATA(t417) = VALUE string( ).
        DATA(t418) = VALUE string( ).
        t418 = t399->value.
        DATA(t420) = strlen( t418 ).
        t417 = t418.
        IF t417 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t417 TO UPPER CASE.
        ELSE.
          t417 = zlnt_runtime_uppe_91169605024d=>full( t417 ).
        ENDIF.
        DATA(t421) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t421->has = abap_true.
        t421->value = t417.
        t413 = t421.
      ENDIF.
      t397 = t413.
      DATA(t422) = VALUE abap_bool( ).
      DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t425.
      t425 = me->events_f95a.
      DATA(t427) = VALUE i( ).
      DATA(t428) = VALUE i( ).
      t425->load( ).
      t428 = lines( t425->items ).
      t427 = t428.
      DATA(t430) = VALUE i( ).
      t430 = 0.
      DATA t432 TYPE REF TO zif_lnt_event_definition.
      CLEAR t432.
      CLEAR t432.
      DO.
        DATA(t434) = VALUE abap_bool( ).
        t434 = xsdbool( t430 < t427 ).
        IF t434 = abap_false.
          EXIT.
        ENDIF.
        DATA t437 TYPE REF TO zif_lnt_event_definition.
        CLEAR t437.
        DATA t439 TYPE REF TO zif_lnt_event_definition.
        CLEAR t439.
        DATA t442 TYPE REF TO object.
        CLEAR t442.
        t442 = t425->get( p0 = t430 ).
        DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t443.
        CLEAR t439.
        IF t442 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t443 ?= t442.
          DATA t444 TYPE REF TO object.
          CLEAR t444.
          t444 = t443->as_ref( ).
          t439 ?= t444.
        ELSE.
          t439 ?= t442.
        ENDIF.
        t437 = t439.
        DATA(t445) = VALUE abap_bool( ).
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t446.
        DATA(t448) = VALUE string( ).
        DATA(t449) = VALUE string( ).
        t449 = t437->get_name( ).
        DATA(t451) = strlen( t449 ).
        t448 = t449.
        IF t448 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t448 TO UPPER CASE.
        ELSE.
          t448 = zlnt_runtime_uppe_91169605024d=>full( t448 ).
        ENDIF.
        DATA(t452) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t452->has = abap_true.
        t452->value = t448.
        t446 = t452.
        DATA(t455) = VALUE abap_bool( ).
        DATA(t456) = VALUE abap_bool( ).
        IF t446 IS BOUND.
          t455 = t446->has.
        ENDIF.
        IF t397 IS BOUND.
          t456 = t397->has.
        ENDIF.
        IF t455 = t456.
          IF t455 = abap_false.
            t445 = abap_true.
          ELSEIF t446->value = t397->value.
            t445 = abap_true.
          ENDIF.
        ENDIF.
        IF t445 = abap_true.
          t432 = t437.
          EXIT.
        ENDIF.
        DATA(t461) = VALUE i( ).
        DATA(t463) = 1.
        t461 = t430 + t463.
        t430 = t461.
      ENDDO.
      DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t465.
      CLEAR t465.
      DATA(t467) = VALUE abap_bool( ).
      DATA(t468) = xsdbool( t432 IS INITIAL ).
      t467 = xsdbool( t468 = abap_false ).
      t422 = t467.
      IF t422 = abap_true.
        DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t470.
        t470 = t2->issues.
        DATA t472 TYPE REF TO zcl_lnt_issue.
        CLEAR t472.
        DATA t474 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t474.
        t474 = t392->get_first_token( ).
        DATA(t476) = VALUE string( ).
        DATA(t477) = VALUE string( ).
        DATA(t478) = |Event |.
        DATA(t479) = VALUE string( ).
        DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t480.
        t480 = t397.
        DATA(t482) = VALUE string( ).
        DATA(t483) = VALUE abap_bool( ).
        IF t480 IS INITIAL.
          t483 = abap_true.
        ELSEIF t480->has = abap_false.
          t483 = abap_true.
        ENDIF.
        IF t483 = abap_true.
          t482 = |undefined|.
        ELSE.
          DATA(t486) = VALUE string( ).
          t486 = t480->value.
          t482 = t486.
        ENDIF.
        t479 = t482.
        DATA(t488) = strlen( t478 ).
        t477 = |{ t478 }{ t479 }|.
        DATA(t489) = | already defined|.
        DATA(t490) = strlen( t477 ).
        t476 = |{ t477 }{ t489 }|.
        DATA t491 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t491.
        t472 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t474 i_message_26cb = t476 i_fix = t491 ).
        t470->load( ).
        APPEND t472 TO t470->items.
        t470->save( ).
        CONTINUE.
      ENDIF.
      DATA(t492) = me->events_f95a.
      DATA t493 TYPE REF TO zcl_lnt_event_definition.
      CLEAR t493.
      DATA(t495) = CONV f( 3 ).
      t493 = NEW zcl_lnt_event_definition( i_node = t392 i_visibility_33e6 = t495 i_input_967e = t2 ).
      t492->load( ).
      APPEND t493 TO t492->items.
      t492->save( ).
    ENDDO.
    DATA t497 TYPE REF TO zcl_lnt_method_definitions.
    t497 = NEW zcl_lnt_method_definitions( i_node = t1 i_input_967e = t2 ).
    me->method_defs = t497.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methodDefs`.
    DATA t500 TYPE REF TO zcl_lnt_spaghetti_scope.
    DATA t501 TYPE REF TO zcl_lnt_current_scope.
    t501 = t2->scope.
    DATA t503 TYPE REF TO zcl_lnt_position.
    DATA t504 TYPE REF TO zcl_lnt_abstract_token.
    DATA t505 TYPE REF TO zcl_lnt_abstract_token.
    t505 = t1->get_last_token( ).
    t504 = t505.
    DATA t507 TYPE REF TO zcl_lnt_position.
    DATA(t508) = VALUE f( ).
    DATA t510 TYPE REF TO zcl_lnt_position.
    t510 = t504->start.
    DATA(t512) = VALUE f( ).
    t512 = t510->row.
    t508 = t512.
    DATA t514 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t515 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t517 TYPE REF TO zcl_lnt_position.
    t517 = t504->start.
    DATA t519 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t519 = t517->col.
    t515 = t519.
    DATA(t521) = VALUE f( ).
    DATA(t522) = VALUE i( ).
    DATA(t523) = VALUE string( ).
    t523 = t504->str.
    t522 = strlen( t523 ).
    t521 = t522.
    DATA(t526) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t526->has = abap_true.
    t526->value = t521.
    t514 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t515 right = t526 op = `+` ).
    t507 = NEW zcl_lnt_position( i_row = t508 i_col = t514 ).
    t503 = t507.
    t500 = t501->pop( i_end = t503 ).
    DATA(t527) = VALUE string( ).
    DATA(t528) = VALUE string( ).
    DATA(t529) = VALUE string( ).
    DATA t530 TYPE REF TO zcl_lnt_statement_node.
    t530 = t16.
    t529 = t530->concat_tokens( ).
    DATA(t532) = strlen( t529 ).
    t528 = t529.
    IF t528 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t528 TO UPPER CASE.
    ELSE.
      t528 = zlnt_runtime_uppe_91169605024d=>full( t528 ).
    ENDIF.
    t527 = t528.
    DATA(t533) = VALUE abap_bool( ).
    DATA(t534) = VALUE i( ).
    DATA(t536) = | FOR TESTING|.
    DATA(t537) = strlen( t527 ).
    IF t536 IS INITIAL.
      t534 = 0.
    ELSE.
      FIND t536 IN t527 MATCH OFFSET t534.
      IF sy-subrc <> 0.
        t534 = -1.
      ENDIF.
    ENDIF.
    DATA(t538) = 0.
    t533 = xsdbool( t534 >= t538 ).
    me->testing = t533.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `testing`.
    DATA(t539) = VALUE abap_bool( ).
    DATA(t540) = VALUE i( ).
    DATA(t542) = | SHARED MEMORY ENABLED|.
    DATA(t543) = strlen( t527 ).
    IF t542 IS INITIAL.
      t540 = 0.
    ELSE.
      FIND t542 IN t527 MATCH OFFSET t540.
      IF sy-subrc <> 0.
        t540 = -1.
      ENDIF.
    ENDIF.
    DATA(t544) = 0.
    t539 = xsdbool( t540 >= t544 ).
    me->shared_memory = t539.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sharedMemory`.
    DATA(t545) = VALUE abap_bool( ).
    DATA t548 TYPE REF TO zcl_lnt_statement_node.
    t548 = t16.
    DATA t550 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t551) = xsdbool( t548 IS INITIAL ).
    IF t551 = abap_true.
    ELSE.
      DATA t554 TYPE REF TO zcl_lnt_abstract_token.
      DATA t555 TYPE REF TO zcl_lnt_statement_node.
      t555 = t548.
      DATA(t557) = |ABSTRACT|.
      t554 = t555->find_direct_token_by_text( i_text = t557 ).
      t550 = t554.
    ENDIF.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t560) = VALUE abap_bool( ).
    DATA(t561) = xsdbool( t550 IS INITIAL ).
    t560 = xsdbool( t561 = abap_false ).
    t545 = t560.
    me->abstract = t545.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstract`.
    DATA(t563) = VALUE abap_bool( ).
    DATA(t564) = VALUE i( ).
    DATA(t566) = | CREATE PRIVATE|.
    DATA(t567) = strlen( t527 ).
    IF t566 IS INITIAL.
      t564 = 0.
    ELSE.
      FIND t566 IN t527 MATCH OFFSET t564.
      IF sy-subrc <> 0.
        t564 = -1.
      ENDIF.
    ENDIF.
    DATA(t568) = 0.
    t563 = xsdbool( t564 >= t568 ).
    IF t563 = abap_true.
      DATA(t569) = CONV f( 1 ).
      me->create_visibility_value = t569.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createVisibilityValue`.
    ELSE.
      DATA(t570) = VALUE abap_bool( ).
      DATA(t571) = VALUE i( ).
      DATA(t573) = | CREATE PROTECTED|.
      DATA(t574) = strlen( t527 ).
      IF t573 IS INITIAL.
        t571 = 0.
      ELSE.
        FIND t573 IN t527 MATCH OFFSET t571.
        IF sy-subrc <> 0.
          t571 = -1.
        ENDIF.
      ENDIF.
      DATA(t575) = 0.
      t570 = xsdbool( t571 >= t575 ).
      IF t570 = abap_true.
        DATA(t576) = CONV f( 2 ).
        me->create_visibility_value = t576.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createVisibilityValue`.
      ELSE.
        DATA(t577) = CONV f( 3 ).
        me->create_visibility_value = t577.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createVisibilityValue`.
      ENDIF.
    ENDIF.
    me->check_interface_visibility( i_input_967e = t2 i_node = t1 ).
    me->chck_mthds_frm_spr_clsss( i_input_967e = t2 ).
    me->check_method_name_conflicts( i_input_967e = t2 ).
    me->check_event_name_conflicts( i_input_967e = t2 ).
    DATA t583 TYPE REF TO zcl_lnt_syntax_input.
    t583 = t2.
    DATA(t585) = VALUE abap_bool( ).
    DATA(t586) = VALUE i( ).
    DATA(t587) = VALUE string( ).
    DATA t588 TYPE REF TO zcl_lnt_fi_identifier.
    t588 = me.
    DATA(t590) = VALUE string( ).
    DATA(t591) = VALUE string( ).
    DATA(t592) = VALUE string( ).
    DATA t594 TYPE REF TO zcl_lnt_abstract_token.
    t594 = t588->token.
    DATA(t596) = VALUE string( ).
    t596 = t594->str.
    t592 = t596.
    t591 = t592.
    DATA(t598) = VALUE abap_bool( ).
    DATA(t599) = VALUE string( ).
    DATA(t600) = t591.
    DATA(t601) = 0.
    DATA(t602) = 1.
    DATA(t603) = strlen( t600 ).
    IF t601 < 0.
      t601 = t601 + t603.
      IF t601 < 0.
        t601 = 0.
      ENDIF.
    ENDIF.
    IF t601 > t603 OR t602 <= 0.
      CLEAR t599.
    ELSE.
      IF t602 > t603 - t601.
        t602 = t603 - t601.
      ENDIF.
      t599 = t600+t601(t602).
    ENDIF.
    DATA(t604) = |!|.
    t598 = xsdbool( t599 = t604 ).
    IF t598 = abap_true.
      DATA(t605) = VALUE string( ).
      DATA(t606) = VALUE string( ).
      t606 = t591.
      DATA(t608) = VALUE string( ).
      DATA(t610) = 1.
      DATA(t611) = VALUE i( ).
      t611 = strlen( t606 ).
      DATA(t614) = strlen( t606 ).
      IF t610 < 0.
        t610 = t610 + t614.
        IF t610 < 0.
          t610 = 0.
        ENDIF.
      ENDIF.
      IF t610 > t614 OR t611 <= 0.
        CLEAR t608.
      ELSE.
        IF t611 > t614 - t610.
          t611 = t614 - t610.
        ENDIF.
        t608 = t606+t610(t611).
      ENDIF.
      t605 = t608.
      t591 = t605.
    ENDIF.
    t590 = t591.
    t587 = t590.
    t586 = strlen( t587 ).
    DATA(t617) = 30.
    t585 = xsdbool( t586 > t617 ).
    IF t585 = abap_true.
      DATA(t618) = VALUE string( ).
      DATA(t619) = VALUE string( ).
      DATA(t620) = VALUE string( ).
      DATA(t621) = |Class name "|.
      DATA(t622) = VALUE string( ).
      DATA t623 TYPE REF TO zcl_lnt_fi_identifier.
      t623 = me.
      DATA(t625) = VALUE string( ).
      DATA(t626) = VALUE string( ).
      DATA(t627) = VALUE string( ).
      DATA t629 TYPE REF TO zcl_lnt_abstract_token.
      t629 = t623->token.
      DATA(t631) = VALUE string( ).
      t631 = t629->str.
      t627 = t631.
      t626 = t627.
      DATA(t633) = VALUE abap_bool( ).
      DATA(t634) = VALUE string( ).
      DATA(t635) = t626.
      DATA(t636) = 0.
      DATA(t637) = 1.
      DATA(t638) = strlen( t635 ).
      IF t636 < 0.
        t636 = t636 + t638.
        IF t636 < 0.
          t636 = 0.
        ENDIF.
      ENDIF.
      IF t636 > t638 OR t637 <= 0.
        CLEAR t634.
      ELSE.
        IF t637 > t638 - t636.
          t637 = t638 - t636.
        ENDIF.
        t634 = t635+t636(t637).
      ENDIF.
      DATA(t639) = |!|.
      t633 = xsdbool( t634 = t639 ).
      IF t633 = abap_true.
        DATA(t640) = VALUE string( ).
        DATA(t641) = VALUE string( ).
        t641 = t626.
        DATA(t643) = VALUE string( ).
        DATA(t645) = 1.
        DATA(t646) = VALUE i( ).
        t646 = strlen( t641 ).
        DATA(t649) = strlen( t641 ).
        IF t645 < 0.
          t645 = t645 + t649.
          IF t645 < 0.
            t645 = 0.
          ENDIF.
        ENDIF.
        IF t645 > t649 OR t646 <= 0.
          CLEAR t643.
        ELSE.
          IF t646 > t649 - t645.
            t646 = t649 - t645.
          ENDIF.
          t643 = t641+t645(t646).
        ENDIF.
        t640 = t643.
        t626 = t640.
      ENDIF.
      t625 = t626.
      t622 = t625.
      DATA(t651) = strlen( t621 ).
      t620 = |{ t621 }{ t622 }|.
      DATA(t652) = |" is too long, maximum length is 30 characters|.
      DATA(t653) = strlen( t620 ).
      t619 = |{ t620 }{ t652 }|.
      t618 = t619.
      DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t654 = t583->issues.
      DATA t656 TYPE REF TO zcl_lnt_issue.
      DATA t658 TYPE REF TO zcl_lnt_abstract_token.
      DATA t659 TYPE REF TO zcl_lnt_fi_identifier.
      t659 = me.
      DATA t661 TYPE REF TO zcl_lnt_abstract_token.
      t661 = t659->token.
      t658 = t661.
      DATA t664 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t656 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t583 i_token = t658 i_message_26cb = t618 i_fix = t664 ).
      t654->load( ).
      APPEND t656 TO t654->items.
      t654->save( ).
    ENDIF.
    me->check_method_name_length( i_input_967e = t2 ).
    me->check_class_constructor( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD get_friends.
    result = me->friends.

  ENDMETHOD.

  METHOD get_events.
    result = me->events_f95a.

  ENDMETHOD.

  METHOD get_method_definitions.
    result = me->method_defs.

  ENDMETHOD.

  METHOD g_t_d_i_s_ab_ty_cl_df_ts_cl_df.
    result = me->types.

  ENDMETHOD.

  METHOD get_super_class.
    result = me->super_class.

  ENDMETHOD.

  METHOD g_a_in_sr_ab_ty_cl_df_ts_cl_df.
    result = me->attributes.

  ENDMETHOD.

  METHOD is_global.
    DATA(t1) = CONV abap_bool( me->global_value ).
    result = t1.

  ENDMETHOD.

  METHOD is_final.
    DATA(t1) = CONV abap_bool( me->final_value ).
    result = t1.

  ENDMETHOD.

  METHOD get_implementing.
    result = me->implementing.

  ENDMETHOD.

  METHOD get_aliases.
    result = me->aliases_62bb.

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
    DATA(t1) = CONV abap_bool( me->shared_memory ).
    result = t1.

  ENDMETHOD.

  METHOD get_create_visibility.
    DATA(t1) = CONV f( me->create_visibility_value ).
    result = t1.

  ENDMETHOD.

  METHOD check_class_name_length.
    DATA(t1) = i_input_967e.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE i( ).
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    t5 = me.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE string.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    t11 = t5->token.
    DATA t13 TYPE string.
    t13 = t11->str.
    t8 = t13.
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
      t23 = t8.
      DATA(t25) = VALUE string( ).
      DATA(t27) = 1.
      DATA t28 TYPE i.
      t28 = strlen( t23 ).
      DATA(t31) = strlen( t23 ).
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
        t25 = t23+t27(t28).
      ENDIF.
      t22 = t25.
      t8 = t22.
    ENDIF.
    t7 = t8.
    t4 = t7.
    t3 = strlen( t4 ).
    DATA(t34) = 30.
    t2 = xsdbool( t3 > t34 ).
    IF t2 = abap_true.
      DATA(t35) = VALUE string( ).
      DATA(t36) = VALUE string( ).
      DATA(t37) = VALUE string( ).
      DATA(t38) = |Class name "|.
      DATA(t39) = VALUE string( ).
      DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
      t40 = me.
      DATA(t42) = VALUE string( ).
      DATA t43 TYPE string.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      t46 = t40->token.
      DATA t48 TYPE string.
      t48 = t46->str.
      t43 = t48.
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
        t58 = t43.
        DATA(t60) = VALUE string( ).
        DATA(t62) = 1.
        DATA t63 TYPE i.
        t63 = strlen( t58 ).
        DATA(t66) = strlen( t58 ).
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
          t60 = t58+t62(t63).
        ENDIF.
        t57 = t60.
        t43 = t57.
      ENDIF.
      t42 = t43.
      t39 = t42.
      DATA(t68) = strlen( t38 ).
      t37 = |{ t38 }{ t39 }|.
      DATA(t69) = |" is too long, maximum length is 30 characters|.
      DATA(t70) = strlen( t37 ).
      t36 = |{ t37 }{ t69 }|.
      t35 = t36.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t71 = t1->issues.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA t76 TYPE REF TO zcl_lnt_fi_identifier.
      t76 = me.
      DATA t78 TYPE REF TO zcl_lnt_abstract_token.
      t78 = t76->token.
      t75 = t78.
      DATA t81 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t75 i_message_26cb = t35 i_fix = t81 ).
      t71->load( ).
      APPEND t73 TO t71->items.
      t71->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD find_super.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t7 TYPE REF TO zcl_lnt_statement_node.
    t7 = i_def.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t10) = xsdbool( t7 IS INITIAL ).
    IF t10 = abap_true.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_statement_node.
      t14 = t7.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d348_ba08da875831.
      t13 = t14->find_direct_expression( i_type_9913 = t16 ).
      t9 = t13.
    ENDIF.
    t5 = t9.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = xsdbool( t5 IS INITIAL ).
    IF t18 = abap_true.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      t22 = t5.
      t21 = t22->get_first_token( ).
      t17 = t21.
    ENDIF.
    t3 = t17.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    t24 = t3.
    DATA t26 TYPE REF TO zcl_lnt_syntax_input.
    t26 = t2.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zcl_lnt_abstract_token.
    t30 = t24.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = xsdbool( t30 IS INITIAL ).
    IF t33 = abap_true.
    ELSE.
      DATA t40 TYPE string.
      t40 = t30->str.
      DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t42->has = abap_true.
      t42->value = t40.
      t32 = t42.
    ENDIF.
    t28 = t32.
    DATA(t43) = VALUE abap_bool( ).
    IF t28 IS BOUND.
      IF t28->has = abap_true.
        t43 = xsdbool( strlen( t28->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t43 = abap_true.
      DATA t45 TYPE REF TO zif_lnt_class_definition.
      DATA t47 TYPE REF TO zcl_lnt_current_scope.
      DATA t48 TYPE REF TO zcl_lnt_current_scope.
      t48 = t26->scope.
      t47 = t48.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t53 TYPE string.
      t53 = t28->value.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = t53.
      t50 = t55.
      DATA t57 TYPE REF TO zif_lnt_class_definition.
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = t50.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t63) = VALUE abap_bool( ).
      IF t59 IS INITIAL.
        t63 = abap_true.
      ELSEIF t59->has = abap_false.
        t63 = abap_true.
      ENDIF.
      t58 = t63.
      IF t58 = abap_true.
      ELSE.
        DATA t67 TYPE REF TO zif_lnt_class_definition.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t70 = t47->current.
        t69 = t70.
        DATA t72 TYPE REF TO zif_lnt_class_definition.
        DATA(t73) = xsdbool( t69 IS INITIAL ).
        IF t73 = abap_true.
        ELSE.
          DATA t76 TYPE REF TO zif_lnt_class_definition.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t77 = t69.
          DATA t79 TYPE string.
          t79 = t50->value.
          t76 = t77->find_class_definition( i_name = t79 ).
          t72 = t76.
        ENDIF.
        t67 = t72.
        DATA t81 TYPE REF TO zif_lnt_class_definition.
        DATA t82 TYPE abap_bool.
        t82 = xsdbool( t67 IS BOUND ).
        IF t82 = abap_true.
          t81 = t67.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_class.
          DATA t91 TYPE REF TO zcl_lnt_class.
          DATA t92 TYPE REF TO zif_lnt_object.
          DATA t93 TYPE REF TO zif_lnt_registry.
          t93 = t47->reg.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t97) = |CLAS|.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = t97.
          t95 = t98.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t102 TYPE string.
          t102 = t50->value.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t102.
          t100 = t104.
          t92 = t93->get_object( i_type_9913 = t95 i_name = t100 ).
          DATA t106 TYPE REF TO object.
          t106 = t92.
          t91 ?= t106.
          t90 = t91.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          DATA t108 TYPE abap_bool.
          t108 = xsdbool( t90 IS BOUND ).
          IF t108 = abap_true.
            DATA t110 TYPE REF TO zif_lnt_class_definition.
            DATA t111 TYPE REF TO zcl_lnt_class.
            t111 = t90.
            t110 = t111->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t107 = t110.
          ELSE.
            CLEAR t107.
          ENDIF.
          t81 = t107.
        ENDIF.
        t57 = t81.
      ENDIF.
      t45 = t57.
      DATA t114 TYPE abap_bool.
      t114 = xsdbool( t45 IS BOUND ).
      IF t114 = abap_true.
        DATA t116 TYPE REF TO zcl_lnt_current_scope.
        t116 = t26->scope.
        DATA t119 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t122 TYPE REF TO zif_lnt_class_definition.
        t122 = t45.
        t121 ?= t122.
        t119 = t121.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t126) = |Object|.
        CREATE OBJECT t125.
        t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t125->sval = t126.
        DATA t127 TYPE string.
        t127 = t26->filename.
        DATA t129 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t131 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t135 TYPE string.
        DATA t136 TYPE string.
        t136 = t28->value.
        DATA(t138) = strlen( t136 ).
        t135 = t136.
        IF t135 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t135 TO UPPER CASE.
        ELSE.
          t135 = zlnt_runtime_uppe_91169605024d=>full( t135 ).
        ENDIF.
        DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t139->has = abap_true.
        t139->value = t135.
        t132 = t139.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t144) = |CLAS|.
        DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t145->has = abap_true.
        t145->value = t144.
        t141 = t145.
        DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t131 = NEW zcl_lnt_ireference_extras( i_oo_name = t132 i_oo_type = t141 i_found_qualified = t147 ).
        CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
        t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t149 ).
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t150 ).
        ENDIF.
        CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
        t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t151) = |ooName|.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
        DATA(t153) = |ooType|.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
        ENDIF.
        t129 = t131.
        t116->add_reference( i_usage = t24 i_referencing = t119 i_type_9913 = t125 i_filename = t127 i_extra = t129 ).
      ELSE.
        DATA(t156) = VALUE abap_bool( ).
        DATA(t157) = VALUE abap_bool( ).
        DATA t161 TYPE REF TO zcl_lnt_current_scope.
        t161 = t26->scope.
        DATA t163 TYPE REF TO zcl_lnt_ddic.
        DATA t164 TYPE REF TO zif_lnt_registry.
        t164 = t161->reg.
        t163 = NEW zcl_lnt_ddic( i_reg_f149 = t164 ).
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t169 TYPE string.
        t169 = t28->value.
        DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t171->has = abap_true.
        t171->value = t169.
        t166 = t171.
        DATA(t173) = VALUE abap_bool( ).
        DATA(t174) = VALUE abap_bool( ).
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t175 = t166.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t179) = VALUE abap_bool( ).
        IF t175 IS INITIAL.
          t179 = abap_true.
        ELSEIF t175->has = abap_false.
          t179 = abap_true.
        ENDIF.
        t174 = t179.
        IF t174 = abap_true.
          t173 = abap_true.
        ELSE.
          DATA t182 TYPE abap_bool.
          DATA t183 TYPE REF TO zif_lnt_registry.
          t183 = t163->reg.
          DATA t185 TYPE string.
          t185 = t166->value.
          t182 = t183->in_error_namespace( i_name = t185 ).
          t173 = t182.
        ENDIF.
        t157 = t173.
        t156 = xsdbool( t157 = abap_false ).
        IF t156 = abap_true.
          DATA t188 TYPE REF TO zcl_lnt_current_scope.
          t188 = t26->scope.
          DATA t191 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t193) = |Object (Void)|.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t192->sval = t193.
          DATA t194 TYPE string.
          t194 = t26->filename.
          DATA t196 TYPE REF TO zcl_lnt_ireference_extras.
          t188->add_reference( i_usage = t24 i_referencing = t191 i_type_9913 = t192 i_filename = t194 i_extra = t196 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t199 TYPE REF TO zcl_lnt_abstract_token.
    t199 = t3.
    DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t202) = xsdbool( t199 IS INITIAL ).
    IF t202 = abap_true.
    ELSE.
      DATA t209 TYPE string.
      t209 = t199->str.
      DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t211->has = abap_true.
      t211->value = t209.
      t201 = t211.
    ENDIF.
    result = t201.

  ENDMETHOD.

  METHOD check_method_name_length.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t4 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    DATA(t9) = me->method_defs.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t4 = t7.
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t12.
      t12 = t2->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      t14 = t11->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      CLEAR t16.
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      CLEAR t18.
      t18 = t11->value.
      t16 = t18.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      t22 = abap_false.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = VALUE abap_bool( ).
          DATA(t27) = VALUE f( ).
          DATA(t28) = VALUE i( ).
          DATA(t29) = VALUE string( ).
          t29 = t16->get_name( ).
          t28 = strlen( t29 ).
          t27 = t28.
          DATA(t32) = CONV f( 30 ).
          t26 = xsdbool( t27 > t32 ).
          t25 = t26.
          IF t26 = abap_true.
            DATA(t33) = VALUE abap_bool( ).
            DATA(t34) = VALUE abap_bool( ).
            DATA(t35) = VALUE f( ).
            DATA(t36) = VALUE i( ).
            DATA(t37) = VALUE string( ).
            t37 = t16->get_name( ).
            DATA(t39) = |~|.
            DATA(t40) = strlen( t37 ).
            IF t39 IS INITIAL.
              t36 = 0.
            ELSE.
              FIND t39 IN t37 MATCH OFFSET t36.
              IF sy-subrc <> 0.
                t36 = -1.
              ENDIF.
            ENDIF.
            t35 = t36.
            DATA(t41) = CONV f( 0 ).
            t34 = xsdbool( t35 >= t41 ).
            t33 = xsdbool( t34 = abap_false ).
            t25 = t33.
          ENDIF.
          t21 = t25.
          t22 = abap_true.
        CATCH cx_root INTO t24.
          DATA(t44) = VALUE abap_bool( ).
          t44 = xsdbool( t22 = abap_false ).
          IF t44 = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      DATA(t47) = VALUE abap_bool( ).
      t47 = xsdbool( t22 = abap_false ).
      IF t47 = abap_true.
        t2->close( ).
      ENDIF.
      t20 = t21.
      IF t20 = abap_true.
        DATA(t51) = VALUE string( ).
        DATA(t52) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA(t54) = VALUE abap_bool( ).
        t54 = abap_false.
        DATA t56 TYPE REF TO cx_root.
        CLEAR t56.
        TRY.
            DATA(t57) = VALUE string( ).
            DATA(t58) = VALUE string( ).
            DATA(t59) = |Method name "|.
            DATA(t60) = VALUE string( ).
            t60 = t16->get_name( ).
            DATA(t62) = strlen( t59 ).
            t58 = |{ t59 }{ t60 }|.
            DATA(t63) = |" is too long, maximum length is 30 characters|.
            DATA(t64) = strlen( t58 ).
            t57 = |{ t58 }{ t63 }|.
            t53 = t57.
            t54 = abap_true.
          CATCH cx_root INTO t56.
            DATA(t66) = VALUE abap_bool( ).
            t66 = xsdbool( t54 = abap_false ).
            IF t66 = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t56.
        ENDTRY.
        DATA(t69) = VALUE abap_bool( ).
        t69 = xsdbool( t54 = abap_false ).
        IF t69 = abap_true.
          t2->close( ).
        ENDIF.
        t52 = t53.
        t51 = t52.
        DATA(t73) = VALUE f( ).
        DATA(t74) = VALUE f( ).
        DATA(t75) = VALUE abap_bool( ).
        t75 = abap_false.
        DATA t77 TYPE REF TO cx_root.
        CLEAR t77.
        TRY.
            DATA(t78) = VALUE f( ).
            DATA(t79) = VALUE i( ).
            DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t80.
            t80 = t1->issues.
            DATA t82 TYPE REF TO zcl_lnt_issue.
            CLEAR t82.
            DATA t84 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t84.
            t84 = t16->get_token( ).
            DATA t87 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t87.
            t82 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t84 i_message_26cb = t51 i_fix = t87 ).
            t80->load( ).
            APPEND t82 TO t80->items.
            t79 = lines( t80->items ).
            t80->save( ).
            t78 = t79.
            t74 = t78.
            t75 = abap_true.
          CATCH cx_root INTO t77.
            DATA(t89) = VALUE abap_bool( ).
            t89 = xsdbool( t75 = abap_false ).
            IF t89 = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t77.
        ENDTRY.
        DATA(t92) = VALUE abap_bool( ).
        t92 = xsdbool( t75 = abap_false ).
        IF t92 = abap_true.
          t2->close( ).
        ENDIF.
        t73 = t74.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_class_constructor.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t4 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    DATA(t9) = me->method_defs.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t4 = t7.
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t12.
      t12 = t2->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      t14 = t11->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      CLEAR t16.
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      CLEAR t18.
      t18 = t11->value.
      t16 = t18.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      t22 = abap_false.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = VALUE string( ).
          DATA(t27) = VALUE string( ).
          t27 = t16->get_name( ).
          DATA(t29) = strlen( t27 ).
          t26 = t27.
          IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t26 TO UPPER CASE.
          ELSE.
            t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
          ENDIF.
          DATA(t30) = |CLASS_CONSTRUCTOR|.
          t25 = xsdbool( t26 <> t30 ).
          t21 = t25.
          t22 = abap_true.
        CATCH cx_root INTO t24.
          DATA(t32) = VALUE abap_bool( ).
          t32 = xsdbool( t22 = abap_false ).
          IF t32 = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      DATA(t35) = VALUE abap_bool( ).
      t35 = xsdbool( t22 = abap_false ).
      IF t35 = abap_true.
        t2->close( ).
      ENDIF.
      t20 = t21.
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = VALUE abap_bool( ).
      t41 = abap_false.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = VALUE abap_bool( ).
          t45 = t16->is_static_4685( ).
          t44 = xsdbool( t45 = abap_false ).
          t40 = t44.
          t41 = abap_true.
        CATCH cx_root INTO t43.
          DATA(t49) = VALUE abap_bool( ).
          t49 = xsdbool( t41 = abap_false ).
          IF t49 = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      DATA(t52) = VALUE abap_bool( ).
      t52 = xsdbool( t41 = abap_false ).
      IF t52 = abap_true.
        t2->close( ).
      ENDIF.
      t39 = t40.
      IF t39 = abap_true.
        DATA(t56) = VALUE f( ).
        DATA(t57) = VALUE f( ).
        DATA(t58) = VALUE abap_bool( ).
        t58 = abap_false.
        DATA t60 TYPE REF TO cx_root.
        CLEAR t60.
        TRY.
            DATA(t61) = VALUE f( ).
            DATA(t62) = VALUE i( ).
            DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t63.
            t63 = t1->issues.
            DATA t65 TYPE REF TO zcl_lnt_issue.
            CLEAR t65.
            DATA t67 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t67.
            t67 = t16->get_token( ).
            DATA(t69) = |CLASS_CONSTRUCTOR must be static|.
            DATA t70 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t70.
            t65 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t67 i_message_26cb = t69 i_fix = t70 ).
            t63->load( ).
            APPEND t65 TO t63->items.
            t62 = lines( t63->items ).
            t63->save( ).
            t61 = t62.
            t57 = t61.
            t58 = abap_true.
          CATCH cx_root INTO t60.
            DATA(t72) = VALUE abap_bool( ).
            t72 = xsdbool( t58 = abap_false ).
            IF t72 = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t60.
        ENDTRY.
        DATA(t75) = VALUE abap_bool( ).
        t75 = xsdbool( t58 = abap_false ).
        IF t75 = abap_true.
          t2->close( ).
        ENDIF.
        t56 = t57.
      ELSE.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        t81 = abap_false.
        DATA t83 TYPE REF TO cx_root.
        CLEAR t83.
        TRY.
            DATA(t84) = VALUE abap_bool( ).
            DATA(t85) = VALUE f( ).
            t85 = t16->get_visibility( ).
            DATA(t87) = CONV f( 3 ).
            t84 = xsdbool( t85 <> t87 ).
            t80 = t84.
            t81 = abap_true.
          CATCH cx_root INTO t83.
            DATA(t89) = VALUE abap_bool( ).
            t89 = xsdbool( t81 = abap_false ).
            IF t89 = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t83.
        ENDTRY.
        DATA(t92) = VALUE abap_bool( ).
        t92 = xsdbool( t81 = abap_false ).
        IF t92 = abap_true.
          t2->close( ).
        ENDIF.
        t79 = t80.
        IF t79 = abap_true.
          DATA(t96) = VALUE f( ).
          DATA(t97) = VALUE f( ).
          DATA(t98) = VALUE abap_bool( ).
          t98 = abap_false.
          DATA t100 TYPE REF TO cx_root.
          CLEAR t100.
          TRY.
              DATA(t101) = VALUE f( ).
              DATA(t102) = VALUE i( ).
              DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t103.
              t103 = t1->issues.
              DATA t105 TYPE REF TO zcl_lnt_issue.
              CLEAR t105.
              DATA t107 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t107.
              t107 = t16->get_token( ).
              DATA(t109) = |CLASS_CONSTRUCTOR must be declared in the public section|.
              DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t110.
              t105 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t107 i_message_26cb = t109 i_fix = t110 ).
              t103->load( ).
              APPEND t105 TO t103->items.
              t102 = lines( t103->items ).
              t103->save( ).
              t101 = t102.
              t97 = t101.
              t98 = abap_true.
            CATCH cx_root INTO t100.
              DATA(t112) = VALUE abap_bool( ).
              t112 = xsdbool( t98 = abap_false ).
              IF t112 = abap_true.
                t2->close( ).
              ENDIF.
              RAISE EXCEPTION t100.
          ENDTRY.
          DATA(t115) = VALUE abap_bool( ).
          t115 = xsdbool( t98 = abap_false ).
          IF t115 = abap_true.
            t2->close( ).
          ENDIF.
          t96 = t97.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_interface_visibility.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_ac33216d35c4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_ac33216d35c4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_ac33216d35c4.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
    t8 = t2->find_direct_structure( i_type_9913 = t10 ).
    t5->load( ).
    APPEND t8 TO t5->items.
    t5->save( ).
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
    t12 = t2->find_direct_structure( i_type_9913 = t14 ).
    t5->load( ).
    APPEND t12 TO t5->items.
    t5->save( ).
    t3 = t5.
    DATA t17 TYPE REF TO zcl_lnt_structure_node.
    DATA(t18) = VALUE i( ).
    DO.
      t3->load( ).
      IF t18 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t3->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      DATA t22 TYPE REF TO zcl_lnt_structure_node.
      t22 = t17.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      DATA(t25) = xsdbool( t22 IS INITIAL ).
      IF t25 = abap_true.
        CLEAR t24.
      ELSE.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t29 TYPE REF TO zcl_lnt_structure_node.
        t29 = t22.
        DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
        t28 = t29->find_all_statements( i_type_9913 = t31 ).
        t24 = t28.
      ENDIF.
      t20 = t24.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA t33 TYPE abap_bool.
      t33 = xsdbool( t20 IS BOUND ).
      IF t33 = abap_true.
        t32 = t20.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t37.
        t32 = t37.
      ENDIF.
      t19 = t32.
      DATA t38 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      DATA(t40) = VALUE i( ).
      DO.
        t19->load( ).
        IF t40 >= lines( t19->items ).
          EXIT.
        ENDIF.
        CLEAR t39.
        READ TABLE t19->items INDEX t40 + 1 INTO t39.
        t40 = t40 + 1.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t38.
        IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t41 ?= t39.
          DATA t42 TYPE REF TO object.
          t42 = t41->as_ref( ).
          t38 ?= t42.
        ELSE.
          t38 ?= t39.
        ENDIF.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t43 = t1->issues.
        DATA t45 TYPE REF TO zcl_lnt_issue.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        t47 = t38->get_first_token( ).
        DATA(t49) = |INTERFACES can only be declared in public sections|.
        DATA t50 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t50.
        t45 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t47 i_message_26cb = t49 i_fix = t50 ).
        t43->load( ).
        APPEND t45 TO t43->items.
        t43->save( ).
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD chck_mthds_frm_spr_clsss.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_current_scope.
    DATA t3 TYPE REF TO zcl_lnt_current_scope.
    t3 = t1->scope.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->super_class.
    DATA t7 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t7 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t9 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
    t9 = NEW zlnt_runtime_map__fed782b2fc26( ).
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      t12 = t5.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t17 = abap_true.
      ELSEIF t12->has = abap_false.
        t17 = abap_true.
      ENDIF.
      t16 = xsdbool( t17 = abap_false ).
      t11 = t16.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_class_definition.
      CLEAR t19.
      DATA t21 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t21.
      t21 = t2.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA(t26) = VALUE string( ).
      t26 = t5->value.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t26.
      t23 = t28.
      DATA t30 TYPE REF TO zif_lnt_class_definition.
      CLEAR t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      t32 = t23.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t34.
      DATA(t36) = VALUE abap_bool( ).
      IF t32 IS INITIAL.
        t36 = abap_true.
      ELSEIF t32->has = abap_false.
        t36 = abap_true.
      ENDIF.
      t31 = t36.
      IF t31 = abap_true.
        CLEAR t30.
      ELSE.
        DATA t40 TYPE REF TO zif_lnt_class_definition.
        CLEAR t40.
        DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t43.
        t43 = t21->current.
        t42 = t43.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        DATA(t46) = xsdbool( t42 IS INITIAL ).
        IF t46 = abap_true.
          CLEAR t45.
        ELSE.
          DATA t49 TYPE REF TO zif_lnt_class_definition.
          CLEAR t49.
          DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t50.
          t50 = t42.
          DATA(t52) = VALUE string( ).
          t52 = t23->value.
          t49 = t50->find_class_definition( i_name = t52 ).
          t45 = t49.
        ENDIF.
        t40 = t45.
        DATA t54 TYPE REF TO zif_lnt_class_definition.
        CLEAR t54.
        DATA(t55) = VALUE abap_bool( ).
        t55 = xsdbool( t40 IS BOUND ).
        IF t55 = abap_true.
          t54 = t40.
        ELSE.
          DATA t63 TYPE REF TO zcl_lnt_class.
          CLEAR t63.
          DATA t64 TYPE REF TO zcl_lnt_class.
          CLEAR t64.
          DATA t65 TYPE REF TO zif_lnt_object.
          CLEAR t65.
          DATA t66 TYPE REF TO zif_lnt_registry.
          CLEAR t66.
          t66 = t21->reg.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          DATA(t70) = |CLAS|.
          DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t71->has = abap_true.
          t71->value = t70.
          t68 = t71.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          DATA(t75) = VALUE string( ).
          t75 = t23->value.
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t75.
          t73 = t77.
          t65 = t66->get_object( i_type_9913 = t68 i_name = t73 ).
          DATA t79 TYPE REF TO object.
          CLEAR t79.
          t79 = t65.
          t64 ?= t79.
          t63 = t64.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          CLEAR t80.
          DATA(t81) = VALUE abap_bool( ).
          t81 = xsdbool( t63 IS BOUND ).
          IF t81 = abap_true.
            DATA t83 TYPE REF TO zif_lnt_class_definition.
            CLEAR t83.
            DATA t84 TYPE REF TO zcl_lnt_class.
            CLEAR t84.
            t84 = t63.
            t83 = t84->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t80 = t83.
          ELSE.
            CLEAR t80.
          ENDIF.
          t54 = t80.
        ENDIF.
        t30 = t54.
      ENDIF.
      t19 = t30.
      DATA t87 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t87.
      DATA t89 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t89.
      DATA t91 TYPE REF TO zif_lnt_class_definition.
      CLEAR t91.
      t91 = t19.
      DATA t93 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t93.
      DATA(t94) = xsdbool( t91 IS INITIAL ).
      IF t94 = abap_true.
        CLEAR t93.
      ELSE.
        DATA t97 TYPE REF TO zif_lnt_method_definitions.
        CLEAR t97.
        DATA t98 TYPE REF TO zif_lnt_class_definition.
        CLEAR t98.
        t98 = t91.
        t97 = t98->get_method_definitions( ).
        t93 = t97.
      ENDIF.
      t89 = t93.
      DATA t100 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t100.
      DATA(t101) = xsdbool( t89 IS INITIAL ).
      IF t101 = abap_true.
        CLEAR t100.
      ELSE.
        DATA t104 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t104.
        DATA t105 TYPE REF TO zif_lnt_method_definitions.
        CLEAR t105.
        t105 = t89.
        t104 = t105->get_all( ).
        t100 = t104.
      ENDIF.
      t87 = t100.
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = xsdbool( t87 IS INITIAL ).
      t107 = xsdbool( t108 = abap_false ).
      IF t107 = abap_true.
        DATA t110 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t110.
        DATA t111 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t111.
        DATA t112 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t112.
        t112 = t87.
        t111 = t112->iterate( ).
        t110 = t111.
        DO.
          DATA t115 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t115.
          DATA t116 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t116.
          t116 = t110->next( ).
          t115 = t116.
          DATA(t118) = VALUE abap_bool( ).
          t118 = t115->done.
          IF t118 = abap_true.
            EXIT.
          ENDIF.
          DATA t120 TYPE REF TO zif_lnt_method_definition.
          CLEAR t120.
          DATA t122 TYPE REF TO zif_lnt_method_definition.
          CLEAR t122.
          t122 = t115->value.
          t120 = t122.
          DATA(t124) = VALUE string( ).
          DATA(t125) = VALUE string( ).
          DATA(t126) = VALUE string( ).
          DATA(t127) = VALUE abap_bool( ).
          t127 = abap_false.
          DATA t129 TYPE REF TO cx_root.
          CLEAR t129.
          TRY.
              DATA(t130) = VALUE string( ).
              DATA(t131) = VALUE string( ).
              t131 = t120->get_name( ).
              DATA(t133) = strlen( t131 ).
              t130 = t131.
              IF t130 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t130 TO UPPER CASE.
              ELSE.
                t130 = zlnt_runtime_uppe_91169605024d=>full( t130 ).
              ENDIF.
              t126 = t130.
              t127 = abap_true.
            CATCH cx_root INTO t129.
              DATA(t135) = VALUE abap_bool( ).
              t135 = xsdbool( t127 = abap_false ).
              IF t135 = abap_true.
                t110->close( ).
              ENDIF.
              RAISE EXCEPTION t129.
          ENDTRY.
          DATA(t138) = VALUE abap_bool( ).
          t138 = xsdbool( t127 = abap_false ).
          IF t138 = abap_true.
            t110->close( ).
          ENDIF.
          t125 = t126.
          t124 = t125.
          DATA(t142) = VALUE abap_bool( ).
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = VALUE abap_bool( ).
          t144 = abap_false.
          DATA t146 TYPE REF TO cx_root.
          CLEAR t146.
          TRY.
              DATA(t147) = VALUE abap_bool( ).
              DATA(t148) = VALUE f( ).
              t148 = t120->get_visibility( ).
              DATA(t150) = CONV f( 1 ).
              t147 = xsdbool( t148 = t150 ).
              t143 = t147.
              t144 = abap_true.
            CATCH cx_root INTO t146.
              DATA(t152) = VALUE abap_bool( ).
              t152 = xsdbool( t144 = abap_false ).
              IF t152 = abap_true.
                t110->close( ).
              ENDIF.
              RAISE EXCEPTION t146.
          ENDTRY.
          DATA(t155) = VALUE abap_bool( ).
          t155 = xsdbool( t144 = abap_false ).
          IF t155 = abap_true.
            t110->close( ).
          ENDIF.
          t142 = t143.
          IF t142 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t159) = VALUE abap_bool( ).
            DATA(t160) = VALUE abap_bool( ).
            DATA(t161) = VALUE abap_bool( ).
            t161 = abap_false.
            DATA t163 TYPE REF TO cx_root.
            CLEAR t163.
            TRY.
                DATA(t164) = VALUE abap_bool( ).
                DATA(t165) = VALUE abap_bool( ).
                DATA(t166) = VALUE abap_bool( ).
                DATA(t168) = |CONSTRUCTOR|.
                t166 = xsdbool( t124 = t168 ).
                t165 = t166.
                IF t166 = abap_false.
                  DATA(t169) = VALUE abap_bool( ).
                  DATA(t171) = |DESTRUCTOR|.
                  t169 = xsdbool( t124 = t171 ).
                  t165 = t169.
                ENDIF.
                t164 = t165.
                IF t165 = abap_false.
                  DATA(t172) = VALUE abap_bool( ).
                  DATA(t174) = |CLASS_CONSTRUCTOR|.
                  t172 = xsdbool( t124 = t174 ).
                  t164 = t172.
                ENDIF.
                t160 = t164.
                t161 = abap_true.
              CATCH cx_root INTO t163.
                DATA(t176) = VALUE abap_bool( ).
                t176 = xsdbool( t161 = abap_false ).
                IF t176 = abap_true.
                  t110->close( ).
                ENDIF.
                RAISE EXCEPTION t163.
            ENDTRY.
            DATA(t179) = VALUE abap_bool( ).
            t179 = xsdbool( t161 = abap_false ).
            IF t179 = abap_true.
              t110->close( ).
            ENDIF.
            t159 = t160.
            IF t159 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
          DATA t183 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          CLEAR t183.
          DATA t184 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          CLEAR t184.
          DATA(t185) = VALUE abap_bool( ).
          t185 = abap_false.
          DATA t187 TYPE REF TO cx_root.
          CLEAR t187.
          TRY.
              DATA t188 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
              CLEAR t188.
              t188 = t7->add( p0 = t124 ).
              t184 = t188.
              t185 = abap_true.
            CATCH cx_root INTO t187.
              DATA(t192) = VALUE abap_bool( ).
              t192 = xsdbool( t185 = abap_false ).
              IF t192 = abap_true.
                t110->close( ).
              ENDIF.
              RAISE EXCEPTION t187.
          ENDTRY.
          DATA(t195) = VALUE abap_bool( ).
          t195 = xsdbool( t185 = abap_false ).
          IF t195 = abap_true.
            t110->close( ).
          ENDIF.
          t183 = t184.
          DATA(t199) = VALUE abap_bool( ).
          DATA(t200) = VALUE abap_bool( ).
          DATA(t201) = VALUE abap_bool( ).
          t201 = abap_false.
          DATA t203 TYPE REF TO cx_root.
          CLEAR t203.
          TRY.
              DATA(t204) = VALUE abap_bool( ).
              DATA(t205) = VALUE abap_bool( ).
              t205 = t9->has( p0 = t124 ).
              t204 = xsdbool( t205 = abap_false ).
              t200 = t204.
              t201 = abap_true.
            CATCH cx_root INTO t203.
              DATA(t210) = VALUE abap_bool( ).
              t210 = xsdbool( t201 = abap_false ).
              IF t210 = abap_true.
                t110->close( ).
              ENDIF.
              RAISE EXCEPTION t203.
          ENDTRY.
          DATA(t213) = VALUE abap_bool( ).
          t213 = xsdbool( t201 = abap_false ).
          IF t213 = abap_true.
            t110->close( ).
          ENDIF.
          t199 = t200.
          IF t199 = abap_true.
            DATA t217 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
            CLEAR t217.
            DATA t218 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
            CLEAR t218.
            DATA(t219) = VALUE abap_bool( ).
            t219 = abap_false.
            DATA t221 TYPE REF TO cx_root.
            CLEAR t221.
            TRY.
                DATA t222 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
                CLEAR t222.
                DATA(t225) = VALUE f( ).
                t225 = t120->get_visibility( ).
                t222 = t9->set( p0 = t124 p1 = t225 ).
                t218 = t222.
                t219 = abap_true.
              CATCH cx_root INTO t221.
                DATA(t228) = VALUE abap_bool( ).
                t228 = xsdbool( t219 = abap_false ).
                IF t228 = abap_true.
                  t110->close( ).
                ENDIF.
                RAISE EXCEPTION t221.
            ENDTRY.
            DATA(t231) = VALUE abap_bool( ).
            t231 = xsdbool( t219 = abap_false ).
            IF t231 = abap_true.
              t110->close( ).
            ENDIF.
            t217 = t218.
          ENDIF.
        ENDDO.
      ENDIF.
      DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t236.
      DATA t238 TYPE REF TO zif_lnt_class_definition.
      CLEAR t238.
      t238 = t19.
      DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t240.
      DATA(t241) = xsdbool( t238 IS INITIAL ).
      IF t241 = abap_true.
        CLEAR t240.
      ELSE.
        DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t244.
        DATA t245 TYPE REF TO zif_lnt_class_definition.
        CLEAR t245.
        t245 = t238.
        t244 = t245->get_aliases( ).
        t240 = t244.
      ENDIF.
      t236 = t240.
      DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t247.
      DATA(t248) = VALUE abap_bool( ).
      t248 = xsdbool( t236 IS BOUND ).
      IF t248 = abap_true.
        t247 = t236.
      ELSE.
        DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t252.
        CREATE OBJECT t252.
        t247 = t252.
      ENDIF.
      t235 = t247.
      DATA t253 TYPE REF TO zcl_lnt_alias.
      CLEAR t253.
      DATA t254 TYPE REF TO object.
      CLEAR t254.
      DATA(t255) = VALUE i( ).
      DO.
        t235->load( ).
        IF t255 >= lines( t235->items ).
          EXIT.
        ENDIF.
        CLEAR t254.
        READ TABLE t235->items INDEX t255 + 1 INTO t254.
        t255 = t255 + 1.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        CLEAR t253.
        IF t254 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t256 ?= t254.
          DATA t257 TYPE REF TO object.
          CLEAR t257.
          t257 = t256->as_ref( ).
          t253 ?= t257.
        ELSE.
          t253 ?= t254.
        ENDIF.
        DATA t258 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t258.
        DATA(t260) = VALUE string( ).
        DATA(t261) = VALUE string( ).
        DATA t262 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t262.
        t262 = t253.
        DATA(t264) = VALUE string( ).
        DATA(t265) = VALUE string( ).
        DATA(t266) = VALUE string( ).
        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t268.
        t268 = t262->token.
        DATA(t270) = VALUE string( ).
        t270 = t268->str.
        t266 = t270.
        t265 = t266.
        DATA(t272) = VALUE abap_bool( ).
        DATA(t273) = VALUE string( ).
        DATA(t274) = t265.
        DATA(t275) = 0.
        DATA(t276) = 1.
        DATA(t277) = strlen( t274 ).
        IF t275 < 0.
          t275 = t275 + t277.
          IF t275 < 0.
            t275 = 0.
          ENDIF.
        ENDIF.
        IF t275 > t277 OR t276 <= 0.
          CLEAR t273.
        ELSE.
          IF t276 > t277 - t275.
            t276 = t277 - t275.
          ENDIF.
          t273 = t274+t275(t276).
        ENDIF.
        DATA(t278) = |!|.
        t272 = xsdbool( t273 = t278 ).
        IF t272 = abap_true.
          DATA(t279) = VALUE string( ).
          DATA(t280) = VALUE string( ).
          t280 = t265.
          DATA(t282) = VALUE string( ).
          DATA(t284) = 1.
          DATA(t285) = VALUE i( ).
          t285 = strlen( t280 ).
          DATA(t288) = strlen( t280 ).
          IF t284 < 0.
            t284 = t284 + t288.
            IF t284 < 0.
              t284 = 0.
            ENDIF.
          ENDIF.
          IF t284 > t288 OR t285 <= 0.
            CLEAR t282.
          ELSE.
            IF t285 > t288 - t284.
              t285 = t288 - t284.
            ENDIF.
            t282 = t280+t284(t285).
          ENDIF.
          t279 = t282.
          t265 = t279.
        ENDIF.
        t264 = t265.
        t261 = t264.
        DATA(t290) = strlen( t261 ).
        t260 = t261.
        IF t260 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t260 TO UPPER CASE.
        ELSE.
          t260 = zlnt_runtime_uppe_91169605024d=>full( t260 ).
        ENDIF.
        t258 = t7->add( p0 = t260 ).
      ENDDO.
      DATA t292 TYPE REF TO zif_lnt_class_definition.
      CLEAR t292.
      t292 = t19.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      DATA(t295) = xsdbool( t292 IS INITIAL ).
      IF t295 = abap_true.
        CLEAR t294.
      ELSE.
        DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t298.
        DATA t299 TYPE REF TO zif_lnt_class_definition.
        CLEAR t299.
        t299 = t292.
        t298 = t299->get_super_class( ).
        t294 = t298.
      ENDIF.
      t5 = t294.
    ENDDO.
    DATA t301 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t302 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t303 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA(t304) = CAST zif_lnt_method_definitions( me->get_method_definitions( ) ).
    t303 = t304->get_all( ).
    t302 = t303->iterate( ).
    t301 = t302.
    DO.
      DATA t306 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t306.
      DATA t307 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t307.
      t307 = t301->next( ).
      t306 = t307.
      DATA(t309) = VALUE abap_bool( ).
      t309 = t306->done.
      IF t309 = abap_true.
        EXIT.
      ENDIF.
      DATA t311 TYPE REF TO zif_lnt_method_definition.
      CLEAR t311.
      DATA t313 TYPE REF TO zif_lnt_method_definition.
      CLEAR t313.
      t313 = t306->value.
      t311 = t313.
      DATA(t315) = VALUE abap_bool( ).
      DATA(t316) = VALUE abap_bool( ).
      DATA(t317) = VALUE abap_bool( ).
      t317 = abap_false.
      DATA t319 TYPE REF TO cx_root.
      CLEAR t319.
      TRY.
          DATA(t320) = VALUE abap_bool( ).
          DATA(t321) = VALUE abap_bool( ).
          DATA(t323) = VALUE string( ).
          DATA(t324) = VALUE string( ).
          t324 = t311->get_name( ).
          DATA(t326) = strlen( t324 ).
          t323 = t324.
          IF t323 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t323 TO UPPER CASE.
          ELSE.
            t323 = zlnt_runtime_uppe_91169605024d=>full( t323 ).
          ENDIF.
          t321 = t7->has( p0 = t323 ).
          t320 = t321.
          IF t321 = abap_true.
            DATA(t327) = VALUE abap_bool( ).
            DATA(t328) = VALUE abap_bool( ).
            t328 = t311->is_redefinition( ).
            t327 = xsdbool( t328 = abap_false ).
            t320 = t327.
          ENDIF.
          t316 = t320.
          t317 = abap_true.
        CATCH cx_root INTO t319.
          DATA(t332) = VALUE abap_bool( ).
          t332 = xsdbool( t317 = abap_false ).
          IF t332 = abap_true.
            t301->close( ).
          ENDIF.
          RAISE EXCEPTION t319.
      ENDTRY.
      DATA(t335) = VALUE abap_bool( ).
      t335 = xsdbool( t317 = abap_false ).
      IF t335 = abap_true.
        t301->close( ).
      ENDIF.
      t315 = t316.
      IF t315 = abap_true.
        DATA(t339) = VALUE f( ).
        DATA(t340) = VALUE f( ).
        DATA(t341) = VALUE abap_bool( ).
        t341 = abap_false.
        DATA t343 TYPE REF TO cx_root.
        CLEAR t343.
        TRY.
            DATA(t344) = VALUE f( ).
            DATA(t345) = VALUE i( ).
            DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t346.
            t346 = t1->issues.
            DATA t348 TYPE REF TO zcl_lnt_issue.
            CLEAR t348.
            DATA t350 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t350.
            t350 = t311->get_token( ).
            DATA(t352) = VALUE string( ).
            DATA(t353) = VALUE string( ).
            DATA(t354) = ||.
            DATA(t355) = VALUE string( ).
            DATA(t356) = VALUE string( ).
            t356 = t311->get_name( ).
            DATA(t358) = strlen( t356 ).
            t355 = t356.
            IF t355 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t355 TO UPPER CASE.
            ELSE.
              t355 = zlnt_runtime_uppe_91169605024d=>full( t355 ).
            ENDIF.
            DATA(t359) = strlen( t354 ).
            t353 = |{ t354 }{ t355 }|.
            DATA(t360) = | already declared in superclass|.
            DATA(t361) = strlen( t353 ).
            t352 = |{ t353 }{ t360 }|.
            DATA t362 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t362.
            t348 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t350 i_message_26cb = t352 i_fix = t362 ).
            t346->load( ).
            APPEND t348 TO t346->items.
            t345 = lines( t346->items ).
            t346->save( ).
            t344 = t345.
            t340 = t344.
            t341 = abap_true.
          CATCH cx_root INTO t343.
            DATA(t364) = VALUE abap_bool( ).
            t364 = xsdbool( t341 = abap_false ).
            IF t364 = abap_true.
              t301->close( ).
            ENDIF.
            RAISE EXCEPTION t343.
        ENDTRY.
        DATA(t367) = VALUE abap_bool( ).
        t367 = xsdbool( t341 = abap_false ).
        IF t367 = abap_true.
          t301->close( ).
        ENDIF.
        t339 = t340.
      ENDIF.
      DATA t371 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t371.
      DATA t373 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t373.
      DATA(t374) = VALUE abap_bool( ).
      t374 = abap_false.
      DATA t376 TYPE REF TO cx_root.
      CLEAR t376.
      TRY.
          DATA t377 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t377.
          DATA(t379) = VALUE string( ).
          DATA(t380) = VALUE string( ).
          t380 = t311->get_name( ).
          DATA(t382) = strlen( t380 ).
          t379 = t380.
          IF t379 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t379 TO UPPER CASE.
          ELSE.
            t379 = zlnt_runtime_uppe_91169605024d=>full( t379 ).
          ENDIF.
          t377 = t9->get( p0 = t379 ).
          t373 = t377.
          t374 = abap_true.
        CATCH cx_root INTO t376.
          DATA(t384) = VALUE abap_bool( ).
          t384 = xsdbool( t374 = abap_false ).
          IF t384 = abap_true.
            t301->close( ).
          ENDIF.
          RAISE EXCEPTION t376.
      ENDTRY.
      DATA(t387) = VALUE abap_bool( ).
      t387 = xsdbool( t374 = abap_false ).
      IF t387 = abap_true.
        t301->close( ).
      ENDIF.
      t371 = t373.
      DATA(t391) = VALUE abap_bool( ).
      DATA(t392) = VALUE abap_bool( ).
      DATA(t393) = VALUE abap_bool( ).
      t393 = abap_false.
      DATA t395 TYPE REF TO cx_root.
      CLEAR t395.
      TRY.
          DATA(t396) = VALUE abap_bool( ).
          DATA(t397) = VALUE abap_bool( ).
          DATA(t398) = VALUE abap_bool( ).
          DATA(t399) = VALUE abap_bool( ).
          t399 = t311->is_redefinition( ).
          t398 = xsdbool( t399 = abap_true ).
          t397 = t398.
          IF t398 = abap_true.
            DATA(t402) = VALUE abap_bool( ).
            DATA t403 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t403.
            t403 = t371.
            DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t405.
            CLEAR t405.
            DATA(t407) = VALUE abap_bool( ).
            DATA(t408) = VALUE abap_bool( ).
            IF t403 IS INITIAL.
              t408 = abap_true.
            ELSEIF t403->has = abap_false.
              t408 = abap_true.
            ENDIF.
            t407 = xsdbool( t408 = abap_false ).
            t402 = t407.
            t397 = t402.
          ENDIF.
          t396 = t397.
          IF t397 = abap_true.
            DATA(t410) = VALUE abap_bool( ).
            DATA(t411) = VALUE f( ).
            t411 = t311->get_visibility( ).
            DATA(t413) = VALUE f( ).
            IF t371->number_special <> 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t413 = t371->value.
            t410 = xsdbool( t411 <> t413 ).
            t396 = t410.
          ENDIF.
          t392 = t396.
          t393 = abap_true.
        CATCH cx_root INTO t395.
          DATA(t416) = VALUE abap_bool( ).
          t416 = xsdbool( t393 = abap_false ).
          IF t416 = abap_true.
            t301->close( ).
          ENDIF.
          RAISE EXCEPTION t395.
      ENDTRY.
      DATA(t419) = VALUE abap_bool( ).
      t419 = xsdbool( t393 = abap_false ).
      IF t419 = abap_true.
        t301->close( ).
      ENDIF.
      t391 = t392.
      IF t391 = abap_true.
        DATA(t423) = VALUE f( ).
        DATA(t424) = VALUE f( ).
        DATA(t425) = VALUE abap_bool( ).
        t425 = abap_false.
        DATA t427 TYPE REF TO cx_root.
        CLEAR t427.
        TRY.
            DATA(t428) = VALUE f( ).
            DATA(t429) = VALUE i( ).
            DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t430.
            t430 = t1->issues.
            DATA t432 TYPE REF TO zcl_lnt_issue.
            CLEAR t432.
            DATA t434 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t434.
            t434 = t311->get_token( ).
            DATA(t436) = VALUE string( ).
            DATA(t437) = VALUE string( ).
            DATA(t438) = ||.
            DATA(t439) = VALUE string( ).
            DATA(t440) = VALUE string( ).
            t440 = t311->get_name( ).
            DATA(t442) = strlen( t440 ).
            t439 = t440.
            IF t439 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t439 TO UPPER CASE.
            ELSE.
              t439 = zlnt_runtime_uppe_91169605024d=>full( t439 ).
            ENDIF.
            DATA(t443) = strlen( t438 ).
            t437 = |{ t438 }{ t439 }|.
            DATA(t444) = | redefinition visibility cannot be changed|.
            DATA(t445) = strlen( t437 ).
            t436 = |{ t437 }{ t444 }|.
            DATA t446 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t446.
            t432 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t434 i_message_26cb = t436 i_fix = t446 ).
            t430->load( ).
            APPEND t432 TO t430->items.
            t429 = lines( t430->items ).
            t430->save( ).
            t428 = t429.
            t424 = t428.
            t425 = abap_true.
          CATCH cx_root INTO t427.
            DATA(t448) = VALUE abap_bool( ).
            t448 = xsdbool( t425 = abap_false ).
            IF t448 = abap_true.
              t301->close( ).
            ENDIF.
            RAISE EXCEPTION t427.
        ENDTRY.
        DATA(t451) = VALUE abap_bool( ).
        t451 = xsdbool( t425 = abap_false ).
        IF t451 = abap_true.
          t301->close( ).
        ENDIF.
        t423 = t424.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_method_name_conflicts.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t4 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    DATA(t9) = me->method_defs.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t4 = t7.
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t12.
      t12 = t2->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      t14 = t11->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      CLEAR t16.
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      CLEAR t18.
      t18 = t11->value.
      t16 = t18.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      t22 = abap_false.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = VALUE abap_bool( ).
          DATA(t30) = me->attributes.
          DATA(t31) = VALUE string( ).
          DATA(t32) = VALUE string( ).
          t32 = t16->get_name( ).
          t31 = t32.
          DATA t34 TYPE REF TO zif_lnt_union_a346537f.
          CLEAR t34.
          DATA t35 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
          CLEAR t35.
          t35 = t30->by_name.
          DATA(t37) = VALUE string( ).
          DATA(t39) = strlen( t31 ).
          t37 = t31.
          IF t37 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t37 TO UPPER CASE.
          ELSE.
            t37 = zlnt_runtime_uppe_91169605024d=>full( t37 ).
          ENDIF.
          t34 = t35->get( p0 = t37 ).
          DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t40.
          CLEAR t40.
          DATA(t42) = VALUE abap_bool( ).
          DATA(t43) = xsdbool( t34 IS INITIAL ).
          t42 = xsdbool( t43 = abap_false ).
          t26 = t42.
          t25 = t26.
          IF t26 = abap_false.
            DATA(t45) = VALUE abap_bool( ).
            DATA(t49) = me->types.
            DATA(t50) = VALUE string( ).
            DATA(t51) = VALUE string( ).
            t51 = t16->get_name( ).
            t50 = t51.
            DATA t54 TYPE REF TO zcl_lnt_type_definitions_entry.
            CLEAR t54.
            DATA t55 TYPE REF TO zcl_lnt_type_definitions_entry.
            CLEAR t55.
            DATA t56 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
            CLEAR t56.
            t56 = t49->map.
            DATA(t58) = VALUE string( ).
            DATA(t60) = strlen( t50 ).
            t58 = t50.
            IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t58 TO UPPER CASE.
            ELSE.
              t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
            ENDIF.
            t55 = t56->get( p0 = t58 ).
            t54 = t55.
            DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t61.
            DATA(t62) = xsdbool( t54 IS INITIAL ).
            IF t62 = abap_true.
              CLEAR t61.
            ELSE.
              DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t65.
              DATA t66 TYPE REF TO zcl_lnt_type_definitions_entry.
              CLEAR t66.
              t66 = t54.
              t65 = t66->type_cba0.
              t61 = t65.
            ENDIF.
            DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t68.
            CLEAR t68.
            DATA(t70) = VALUE abap_bool( ).
            DATA(t71) = xsdbool( t61 IS INITIAL ).
            t70 = xsdbool( t71 = abap_false ).
            t45 = t70.
            t25 = t45.
          ENDIF.
          t21 = t25.
          t22 = abap_true.
        CATCH cx_root INTO t24.
          DATA(t74) = VALUE abap_bool( ).
          t74 = xsdbool( t22 = abap_false ).
          IF t74 = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      DATA(t77) = VALUE abap_bool( ).
      t77 = xsdbool( t22 = abap_false ).
      IF t77 = abap_true.
        t2->close( ).
      ENDIF.
      t20 = t21.
      IF t20 = abap_true.
        DATA(t81) = VALUE f( ).
        DATA(t82) = VALUE f( ).
        DATA(t83) = VALUE abap_bool( ).
        t83 = abap_false.
        DATA t85 TYPE REF TO cx_root.
        CLEAR t85.
        TRY.
            DATA(t86) = VALUE f( ).
            DATA(t87) = VALUE i( ).
            DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t88.
            t88 = t1->issues.
            DATA t90 TYPE REF TO zcl_lnt_issue.
            CLEAR t90.
            DATA t92 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t92.
            t92 = t16->get_token( ).
            DATA(t94) = VALUE string( ).
            DATA(t95) = VALUE string( ).
            DATA(t96) = |"|.
            DATA(t97) = VALUE string( ).
            t97 = t16->get_name( ).
            DATA(t99) = strlen( t96 ).
            t95 = |{ t96 }{ t97 }|.
            DATA(t100) = |" already defined|.
            DATA(t101) = strlen( t95 ).
            t94 = |{ t95 }{ t100 }|.
            DATA t102 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t102.
            t90 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t92 i_message_26cb = t94 i_fix = t102 ).
            t88->load( ).
            APPEND t90 TO t88->items.
            t87 = lines( t88->items ).
            t88->save( ).
            t86 = t87.
            t82 = t86.
            t83 = abap_true.
          CATCH cx_root INTO t85.
            DATA(t104) = VALUE abap_bool( ).
            t104 = xsdbool( t83 = abap_false ).
            IF t104 = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t85.
        ENDTRY.
        DATA(t107) = VALUE abap_bool( ).
        t107 = xsdbool( t83 = abap_false ).
        IF t107 = abap_true.
          t2->close( ).
        ENDIF.
        t81 = t82.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_event_name_conflicts.
    DATA(t1) = i_input_967e.
    DATA(t2) = me->events_f95a.
    DATA t3 TYPE REF TO zif_lnt_event_definition.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t14) = me->attributes.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      t16 = t3->get_name( ).
      t15 = t16.
      DATA t18 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
      t19 = t14->by_name.
      DATA t21 TYPE string.
      DATA(t23) = strlen( t15 ).
      t21 = t15.
      IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t21 TO UPPER CASE.
      ELSE.
        t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
      ENDIF.
      t18 = t19->get( p0 = t21 ).
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = xsdbool( t18 IS INITIAL ).
      t26 = xsdbool( t27 = abap_false ).
      t10 = t26.
      t9 = t10.
      IF t10 = abap_false.
        DATA(t29) = VALUE abap_bool( ).
        DATA(t33) = me->types.
        DATA t34 TYPE string.
        DATA t35 TYPE string.
        t35 = t3->get_name( ).
        t34 = t35.
        DATA t38 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
        t40 = t33->map.
        DATA t42 TYPE string.
        DATA(t44) = strlen( t34 ).
        t42 = t34.
        IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t42 TO UPPER CASE.
        ELSE.
          t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
        ENDIF.
        t39 = t40->get( p0 = t42 ).
        t38 = t39.
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t45.
        DATA(t46) = xsdbool( t38 IS INITIAL ).
        IF t46 = abap_true.
          CLEAR t45.
        ELSE.
          DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t50 TYPE REF TO zcl_lnt_type_definitions_entry.
          t50 = t38.
          t49 = t50->type_cba0.
          t45 = t49.
        ENDIF.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = xsdbool( t45 IS INITIAL ).
        t54 = xsdbool( t55 = abap_false ).
        t29 = t54.
        t9 = t29.
      ENDIF.
      t8 = t9.
      IF t9 = abap_false.
        DATA(t57) = VALUE abap_bool( ).
        DATA(t61) = me->method_defs.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA t65 TYPE string.
        t65 = t3->get_name( ).
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t65.
        t62 = t67.
        DATA t69 TYPE REF TO zif_lnt_method_definition.
        CLEAR t69.
        DATA(t70) = VALUE abap_bool( ).
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t71 = t62.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        DATA(t75) = VALUE abap_bool( ).
        IF t71 IS INITIAL.
          t75 = abap_true.
        ELSEIF t71->has = abap_false.
          t75 = abap_true.
        ENDIF.
        t70 = t75.
        IF t70 = abap_true.
          CLEAR t69.
        ELSE.
          DATA t78 TYPE REF TO zif_lnt_method_definition.
          CLEAR t78.
          DATA t79 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
          t79 = t61->all.
          DATA t81 TYPE string.
          DATA t82 TYPE string.
          t82 = t62->value.
          DATA(t84) = strlen( t82 ).
          t81 = t82.
          IF t81 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t81 TO UPPER CASE.
          ELSE.
            t81 = zlnt_runtime_uppe_91169605024d=>full( t81 ).
          ENDIF.
          t78 = t79->get( p0 = t81 ).
          t69 = t78.
        ENDIF.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = xsdbool( t69 IS INITIAL ).
        t87 = xsdbool( t88 = abap_false ).
        t57 = t87.
        t8 = t57.
      ENDIF.
      IF t8 = abap_true.
        DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t90 = t1->issues.
        DATA t92 TYPE REF TO zcl_lnt_issue.
        DATA t94 TYPE REF TO zcl_lnt_abstract_token.
        DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t96 TYPE REF TO zcl_lnt_event_definition.
        t96 ?= t3.
        t95 = t96.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        t98 = t95->token.
        t94 = t98.
        DATA t100 TYPE string.
        DATA t101 TYPE string.
        DATA(t102) = |"|.
        DATA t103 TYPE string.
        t103 = t3->get_name( ).
        DATA(t105) = strlen( t102 ).
        t101 = |{ t102 }{ t103 }|.
        DATA(t106) = |" already defined|.
        DATA(t107) = strlen( t101 ).
        t100 = |{ t101 }{ t106 }|.
        DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t108.
        t92 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t94 i_message_26cb = t100 i_fix = t108 ).
        t90->load( ).
        APPEND t92 TO t90->items.
        t90->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_friends.
    DATA(t1) = i_def.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    t10 = t1.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    DATA(t13) = xsdbool( t10 IS INITIAL ).
    IF t13 = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA t17 TYPE REF TO zcl_lnt_statement_node.
      t17 = t10.
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d117_490f9bcc19a9.
      t16 = t17->find_direct_expression( i_type_9913 = t19 ).
      t12 = t16.
    ENDIF.
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t21) = xsdbool( t8 IS INITIAL ).
    IF t21 = abap_true.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      t25 = t8.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t24 = t25->find_direct_expressions( i_type_9913 = t27 ).
      t20 = t24.
    ENDIF.
    t6 = t20.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE abap_bool.
    t29 = xsdbool( t6 IS BOUND ).
    IF t29 = abap_true.
      t28 = t6.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      t28 = t33.
    ENDIF.
    t5 = t28.
    DATA t34 TYPE REF TO zcl_lnt_expression_node.
    DATA t35 TYPE REF TO object.
    DATA(t36) = VALUE i( ).
    DO.
      t5->load( ).
      IF t36 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t35.
      READ TABLE t5->items INDEX t36 + 1 INTO t35.
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
      DATA t39 TYPE REF TO zcl_lnt_abstract_token.
      DATA t40 TYPE REF TO zcl_lnt_abstract_token.
      t40 = t34->get_first_token( ).
      t39 = t40.
      DATA t42 TYPE string.
      DATA t46 TYPE string.
      t46 = t39->str.
      t42 = t46.
      DATA t48 TYPE REF TO zif_lnt_class_definition.
      CLEAR t48.
      DATA t50 TYPE REF TO zcl_lnt_current_scope.
      DATA t51 TYPE REF TO zcl_lnt_current_scope.
      t51 = t2->scope.
      t50 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t57->has = abap_true.
      t57->value = t42.
      t53 = t57.
      DATA t59 TYPE REF TO zif_lnt_class_definition.
      CLEAR t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t61 = t53.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      DATA(t65) = VALUE abap_bool( ).
      IF t61 IS INITIAL.
        t65 = abap_true.
      ELSEIF t61->has = abap_false.
        t65 = abap_true.
      ENDIF.
      t60 = t65.
      IF t60 = abap_true.
        CLEAR t59.
      ELSE.
        DATA t69 TYPE REF TO zif_lnt_class_definition.
        CLEAR t69.
        DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t72 = t50->current.
        t71 = t72.
        DATA t74 TYPE REF TO zif_lnt_class_definition.
        CLEAR t74.
        DATA(t75) = xsdbool( t71 IS INITIAL ).
        IF t75 = abap_true.
          CLEAR t74.
        ELSE.
          DATA t78 TYPE REF TO zif_lnt_class_definition.
          DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t79 = t71.
          DATA t81 TYPE string.
          t81 = t53->value.
          t78 = t79->find_class_definition( i_name = t81 ).
          t74 = t78.
        ENDIF.
        t69 = t74.
        DATA t83 TYPE REF TO zif_lnt_class_definition.
        CLEAR t83.
        DATA t84 TYPE abap_bool.
        t84 = xsdbool( t69 IS BOUND ).
        IF t84 = abap_true.
          t83 = t69.
        ELSE.
          DATA t92 TYPE REF TO zcl_lnt_class.
          CLEAR t92.
          DATA t93 TYPE REF TO zcl_lnt_class.
          CLEAR t93.
          DATA t94 TYPE REF TO zif_lnt_object.
          CLEAR t94.
          DATA t95 TYPE REF TO zif_lnt_registry.
          t95 = t50->reg.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          DATA(t99) = |CLAS|.
          DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t100->has = abap_true.
          t100->value = t99.
          t97 = t100.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          DATA t104 TYPE string.
          t104 = t53->value.
          DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t106->has = abap_true.
          t106->value = t104.
          t102 = t106.
          t94 = t95->get_object( i_type_9913 = t97 i_name = t102 ).
          DATA t108 TYPE REF TO object.
          t108 = t94.
          t93 ?= t108.
          t92 = t93.
          DATA t109 TYPE REF TO zif_lnt_class_definition.
          CLEAR t109.
          DATA t110 TYPE abap_bool.
          t110 = xsdbool( t92 IS BOUND ).
          IF t110 = abap_true.
            DATA t112 TYPE REF TO zif_lnt_class_definition.
            DATA t113 TYPE REF TO zcl_lnt_class.
            t113 = t92.
            t112 = t113->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t109 = t112.
          ELSE.
            CLEAR t109.
          ENDIF.
          t83 = t109.
        ENDIF.
        t59 = t83.
      ENDIF.
      t48 = t59.
      DATA t116 TYPE abap_bool.
      t116 = xsdbool( t48 IS BOUND ).
      IF t116 = abap_true.
        DATA t118 TYPE REF TO zcl_lnt_current_scope.
        t118 = t2->scope.
        DATA t120 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t120.
        t120 = t39.
        DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t124.
        DATA t126 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t127 TYPE REF TO zif_lnt_class_definition.
        t127 = t48.
        t126 ?= t127.
        t124 = t126.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        DATA(t131) = |Object|.
        CLEAR t130.
        CREATE OBJECT t130.
        t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t130->sval = t131.
        DATA t132 TYPE string.
        t132 = t2->filename.
        DATA t134 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t134.
        DATA t136 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t136.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        DATA t140 TYPE string.
        DATA(t142) = strlen( t42 ).
        t140 = t42.
        IF t140 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t140 TO UPPER CASE.
        ELSE.
          t140 = zlnt_runtime_uppe_91169605024d=>full( t140 ).
        ENDIF.
        DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t143->has = abap_true.
        t143->value = t140.
        t137 = t143.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA(t148) = |CLAS|.
        DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t149->has = abap_true.
        t149->value = t148.
        t145 = t149.
        DATA t151 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t151.
        t136 = NEW zcl_lnt_ireference_extras( i_oo_name = t137 i_oo_type = t145 i_found_qualified = t151 ).
        CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
        t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t153 ).
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t154 ).
        ENDIF.
        CREATE OBJECT t136->zlnt_json_ownkeys_70e5fd461788.
        t136->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t155) = |ooName|.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
        DATA(t157) = |ooType|.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
        ENDIF.
        t134 = t136.
        t118->add_reference( i_usage = t120 i_referencing = t124 i_type_9913 = t130 i_filename = t132 i_extra = t134 ).
      ELSE.
        DATA(t160) = VALUE abap_bool( ).
        DATA t162 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t162.
        DATA t163 TYPE REF TO zcl_lnt_current_scope.
        t163 = t2->scope.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t168->has = abap_true.
        t168->value = t42.
        t165 = t168.
        t162 = t163->exists_object( i_name = t165 ).
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        DATA(t172) = VALUE abap_bool( ).
        DATA(t173) = xsdbool( t162 IS INITIAL ).
        t172 = xsdbool( t173 = abap_false ).
        t160 = t172.
        IF t160 = abap_true.
        ELSE.
          DATA(t175) = VALUE abap_bool( ).
          DATA(t176) = VALUE abap_bool( ).
          DATA t180 TYPE REF TO zcl_lnt_current_scope.
          t180 = t2->scope.
          DATA t182 TYPE REF TO zcl_lnt_ddic.
          DATA t183 TYPE REF TO zif_lnt_registry.
          t183 = t180->reg.
          t182 = NEW zcl_lnt_ddic( i_reg_f149 = t183 ).
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t189->has = abap_true.
          t189->value = t42.
          t185 = t189.
          DATA(t191) = VALUE abap_bool( ).
          DATA(t192) = VALUE abap_bool( ).
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t193 = t185.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          DATA(t197) = VALUE abap_bool( ).
          IF t193 IS INITIAL.
            t197 = abap_true.
          ELSEIF t193->has = abap_false.
            t197 = abap_true.
          ENDIF.
          t192 = t197.
          IF t192 = abap_true.
            t191 = abap_true.
          ELSE.
            DATA t200 TYPE abap_bool.
            DATA t201 TYPE REF TO zif_lnt_registry.
            t201 = t182->reg.
            DATA t203 TYPE string.
            t203 = t185->value.
            t200 = t201->in_error_namespace( i_name = t203 ).
            t191 = t200.
          ENDIF.
          t176 = t191.
          t175 = xsdbool( t176 = abap_false ).
          IF t175 = abap_true.
            DATA t206 TYPE REF TO zcl_lnt_current_scope.
            t206 = t2->scope.
            DATA t208 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t208.
            t208 = t39.
            DATA t212 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t212.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            DATA(t214) = |Object (Void)|.
            CLEAR t213.
            CREATE OBJECT t213.
            t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t213->sval = t214.
            DATA t215 TYPE string.
            t215 = t2->filename.
            DATA t217 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t217.
            t206->add_reference( i_usage = t208 i_referencing = t212 i_type_9913 = t213 i_filename = t215 i_extra = t217 ).
          ELSE.
            DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t218 = t2->issues.
            DATA t220 TYPE REF TO zcl_lnt_issue.
            CLEAR t220.
            DATA(t223) = VALUE string( ).
            DATA(t224) = VALUE string( ).
            DATA(t225) = |Friend class |.
            DATA t226 TYPE string.
            DATA(t228) = strlen( t42 ).
            t226 = t42.
            IF t226 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t226 TO UPPER CASE.
            ELSE.
              t226 = zlnt_runtime_uppe_91169605024d=>full( t226 ).
            ENDIF.
            DATA(t229) = strlen( t225 ).
            t224 = |{ t225 }{ t226 }|.
            DATA(t230) = | does not exist|.
            DATA(t231) = strlen( t224 ).
            t223 = |{ t224 }{ t230 }|.
            DATA t232 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t232.
            t220 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t2 i_token = t39 i_message_26cb = t223 i_fix = t232 ).
            t218->load( ).
            APPEND t220 TO t218->items.
            t218->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
      t3->load( ).
      APPEND t42 TO t3->items.
      t3->save( ).
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD add_reference.
    DATA(t1) = i_token.
    DATA(t2) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    t5 = t1.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t8) = xsdbool( t5 IS INITIAL ).
    IF t8 = abap_true.
    ELSE.
      DATA t15 TYPE string.
      t15 = t5->str.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t15.
      t7 = t17.
    ENDIF.
    t3 = t7.
    DATA(t18) = VALUE abap_bool( ).
    IF t3 IS BOUND.
      IF t3->has = abap_true.
        t18 = xsdbool( strlen( t3->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t18 = abap_true.
      DATA t20 TYPE REF TO zif_lnt_class_definition.
      DATA t22 TYPE REF TO zcl_lnt_current_scope.
      DATA t23 TYPE REF TO zcl_lnt_current_scope.
      t23 = t2->scope.
      t22 = t23.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE string.
      t28 = t3->value.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t28.
      t25 = t30.
      DATA t32 TYPE REF TO zif_lnt_class_definition.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t34 = t25.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t38) = VALUE abap_bool( ).
      IF t34 IS INITIAL.
        t38 = abap_true.
      ELSEIF t34->has = abap_false.
        t38 = abap_true.
      ENDIF.
      t33 = t38.
      IF t33 = abap_true.
      ELSE.
        DATA t42 TYPE REF TO zif_lnt_class_definition.
        DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t45 = t22->current.
        t44 = t45.
        DATA t47 TYPE REF TO zif_lnt_class_definition.
        DATA(t48) = xsdbool( t44 IS INITIAL ).
        IF t48 = abap_true.
        ELSE.
          DATA t51 TYPE REF TO zif_lnt_class_definition.
          DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t52 = t44.
          DATA t54 TYPE string.
          t54 = t25->value.
          t51 = t52->find_class_definition( i_name = t54 ).
          t47 = t51.
        ENDIF.
        t42 = t47.
        DATA t56 TYPE REF TO zif_lnt_class_definition.
        DATA t57 TYPE abap_bool.
        t57 = xsdbool( t42 IS BOUND ).
        IF t57 = abap_true.
          t56 = t42.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_class.
          DATA t66 TYPE REF TO zcl_lnt_class.
          DATA t67 TYPE REF TO zif_lnt_object.
          DATA t68 TYPE REF TO zif_lnt_registry.
          t68 = t22->reg.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t72) = |CLAS|.
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t72.
          t70 = t73.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t77 TYPE string.
          t77 = t25->value.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t77.
          t75 = t79.
          t67 = t68->get_object( i_type_9913 = t70 i_name = t75 ).
          DATA t81 TYPE REF TO object.
          t81 = t67.
          t66 ?= t81.
          t65 = t66.
          DATA t82 TYPE REF TO zif_lnt_class_definition.
          DATA t83 TYPE abap_bool.
          t83 = xsdbool( t65 IS BOUND ).
          IF t83 = abap_true.
            DATA t85 TYPE REF TO zif_lnt_class_definition.
            DATA t86 TYPE REF TO zcl_lnt_class.
            t86 = t65.
            t85 = t86->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t82 = t85.
          ELSE.
            CLEAR t82.
          ENDIF.
          t56 = t82.
        ENDIF.
        t32 = t56.
      ENDIF.
      t20 = t32.
      DATA t89 TYPE abap_bool.
      t89 = xsdbool( t20 IS BOUND ).
      IF t89 = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_current_scope.
        t91 = t2->scope.
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t96 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t97 TYPE REF TO zif_lnt_class_definition.
        t97 = t20.
        t96 ?= t97.
        t94 = t96.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t101) = |Object|.
        CREATE OBJECT t100.
        t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t100->sval = t101.
        DATA t102 TYPE string.
        t102 = t2->filename.
        DATA t104 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t106 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t110 TYPE string.
        DATA t111 TYPE string.
        t111 = t3->value.
        DATA(t113) = strlen( t111 ).
        t110 = t111.
        IF t110 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t110 TO UPPER CASE.
        ELSE.
          t110 = zlnt_runtime_uppe_91169605024d=>full( t110 ).
        ENDIF.
        DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t114->has = abap_true.
        t114->value = t110.
        t107 = t114.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t119) = |CLAS|.
        DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t120->has = abap_true.
        t120->value = t119.
        t116 = t120.
        DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t106 = NEW zcl_lnt_ireference_extras( i_oo_name = t107 i_oo_type = t116 i_found_qualified = t122 ).
        CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
        t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t124 ).
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t125 ).
        ENDIF.
        CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
        t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t126) = |ooName|.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
        DATA(t128) = |ooType|.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
        ENDIF.
        t104 = t106.
        t91->add_reference( i_usage = t1 i_referencing = t94 i_type_9913 = t100 i_filename = t102 i_extra = t104 ).
      ELSE.
        DATA(t131) = VALUE abap_bool( ).
        DATA(t132) = VALUE abap_bool( ).
        DATA t136 TYPE REF TO zcl_lnt_current_scope.
        t136 = t2->scope.
        DATA t138 TYPE REF TO zcl_lnt_ddic.
        DATA t139 TYPE REF TO zif_lnt_registry.
        t139 = t136->reg.
        t138 = NEW zcl_lnt_ddic( i_reg_f149 = t139 ).
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t144 TYPE string.
        t144 = t3->value.
        DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t146->has = abap_true.
        t146->value = t144.
        t141 = t146.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = VALUE abap_bool( ).
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t150 = t141.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t154) = VALUE abap_bool( ).
        IF t150 IS INITIAL.
          t154 = abap_true.
        ELSEIF t150->has = abap_false.
          t154 = abap_true.
        ENDIF.
        t149 = t154.
        IF t149 = abap_true.
          t148 = abap_true.
        ELSE.
          DATA t157 TYPE abap_bool.
          DATA t158 TYPE REF TO zif_lnt_registry.
          t158 = t138->reg.
          DATA t160 TYPE string.
          t160 = t141->value.
          t157 = t158->in_error_namespace( i_name = t160 ).
          t148 = t157.
        ENDIF.
        t132 = t148.
        t131 = xsdbool( t132 = abap_false ).
        IF t131 = abap_true.
          DATA t163 TYPE REF TO zcl_lnt_current_scope.
          t163 = t2->scope.
          DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t168) = |Object (Void)|.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t167->sval = t168.
          DATA t169 TYPE string.
          t169 = t2->filename.
          DATA t171 TYPE REF TO zcl_lnt_ireference_extras.
          t163->add_reference( i_usage = t1 i_referencing = t166 i_type_9913 = t167 i_filename = t169 i_extra = t171 ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
    t3 = i_input_node->find_all_statements( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        CLEAR t10.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      DATA(t16) = |PARTIALLY|.
      t14 = t6->find_direct_token_by_text( i_text = t16 ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t17.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = xsdbool( t14 IS INITIAL ).
      t19 = xsdbool( t20 = abap_false ).
      t12 = t19.
      t11 = t12.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t25 = t6->find_first_expression( i_type_9913 = t27 ).
      t24 = t25.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      DATA(t29) = xsdbool( t24 IS INITIAL ).
      IF t29 = abap_true.
        CLEAR t28.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        t33 = t24.
        t32 = t33->get_first_token( ).
        t28 = t32.
      ENDIF.
      t22 = t28.
      DATA(t35) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t38.
      t35 = xsdbool( t22 IS INITIAL ).
      IF t35 = abap_true.
        DATA t42 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA(t46) = |ClassDefinition, unable to find interface token|.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t46.
        t44 = t47.
        t43 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t44 ).
        t42 = NEW #( ).
        t42->payload = t43.
        CLEAR t42->source_value.
        DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t49.
        DATA t50 TYPE REF TO object.
        CLEAR t50.
        CLEAR t49.
        t50 = t43.
        TRY.
            t42->source_value ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42->source_value IS NOT BOUND.
          TRY.
              t49 ?= t43.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t49 IS BOUND.
            t42->source_value = t49->source( ).
          ENDIF.
          IF t42->source_value IS NOT BOUND.
            CREATE OBJECT t42->source_value.
            t42->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t42->source_value->oval = t43.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t42.
      ENDIF.
      DATA(t51) = VALUE string( ).
      DATA(t52) = VALUE string( ).
      DATA(t53) = VALUE string( ).
      DATA(t57) = VALUE string( ).
      t57 = t22->str.
      t53 = t57.
      DATA(t59) = strlen( t53 ).
      t52 = t53.
      IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t52 TO UPPER CASE.
      ELSE.
        t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
      ENDIF.
      t51 = t52.
      DATA(t60) = me->implementing.
      DATA t61 TYPE REF TO zcl_lnt_iimplementing.
      CLEAR t61.
      DATA(t62) = VALUE string( ).
      t62 = t51.
      DATA(t64) = VALUE abap_bool( ).
      t64 = t11.
      t61 = NEW zcl_lnt_iimplementing( i_name = t62 i_partial = t64 ).
      CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
      t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t66 ).
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `partial` p1 = t67 ).
      ENDIF.
      CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
      t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t68) = |name|.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
      DATA(t70) = |partial|.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t70 p1 = t71 ).
      ENDIF.
      t60->load( ).
      APPEND t61 TO t60->items.
      t60->save( ).
      DATA t72 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t72.
      DATA t74 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t75.
      t75 = t1->scope.
      t74 = t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t81->has = abap_true.
      t81->value = t51.
      t77 = t81.
      DATA t83 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t83.
      DATA(t84) = VALUE abap_bool( ).
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      t85 = t77.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      CLEAR t87.
      DATA(t89) = VALUE abap_bool( ).
      IF t85 IS INITIAL.
        t89 = abap_true.
      ELSEIF t85->has = abap_false.
        t89 = abap_true.
      ENDIF.
      t84 = t89.
      IF t84 = abap_true.
        CLEAR t83.
      ELSE.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t93.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t95.
        DATA t96 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t96.
        t96 = t74->current.
        t95 = t96.
        DATA t98 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t98.
        DATA(t99) = xsdbool( t95 IS INITIAL ).
        IF t99 = abap_true.
          CLEAR t98.
        ELSE.
          DATA t102 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t102.
          DATA t103 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t103.
          t103 = t95.
          DATA(t105) = VALUE string( ).
          t105 = t77->value.
          t102 = t103->find_interface_definition( i_name = t105 ).
          t98 = t102.
        ENDIF.
        t93 = t98.
        DATA t107 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t107.
        DATA(t108) = VALUE abap_bool( ).
        t108 = xsdbool( t93 IS BOUND ).
        IF t108 = abap_true.
          t107 = t93.
        ELSE.
          DATA t116 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t116.
          DATA t117 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t117.
          DATA t118 TYPE REF TO zif_lnt_object.
          CLEAR t118.
          DATA t119 TYPE REF TO zif_lnt_registry.
          CLEAR t119.
          t119 = t74->reg.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA(t123) = |INTF|.
          DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t124->has = abap_true.
          t124->value = t123.
          t121 = t124.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          DATA(t128) = VALUE string( ).
          t128 = t77->value.
          DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t130->has = abap_true.
          t130->value = t128.
          t126 = t130.
          t118 = t119->get_object( i_type_9913 = t121 i_name = t126 ).
          DATA t132 TYPE REF TO object.
          CLEAR t132.
          t132 = t118.
          t117 ?= t132.
          t116 = t117.
          DATA t133 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t133.
          DATA(t134) = VALUE abap_bool( ).
          t134 = xsdbool( t116 IS BOUND ).
          IF t134 = abap_true.
            DATA t140 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t140.
            t140 = t116->def.
            t133 = t140.
          ELSE.
            CLEAR t133.
          ENDIF.
          t107 = t133.
        ENDIF.
        t83 = t107.
      ENDIF.
      t72 = t83.
      DATA(t143) = VALUE abap_bool( ).
      t143 = xsdbool( t72 IS BOUND ).
      IF t143 = abap_true.
        DATA t145 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t145.
        t145 = t1->scope.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t147.
        t147 = t22.
        DATA t152 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t152.
        DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t154.
        DATA t155 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t155.
        t155 = t72.
        t154 ?= t155.
        t152 = t154.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        DATA(t159) = |Object|.
        CLEAR t158.
        CREATE OBJECT t158.
        t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t158->sval = t159.
        DATA(t160) = VALUE string( ).
        t160 = t1->filename.
        DATA t162 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t162.
        DATA t164 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t164.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        DATA(t168) = VALUE string( ).
        DATA(t170) = strlen( t51 ).
        t168 = t51.
        IF t168 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t168 TO UPPER CASE.
        ELSE.
          t168 = zlnt_runtime_uppe_91169605024d=>full( t168 ).
        ENDIF.
        DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t171->has = abap_true.
        t171->value = t168.
        t165 = t171.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        DATA(t176) = |INTF|.
        DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t177->has = abap_true.
        t177->value = t176.
        t173 = t177.
        DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t179.
        CLEAR t179.
        t164 = NEW zcl_lnt_ireference_extras( i_oo_name = t165 i_oo_type = t173 i_found_qualified = t179 ).
        CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
        t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t181 ).
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t182 ).
        ENDIF.
        CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
        t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t183) = |ooName|.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
        DATA(t185) = |ooType|.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
        ENDIF.
        t162 = t164.
        t145->add_reference( i_usage = t147 i_referencing = t152 i_type_9913 = t158 i_filename = t160 i_extra = t162 ).
      ELSE.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = VALUE abap_bool( ).
        DATA t193 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t193.
        t193 = t1->scope.
        DATA t195 TYPE REF TO zcl_lnt_ddic.
        CLEAR t195.
        DATA t196 TYPE REF TO zif_lnt_registry.
        CLEAR t196.
        t196 = t193->reg.
        t195 = NEW zcl_lnt_ddic( i_reg_f149 = t196 ).
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t202->has = abap_true.
        t202->value = t51.
        t198 = t202.
        DATA(t204) = VALUE abap_bool( ).
        DATA(t205) = VALUE abap_bool( ).
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        t206 = t198.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        CLEAR t208.
        DATA(t210) = VALUE abap_bool( ).
        IF t206 IS INITIAL.
          t210 = abap_true.
        ELSEIF t206->has = abap_false.
          t210 = abap_true.
        ENDIF.
        t205 = t210.
        IF t205 = abap_true.
          t204 = abap_true.
        ELSE.
          DATA(t213) = VALUE abap_bool( ).
          DATA t214 TYPE REF TO zif_lnt_registry.
          CLEAR t214.
          t214 = t195->reg.
          DATA(t216) = VALUE string( ).
          t216 = t198->value.
          t213 = t214->in_error_namespace( i_name = t216 ).
          t204 = t213.
        ENDIF.
        t189 = t204.
        t188 = xsdbool( t189 = abap_false ).
        IF t188 = abap_true.
          DATA t219 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t219.
          t219 = t1->scope.
          DATA t221 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t221.
          t221 = t22.
          DATA t226 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t226.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          DATA(t228) = |Object (Void)|.
          CLEAR t227.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t227->sval = t228.
          DATA(t229) = VALUE string( ).
          t229 = t1->filename.
          DATA t231 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t231.
          DATA t233 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t233.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          DATA(t237) = VALUE string( ).
          DATA(t239) = strlen( t51 ).
          t237 = t51.
          IF t237 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t237 TO UPPER CASE.
          ELSE.
            t237 = zlnt_runtime_uppe_91169605024d=>full( t237 ).
          ENDIF.
          DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t240->has = abap_true.
          t240->value = t237.
          t234 = t240.
          DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t242.
          DATA(t245) = |INTF|.
          DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t246->has = abap_true.
          t246->value = t245.
          t242 = t246.
          DATA t248 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t248.
          CLEAR t248.
          t233 = NEW zcl_lnt_ireference_extras( i_oo_name = t234 i_oo_type = t242 i_found_qualified = t248 ).
          CREATE OBJECT t233->zlnt_view_ownkeys_b0e8086400eb.
          t233->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t250 ).
          DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t251.
          IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t251 ).
          ENDIF.
          CREATE OBJECT t233->zlnt_json_ownkeys_70e5fd461788.
          t233->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t252) = |ooName|.
          DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t253.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
          DATA(t254) = |ooType|.
          DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t255.
          IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
          ENDIF.
          t231 = t233.
          t219->add_reference( i_usage = t221 i_referencing = t226 i_type_9913 = t227 i_filename = t229 i_extra = t231 ).
        ELSE.
          DATA t257 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t257.
          t257 = t1->scope.
          DATA t259 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t259.
          t259 = t22.
          DATA t264 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t264.
          DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t265.
          DATA(t266) = |Object (Unknown)|.
          CLEAR t265.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t265->sval = t266.
          DATA(t267) = VALUE string( ).
          t267 = t1->filename.
          DATA t269 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t269.
          DATA t271 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t271.
          DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t272.
          DATA(t275) = VALUE string( ).
          DATA(t277) = strlen( t51 ).
          t275 = t51.
          IF t275 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t275 TO UPPER CASE.
          ELSE.
            t275 = zlnt_runtime_uppe_91169605024d=>full( t275 ).
          ENDIF.
          DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t278->has = abap_true.
          t278->value = t275.
          t272 = t278.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA(t283) = |INTF|.
          DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t284->has = abap_true.
          t284->value = t283.
          t280 = t284.
          DATA t286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t286.
          CLEAR t286.
          t271 = NEW zcl_lnt_ireference_extras( i_oo_name = t272 i_oo_type = t280 i_found_qualified = t286 ).
          CREATE OBJECT t271->zlnt_view_ownkeys_b0e8086400eb.
          t271->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t288 ).
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          IF t271->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t289 ).
          ENDIF.
          CREATE OBJECT t271->zlnt_json_ownkeys_70e5fd461788.
          t271->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t290) = |ooName|.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
          DATA(t292) = |ooType|.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
          ENDIF.
          t269 = t271.
          t257->add_reference( i_usage = t259 i_referencing = t264 i_type_9913 = t265 i_filename = t267 i_extra = t269 ).
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_type_definitions.
    result = CAST zcl_lnt_type_definitions( me->g_t_d_i_s_ab_ty_cl_df_ts_cl_df( ) ).

  ENDMETHOD.

  METHOD get_attributes.
    result = CAST zcl_lnt_attributes( me->g_a_in_sr_ab_ty_cl_df_ts_cl_df( ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1054_755a4d42bc88.
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
