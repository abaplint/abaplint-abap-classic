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
    DATA t5 TYPE REF TO zif_lnt_structure.
    t5 = t1->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    IF xsdbool( xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_sr_class_definition ) = abap_false ) = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = |ClassDefinition, unexpected node type|.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t12 ).
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
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d411_59ccb35321de.
    t16 = t1->find_first_statement( i_type_9913 = t19 ).
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_statement_node.
    t24 = t16.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t20 = t24->find_direct_expression( i_type_9913 = t26 )->get_first_token( ).
    DATA(t28) = VALUE string( ).
    t28 = t2->filename.
    super->constructor( i_token = t20 i_filename = t28 ).
    t2->scope->add_class_definition( i_c = me ).
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    me->events_f95a = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `events`.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    me->implementing = t34.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `implementing`.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA t38 TYPE REF TO zcl_lnt_statement_node.
    t38 = t16.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
    t37 = t38->find_first_expression( i_type_9913 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    me->global_value = xsdbool( xsdbool( t37 IS INITIAL ) = abap_false ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalValue`.
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    DATA t49 TYPE REF TO zcl_lnt_statement_node.
    t49 = t16.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d115_e681bc20f5c0.
    t48 = t49->find_first_expression( i_type_9913 = t51 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    me->final_value = xsdbool( xsdbool( t48 IS INITIAL ) = abap_false ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `finalValue`.
    DATA t57 TYPE REF TO zcl_lnt_current_scope.
    t57 = t2->scope.
    DATA(t64) = VALUE string( ).
    t64 = t20->str.
    DATA t70 TYPE REF TO zcl_lnt_position.
    t70 = t20->start.
    DATA(t73) = VALUE string( ).
    t73 = t2->filename.
    DATA t75 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t76 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t85 TYPE REF TO zcl_lnt_position.
    t76 = NEW zcl_lnt_iscope_identifier( i_stype = |class_definition| i_sname = t64 i_filename = t73 i_start = t70 i_end = t85 ).
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
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t93 ).
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t95 ).
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t97 ).
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t99 ).
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t101 ).
    ENDIF.
    t75 = t76.
    DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t104 = t57->current.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t104 IS INITIAL ) = abap_true.
      DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t57->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t75 i_parent = t115 ).
      DELETE t57->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t117 = t57->current.
      t57->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t75 i_parent = t117 ).
      DELETE t57->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t133 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t133 = t57->current.
      t117->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t133 ).
    ENDIF.
    DATA t141 TYPE REF TO zcl_lnt_abstract_token.
    DATA t143 TYPE REF TO zcl_lnt_expression_node.
    DATA t145 TYPE REF TO zcl_lnt_statement_node.
    t145 = t16.
    DATA t147 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t145 IS INITIAL ) = abap_true.
    ELSE.
      DATA t152 TYPE REF TO zcl_lnt_statement_node.
      t152 = t145.
      DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d348_ba08da875831.
      t147 = t152->find_direct_expression( i_type_9913 = t154 ).
    ENDIF.
    t143 = t147.
    DATA t155 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t143 IS INITIAL ) = abap_true.
    ELSE.
      t155 = t143->get_first_token( ).
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
    IF xsdbool( t169 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t179) = VALUE string( ).
      t179 = t169->str.
      DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t181->has = abap_true.
      t181->value = t179.
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
      t186 = t165->scope.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t192) = VALUE string( ).
      t192 = t167->value.
      DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t194->has = abap_true.
      t194->value = t192.
      t189 = t194.
      DATA t196 TYPE REF TO zif_lnt_class_definition.
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t198 = t189.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t202) = VALUE abap_bool( ).
      IF t198 IS INITIAL.
        t202 = abap_true.
      ELSEIF t198->has = abap_false.
        t202 = abap_true.
      ENDIF.
      IF t202 = abap_true.
      ELSE.
        DATA t206 TYPE REF TO zif_lnt_class_definition.
        DATA t208 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t208 = t186->current.
        DATA t211 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t208 IS INITIAL ) = abap_true.
        ELSE.
          DATA t216 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t216 = t208.
          DATA(t218) = VALUE string( ).
          t218 = t189->value.
          t211 = t216->find_class_definition( i_name = t218 ).
        ENDIF.
        t206 = t211.
        DATA t220 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t206 IS BOUND ) = abap_true.
          t220 = t206.
        ELSE.
          DATA t229 TYPE REF TO zcl_lnt_class.
          DATA t230 TYPE REF TO zcl_lnt_class.
          DATA t232 TYPE REF TO zif_lnt_registry.
          t232 = t186->reg.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = |CLAS|.
          t234 = t237.
          DATA(t241) = VALUE string( ).
          t241 = t189->value.
          DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t243->has = abap_true.
          t243->value = t241.
          DATA t245 TYPE REF TO object.
          t245 = t232->get_object( i_type_9913 = t234 i_name = t243 ).
          t230 ?= t245.
          t229 = t230.
          DATA t246 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t229 IS BOUND ) = abap_true.
            t246 = t229->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t246.
          ENDIF.
          t220 = t246.
        ENDIF.
        t196 = t220.
      ENDIF.
      t184 = t196.
      IF xsdbool( t184 IS BOUND ) = abap_true.
        DATA t255 TYPE REF TO zcl_lnt_current_scope.
        t255 = t165->scope.
        DATA t258 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t260 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t261 TYPE REF TO zif_lnt_class_definition.
        t261 = t184.
        t260 ?= t261.
        t258 = t260.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t264.
        t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t264->sval = |Object|.
        DATA(t266) = VALUE string( ).
        t266 = t165->filename.
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
        DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t284->has = abap_true.
        t284->value = |CLAS|.
        DATA t286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t270 = NEW zcl_lnt_ireference_extras( i_oo_name = t271 i_oo_type = t284 i_found_qualified = t286 ).
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
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t270->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t291 ).
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t270->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t270->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t293 ).
        ENDIF.
        t255->add_reference( i_usage = t163 i_referencing = t258 i_type_9913 = t264 i_filename = t266 i_extra = t270 ).
      ELSE.
        DATA t302 TYPE REF TO zcl_lnt_ddic.
        DATA t303 TYPE REF TO zif_lnt_registry.
        t303 = t165->scope->reg.
        t302 = NEW zcl_lnt_ddic( i_reg_f149 = t303 ).
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t308) = VALUE string( ).
        t308 = t167->value.
        DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t310->has = abap_true.
        t310->value = t308.
        t305 = t310.
        DATA(t312) = VALUE abap_bool( ).
        DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t314 = t305.
        DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t318) = VALUE abap_bool( ).
        IF t314 IS INITIAL.
          t318 = abap_true.
        ELSEIF t314->has = abap_false.
          t318 = abap_true.
        ENDIF.
        IF t318 = abap_true.
          t312 = abap_true.
        ELSE.
          DATA t322 TYPE REF TO zif_lnt_registry.
          t322 = t302->reg.
          DATA(t324) = VALUE string( ).
          t324 = t305->value.
          t312 = t322->in_error_namespace( i_name = t324 ).
        ENDIF.
        IF xsdbool( t312 = abap_false ) = abap_true.
          DATA t327 TYPE REF TO zcl_lnt_current_scope.
          t327 = t165->scope.
          DATA t330 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t331->sval = |Object (Void)|.
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
    IF xsdbool( t338 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t348) = VALUE string( ).
      t348 = t338->str.
      DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t350->has = abap_true.
      t350->value = t348.
      t340 = t350.
    ENDIF.
    me->super_class = t340.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `superClass`.
    me->friends = me->find_friends( i_def = t16 i_input_967e = t2 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `friends`.
    me->parse( i_input_967e = t2 i_input_node = t1 ).
    DATA t359 TYPE REF TO zcl_lnt_current_scope.
    t359 = t2->scope.
    DATA t361 TYPE REF TO zcl_lnt_object_oriented.
    t361 = NEW zcl_lnt_object_oriented( i_scope = t359 ).
    DATA t363 TYPE REF TO zif_lnt_class_definition.
    t363 = me.
    DATA t366 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t366 = t361->from_super_classes( i_child = t363 ).
    DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t371 TYPE REF TO zif_lnt_interface_definition.
    t371 ?= t363.
    t369 = t361->from_interfaces( i_definition = t371 i_skip_34cc = t366 ).
    me->attributes = NEW zcl_lnt_attributes( i_node = t1 i_input_967e = t2 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `attributes`.
    me->types = me->attributes->gt_ty_in_sr_ab_ty_cl_at_ts_att( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
    me->aliases_62bb = me->attributes->aliases_62bb.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `aliases`.
    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t390) = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
    t387 = t1->find_all_statements( i_type_9913 = t390 ).
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
      DATA(t404) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t401 = t392->find_direct_expression( i_type_9913 = t404 ).
      DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t405.
      IF xsdbool( t401 IS INITIAL ) = abap_true.
        CLEAR t405.
      ELSE.
        DATA(t409) = VALUE string( ).
        t409 = t401->concat_tokens( ).
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
      DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t425.
      t425 = me->events_f95a.
      DATA(t427) = VALUE i( ).
      t425->load( ).
      t427 = lines( t425->items ).
      DATA(t430) = VALUE i( ).
      t430 = 0.
      DATA t432 TYPE REF TO zif_lnt_event_definition.
      CLEAR t432.
      CLEAR t432.
      DO.
        IF xsdbool( t430 < t427 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t437 TYPE REF TO zif_lnt_event_definition.
        CLEAR t437.
        DATA t439 TYPE REF TO zif_lnt_event_definition.
        CLEAR t439.
        DATA t442 TYPE REF TO object.
        t442 = t425->get( p0 = t430 ).
        DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t443.
        CLEAR t439.
        IF t442 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t443 ?= t442.
          DATA t444 TYPE REF TO object.
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
        DATA(t463) = 1.
        t430 = t430 + t463.
      ENDDO.
      DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t465.
      CLEAR t465.
      IF xsdbool( xsdbool( t432 IS INITIAL ) = abap_false ) = abap_true.
        DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
          t482 = t480->value.
        ENDIF.
        t479 = t482.
        DATA(t488) = strlen( t478 ).
        t477 = |{ t478 }{ t479 }|.
        DATA(t490) = strlen( t477 ).
        t476 = |{ t477 }{ | already defined| }|.
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
      t493 = NEW zcl_lnt_event_definition( i_node = t392 i_visibility_33e6 = CONV f( 3 ) i_input_967e = t2 ).
      t492->load( ).
      APPEND t493 TO t492->items.
      t492->save( ).
    ENDDO.
    me->method_defs = NEW zcl_lnt_method_definitions( i_node = t1 i_input_967e = t2 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methodDefs`.
    DATA t500 TYPE REF TO zcl_lnt_spaghetti_scope.
    DATA t501 TYPE REF TO zcl_lnt_current_scope.
    t501 = t2->scope.
    DATA t504 TYPE REF TO zcl_lnt_abstract_token.
    t504 = t1->get_last_token( ).
    DATA(t508) = VALUE f( ).
    t508 = t504->start->row.
    DATA t515 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t515 = t504->start->col.
    DATA(t521) = VALUE f( ).
    t521 = strlen( t504->str ).
    DATA(t526) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t526->has = abap_true.
    t526->value = t521.
    t500 = t501->pop( i_end = NEW zcl_lnt_position( i_row = t508 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t515 right = t526 op = `+` ) ) ).
    DATA(t527) = VALUE string( ).
    DATA(t528) = VALUE string( ).
    DATA(t529) = VALUE string( ).
    t529 = t16->concat_tokens( ).
    DATA(t532) = strlen( t529 ).
    t528 = t529.
    IF t528 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t528 TO UPPER CASE.
    ELSE.
      t528 = zlnt_runtime_uppe_91169605024d=>full( t528 ).
    ENDIF.
    t527 = t528.
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
    me->testing = xsdbool( t534 >= 0 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `testing`.
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
    me->shared_memory = xsdbool( t540 >= 0 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sharedMemory`.
    DATA t548 TYPE REF TO zcl_lnt_statement_node.
    t548 = t16.
    DATA t550 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t548 IS INITIAL ) = abap_true.
    ELSE.
      t550 = t548->find_direct_token_by_text( i_text = |ABSTRACT| ).
    ENDIF.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    me->abstract = xsdbool( xsdbool( t550 IS INITIAL ) = abap_false ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstract`.
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
    IF xsdbool( t564 >= 0 ) = abap_true.
      me->create_visibility_value = CONV f( 1 ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createVisibilityValue`.
    ELSE.
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
      IF xsdbool( t571 >= 0 ) = abap_true.
        me->create_visibility_value = CONV f( 2 ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createVisibilityValue`.
      ELSE.
        me->create_visibility_value = CONV f( 3 ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createVisibilityValue`.
      ENDIF.
    ENDIF.
    me->check_interface_visibility( i_input_967e = t2 i_node = t1 ).
    me->chck_mthds_frm_spr_clsss( i_input_967e = t2 ).
    me->check_method_name_conflicts( i_input_967e = t2 ).
    me->check_event_name_conflicts( i_input_967e = t2 ).
    DATA t583 TYPE REF TO zcl_lnt_syntax_input.
    t583 = t2.
    DATA t588 TYPE REF TO zcl_lnt_fi_identifier.
    t588 = me.
    DATA(t591) = VALUE string( ).
    t591 = t588->token->str.
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
    ELSE.
      IF t602 > t603 - t601.
        t602 = t603 - t601.
      ENDIF.
      t599 = t600+t601(t602).
    ENDIF.
    IF xsdbool( t599 = |!| ) = abap_true.
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
      ELSE.
        IF t611 > t614 - t610.
          t611 = t614 - t610.
        ENDIF.
        t608 = t606+t610(t611).
      ENDIF.
      t591 = t608.
    ENDIF.
    IF xsdbool( strlen( t591 ) > 30 ) = abap_true.
      DATA(t618) = VALUE string( ).
      DATA(t620) = VALUE string( ).
      DATA(t621) = |Class name "|.
      DATA(t622) = VALUE string( ).
      DATA t623 TYPE REF TO zcl_lnt_fi_identifier.
      t623 = me.
      DATA(t626) = VALUE string( ).
      t626 = t623->token->str.
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
      ELSE.
        IF t637 > t638 - t636.
          t637 = t638 - t636.
        ENDIF.
        t634 = t635+t636(t637).
      ENDIF.
      IF xsdbool( t634 = |!| ) = abap_true.
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
        ELSE.
          IF t646 > t649 - t645.
            t646 = t649 - t645.
          ENDIF.
          t643 = t641+t645(t646).
        ENDIF.
        t626 = t643.
      ENDIF.
      t622 = t626.
      DATA(t651) = strlen( t621 ).
      t620 = |{ t621 }{ t622 }|.
      DATA(t653) = strlen( t620 ).
      t618 = |{ t620 }{ |" is too long, maximum length is 30 characters| }|.
      DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t654 = t583->issues.
      DATA t656 TYPE REF TO zcl_lnt_issue.
      DATA t659 TYPE REF TO zcl_lnt_fi_identifier.
      t659 = me.
      DATA t661 TYPE REF TO zcl_lnt_abstract_token.
      t661 = t659->token.
      DATA t664 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t656 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t583 i_token = t661 i_message_26cb = t618 i_fix = t664 ).
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
    DATA t5 TYPE REF TO zcl_lnt_fi_identifier.
    t5 = me.
    DATA t8 TYPE string.
    t8 = t5->token->str.
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
    ELSE.
      IF t19 > t20 - t18.
        t19 = t20 - t18.
      ENDIF.
      t16 = t17+t18(t19).
    ENDIF.
    IF xsdbool( t16 = |!| ) = abap_true.
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
      ELSE.
        IF t28 > t31 - t27.
          t28 = t31 - t27.
        ENDIF.
        t25 = t23+t27(t28).
      ENDIF.
      t8 = t25.
    ENDIF.
    IF xsdbool( strlen( t8 ) > 30 ) = abap_true.
      DATA(t35) = VALUE string( ).
      DATA(t37) = VALUE string( ).
      DATA(t38) = |Class name "|.
      DATA(t39) = VALUE string( ).
      DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
      t40 = me.
      DATA t43 TYPE string.
      t43 = t40->token->str.
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
      ELSE.
        IF t54 > t55 - t53.
          t54 = t55 - t53.
        ENDIF.
        t51 = t52+t53(t54).
      ENDIF.
      IF xsdbool( t51 = |!| ) = abap_true.
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
        ELSE.
          IF t63 > t66 - t62.
            t63 = t66 - t62.
          ENDIF.
          t60 = t58+t62(t63).
        ENDIF.
        t43 = t60.
      ENDIF.
      t39 = t43.
      DATA(t68) = strlen( t38 ).
      t37 = |{ t38 }{ t39 }|.
      DATA(t70) = strlen( t37 ).
      t35 = |{ t37 }{ |" is too long, maximum length is 30 characters| }|.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t71 = t1->issues.
      DATA t73 TYPE REF TO zcl_lnt_issue.
      DATA t76 TYPE REF TO zcl_lnt_fi_identifier.
      t76 = me.
      DATA t78 TYPE REF TO zcl_lnt_abstract_token.
      t78 = t76->token.
      DATA t81 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t73 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t78 i_message_26cb = t35 i_fix = t81 ).
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
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_statement_node.
      t14 = t7.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d348_ba08da875831.
      t9 = t14->find_direct_expression( i_type_9913 = t16 ).
    ENDIF.
    t5 = t9.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      t17 = t5->get_first_token( ).
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
    IF xsdbool( t30 IS INITIAL ) = abap_true.
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
      t47 = t26->scope.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t53 TYPE string.
      t53 = t28->value.
      DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t55->has = abap_true.
      t55->value = t53.
      t50 = t55.
      DATA t57 TYPE REF TO zif_lnt_class_definition.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t59 = t50.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t63) = VALUE abap_bool( ).
      IF t59 IS INITIAL.
        t63 = abap_true.
      ELSEIF t59->has = abap_false.
        t63 = abap_true.
      ENDIF.
      IF t63 = abap_true.
      ELSE.
        DATA t67 TYPE REF TO zif_lnt_class_definition.
        DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t69 = t47->current.
        DATA t72 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t69 IS INITIAL ) = abap_true.
        ELSE.
          DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t77 = t69.
          DATA t79 TYPE string.
          t79 = t50->value.
          t72 = t77->find_class_definition( i_name = t79 ).
        ENDIF.
        t67 = t72.
        DATA t81 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t67 IS BOUND ) = abap_true.
          t81 = t67.
        ELSE.
          DATA t90 TYPE REF TO zcl_lnt_class.
          DATA t91 TYPE REF TO zcl_lnt_class.
          DATA t93 TYPE REF TO zif_lnt_registry.
          t93 = t47->reg.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = |CLAS|.
          t95 = t98.
          DATA t102 TYPE string.
          t102 = t50->value.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t102.
          DATA t106 TYPE REF TO object.
          t106 = t93->get_object( i_type_9913 = t95 i_name = t104 ).
          t91 ?= t106.
          t90 = t91.
          DATA t107 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t90 IS BOUND ) = abap_true.
            t107 = t90->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t107.
          ENDIF.
          t81 = t107.
        ENDIF.
        t57 = t81.
      ENDIF.
      t45 = t57.
      IF xsdbool( t45 IS BOUND ) = abap_true.
        DATA t116 TYPE REF TO zcl_lnt_current_scope.
        t116 = t26->scope.
        DATA t119 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t122 TYPE REF TO zif_lnt_class_definition.
        t122 = t45.
        t121 ?= t122.
        t119 = t121.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t125.
        t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t125->sval = |Object|.
        DATA t127 TYPE string.
        t127 = t26->filename.
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
        DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t145->has = abap_true.
        t145->value = |CLAS|.
        DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t131 = NEW zcl_lnt_ireference_extras( i_oo_name = t132 i_oo_type = t145 i_found_qualified = t147 ).
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
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t152 ).
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t154 ).
        ENDIF.
        t116->add_reference( i_usage = t24 i_referencing = t119 i_type_9913 = t125 i_filename = t127 i_extra = t131 ).
      ELSE.
        DATA t163 TYPE REF TO zcl_lnt_ddic.
        DATA t164 TYPE REF TO zif_lnt_registry.
        t164 = t26->scope->reg.
        t163 = NEW zcl_lnt_ddic( i_reg_f149 = t164 ).
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t169 TYPE string.
        t169 = t28->value.
        DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t171->has = abap_true.
        t171->value = t169.
        t166 = t171.
        DATA(t173) = VALUE abap_bool( ).
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t175 = t166.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t179) = VALUE abap_bool( ).
        IF t175 IS INITIAL.
          t179 = abap_true.
        ELSEIF t175->has = abap_false.
          t179 = abap_true.
        ENDIF.
        IF t179 = abap_true.
          t173 = abap_true.
        ELSE.
          DATA t183 TYPE REF TO zif_lnt_registry.
          t183 = t163->reg.
          DATA t185 TYPE string.
          t185 = t166->value.
          t173 = t183->in_error_namespace( i_name = t185 ).
        ENDIF.
        IF xsdbool( t173 = abap_false ) = abap_true.
          DATA t188 TYPE REF TO zcl_lnt_current_scope.
          t188 = t26->scope.
          DATA t191 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t192->sval = |Object (Void)|.
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
    IF xsdbool( t199 IS INITIAL ) = abap_true.
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
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    DATA(t9) = me->method_defs.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t2 = t7->iterate( ).
    DO.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      t11 = t2->next( ).
      IF t11->done = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      CLEAR t16.
      t16 = t11->value.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      t22 = abap_false.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = VALUE abap_bool( ).
          DATA(t27) = VALUE f( ).
          t27 = strlen( t16->get_name( ) ).
          t26 = xsdbool( t27 > CONV f( 30 ) ).
          t25 = t26.
          IF t26 = abap_true.
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
            t25 = xsdbool( xsdbool( t35 >= CONV f( 0 ) ) = abap_false ).
          ENDIF.
          t21 = t25.
          t22 = abap_true.
        CATCH cx_root INTO t24.
          IF xsdbool( t22 = abap_false ) = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      IF xsdbool( t22 = abap_false ) = abap_true.
        t2->close( ).
      ENDIF.
      IF t21 = abap_true.
        DATA(t51) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA(t54) = VALUE abap_bool( ).
        t54 = abap_false.
        DATA t56 TYPE REF TO cx_root.
        CLEAR t56.
        TRY.
            DATA(t58) = VALUE string( ).
            DATA(t59) = |Method name "|.
            DATA(t60) = VALUE string( ).
            t60 = t16->get_name( ).
            DATA(t62) = strlen( t59 ).
            t58 = |{ t59 }{ t60 }|.
            DATA(t64) = strlen( t58 ).
            t53 = |{ t58 }{ |" is too long, maximum length is 30 characters| }|.
            t54 = abap_true.
          CATCH cx_root INTO t56.
            IF xsdbool( t54 = abap_false ) = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t56.
        ENDTRY.
        IF xsdbool( t54 = abap_false ) = abap_true.
          t2->close( ).
        ENDIF.
        t51 = t53.
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
            IF xsdbool( t75 = abap_false ) = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t77.
        ENDTRY.
        IF xsdbool( t75 = abap_false ) = abap_true.
          t2->close( ).
        ENDIF.
        t73 = t74.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_class_constructor.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    DATA(t9) = me->method_defs.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t2 = t7->iterate( ).
    DO.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      t11 = t2->next( ).
      IF t11->done = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      t16 = t11->value.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      t22 = abap_false.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
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
          t21 = xsdbool( t26 <> |CLASS_CONSTRUCTOR| ).
          t22 = abap_true.
        CATCH cx_root INTO t24.
          IF xsdbool( t22 = abap_false ) = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      IF xsdbool( t22 = abap_false ) = abap_true.
        t2->close( ).
      ENDIF.
      IF t21 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = VALUE abap_bool( ).
      t41 = abap_false.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          t40 = xsdbool( t16->is_static_4685( ) = abap_false ).
          t41 = abap_true.
        CATCH cx_root INTO t43.
          IF xsdbool( t41 = abap_false ) = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      IF xsdbool( t41 = abap_false ) = abap_true.
        t2->close( ).
      ENDIF.
      IF t40 = abap_true.
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
            DATA t70 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t70.
            t65 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t67 i_message_26cb = |CLASS_CONSTRUCTOR must be static| i_fix = t70 ).
            t63->load( ).
            APPEND t65 TO t63->items.
            t62 = lines( t63->items ).
            t63->save( ).
            t61 = t62.
            t57 = t61.
            t58 = abap_true.
          CATCH cx_root INTO t60.
            IF xsdbool( t58 = abap_false ) = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t60.
        ENDTRY.
        IF xsdbool( t58 = abap_false ) = abap_true.
          t2->close( ).
        ENDIF.
        t56 = t57.
      ELSE.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        t81 = abap_false.
        DATA t83 TYPE REF TO cx_root.
        CLEAR t83.
        TRY.
            t80 = xsdbool( t16->get_visibility( ) <> CONV f( 3 ) ).
            t81 = abap_true.
          CATCH cx_root INTO t83.
            IF xsdbool( t81 = abap_false ) = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t83.
        ENDTRY.
        IF xsdbool( t81 = abap_false ) = abap_true.
          t2->close( ).
        ENDIF.
        IF t80 = abap_true.
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
              DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t110.
              t105 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t107 i_message_26cb = |CLASS_CONSTRUCTOR must be declared in the public section| i_fix = t110 ).
              t103->load( ).
              APPEND t105 TO t103->items.
              t102 = lines( t103->items ).
              t103->save( ).
              t101 = t102.
              t97 = t101.
              t98 = abap_true.
            CATCH cx_root INTO t100.
              IF xsdbool( t98 = abap_false ) = abap_true.
                t2->close( ).
              ENDIF.
              RAISE EXCEPTION t100.
          ENDTRY.
          IF xsdbool( t98 = abap_false ) = abap_true.
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
    CREATE OBJECT t5.
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
      IF xsdbool( t22 IS INITIAL ) = abap_true.
        CLEAR t24.
      ELSE.
        DATA t29 TYPE REF TO zcl_lnt_structure_node.
        t29 = t22.
        DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
        t24 = t29->find_all_statements( i_type_9913 = t31 ).
      ENDIF.
      t20 = t24.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      IF xsdbool( t20 IS BOUND ) = abap_true.
        t32 = t20.
      ELSE.
        CREATE OBJECT t32.
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
        DATA t50 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t50.
        t45 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t47 i_message_26cb = |INTERFACES can only be declared in public sections| i_fix = t50 ).
        t43->load( ).
        APPEND t45 TO t43->items.
        t43->save( ).
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD chck_mthds_frm_spr_clsss.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_current_scope.
    t2 = t1->scope.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->super_class.
    DATA t7 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t7 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t9 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
    t9 = NEW zlnt_runtime_map__fed782b2fc26( ).
    DO.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t12 = t5.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t14.
      DATA(t17) = VALUE abap_bool( ).
      IF t12 IS INITIAL.
        t17 = abap_true.
      ELSEIF t12->has = abap_false.
        t17 = abap_true.
      ENDIF.
      IF xsdbool( t17 = abap_false ) = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_class_definition.
      CLEAR t19.
      DATA t21 TYPE REF TO zcl_lnt_current_scope.
      t21 = t2.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t26) = VALUE string( ).
      t26 = t5->value.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t26.
      t23 = t28.
      DATA t30 TYPE REF TO zif_lnt_class_definition.
      CLEAR t30.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
      IF t36 = abap_true.
        CLEAR t30.
      ELSE.
        DATA t40 TYPE REF TO zif_lnt_class_definition.
        CLEAR t40.
        DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t42 = t21->current.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        IF xsdbool( t42 IS INITIAL ) = abap_true.
          CLEAR t45.
        ELSE.
          DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t50 = t42.
          DATA(t52) = VALUE string( ).
          t52 = t23->value.
          t45 = t50->find_class_definition( i_name = t52 ).
        ENDIF.
        t40 = t45.
        DATA t54 TYPE REF TO zif_lnt_class_definition.
        CLEAR t54.
        IF xsdbool( t40 IS BOUND ) = abap_true.
          t54 = t40.
        ELSE.
          DATA t63 TYPE REF TO zcl_lnt_class.
          DATA t64 TYPE REF TO zcl_lnt_class.
          CLEAR t64.
          DATA t66 TYPE REF TO zif_lnt_registry.
          t66 = t21->reg.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t71->has = abap_true.
          t71->value = |CLAS|.
          t68 = t71.
          DATA(t75) = VALUE string( ).
          t75 = t23->value.
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t75.
          DATA t79 TYPE REF TO object.
          t79 = t66->get_object( i_type_9913 = t68 i_name = t77 ).
          t64 ?= t79.
          t63 = t64.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          CLEAR t80.
          IF xsdbool( t63 IS BOUND ) = abap_true.
            t80 = t63->gt_dfn_ins_src_obj_cls_ts_clss( ).
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
      t91 = t19.
      DATA t93 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t93.
      IF xsdbool( t91 IS INITIAL ) = abap_true.
        CLEAR t93.
      ELSE.
        t93 = t91->get_method_definitions( ).
      ENDIF.
      t89 = t93.
      DATA t100 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t100.
      IF xsdbool( t89 IS INITIAL ) = abap_true.
        CLEAR t100.
      ELSE.
        t100 = t89->get_all( ).
      ENDIF.
      t87 = t100.
      IF xsdbool( xsdbool( t87 IS INITIAL ) = abap_false ) = abap_true.
        DATA t110 TYPE REF TO zif_lnt_generator_0f59ca3c.
        t110 = t87->iterate( ).
        DO.
          DATA t115 TYPE REF TO zcl_lnt_generator_0f216880.
          t115 = t110->next( ).
          IF t115->done = abap_true.
            EXIT.
          ENDIF.
          DATA t120 TYPE REF TO zif_lnt_method_definition.
          CLEAR t120.
          t120 = t115->value.
          DATA(t124) = VALUE string( ).
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
              IF xsdbool( t127 = abap_false ) = abap_true.
                t110->close( ).
              ENDIF.
              RAISE EXCEPTION t129.
          ENDTRY.
          IF xsdbool( t127 = abap_false ) = abap_true.
            t110->close( ).
          ENDIF.
          t124 = t126.
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = VALUE abap_bool( ).
          t144 = abap_false.
          DATA t146 TYPE REF TO cx_root.
          CLEAR t146.
          TRY.
              t143 = xsdbool( t120->get_visibility( ) = CONV f( 1 ) ).
              t144 = abap_true.
            CATCH cx_root INTO t146.
              IF xsdbool( t144 = abap_false ) = abap_true.
                t110->close( ).
              ENDIF.
              RAISE EXCEPTION t146.
          ENDTRY.
          IF xsdbool( t144 = abap_false ) = abap_true.
            t110->close( ).
          ENDIF.
          IF t143 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t160) = VALUE abap_bool( ).
            DATA(t161) = VALUE abap_bool( ).
            t161 = abap_false.
            DATA t163 TYPE REF TO cx_root.
            CLEAR t163.
            TRY.
                DATA(t164) = VALUE abap_bool( ).
                DATA(t165) = VALUE abap_bool( ).
                DATA(t166) = VALUE abap_bool( ).
                t166 = xsdbool( t124 = |CONSTRUCTOR| ).
                t165 = t166.
                IF t166 = abap_false.
                  t165 = xsdbool( t124 = |DESTRUCTOR| ).
                ENDIF.
                t164 = t165.
                IF t165 = abap_false.
                  t164 = xsdbool( t124 = |CLASS_CONSTRUCTOR| ).
                ENDIF.
                t160 = t164.
                t161 = abap_true.
              CATCH cx_root INTO t163.
                IF xsdbool( t161 = abap_false ) = abap_true.
                  t110->close( ).
                ENDIF.
                RAISE EXCEPTION t163.
            ENDTRY.
            IF xsdbool( t161 = abap_false ) = abap_true.
              t110->close( ).
            ENDIF.
            IF t160 = abap_true.
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
              t184 = t7->add( p0 = t124 ).
              t185 = abap_true.
            CATCH cx_root INTO t187.
              IF xsdbool( t185 = abap_false ) = abap_true.
                t110->close( ).
              ENDIF.
              RAISE EXCEPTION t187.
          ENDTRY.
          IF xsdbool( t185 = abap_false ) = abap_true.
            t110->close( ).
          ENDIF.
          t183 = t184.
          DATA(t200) = VALUE abap_bool( ).
          DATA(t201) = VALUE abap_bool( ).
          t201 = abap_false.
          DATA t203 TYPE REF TO cx_root.
          CLEAR t203.
          TRY.
              t200 = xsdbool( t9->has( p0 = t124 ) = abap_false ).
              t201 = abap_true.
            CATCH cx_root INTO t203.
              IF xsdbool( t201 = abap_false ) = abap_true.
                t110->close( ).
              ENDIF.
              RAISE EXCEPTION t203.
          ENDTRY.
          IF xsdbool( t201 = abap_false ) = abap_true.
            t110->close( ).
          ENDIF.
          IF t200 = abap_true.
            DATA t217 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
            CLEAR t217.
            DATA t218 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
            CLEAR t218.
            DATA(t219) = VALUE abap_bool( ).
            t219 = abap_false.
            DATA t221 TYPE REF TO cx_root.
            CLEAR t221.
            TRY.
                t218 = t9->set( p0 = t124 p1 = t120->get_visibility( ) ).
                t219 = abap_true.
              CATCH cx_root INTO t221.
                IF xsdbool( t219 = abap_false ) = abap_true.
                  t110->close( ).
                ENDIF.
                RAISE EXCEPTION t221.
            ENDTRY.
            IF xsdbool( t219 = abap_false ) = abap_true.
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
      t238 = t19.
      DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t240.
      IF xsdbool( t238 IS INITIAL ) = abap_true.
        CLEAR t240.
      ELSE.
        t240 = t238->get_aliases( ).
      ENDIF.
      t236 = t240.
      DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t247.
      IF xsdbool( t236 IS BOUND ) = abap_true.
        t247 = t236.
      ELSE.
        CREATE OBJECT t247.
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
        t262 = t253.
        DATA(t265) = VALUE string( ).
        t265 = t262->token->str.
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
        ELSE.
          IF t276 > t277 - t275.
            t276 = t277 - t275.
          ENDIF.
          t273 = t274+t275(t276).
        ENDIF.
        IF xsdbool( t273 = |!| ) = abap_true.
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
          ELSE.
            IF t285 > t288 - t284.
              t285 = t288 - t284.
            ENDIF.
            t282 = t280+t284(t285).
          ENDIF.
          t265 = t282.
        ENDIF.
        t261 = t265.
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
      t292 = t19.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      IF xsdbool( t292 IS INITIAL ) = abap_true.
        CLEAR t294.
      ELSE.
        t294 = t292->get_super_class( ).
      ENDIF.
      t5 = t294.
    ENDDO.
    DATA t301 TYPE REF TO zif_lnt_generator_0f59ca3c.
    t301 = CAST zif_lnt_method_definitions( me->get_method_definitions( ) )->get_all( )->iterate( ).
    DO.
      DATA t306 TYPE REF TO zcl_lnt_generator_0f216880.
      t306 = t301->next( ).
      IF t306->done = abap_true.
        EXIT.
      ENDIF.
      DATA t311 TYPE REF TO zif_lnt_method_definition.
      t311 = t306->value.
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
            t320 = xsdbool( t311->is_redefinition( ) = abap_false ).
          ENDIF.
          t316 = t320.
          t317 = abap_true.
        CATCH cx_root INTO t319.
          IF xsdbool( t317 = abap_false ) = abap_true.
            t301->close( ).
          ENDIF.
          RAISE EXCEPTION t319.
      ENDTRY.
      IF xsdbool( t317 = abap_false ) = abap_true.
        t301->close( ).
      ENDIF.
      IF t316 = abap_true.
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
            DATA(t361) = strlen( t353 ).
            t352 = |{ t353 }{ | already declared in superclass| }|.
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
            IF xsdbool( t341 = abap_false ) = abap_true.
              t301->close( ).
            ENDIF.
            RAISE EXCEPTION t343.
        ENDTRY.
        IF xsdbool( t341 = abap_false ) = abap_true.
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
          t373 = t9->get( p0 = t379 ).
          t374 = abap_true.
        CATCH cx_root INTO t376.
          IF xsdbool( t374 = abap_false ) = abap_true.
            t301->close( ).
          ENDIF.
          RAISE EXCEPTION t376.
      ENDTRY.
      IF xsdbool( t374 = abap_false ) = abap_true.
        t301->close( ).
      ENDIF.
      t371 = t373.
      DATA(t392) = VALUE abap_bool( ).
      DATA(t393) = VALUE abap_bool( ).
      t393 = abap_false.
      DATA t395 TYPE REF TO cx_root.
      CLEAR t395.
      TRY.
          DATA(t396) = VALUE abap_bool( ).
          DATA(t397) = VALUE abap_bool( ).
          DATA(t398) = VALUE abap_bool( ).
          t398 = xsdbool( t311->is_redefinition( ) = abap_true ).
          t397 = t398.
          IF t398 = abap_true.
            DATA t403 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t403 = t371.
            DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t405.
            CLEAR t405.
            DATA(t408) = VALUE abap_bool( ).
            IF t403 IS INITIAL.
              t408 = abap_true.
            ELSEIF t403->has = abap_false.
              t408 = abap_true.
            ENDIF.
            t397 = xsdbool( t408 = abap_false ).
          ENDIF.
          t396 = t397.
          IF t397 = abap_true.
            DATA(t411) = VALUE f( ).
            t411 = t311->get_visibility( ).
            IF t371->number_special <> 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t396 = xsdbool( t411 <> t371->value ).
          ENDIF.
          t392 = t396.
          t393 = abap_true.
        CATCH cx_root INTO t395.
          IF xsdbool( t393 = abap_false ) = abap_true.
            t301->close( ).
          ENDIF.
          RAISE EXCEPTION t395.
      ENDTRY.
      IF xsdbool( t393 = abap_false ) = abap_true.
        t301->close( ).
      ENDIF.
      IF t392 = abap_true.
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
            DATA(t445) = strlen( t437 ).
            t436 = |{ t437 }{ | redefinition visibility cannot be changed| }|.
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
            IF xsdbool( t425 = abap_false ) = abap_true.
              t301->close( ).
            ENDIF.
            RAISE EXCEPTION t427.
        ENDTRY.
        IF xsdbool( t425 = abap_false ) = abap_true.
          t301->close( ).
        ENDIF.
        t423 = t424.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_method_name_conflicts.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    DATA(t9) = me->method_defs.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t2 = t7->iterate( ).
    DO.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      t11 = t2->next( ).
      IF t11->done = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      t16 = t11->value.
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
          t31 = t16->get_name( ).
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
          t26 = xsdbool( xsdbool( t34 IS INITIAL ) = abap_false ).
          t25 = t26.
          IF t26 = abap_false.
            DATA(t49) = me->types.
            DATA(t50) = VALUE string( ).
            t50 = t16->get_name( ).
            DATA t54 TYPE REF TO zcl_lnt_type_definitions_entry.
            CLEAR t54.
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
            t54 = t56->get( p0 = t58 ).
            DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t61.
            IF xsdbool( t54 IS INITIAL ) = abap_true.
              CLEAR t61.
            ELSE.
              t61 = t54->type_cba0.
            ENDIF.
            DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t68.
            CLEAR t68.
            t25 = xsdbool( xsdbool( t61 IS INITIAL ) = abap_false ).
          ENDIF.
          t21 = t25.
          t22 = abap_true.
        CATCH cx_root INTO t24.
          IF xsdbool( t22 = abap_false ) = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      IF xsdbool( t22 = abap_false ) = abap_true.
        t2->close( ).
      ENDIF.
      IF t21 = abap_true.
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
            DATA(t101) = strlen( t95 ).
            t94 = |{ t95 }{ |" already defined| }|.
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
            IF xsdbool( t83 = abap_false ) = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t85.
        ENDTRY.
        IF xsdbool( t83 = abap_false ) = abap_true.
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
      t15 = t3->get_name( ).
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
      t10 = xsdbool( xsdbool( t18 IS INITIAL ) = abap_false ).
      t9 = t10.
      IF t10 = abap_false.
        DATA(t33) = me->types.
        DATA t34 TYPE string.
        t34 = t3->get_name( ).
        DATA t38 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t38.
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
        t38 = t40->get( p0 = t42 ).
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t45.
        IF xsdbool( t38 IS INITIAL ) = abap_true.
          CLEAR t45.
        ELSE.
          t45 = t38->type_cba0.
        ENDIF.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        t9 = xsdbool( xsdbool( t45 IS INITIAL ) = abap_false ).
      ENDIF.
      t8 = t9.
      IF t9 = abap_false.
        DATA(t61) = me->method_defs.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t65 TYPE string.
        t65 = t3->get_name( ).
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t65.
        t62 = t67.
        DATA t69 TYPE REF TO zif_lnt_method_definition.
        CLEAR t69.
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
        IF t75 = abap_true.
          CLEAR t69.
        ELSE.
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
          t69 = t79->get( p0 = t81 ).
        ENDIF.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        t8 = xsdbool( xsdbool( t69 IS INITIAL ) = abap_false ).
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
        t94 = t95->token.
        DATA t100 TYPE string.
        DATA t101 TYPE string.
        DATA(t102) = |"|.
        DATA t103 TYPE string.
        t103 = t3->get_name( ).
        DATA(t105) = strlen( t102 ).
        t101 = |{ t102 }{ t103 }|.
        DATA(t107) = strlen( t101 ).
        t100 = |{ t101 }{ |" already defined| }|.
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
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    t10 = t1.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t10 IS INITIAL ) = abap_true.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_statement_node.
      t17 = t10.
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d117_490f9bcc19a9.
      t12 = t17->find_direct_expression( i_type_9913 = t19 ).
    ENDIF.
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      t25 = t8.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t20 = t25->find_direct_expressions( i_type_9913 = t27 ).
    ENDIF.
    t6 = t20.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t6 IS BOUND ) = abap_true.
      t28 = t6.
    ELSE.
      CREATE OBJECT t28.
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
      t39 = t34->get_first_token( ).
      DATA t42 TYPE string.
      t42 = t39->str.
      DATA t48 TYPE REF TO zif_lnt_class_definition.
      CLEAR t48.
      DATA t50 TYPE REF TO zcl_lnt_current_scope.
      t50 = t2->scope.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t57->has = abap_true.
      t57->value = t42.
      t53 = t57.
      DATA t59 TYPE REF TO zif_lnt_class_definition.
      CLEAR t59.
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
      IF t65 = abap_true.
        CLEAR t59.
      ELSE.
        DATA t69 TYPE REF TO zif_lnt_class_definition.
        CLEAR t69.
        DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t71 = t50->current.
        DATA t74 TYPE REF TO zif_lnt_class_definition.
        CLEAR t74.
        IF xsdbool( t71 IS INITIAL ) = abap_true.
          CLEAR t74.
        ELSE.
          DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t79 = t71.
          DATA t81 TYPE string.
          t81 = t53->value.
          t74 = t79->find_class_definition( i_name = t81 ).
        ENDIF.
        t69 = t74.
        DATA t83 TYPE REF TO zif_lnt_class_definition.
        CLEAR t83.
        IF xsdbool( t69 IS BOUND ) = abap_true.
          t83 = t69.
        ELSE.
          DATA t92 TYPE REF TO zcl_lnt_class.
          DATA t93 TYPE REF TO zcl_lnt_class.
          CLEAR t93.
          DATA t95 TYPE REF TO zif_lnt_registry.
          t95 = t50->reg.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t100->has = abap_true.
          t100->value = |CLAS|.
          t97 = t100.
          DATA t104 TYPE string.
          t104 = t53->value.
          DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t106->has = abap_true.
          t106->value = t104.
          DATA t108 TYPE REF TO object.
          t108 = t95->get_object( i_type_9913 = t97 i_name = t106 ).
          t93 ?= t108.
          t92 = t93.
          DATA t109 TYPE REF TO zif_lnt_class_definition.
          CLEAR t109.
          IF xsdbool( t92 IS BOUND ) = abap_true.
            t109 = t92->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t109.
          ENDIF.
          t83 = t109.
        ENDIF.
        t59 = t83.
      ENDIF.
      t48 = t59.
      IF xsdbool( t48 IS BOUND ) = abap_true.
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
        CLEAR t130.
        CREATE OBJECT t130.
        t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t130->sval = |Object|.
        DATA t132 TYPE string.
        t132 = t2->filename.
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
        DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t149->has = abap_true.
        t149->value = |CLAS|.
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
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t156 ).
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t158 ).
        ENDIF.
        t118->add_reference( i_usage = t120 i_referencing = t124 i_type_9913 = t130 i_filename = t132 i_extra = t136 ).
      ELSE.
        DATA t162 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA t163 TYPE REF TO zcl_lnt_current_scope.
        t163 = t2->scope.
        DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t168->has = abap_true.
        t168->value = t42.
        t162 = t163->exists_object( i_name = t168 ).
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF xsdbool( xsdbool( t162 IS INITIAL ) = abap_false ) = abap_true.
        ELSE.
          DATA t182 TYPE REF TO zcl_lnt_ddic.
          DATA t183 TYPE REF TO zif_lnt_registry.
          t183 = t2->scope->reg.
          t182 = NEW zcl_lnt_ddic( i_reg_f149 = t183 ).
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t189->has = abap_true.
          t189->value = t42.
          t185 = t189.
          DATA(t191) = VALUE abap_bool( ).
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
          IF t197 = abap_true.
            t191 = abap_true.
          ELSE.
            DATA t201 TYPE REF TO zif_lnt_registry.
            t201 = t182->reg.
            DATA t203 TYPE string.
            t203 = t185->value.
            t191 = t201->in_error_namespace( i_name = t203 ).
          ENDIF.
          IF xsdbool( t191 = abap_false ) = abap_true.
            DATA t206 TYPE REF TO zcl_lnt_current_scope.
            t206 = t2->scope.
            DATA t208 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t208.
            t208 = t39.
            DATA t212 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t212.
            DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t213.
            CLEAR t213.
            CREATE OBJECT t213.
            t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t213->sval = |Object (Void)|.
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
            DATA(t231) = strlen( t224 ).
            t223 = |{ t224 }{ | does not exist| }|.
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
    IF xsdbool( t5 IS INITIAL ) = abap_true.
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
      t22 = t2->scope.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE string.
      t28 = t3->value.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t28.
      t25 = t30.
      DATA t32 TYPE REF TO zif_lnt_class_definition.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t34 = t25.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t38) = VALUE abap_bool( ).
      IF t34 IS INITIAL.
        t38 = abap_true.
      ELSEIF t34->has = abap_false.
        t38 = abap_true.
      ENDIF.
      IF t38 = abap_true.
      ELSE.
        DATA t42 TYPE REF TO zif_lnt_class_definition.
        DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t44 = t22->current.
        DATA t47 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t44 IS INITIAL ) = abap_true.
        ELSE.
          DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t52 = t44.
          DATA t54 TYPE string.
          t54 = t25->value.
          t47 = t52->find_class_definition( i_name = t54 ).
        ENDIF.
        t42 = t47.
        DATA t56 TYPE REF TO zif_lnt_class_definition.
        IF xsdbool( t42 IS BOUND ) = abap_true.
          t56 = t42.
        ELSE.
          DATA t65 TYPE REF TO zcl_lnt_class.
          DATA t66 TYPE REF TO zcl_lnt_class.
          DATA t68 TYPE REF TO zif_lnt_registry.
          t68 = t22->reg.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = |CLAS|.
          t70 = t73.
          DATA t77 TYPE string.
          t77 = t25->value.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t77.
          DATA t81 TYPE REF TO object.
          t81 = t68->get_object( i_type_9913 = t70 i_name = t79 ).
          t66 ?= t81.
          t65 = t66.
          DATA t82 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t65 IS BOUND ) = abap_true.
            t82 = t65->gt_dfn_ins_src_obj_cls_ts_clss( ).
          ELSE.
            CLEAR t82.
          ENDIF.
          t56 = t82.
        ENDIF.
        t32 = t56.
      ENDIF.
      t20 = t32.
      IF xsdbool( t20 IS BOUND ) = abap_true.
        DATA t91 TYPE REF TO zcl_lnt_current_scope.
        t91 = t2->scope.
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t96 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t97 TYPE REF TO zif_lnt_class_definition.
        t97 = t20.
        t96 ?= t97.
        t94 = t96.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t100.
        t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t100->sval = |Object|.
        DATA t102 TYPE string.
        t102 = t2->filename.
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
        DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t120->has = abap_true.
        t120->value = |CLAS|.
        DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t106 = NEW zcl_lnt_ireference_extras( i_oo_name = t107 i_oo_type = t120 i_found_qualified = t122 ).
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
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t127 ).
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t129 ).
        ENDIF.
        t91->add_reference( i_usage = t1 i_referencing = t94 i_type_9913 = t100 i_filename = t102 i_extra = t106 ).
      ELSE.
        DATA t138 TYPE REF TO zcl_lnt_ddic.
        DATA t139 TYPE REF TO zif_lnt_registry.
        t139 = t2->scope->reg.
        t138 = NEW zcl_lnt_ddic( i_reg_f149 = t139 ).
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t144 TYPE string.
        t144 = t3->value.
        DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t146->has = abap_true.
        t146->value = t144.
        t141 = t146.
        DATA(t148) = VALUE abap_bool( ).
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t150 = t141.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t154) = VALUE abap_bool( ).
        IF t150 IS INITIAL.
          t154 = abap_true.
        ELSEIF t150->has = abap_false.
          t154 = abap_true.
        ENDIF.
        IF t154 = abap_true.
          t148 = abap_true.
        ELSE.
          DATA t158 TYPE REF TO zif_lnt_registry.
          t158 = t138->reg.
          DATA t160 TYPE string.
          t160 = t141->value.
          t148 = t158->in_error_namespace( i_name = t160 ).
        ENDIF.
        IF xsdbool( t148 = abap_false ) = abap_true.
          DATA t163 TYPE REF TO zcl_lnt_current_scope.
          t163 = t2->scope.
          DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t167->sval = |Object (Void)|.
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
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      t14 = t6->find_direct_token_by_text( i_text = |PARTIALLY| ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t17.
      DATA(t19) = VALUE abap_bool( ).
      t19 = xsdbool( xsdbool( t14 IS INITIAL ) = abap_false ).
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t24 = t6->find_first_expression( i_type_9913 = t27 ).
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      IF xsdbool( t24 IS INITIAL ) = abap_true.
        CLEAR t28.
      ELSE.
        t28 = t24->get_first_token( ).
      ENDIF.
      t22 = t28.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t38.
      IF xsdbool( t22 IS INITIAL ) = abap_true.
        DATA t42 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t43 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = |ClassDefinition, unable to find interface token|.
        t43 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t47 ).
        t42 = NEW #( ).
        t42->payload = t43.
        CLEAR t42->source_value.
        DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t49.
        DATA t50 TYPE REF TO object.
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
      t53 = t22->str.
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
      t61 = NEW zcl_lnt_iimplementing( i_name = t51 i_partial = t19 ).
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
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t69 ).
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |partial| p1 = t71 ).
      ENDIF.
      t60->load( ).
      APPEND t61 TO t60->items.
      t60->save( ).
      DATA t72 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t72.
      DATA t74 TYPE REF TO zcl_lnt_current_scope.
      t74 = t1->scope.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t81->has = abap_true.
      t81->value = t51.
      t77 = t81.
      DATA t83 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t83.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
      IF t89 = abap_true.
        CLEAR t83.
      ELSE.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t93.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t95 = t74->current.
        DATA t98 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t98.
        IF xsdbool( t95 IS INITIAL ) = abap_true.
          CLEAR t98.
        ELSE.
          DATA t103 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t103 = t95.
          DATA(t105) = VALUE string( ).
          t105 = t77->value.
          t98 = t103->find_interface_definition( i_name = t105 ).
        ENDIF.
        t93 = t98.
        DATA t107 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t107.
        IF xsdbool( t93 IS BOUND ) = abap_true.
          t107 = t93.
        ELSE.
          DATA t116 TYPE REF TO zcl_lnt_ob_interface.
          DATA t117 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t117.
          DATA t119 TYPE REF TO zif_lnt_registry.
          t119 = t74->reg.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t124->has = abap_true.
          t124->value = |INTF|.
          t121 = t124.
          DATA(t128) = VALUE string( ).
          t128 = t77->value.
          DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t130->has = abap_true.
          t130->value = t128.
          DATA t132 TYPE REF TO object.
          t132 = t119->get_object( i_type_9913 = t121 i_name = t130 ).
          t117 ?= t132.
          t116 = t117.
          DATA t133 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t133.
          IF xsdbool( t116 IS BOUND ) = abap_true.
            t133 = t116->def.
          ELSE.
            CLEAR t133.
          ENDIF.
          t107 = t133.
        ENDIF.
        t83 = t107.
      ENDIF.
      t72 = t83.
      IF xsdbool( t72 IS BOUND ) = abap_true.
        DATA t145 TYPE REF TO zcl_lnt_current_scope.
        t145 = t1->scope.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t147.
        t147 = t22.
        DATA t152 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t152.
        DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t154.
        DATA t155 TYPE REF TO zif_lnt_interface_definition.
        t155 = t72.
        t154 ?= t155.
        t152 = t154.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        CLEAR t158.
        CREATE OBJECT t158.
        t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t158->sval = |Object|.
        DATA(t160) = VALUE string( ).
        t160 = t1->filename.
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
        DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t177->has = abap_true.
        t177->value = |INTF|.
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
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t184 ).
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t186 ).
        ENDIF.
        t145->add_reference( i_usage = t147 i_referencing = t152 i_type_9913 = t158 i_filename = t160 i_extra = t164 ).
      ELSE.
        DATA t193 TYPE REF TO zcl_lnt_current_scope.
        t193 = t1->scope.
        DATA t195 TYPE REF TO zcl_lnt_ddic.
        DATA t196 TYPE REF TO zif_lnt_registry.
        CLEAR t196.
        t196 = t193->reg.
        t195 = NEW zcl_lnt_ddic( i_reg_f149 = t196 ).
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t202->has = abap_true.
        t202->value = t51.
        t198 = t202.
        DATA(t204) = VALUE abap_bool( ).
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
        IF t210 = abap_true.
          t204 = abap_true.
        ELSE.
          DATA t214 TYPE REF TO zif_lnt_registry.
          t214 = t195->reg.
          DATA(t216) = VALUE string( ).
          t216 = t198->value.
          t204 = t214->in_error_namespace( i_name = t216 ).
        ENDIF.
        IF xsdbool( t204 = abap_false ) = abap_true.
          DATA t219 TYPE REF TO zcl_lnt_current_scope.
          t219 = t1->scope.
          DATA t221 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t221.
          t221 = t22.
          DATA t226 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t226.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          CLEAR t227.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t227->sval = |Object (Void)|.
          DATA(t229) = VALUE string( ).
          t229 = t1->filename.
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
          DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t246->has = abap_true.
          t246->value = |INTF|.
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
          DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t253.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t253 ).
          DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t255.
          IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t255 ).
          ENDIF.
          t219->add_reference( i_usage = t221 i_referencing = t226 i_type_9913 = t227 i_filename = t229 i_extra = t233 ).
        ELSE.
          DATA t257 TYPE REF TO zcl_lnt_current_scope.
          t257 = t1->scope.
          DATA t259 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t259.
          t259 = t22.
          DATA t264 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t264.
          DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t265.
          CLEAR t265.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t265->sval = |Object (Unknown)|.
          DATA(t267) = VALUE string( ).
          t267 = t1->filename.
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
          DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t284->has = abap_true.
          t284->value = |INTF|.
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
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t291 ).
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t293 ).
          ENDIF.
          t257->add_reference( i_usage = t259 i_referencing = t264 i_type_9913 = t265 i_filename = t267 i_extra = t271 ).
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
