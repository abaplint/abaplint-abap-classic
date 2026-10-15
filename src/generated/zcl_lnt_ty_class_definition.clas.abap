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
    CLEAR t5.
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
      CLEAR t7->source_value.
      IF t8 IS BOUND.
        DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t14.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        CLEAR t14.
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
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA(t18) = t1.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d411_59ccb35321de.
    t17 = t18->find_first_statement( i_type_9913 = t19 ).
    t16 = t17.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t24.
    DATA(t25) = t16.
    t24 = t25.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t23 = t24->find_direct_expression( i_type_9913 = t26 ).
    t22 = t23.
    t21 = t22->get_first_token( ).
    t20 = t21.
    DATA(t27) = t20.
    DATA(t28) = VALUE string( ).
    DATA(t29) = t2.
    t28 = t29->filename.
    super->constructor( i_token = t27 i_filename = t28 ).
    DATA t30 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t30.
    DATA(t31) = t2.
    t30 = t31->scope.
    DATA(t32) = me.
    t30->add_class_definition( i_c = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    me->events_f95a = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `events`.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    CREATE OBJECT t34.
    me->implementing = t34.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `implementing`.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t37.
    DATA t38 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t38.
    DATA(t39) = t16.
    t38 = t39.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
    t37 = t38->find_first_expression( i_type_9913 = t40 ).
    t36 = t37.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    t41 = t42.
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = t36.
    IF t45 IS INITIAL.
      t44 = abap_true.
    ENDIF.
    t43 = xsdbool( t44 = abap_false ).
    t35 = t43.
    me->global_value = t35.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalValue`.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t49.
    DATA(t50) = t16.
    t49 = t50.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d115_e681bc20f5c0.
    t48 = t49->find_first_expression( i_type_9913 = t51 ).
    t47 = t48.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    t52 = t53.
    DATA(t54) = VALUE abap_bool( ).
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = t47.
    IF t56 IS INITIAL.
      t55 = abap_true.
    ENDIF.
    t54 = xsdbool( t55 = abap_false ).
    t46 = t54.
    me->final_value = t46.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `finalValue`.
    DATA t57 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t57.
    DATA t58 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t58.
    DATA(t59) = t2.
    t58 = t59->scope.
    t57 = t58.
    DATA(t60) = VALUE string( ).
    DATA(t61) = VALUE string( ).
    DATA t62 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t62.
    DATA(t63) = t20.
    t62 = t63.
    DATA(t64) = VALUE string( ).
    DATA(t65) = t62.
    t64 = t65->str.
    t61 = t64.
    t60 = t61.
    DATA t66 TYPE REF TO zcl_lnt_position.
    CLEAR t66.
    DATA t67 TYPE REF TO zcl_lnt_position.
    CLEAR t67.
    DATA t68 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t68.
    DATA(t69) = t20.
    t68 = t69.
    DATA t70 TYPE REF TO zcl_lnt_position.
    CLEAR t70.
    DATA(t71) = t68.
    t70 = t71->start.
    t67 = t70.
    t66 = t67.
    DATA(t72) = VALUE string( ).
    DATA(t73) = VALUE string( ).
    DATA(t74) = t2.
    t73 = t74->filename.
    t72 = t73.
    DATA t75 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t75.
    DATA t76 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t76.
    DATA(t77) = VALUE string( ).
    DATA(t78) = |class_definition|.
    t77 = t78.
    DATA(t79) = VALUE string( ).
    DATA(t80) = t60.
    t79 = t80.
    DATA t81 TYPE REF TO zcl_lnt_position.
    CLEAR t81.
    DATA(t82) = t66.
    t81 = t82.
    DATA(t83) = VALUE string( ).
    DATA(t84) = t72.
    t83 = t84.
    DATA t85 TYPE REF TO zcl_lnt_position.
    CLEAR t85.
    DATA t86 TYPE REF TO zcl_lnt_position.
    CLEAR t86.
    t85 = t86.
    t76 = NEW zcl_lnt_iscope_identifier( i_stype = t77 i_sname = t79 i_filename = t83 i_start = t81 i_end = t85 ).
    CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
    t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t87 ).
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t88 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t89 ).
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t90 ).
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t91 ).
    ENDIF.
    CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
    t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t92) = |stype|.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
    ENDIF.
    DATA(t94) = |sname|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
    ENDIF.
    DATA(t96) = |start|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
    ENDIF.
    DATA(t98) = |filename|.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
    ENDIF.
    DATA(t100) = |end|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    ENDIF.
    t75 = t76.
    DATA(t102) = VALUE abap_bool( ).
    DATA t103 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t103.
    DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t104.
    DATA(t105) = t57.
    t104 = t105->current.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    t106 = t107.
    DATA(t108) = VALUE abap_bool( ).
    DATA(t109) = t103.
    IF t109 IS INITIAL.
      t108 = abap_true.
    ENDIF.
    t102 = t108.
    IF t102 = abap_true.
      DATA(t110) = t57.
      DATA t111 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t111.
      DATA(t112) = abap_true.
      IF t112 = abap_true.
        DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t113.
        DATA(t114) = t75.
        DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t115.
        t113 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t114 i_parent = t115 ).
        t111 = t113.
      ELSE.
        DATA t116 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t116.
        t111 = t116.
      ENDIF.
      t110->current = t111.
      DELETE t110->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t117.
      DATA t118 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t118.
      DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t119.
      DATA(t120) = t57.
      t119 = t120->current.
      t118 = t119.
      t117 = t118.
      DATA(t121) = t57.
      DATA t122 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t122.
      DATA(t123) = abap_true.
      IF t123 = abap_true.
        DATA t124 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t124.
        DATA(t125) = t75.
        DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t126.
        DATA(t127) = abap_true.
        IF t127 = abap_true.
          DATA(t128) = t117.
          t126 = t128.
        ELSE.
          DATA t129 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t129.
          t126 = t129.
        ENDIF.
        t124 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t125 i_parent = t126 ).
        t122 = t124.
      ELSE.
        DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t130.
        t122 = t130.
      ENDIF.
      t121->current = t122.
      DELETE t121->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t131) = t117.
      DATA t132 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t132.
      DATA t133 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t133.
      DATA(t134) = t57.
      t133 = t134->current.
      t132 = t133.
      t131->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t132 ).
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t135.
    DATA t136 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t136.
    DATA(t137) = t16.
    t136 = t137.
    DATA t138 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t138.
    DATA(t139) = t2.
    t138 = t139.
    DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t140.
    DATA t141 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t141.
    DATA t142 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t142.
    DATA t143 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t143.
    DATA t144 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t144.
    DATA t145 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t145.
    DATA(t146) = t136.
    t145 = t146.
    DATA t147 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t147.
    DATA(t148) = VALUE abap_bool( ).
    DATA(t149) = t145.
    IF t149 IS INITIAL.
      t148 = abap_true.
    ENDIF.
    IF t148 = abap_true.
      DATA t150 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t150.
      t147 = t150.
    ELSE.
      DATA t151 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t151.
      DATA t152 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t152.
      DATA(t153) = t145.
      t152 = t153.
      DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d348_ba08da875831.
      t151 = t152->find_direct_expression( i_type_9913 = t154 ).
      t147 = t151.
    ENDIF.
    t144 = t147.
    t143 = t144.
    DATA t155 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t155.
    DATA(t156) = VALUE abap_bool( ).
    DATA(t157) = t143.
    IF t157 IS INITIAL.
      t156 = abap_true.
    ENDIF.
    IF t156 = abap_true.
      DATA t158 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t158.
      t155 = t158.
    ELSE.
      DATA t159 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t159.
      DATA t160 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t160.
      DATA(t161) = t143.
      t160 = t161.
      t159 = t160->get_first_token( ).
      t155 = t159.
    ENDIF.
    t142 = t155.
    t141 = t142.
    DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t162.
    DATA t163 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t163.
    DATA(t164) = t141.
    t163 = t164.
    DATA t165 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t165.
    DATA(t166) = t138.
    t165 = t166.
    DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t168.
    DATA t169 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t169.
    DATA(t170) = t163.
    t169 = t170.
    DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t171.
    DATA(t172) = VALUE abap_bool( ).
    DATA(t173) = t169.
    IF t173 IS INITIAL.
      t172 = abap_true.
    ENDIF.
    IF t172 = abap_true.
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      t171 = t174.
    ELSE.
      DATA(t175) = VALUE string( ).
      DATA t176 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t176.
      DATA t177 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t177.
      DATA(t178) = t169.
      t177 = t178.
      t176 = t177.
      DATA(t179) = VALUE string( ).
      DATA(t180) = t176.
      t179 = t180->str.
      t175 = t179.
      DATA(t181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t181->has = abap_true.
      t181->value = t175.
      t171 = t181.
    ENDIF.
    t168 = t171.
    t167 = t168.
    DATA(t182) = VALUE abap_bool( ).
    DATA(t183) = t167.
    IF t183 IS BOUND.
      IF t183->has = abap_true.
        t182 = xsdbool( strlen( t183->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t182 = abap_true.
      DATA t184 TYPE REF TO zif_lnt_class_definition.
      CLEAR t184.
      DATA t185 TYPE REF TO zif_lnt_class_definition.
      CLEAR t185.
      DATA t186 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t186.
      DATA t187 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t187.
      DATA(t188) = t165.
      t187 = t188->scope.
      t186 = t187.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t189.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t190.
      DATA(t191) = abap_true.
      IF t191 = abap_true.
        DATA(t192) = VALUE string( ).
        DATA(t193) = t167.
        t192 = t193->value.
        DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t194->has = abap_true.
        t194->value = t192.
        t190 = t194.
      ELSE.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t195.
        t190 = t195.
      ENDIF.
      t189 = t190.
      DATA t196 TYPE REF TO zif_lnt_class_definition.
      CLEAR t196.
      DATA(t197) = VALUE abap_bool( ).
      DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t198.
      DATA(t199) = t189.
      t198 = t199.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      t200 = t201.
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = t198.
      IF t203 IS INITIAL.
        t202 = abap_true.
      ELSEIF t203->has = abap_false.
        t202 = abap_true.
      ENDIF.
      t197 = t202.
      IF t197 = abap_true.
        DATA t204 TYPE REF TO zif_lnt_class_definition.
        CLEAR t204.
        t196 = t204.
      ELSE.
        DATA t205 TYPE REF TO zif_lnt_class_definition.
        CLEAR t205.
        DATA t206 TYPE REF TO zif_lnt_class_definition.
        CLEAR t206.
        DATA t207 TYPE REF TO zif_lnt_class_definition.
        CLEAR t207.
        DATA t208 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t208.
        DATA t209 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t209.
        DATA(t210) = t186.
        t209 = t210->current.
        t208 = t209.
        DATA t211 TYPE REF TO zif_lnt_class_definition.
        CLEAR t211.
        DATA(t212) = VALUE abap_bool( ).
        DATA(t213) = t208.
        IF t213 IS INITIAL.
          t212 = abap_true.
        ENDIF.
        IF t212 = abap_true.
          DATA t214 TYPE REF TO zif_lnt_class_definition.
          CLEAR t214.
          t211 = t214.
        ELSE.
          DATA t215 TYPE REF TO zif_lnt_class_definition.
          CLEAR t215.
          DATA t216 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t216.
          DATA(t217) = t208.
          t216 = t217.
          DATA(t218) = VALUE string( ).
          DATA(t219) = t189.
          t218 = t219->value.
          t215 = t216->find_class_definition( i_name = t218 ).
          t211 = t215.
        ENDIF.
        t207 = t211.
        t206 = t207.
        DATA t220 TYPE REF TO zif_lnt_class_definition.
        CLEAR t220.
        DATA(t221) = VALUE abap_bool( ).
        DATA(t222) = t206.
        t221 = xsdbool( t222 IS BOUND ).
        IF t221 = abap_true.
          DATA t223 TYPE REF TO zif_lnt_class_definition.
          CLEAR t223.
          DATA(t224) = abap_true.
          IF t224 = abap_true.
            DATA t225 TYPE REF TO zif_lnt_class_definition.
            CLEAR t225.
            DATA(t226) = t206.
            t225 = t226.
            t223 = t225.
          ELSE.
            DATA t227 TYPE REF TO zif_lnt_class_definition.
            CLEAR t227.
            t223 = t227.
          ENDIF.
          t220 = t223.
        ELSE.
          DATA t228 TYPE REF TO zif_lnt_class_definition.
          CLEAR t228.
          DATA t229 TYPE REF TO zcl_lnt_class.
          CLEAR t229.
          DATA t230 TYPE REF TO zcl_lnt_class.
          CLEAR t230.
          DATA t231 TYPE REF TO zif_lnt_object.
          CLEAR t231.
          DATA t232 TYPE REF TO zif_lnt_registry.
          CLEAR t232.
          DATA(t233) = t186.
          t232 = t233->reg.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          DATA(t235) = abap_true.
          IF t235 = abap_true.
            DATA(t236) = |CLAS|.
            DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t237->has = abap_true.
            t237->value = t236.
            t234 = t237.
          ELSE.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            t234 = t238.
          ENDIF.
          DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t239.
          DATA(t240) = abap_true.
          IF t240 = abap_true.
            DATA(t241) = VALUE string( ).
            DATA(t242) = t189.
            t241 = t242->value.
            DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t243->has = abap_true.
            t243->value = t241.
            t239 = t243.
          ELSE.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            t239 = t244.
          ENDIF.
          t231 = t232->get_object( i_type_9913 = t234 i_name = t239 ).
          DATA t245 TYPE REF TO object.
          CLEAR t245.
          t245 = t231.
          t230 ?= t245.
          t229 = t230.
          DATA t246 TYPE REF TO zif_lnt_class_definition.
          CLEAR t246.
          DATA(t247) = VALUE abap_bool( ).
          DATA(t248) = t229.
          t247 = xsdbool( t248 IS BOUND ).
          IF t247 = abap_true.
            DATA t249 TYPE REF TO zif_lnt_class_definition.
            CLEAR t249.
            DATA t250 TYPE REF TO zcl_lnt_class.
            CLEAR t250.
            DATA(t251) = t229.
            t250 = t251.
            t249 = t250->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t246 = t249.
          ELSE.
            DATA t252 TYPE REF TO zif_lnt_class_definition.
            CLEAR t252.
            t246 = t252.
          ENDIF.
          t228 = t246.
          t220 = t228.
        ENDIF.
        t205 = t220.
        t196 = t205.
      ENDIF.
      t185 = t196.
      t184 = t185.
      DATA(t253) = VALUE abap_bool( ).
      DATA(t254) = t184.
      t253 = xsdbool( t254 IS BOUND ).
      IF t253 = abap_true.
        DATA t255 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t255.
        DATA(t256) = t165.
        t255 = t256->scope.
        DATA(t257) = t163.
        DATA t258 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t258.
        DATA(t259) = abap_true.
        IF t259 = abap_true.
          DATA t260 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t260.
          DATA t261 TYPE REF TO zif_lnt_class_definition.
          CLEAR t261.
          DATA(t262) = t184.
          t261 = t262.
          t260 ?= t261.
          t258 = t260.
        ELSE.
          DATA t263 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t263.
          t258 = t263.
        ENDIF.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        DATA(t265) = |Object|.
        CLEAR t264.
        CREATE OBJECT t264.
        t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t264->sval = t265.
        DATA(t266) = VALUE string( ).
        DATA(t267) = t165.
        t266 = t267->filename.
        DATA t268 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t268.
        DATA(t269) = abap_true.
        IF t269 = abap_true.
          DATA t270 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t270.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t271.
          DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t272.
          DATA(t273) = abap_true.
          IF t273 = abap_true.
            DATA(t274) = VALUE string( ).
            DATA(t275) = VALUE string( ).
            DATA(t276) = t167.
            t275 = t276->value.
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
            t272 = t278.
          ELSE.
            DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t279.
            t272 = t279.
          ENDIF.
          t271 = t272.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          DATA(t282) = abap_true.
          IF t282 = abap_true.
            DATA(t283) = |CLAS|.
            DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t284->has = abap_true.
            t284->value = t283.
            t281 = t284.
          ELSE.
            DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t285.
            t281 = t285.
          ENDIF.
          t280 = t281.
          DATA t286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t286.
          DATA t287 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t287.
          t286 = t287.
          t270 = NEW zcl_lnt_ireference_extras( i_oo_name = t271 i_oo_type = t280 i_found_qualified = t286 ).
          CREATE OBJECT t270->zlnt_view_ownkeys_b0e8086400eb.
          t270->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          IF t270->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t270->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t288 ).
          ENDIF.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          IF t270->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t270->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t289 ).
          ENDIF.
          CREATE OBJECT t270->zlnt_json_ownkeys_70e5fd461788.
          t270->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t290) = |ooName|.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t270->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t270->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
          ENDIF.
          DATA(t292) = |ooType|.
          DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t293.
          IF t270->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t270->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
          ENDIF.
          t268 = t270.
        ELSE.
          DATA t294 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t294.
          t268 = t294.
        ENDIF.
        t255->add_reference( i_usage = t257 i_referencing = t258 i_type_9913 = t264 i_filename = t266 i_extra = t268 ).
      ELSE.
        DATA(t295) = VALUE abap_bool( ).
        DATA(t296) = VALUE abap_bool( ).
        DATA t297 TYPE REF TO zcl_lnt_ddic.
        CLEAR t297.
        DATA t298 TYPE REF TO zcl_lnt_ddic.
        CLEAR t298.
        DATA t299 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t299.
        DATA t300 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t300.
        DATA(t301) = t165.
        t300 = t301->scope.
        t299 = t300.
        DATA t302 TYPE REF TO zcl_lnt_ddic.
        CLEAR t302.
        DATA t303 TYPE REF TO zif_lnt_registry.
        CLEAR t303.
        DATA(t304) = t299.
        t303 = t304->reg.
        t302 = NEW zcl_lnt_ddic( i_reg_f149 = t303 ).
        t298 = t302.
        t297 = t298.
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t305.
        DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t306.
        DATA(t307) = abap_true.
        IF t307 = abap_true.
          DATA(t308) = VALUE string( ).
          DATA(t309) = t167.
          t308 = t309->value.
          DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t310->has = abap_true.
          t310->value = t308.
          t306 = t310.
        ELSE.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t311.
          t306 = t311.
        ENDIF.
        t305 = t306.
        DATA(t312) = VALUE abap_bool( ).
        DATA(t313) = VALUE abap_bool( ).
        DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t314.
        DATA(t315) = t305.
        t314 = t315.
        DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t316.
        DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t317.
        t316 = t317.
        DATA(t318) = VALUE abap_bool( ).
        DATA(t319) = t314.
        IF t319 IS INITIAL.
          t318 = abap_true.
        ELSEIF t319->has = abap_false.
          t318 = abap_true.
        ENDIF.
        t313 = t318.
        IF t313 = abap_true.
          DATA(t320) = abap_true.
          t312 = t320.
        ELSE.
          DATA(t321) = VALUE abap_bool( ).
          DATA t322 TYPE REF TO zif_lnt_registry.
          CLEAR t322.
          DATA(t323) = t297.
          t322 = t323->reg.
          DATA(t324) = VALUE string( ).
          DATA(t325) = t305.
          t324 = t325->value.
          t321 = t322->in_error_namespace( i_name = t324 ).
          t312 = t321.
        ENDIF.
        t296 = t312.
        DATA(t326) = abap_false.
        t295 = xsdbool( t296 = t326 ).
        IF t295 = abap_true.
          DATA t327 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t327.
          DATA(t328) = t165.
          t327 = t328->scope.
          DATA(t329) = t163.
          DATA t330 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t330.
          DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t331.
          DATA(t332) = |Object (Void)|.
          CLEAR t331.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t331->sval = t332.
          DATA(t333) = VALUE string( ).
          DATA(t334) = t165.
          t333 = t334->filename.
          DATA t335 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t335.
          t327->add_reference( i_usage = t329 i_referencing = t330 i_type_9913 = t331 i_filename = t333 i_extra = t335 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t336.
    DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t337.
    DATA t338 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t338.
    DATA(t339) = t141.
    t338 = t339.
    DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t340.
    DATA(t341) = VALUE abap_bool( ).
    DATA(t342) = t338.
    IF t342 IS INITIAL.
      t341 = abap_true.
    ENDIF.
    IF t341 = abap_true.
      DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t343.
      t340 = t343.
    ELSE.
      DATA(t344) = VALUE string( ).
      DATA t345 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t345.
      DATA t346 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t346.
      DATA(t347) = t338.
      t346 = t347.
      t345 = t346.
      DATA(t348) = VALUE string( ).
      DATA(t349) = t345.
      t348 = t349->str.
      t344 = t348.
      DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t350->has = abap_true.
      t350->value = t344.
      t340 = t350.
    ENDIF.
    t337 = t340.
    t336 = t337.
    DATA(t351) = t336.
    t162 = t351.
    t140 = t162.
    t135 = t140.
    me->super_class = t135.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `superClass`.
    DATA t352 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t352.
    DATA(t353) = t16.
    DATA(t354) = t2.
    t352 = me->find_friends( i_def = t353 i_input_967e = t354 ).
    me->friends = t352.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `friends`.
    DATA(t355) = t2.
    DATA(t356) = t1.
    me->parse( i_input_967e = t355 i_input_node = t356 ).
    DATA t357 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t357.
    DATA t358 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t358.
    DATA t359 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t359.
    DATA(t360) = t2.
    t359 = t360->scope.
    t358 = NEW zcl_lnt_object_oriented( i_scope = t359 ).
    t357 = t358.
    DATA t361 TYPE REF TO zcl_lnt_object_oriented.
    CLEAR t361.
    DATA(t362) = t357.
    t361 = t362.
    DATA t363 TYPE REF TO zif_lnt_class_definition.
    CLEAR t363.
    DATA(t364) = me.
    t363 = t364.
    DATA t365 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t366.
    DATA(t367) = t361.
    DATA(t368) = t363.
    t366 = t367->from_super_classes( i_child = t368 ).
    t365 = t366.
    DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t369.
    DATA(t370) = t361.
    DATA t371 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t371.
    DATA(t372) = t363.
    t371 ?= t372.
    DATA t373 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t373.
    DATA(t374) = abap_true.
    IF t374 = abap_true.
      DATA(t375) = t365.
      t373 = t375.
    ELSE.
      DATA t376 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t376.
      t373 = t376.
    ENDIF.
    t369 = t370->from_interfaces( i_definition = t371 i_skip_34cc = t373 ).
    DATA t377 TYPE REF TO zcl_lnt_attributes.
    CLEAR t377.
    DATA(t378) = t1.
    DATA(t379) = t2.
    t377 = NEW zcl_lnt_attributes( i_node = t378 i_input_967e = t379 ).
    me->attributes = t377.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `attributes`.
    DATA t380 TYPE REF TO zcl_lnt_type_definitions.
    CLEAR t380.
    DATA(t381) = me->attributes.
    t380 = t381->gt_ty_in_sr_ab_ty_cl_at_ts_att( ).
    me->types = t380.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t382.
    DATA t383 TYPE REF TO zcl_lnt_attributes.
    CLEAR t383.
    DATA(t384) = me->attributes.
    t383 = t384.
    DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t385.
    DATA(t386) = t383.
    t385 = t386->aliases_62bb.
    t382 = t385.
    me->aliases_62bb = t382.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `aliases`.
    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t388.
    DATA(t389) = t1.
    DATA(t390) = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
    t388 = t389->find_all_statements( i_type_9913 = t390 ).
    t387 = t388.
    DATA(t391) = t387.
    DATA t392 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t392.
    DATA t393 TYPE REF TO object.
    CLEAR t393.
    DATA(t394) = VALUE i( ).
    DO.
      t391->load( ).
      IF t394 >= lines( t391->items ).
        EXIT.
      ENDIF.
      CLEAR t393.
      READ TABLE t391->items INDEX t394 + 1 INTO t393.
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
      DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t398.
      DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t399.
      DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t400.
      DATA t401 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t401.
      DATA t402 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t402.
      DATA(t403) = t392.
      DATA(t404) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t402 = t403->find_direct_expression( i_type_9913 = t404 ).
      t401 = t402.
      DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t405.
      DATA(t406) = VALUE abap_bool( ).
      DATA(t407) = t401.
      IF t407 IS INITIAL.
        t406 = abap_true.
      ENDIF.
      IF t406 = abap_true.
        DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t408.
        t405 = t408.
      ELSE.
        DATA(t409) = VALUE string( ).
        DATA t410 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t410.
        DATA(t411) = t401.
        t410 = t411.
        t409 = t410->concat_tokens( ).
        DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t412->has = abap_true.
        t412->value = t409.
        t405 = t412.
      ENDIF.
      t400 = t405.
      t399 = t400.
      DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t413.
      DATA(t414) = VALUE abap_bool( ).
      DATA(t415) = t399.
      IF t415 IS INITIAL.
        t414 = abap_true.
      ELSEIF t415->has = abap_false.
        t414 = abap_true.
      ENDIF.
      IF t414 = abap_true.
        DATA t416 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t416.
        t413 = t416.
      ELSE.
        DATA(t417) = VALUE string( ).
        DATA(t418) = VALUE string( ).
        DATA(t419) = t399.
        t418 = t419->value.
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
      t398 = t413.
      t397 = t398.
      DATA(t422) = VALUE abap_bool( ).
      DATA t423 TYPE REF TO zif_lnt_event_definition.
      CLEAR t423.
      DATA t424 TYPE REF TO zif_lnt_event_definition.
      CLEAR t424.
      DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t425.
      DATA(t426) = me->events_f95a.
      t425 = t426.
      DATA(t427) = VALUE i( ).
      DATA(t428) = VALUE i( ).
      DATA(t429) = t425.
      t429->load( ).
      t428 = lines( t429->items ).
      t427 = t428.
      DATA(t430) = VALUE i( ).
      DATA(t431) = 0.
      t430 = t431.
      DATA t432 TYPE REF TO zif_lnt_event_definition.
      CLEAR t432.
      DATA t433 TYPE REF TO zif_lnt_event_definition.
      CLEAR t433.
      t432 = t433.
      DO.
        DATA(t434) = VALUE abap_bool( ).
        DATA(t435) = t430.
        DATA(t436) = t427.
        t434 = xsdbool( t435 < t436 ).
        IF t434 = abap_false.
          EXIT.
        ENDIF.
        DATA t437 TYPE REF TO zif_lnt_event_definition.
        CLEAR t437.
        DATA t438 TYPE REF TO zif_lnt_event_definition.
        CLEAR t438.
        DATA t439 TYPE REF TO zif_lnt_event_definition.
        CLEAR t439.
        DATA(t440) = t425.
        DATA(t441) = t430.
        DATA t442 TYPE REF TO object.
        CLEAR t442.
        t442 = t440->get( p0 = t441 ).
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
        t438 = t439.
        t437 = t438.
        DATA(t445) = VALUE abap_bool( ).
        DATA t446 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t446.
        DATA(t447) = abap_true.
        IF t447 = abap_true.
          DATA(t448) = VALUE string( ).
          DATA(t449) = VALUE string( ).
          DATA(t450) = t437.
          t449 = t450->get_name( ).
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
        ELSE.
          DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t453.
          t446 = t453.
        ENDIF.
        DATA(t454) = t397.
        DATA(t455) = VALUE abap_bool( ).
        DATA(t456) = VALUE abap_bool( ).
        IF t446 IS BOUND.
          t455 = t446->has.
        ENDIF.
        IF t454 IS BOUND.
          t456 = t454->has.
        ENDIF.
        IF t455 = t456.
          IF t455 = abap_false.
            t445 = abap_true.
          ELSEIF t446->value = t454->value.
            t445 = abap_true.
          ENDIF.
        ENDIF.
        IF t445 = abap_true.
          DATA t457 TYPE REF TO zif_lnt_event_definition.
          CLEAR t457.
          DATA(t458) = abap_true.
          IF t458 = abap_true.
            DATA(t459) = t437.
            t457 = t459.
          ELSE.
            DATA t460 TYPE REF TO zif_lnt_event_definition.
            CLEAR t460.
            t457 = t460.
          ENDIF.
          t432 = t457.
          EXIT.
        ENDIF.
        DATA(t461) = VALUE i( ).
        DATA(t462) = t430.
        DATA(t463) = 1.
        t461 = t462 + t463.
        t430 = t461.
      ENDDO.
      DATA(t464) = t432.
      t424 = t464.
      t423 = t424.
      DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t465.
      DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t466.
      t465 = t466.
      DATA(t467) = VALUE abap_bool( ).
      DATA(t468) = VALUE abap_bool( ).
      DATA(t469) = t423.
      IF t469 IS INITIAL.
        t468 = abap_true.
      ENDIF.
      t467 = xsdbool( t468 = abap_false ).
      t422 = t467.
      IF t422 = abap_true.
        DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t470.
        DATA(t471) = t2.
        t470 = t471->issues.
        DATA t472 TYPE REF TO zcl_lnt_issue.
        CLEAR t472.
        DATA(t473) = t2.
        DATA t474 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t474.
        DATA(t475) = t392.
        t474 = t475->get_first_token( ).
        DATA(t476) = VALUE string( ).
        DATA(t477) = VALUE string( ).
        DATA(t478) = |Event |.
        DATA(t479) = VALUE string( ).
        DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t480.
        DATA(t481) = t397.
        t480 = t481.
        DATA(t482) = VALUE string( ).
        DATA(t483) = VALUE abap_bool( ).
        DATA(t484) = t480.
        IF t484 IS INITIAL.
          t483 = abap_true.
        ELSEIF t484->has = abap_false.
          t483 = abap_true.
        ENDIF.
        IF t483 = abap_true.
          DATA(t485) = |undefined|.
          t482 = t485.
        ELSE.
          DATA(t486) = VALUE string( ).
          DATA(t487) = t480.
          t486 = t487->value.
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
        t472 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t473 i_token = t474 i_message_26cb = t476 i_fix = t491 ).
        t470->load( ).
        APPEND t472 TO t470->items.
        t470->save( ).
        CONTINUE.
      ENDIF.
      DATA(t492) = me->events_f95a.
      DATA t493 TYPE REF TO zcl_lnt_event_definition.
      CLEAR t493.
      DATA(t494) = t392.
      DATA(t495) = CONV f( 3 ).
      DATA(t496) = t2.
      t493 = NEW zcl_lnt_event_definition( i_node = t494 i_visibility_33e6 = t495 i_input_967e = t496 ).
      t492->load( ).
      APPEND t493 TO t492->items.
      t492->save( ).
    ENDDO.
    DATA t497 TYPE REF TO zcl_lnt_method_definitions.
    CLEAR t497.
    DATA(t498) = t1.
    DATA(t499) = t2.
    t497 = NEW zcl_lnt_method_definitions( i_node = t498 i_input_967e = t499 ).
    me->method_defs = t497.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methodDefs`.
    DATA t500 TYPE REF TO zcl_lnt_spaghetti_scope.
    CLEAR t500.
    DATA t501 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t501.
    DATA(t502) = t2.
    t501 = t502->scope.
    DATA t503 TYPE REF TO zcl_lnt_position.
    CLEAR t503.
    DATA t504 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t504.
    DATA t505 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t505.
    DATA(t506) = t1.
    t505 = t506->get_last_token( ).
    t504 = t505.
    DATA t507 TYPE REF TO zcl_lnt_position.
    CLEAR t507.
    DATA(t508) = VALUE f( ).
    DATA t509 TYPE REF TO zcl_lnt_position.
    CLEAR t509.
    DATA t510 TYPE REF TO zcl_lnt_position.
    CLEAR t510.
    DATA(t511) = t504.
    t510 = t511->start.
    t509 = t510.
    DATA(t512) = VALUE f( ).
    DATA(t513) = t509.
    t512 = t513->row.
    t508 = t512.
    DATA t514 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t514.
    DATA t515 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t515.
    DATA t516 TYPE REF TO zcl_lnt_position.
    CLEAR t516.
    DATA t517 TYPE REF TO zcl_lnt_position.
    CLEAR t517.
    DATA(t518) = t504.
    t517 = t518->start.
    t516 = t517.
    DATA t519 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t519.
    DATA(t520) = t516.
    t519 = t520->col.
    t515 = t519.
    DATA(t521) = VALUE f( ).
    DATA(t522) = VALUE i( ).
    DATA(t523) = VALUE string( ).
    DATA(t524) = t504.
    t523 = t524->str.
    DATA(t525) = strlen( t523 ).
    t522 = t525.
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
    CLEAR t530.
    DATA(t531) = t16.
    t530 = t531.
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
    DATA(t535) = t527.
    DATA(t536) = | FOR TESTING|.
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
    me->testing = t533.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `testing`.
    DATA(t539) = VALUE abap_bool( ).
    DATA(t540) = VALUE i( ).
    DATA(t541) = t527.
    DATA(t542) = | SHARED MEMORY ENABLED|.
    DATA(t543) = strlen( t541 ).
    IF t542 IS INITIAL.
      t540 = 0.
    ELSE.
      FIND t542 IN t541 MATCH OFFSET t540.
      IF sy-subrc <> 0.
        t540 = -1.
      ENDIF.
    ENDIF.
    DATA(t544) = 0.
    t539 = xsdbool( t540 >= t544 ).
    me->shared_memory = t539.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sharedMemory`.
    DATA(t545) = VALUE abap_bool( ).
    DATA t546 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t546.
    DATA t547 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t547.
    DATA t548 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t548.
    DATA(t549) = t16.
    t548 = t549.
    DATA t550 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t550.
    DATA(t551) = VALUE abap_bool( ).
    DATA(t552) = t548.
    IF t552 IS INITIAL.
      t551 = abap_true.
    ENDIF.
    IF t551 = abap_true.
      DATA t553 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t553.
      t550 = t553.
    ELSE.
      DATA t554 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t554.
      DATA t555 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t555.
      DATA(t556) = t548.
      t555 = t556.
      DATA(t557) = |ABSTRACT|.
      t554 = t555->find_direct_token_by_text( i_text = t557 ).
      t550 = t554.
    ENDIF.
    t547 = t550.
    t546 = t547.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    t558 = t559.
    DATA(t560) = VALUE abap_bool( ).
    DATA(t561) = VALUE abap_bool( ).
    DATA(t562) = t546.
    IF t562 IS INITIAL.
      t561 = abap_true.
    ENDIF.
    t560 = xsdbool( t561 = abap_false ).
    t545 = t560.
    me->abstract = t545.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstract`.
    DATA(t563) = VALUE abap_bool( ).
    DATA(t564) = VALUE i( ).
    DATA(t565) = t527.
    DATA(t566) = | CREATE PRIVATE|.
    DATA(t567) = strlen( t565 ).
    IF t566 IS INITIAL.
      t564 = 0.
    ELSE.
      FIND t566 IN t565 MATCH OFFSET t564.
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
      DATA(t572) = t527.
      DATA(t573) = | CREATE PROTECTED|.
      DATA(t574) = strlen( t572 ).
      IF t573 IS INITIAL.
        t571 = 0.
      ELSE.
        FIND t573 IN t572 MATCH OFFSET t571.
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
    DATA(t578) = t2.
    DATA(t579) = t1.
    me->check_interface_visibility( i_input_967e = t578 i_node = t579 ).
    DATA(t580) = t2.
    me->chck_mthds_frm_spr_clsss( i_input_967e = t580 ).
    DATA(t581) = t2.
    me->check_method_name_conflicts( i_input_967e = t581 ).
    DATA(t582) = t2.
    me->check_event_name_conflicts( i_input_967e = t582 ).
    DATA t583 TYPE REF TO zcl_lnt_syntax_input.
    CLEAR t583.
    DATA(t584) = t2.
    t583 = t584.
    DATA(t585) = VALUE abap_bool( ).
    DATA(t586) = VALUE i( ).
    DATA(t587) = VALUE string( ).
    DATA t588 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t588.
    DATA(t589) = me.
    t588 = t589.
    DATA(t590) = VALUE string( ).
    DATA(t591) = VALUE string( ).
    DATA(t592) = VALUE string( ).
    DATA t593 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t593.
    DATA t594 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t594.
    DATA(t595) = t588.
    t594 = t595->token.
    t593 = t594.
    DATA(t596) = VALUE string( ).
    DATA(t597) = t593.
    t596 = t597->str.
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
      DATA(t607) = t591.
      t606 = t607.
      DATA(t608) = VALUE string( ).
      DATA(t609) = t606.
      DATA(t610) = 1.
      DATA(t611) = VALUE i( ).
      DATA(t612) = t606.
      DATA(t613) = strlen( t612 ).
      t611 = t613.
      DATA(t614) = strlen( t609 ).
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
        t608 = t609+t610(t611).
      ENDIF.
      t605 = t608.
      t591 = t605.
    ENDIF.
    DATA(t615) = t591.
    t590 = t615.
    t587 = t590.
    DATA(t616) = strlen( t587 ).
    t586 = t616.
    DATA(t617) = 30.
    t585 = xsdbool( t586 > t617 ).
    IF t585 = abap_true.
      DATA(t618) = VALUE string( ).
      DATA(t619) = VALUE string( ).
      DATA(t620) = VALUE string( ).
      DATA(t621) = |Class name "|.
      DATA(t622) = VALUE string( ).
      DATA t623 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t623.
      DATA(t624) = me.
      t623 = t624.
      DATA(t625) = VALUE string( ).
      DATA(t626) = VALUE string( ).
      DATA(t627) = VALUE string( ).
      DATA t628 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t628.
      DATA t629 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t629.
      DATA(t630) = t623.
      t629 = t630->token.
      t628 = t629.
      DATA(t631) = VALUE string( ).
      DATA(t632) = t628.
      t631 = t632->str.
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
        DATA(t642) = t626.
        t641 = t642.
        DATA(t643) = VALUE string( ).
        DATA(t644) = t641.
        DATA(t645) = 1.
        DATA(t646) = VALUE i( ).
        DATA(t647) = t641.
        DATA(t648) = strlen( t647 ).
        t646 = t648.
        DATA(t649) = strlen( t644 ).
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
          t643 = t644+t645(t646).
        ENDIF.
        t640 = t643.
        t626 = t640.
      ENDIF.
      DATA(t650) = t626.
      t625 = t650.
      t622 = t625.
      DATA(t651) = strlen( t621 ).
      t620 = |{ t621 }{ t622 }|.
      DATA(t652) = |" is too long, maximum length is 30 characters|.
      DATA(t653) = strlen( t620 ).
      t619 = |{ t620 }{ t652 }|.
      t618 = t619.
      DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t654.
      DATA(t655) = t583.
      t654 = t655->issues.
      DATA t656 TYPE REF TO zcl_lnt_issue.
      CLEAR t656.
      DATA(t657) = t583.
      DATA t658 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t658.
      DATA t659 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t659.
      DATA(t660) = me.
      t659 = t660.
      DATA t661 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t661.
      DATA(t662) = t659.
      t661 = t662->token.
      t658 = t661.
      DATA(t663) = t618.
      DATA t664 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t664.
      t656 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t657 i_token = t658 i_message_26cb = t663 i_fix = t664 ).
      t654->load( ).
      APPEND t656 TO t654->items.
      t654->save( ).
    ENDIF.
    DATA(t665) = t2.
    me->check_method_name_length( i_input_967e = t665 ).
    DATA(t666) = t2.
    me->check_class_constructor( i_input_967e = t666 ).
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
    DATA(t1) = CONV abap_bool( me->final_value ).
    result = t1.

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
      t71->load( ).
      APPEND t73 TO t71->items.
      t71->save( ).
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
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d348_ba08da875831.
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
        CLEAR t125.
        DATA(t126) = |Object|.
        CLEAR t125.
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
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          DATA(t134) = abap_true.
          IF t134 = abap_true.
            DATA t135 TYPE string.
            DATA t136 TYPE string.
            DATA(t137) = t28.
            t136 = t137->value.
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
            t133 = t139.
          ELSE.
            DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t140.
            t133 = t140.
          ENDIF.
          t132 = t133.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          DATA(t143) = abap_true.
          IF t143 = abap_true.
            DATA(t144) = |CLAS|.
            DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t145->has = abap_true.
            t145->value = t144.
            t142 = t145.
          ELSE.
            DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t146.
            t142 = t146.
          ENDIF.
          t141 = t142.
          DATA t147 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t148 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t148.
          t147 = t148.
          t131 = NEW zcl_lnt_ireference_extras( i_oo_name = t132 i_oo_type = t141 i_found_qualified = t147 ).
          CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
          t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t149 ).
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t150 ).
          ENDIF.
          CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
          t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t151) = |ooName|.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
          ENDIF.
          DATA(t153) = |ooType|.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
          ENDIF.
          t129 = t131.
        ELSE.
          DATA t155 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t155.
          t129 = t155.
        ENDIF.
        t116->add_reference( i_usage = t118 i_referencing = t119 i_type_9913 = t125 i_filename = t127 i_extra = t129 ).
      ELSE.
        DATA(t156) = VALUE abap_bool( ).
        DATA(t157) = VALUE abap_bool( ).
        DATA t158 TYPE REF TO zcl_lnt_ddic.
        DATA t159 TYPE REF TO zcl_lnt_ddic.
        DATA t160 TYPE REF TO zcl_lnt_current_scope.
        DATA t161 TYPE REF TO zcl_lnt_current_scope.
        DATA(t162) = t26.
        t161 = t162->scope.
        t160 = t161.
        DATA t163 TYPE REF TO zcl_lnt_ddic.
        DATA t164 TYPE REF TO zif_lnt_registry.
        DATA(t165) = t160.
        t164 = t165->reg.
        t163 = NEW zcl_lnt_ddic( i_reg_f149 = t164 ).
        t159 = t163.
        t158 = t159.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t166.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t167.
        DATA(t168) = abap_true.
        IF t168 = abap_true.
          DATA t169 TYPE string.
          DATA(t170) = t28.
          t169 = t170->value.
          DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t171->has = abap_true.
          t171->value = t169.
          t167 = t171.
        ELSE.
          DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t172.
          t167 = t172.
        ENDIF.
        t166 = t167.
        DATA(t173) = VALUE abap_bool( ).
        DATA(t174) = VALUE abap_bool( ).
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t176) = t166.
        t175 = t176.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        t177 = t178.
        DATA(t179) = VALUE abap_bool( ).
        DATA(t180) = t175.
        IF t180 IS INITIAL.
          t179 = abap_true.
        ELSEIF t180->has = abap_false.
          t179 = abap_true.
        ENDIF.
        t174 = t179.
        IF t174 = abap_true.
          DATA(t181) = abap_true.
          t173 = t181.
        ELSE.
          DATA t182 TYPE abap_bool.
          DATA t183 TYPE REF TO zif_lnt_registry.
          DATA(t184) = t158.
          t183 = t184->reg.
          DATA t185 TYPE string.
          DATA(t186) = t166.
          t185 = t186->value.
          t182 = t183->in_error_namespace( i_name = t185 ).
          t173 = t182.
        ENDIF.
        t157 = t173.
        DATA(t187) = abap_false.
        t156 = xsdbool( t157 = t187 ).
        IF t156 = abap_true.
          DATA t188 TYPE REF TO zcl_lnt_current_scope.
          DATA(t189) = t26.
          t188 = t189->scope.
          DATA(t190) = t24.
          DATA t191 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t191.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t192.
          DATA(t193) = |Object (Void)|.
          CLEAR t192.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t192->sval = t193.
          DATA t194 TYPE string.
          DATA(t195) = t26.
          t194 = t195->filename.
          DATA t196 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t196.
          t188->add_reference( i_usage = t190 i_referencing = t191 i_type_9913 = t192 i_filename = t194 i_extra = t196 ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t198.
    DATA t199 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t200) = t3.
    t199 = t200.
    DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t201.
    DATA(t202) = VALUE abap_bool( ).
    DATA(t203) = t199.
    IF t203 IS INITIAL.
      t202 = abap_true.
    ENDIF.
    IF t202 = abap_true.
      DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t204.
      t201 = t204.
    ELSE.
      DATA t205 TYPE string.
      DATA t206 TYPE REF TO zcl_lnt_abstract_token.
      DATA t207 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t208) = t199.
      t207 = t208.
      t206 = t207.
      DATA t209 TYPE string.
      DATA(t210) = t206.
      t209 = t210->str.
      t205 = t209.
      DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t211->has = abap_true.
      t211->value = t205.
      t201 = t211.
    ENDIF.
    t198 = t201.
    t197 = t198.
    DATA(t212) = t197.
    result = t212.

  ENDMETHOD.

  METHOD check_method_name_length.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_method_definitions.
    CLEAR t5.
    DATA(t6) = me->method_defs.
    t5 = t6.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    CLEAR t8.
    DATA(t9) = t5.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t4 = t7.
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA(t10) = abap_true.
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t12.
      DATA(t13) = t2.
      t12 = t13->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t11.
      t14 = t15->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_method_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      CLEAR t18.
      DATA(t19) = t11.
      t18 = t19->value.
      t17 = t18.
      t16 = t17.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = abap_false.
      t22 = t23.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = VALUE abap_bool( ).
          DATA(t27) = VALUE f( ).
          DATA(t28) = VALUE i( ).
          DATA(t29) = VALUE string( ).
          DATA(t30) = t16.
          t29 = t30->get_name( ).
          DATA(t31) = strlen( t29 ).
          t28 = t31.
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
            DATA(t38) = t16.
            t37 = t38->get_name( ).
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
            DATA(t42) = abap_false.
            t33 = xsdbool( t34 = t42 ).
            t25 = t33.
          ENDIF.
          t21 = t25.
          DATA(t43) = abap_true.
          t22 = t43.
        CATCH cx_root INTO t24.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = t22.
          t44 = xsdbool( t45 = abap_false ).
          IF t44 = abap_true.
            DATA(t46) = t2.
            t46->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t22.
      t47 = xsdbool( t48 = abap_false ).
      IF t47 = abap_true.
        DATA(t49) = t2.
        t49->close( ).
      ENDIF.
      DATA(t50) = t21.
      t20 = t50.
      IF t20 = abap_true.
        DATA(t51) = VALUE string( ).
        DATA(t52) = VALUE string( ).
        DATA(t53) = VALUE string( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = abap_false.
        t54 = t55.
        DATA t56 TYPE REF TO cx_root.
        CLEAR t56.
        TRY.
            DATA(t57) = VALUE string( ).
            DATA(t58) = VALUE string( ).
            DATA(t59) = |Method name "|.
            DATA(t60) = VALUE string( ).
            DATA(t61) = t16.
            t60 = t61->get_name( ).
            DATA(t62) = strlen( t59 ).
            t58 = |{ t59 }{ t60 }|.
            DATA(t63) = |" is too long, maximum length is 30 characters|.
            DATA(t64) = strlen( t58 ).
            t57 = |{ t58 }{ t63 }|.
            t53 = t57.
            DATA(t65) = abap_true.
            t54 = t65.
          CATCH cx_root INTO t56.
            DATA(t66) = VALUE abap_bool( ).
            DATA(t67) = t54.
            t66 = xsdbool( t67 = abap_false ).
            IF t66 = abap_true.
              DATA(t68) = t2.
              t68->close( ).
            ENDIF.
            RAISE EXCEPTION t56.
        ENDTRY.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t54.
        t69 = xsdbool( t70 = abap_false ).
        IF t69 = abap_true.
          DATA(t71) = t2.
          t71->close( ).
        ENDIF.
        DATA(t72) = t53.
        t52 = t72.
        t51 = t52.
        DATA(t73) = VALUE f( ).
        DATA(t74) = VALUE f( ).
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = abap_false.
        t75 = t76.
        DATA t77 TYPE REF TO cx_root.
        CLEAR t77.
        TRY.
            DATA(t78) = VALUE f( ).
            DATA(t79) = VALUE i( ).
            DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t80.
            DATA(t81) = t1.
            t80 = t81->issues.
            DATA t82 TYPE REF TO zcl_lnt_issue.
            CLEAR t82.
            DATA(t83) = t1.
            DATA t84 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t84.
            DATA(t85) = t16.
            t84 = t85->get_token( ).
            DATA(t86) = t51.
            DATA t87 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t87.
            t82 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t83 i_token = t84 i_message_26cb = t86 i_fix = t87 ).
            t80->load( ).
            APPEND t82 TO t80->items.
            t79 = lines( t80->items ).
            t80->save( ).
            t78 = t79.
            t74 = t78.
            DATA(t88) = abap_true.
            t75 = t88.
          CATCH cx_root INTO t77.
            DATA(t89) = VALUE abap_bool( ).
            DATA(t90) = t75.
            t89 = xsdbool( t90 = abap_false ).
            IF t89 = abap_true.
              DATA(t91) = t2.
              t91->close( ).
            ENDIF.
            RAISE EXCEPTION t77.
        ENDTRY.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = t75.
        t92 = xsdbool( t93 = abap_false ).
        IF t92 = abap_true.
          DATA(t94) = t2.
          t94->close( ).
        ENDIF.
        DATA(t95) = t74.
        t73 = t95.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_class_constructor.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_method_definitions.
    CLEAR t5.
    DATA(t6) = me->method_defs.
    t5 = t6.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    CLEAR t8.
    DATA(t9) = t5.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t4 = t7.
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA(t10) = abap_true.
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t12.
      DATA(t13) = t2.
      t12 = t13->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t11.
      t14 = t15->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_method_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      CLEAR t18.
      DATA(t19) = t11.
      t18 = t19->value.
      t17 = t18.
      t16 = t17.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = abap_false.
      t22 = t23.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = VALUE string( ).
          DATA(t27) = VALUE string( ).
          DATA(t28) = t16.
          t27 = t28->get_name( ).
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
          DATA(t31) = abap_true.
          t22 = t31.
        CATCH cx_root INTO t24.
          DATA(t32) = VALUE abap_bool( ).
          DATA(t33) = t22.
          t32 = xsdbool( t33 = abap_false ).
          IF t32 = abap_true.
            DATA(t34) = t2.
            t34->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = t22.
      t35 = xsdbool( t36 = abap_false ).
      IF t35 = abap_true.
        DATA(t37) = t2.
        t37->close( ).
      ENDIF.
      DATA(t38) = t21.
      t20 = t38.
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = abap_false.
      t41 = t42.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = VALUE abap_bool( ).
          DATA(t46) = t16.
          t45 = t46->is_static_4685( ).
          DATA(t47) = abap_false.
          t44 = xsdbool( t45 = t47 ).
          t40 = t44.
          DATA(t48) = abap_true.
          t41 = t48.
        CATCH cx_root INTO t43.
          DATA(t49) = VALUE abap_bool( ).
          DATA(t50) = t41.
          t49 = xsdbool( t50 = abap_false ).
          IF t49 = abap_true.
            DATA(t51) = t2.
            t51->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t41.
      t52 = xsdbool( t53 = abap_false ).
      IF t52 = abap_true.
        DATA(t54) = t2.
        t54->close( ).
      ENDIF.
      DATA(t55) = t40.
      t39 = t55.
      IF t39 = abap_true.
        DATA(t56) = VALUE f( ).
        DATA(t57) = VALUE f( ).
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = abap_false.
        t58 = t59.
        DATA t60 TYPE REF TO cx_root.
        CLEAR t60.
        TRY.
            DATA(t61) = VALUE f( ).
            DATA(t62) = VALUE i( ).
            DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t63.
            DATA(t64) = t1.
            t63 = t64->issues.
            DATA t65 TYPE REF TO zcl_lnt_issue.
            CLEAR t65.
            DATA(t66) = t1.
            DATA t67 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t67.
            DATA(t68) = t16.
            t67 = t68->get_token( ).
            DATA(t69) = |CLASS_CONSTRUCTOR must be static|.
            DATA t70 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t70.
            t65 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t66 i_token = t67 i_message_26cb = t69 i_fix = t70 ).
            t63->load( ).
            APPEND t65 TO t63->items.
            t62 = lines( t63->items ).
            t63->save( ).
            t61 = t62.
            t57 = t61.
            DATA(t71) = abap_true.
            t58 = t71.
          CATCH cx_root INTO t60.
            DATA(t72) = VALUE abap_bool( ).
            DATA(t73) = t58.
            t72 = xsdbool( t73 = abap_false ).
            IF t72 = abap_true.
              DATA(t74) = t2.
              t74->close( ).
            ENDIF.
            RAISE EXCEPTION t60.
        ENDTRY.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = t58.
        t75 = xsdbool( t76 = abap_false ).
        IF t75 = abap_true.
          DATA(t77) = t2.
          t77->close( ).
        ENDIF.
        DATA(t78) = t57.
        t56 = t78.
      ELSE.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = abap_false.
        t81 = t82.
        DATA t83 TYPE REF TO cx_root.
        CLEAR t83.
        TRY.
            DATA(t84) = VALUE abap_bool( ).
            DATA(t85) = VALUE f( ).
            DATA(t86) = t16.
            t85 = t86->get_visibility( ).
            DATA(t87) = CONV f( 3 ).
            t84 = xsdbool( t85 <> t87 ).
            t80 = t84.
            DATA(t88) = abap_true.
            t81 = t88.
          CATCH cx_root INTO t83.
            DATA(t89) = VALUE abap_bool( ).
            DATA(t90) = t81.
            t89 = xsdbool( t90 = abap_false ).
            IF t89 = abap_true.
              DATA(t91) = t2.
              t91->close( ).
            ENDIF.
            RAISE EXCEPTION t83.
        ENDTRY.
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = t81.
        t92 = xsdbool( t93 = abap_false ).
        IF t92 = abap_true.
          DATA(t94) = t2.
          t94->close( ).
        ENDIF.
        DATA(t95) = t80.
        t79 = t95.
        IF t79 = abap_true.
          DATA(t96) = VALUE f( ).
          DATA(t97) = VALUE f( ).
          DATA(t98) = VALUE abap_bool( ).
          DATA(t99) = abap_false.
          t98 = t99.
          DATA t100 TYPE REF TO cx_root.
          CLEAR t100.
          TRY.
              DATA(t101) = VALUE f( ).
              DATA(t102) = VALUE i( ).
              DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t103.
              DATA(t104) = t1.
              t103 = t104->issues.
              DATA t105 TYPE REF TO zcl_lnt_issue.
              CLEAR t105.
              DATA(t106) = t1.
              DATA t107 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t107.
              DATA(t108) = t16.
              t107 = t108->get_token( ).
              DATA(t109) = |CLASS_CONSTRUCTOR must be declared in the public section|.
              DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t110.
              t105 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t106 i_token = t107 i_message_26cb = t109 i_fix = t110 ).
              t103->load( ).
              APPEND t105 TO t103->items.
              t102 = lines( t103->items ).
              t103->save( ).
              t101 = t102.
              t97 = t101.
              DATA(t111) = abap_true.
              t98 = t111.
            CATCH cx_root INTO t100.
              DATA(t112) = VALUE abap_bool( ).
              DATA(t113) = t98.
              t112 = xsdbool( t113 = abap_false ).
              IF t112 = abap_true.
                DATA(t114) = t2.
                t114->close( ).
              ENDIF.
              RAISE EXCEPTION t100.
          ENDTRY.
          DATA(t115) = VALUE abap_bool( ).
          DATA(t116) = t98.
          t115 = xsdbool( t116 = abap_false ).
          IF t115 = abap_true.
            DATA(t117) = t2.
            t117->close( ).
          ENDIF.
          DATA(t118) = t97.
          t96 = t118.
        ENDIF.
      ENDIF.
    ENDDO.
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
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
    t8 = t9->find_direct_structure( i_type_9913 = t10 ).
    t7->load( ).
    APPEND t8 TO t7->items.
    t7->save( ).
    DATA(t11) = t5.
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA(t13) = t2.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d718_3ac015f16676.
    t12 = t13->find_direct_structure( i_type_9913 = t14 ).
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t15) = t5.
    t4 = t15.
    t3 = t4.
    DATA(t16) = t3.
    DATA t17 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t16->load( ).
      IF t18 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t16->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t20.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zcl_lnt_structure_node.
      DATA(t23) = t17.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = t22.
      IF t26 IS INITIAL.
        t25 = abap_true.
      ENDIF.
      IF t25 = abap_true.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t27.
        t24 = t27.
      ELSE.
        DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t29 TYPE REF TO zcl_lnt_structure_node.
        DATA(t30) = t22.
        t29 = t30.
        DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
        t28 = t29->find_all_statements( i_type_9913 = t31 ).
        t24 = t28.
      ENDIF.
      t21 = t24.
      t20 = t21.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t32.
      DATA t33 TYPE abap_bool.
      DATA(t34) = t20.
      t33 = xsdbool( t34 IS BOUND ).
      IF t33 = abap_true.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t36) = t20.
        t35 = t36.
        t32 = t35.
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
        DATA(t44) = t1.
        t43 = t44->issues.
        DATA t45 TYPE REF TO zcl_lnt_issue.
        DATA(t46) = t1.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t48) = t38.
        t47 = t48->get_first_token( ).
        DATA(t49) = |INTERFACES can only be declared in public sections|.
        DATA t50 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t50.
        t45 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t46 i_token = t47 i_message_26cb = t49 i_fix = t50 ).
        t43->load( ).
        APPEND t45 TO t43->items.
        t43->save( ).
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD chck_mthds_frm_spr_clsss.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4->scope.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA(t6) = me->super_class.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t7.
    DATA(t8) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
    CLEAR t9.
    DATA(t10) = NEW zlnt_runtime_map__fed782b2fc26( ).
    t9 = t10.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA(t13) = t5.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
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
      CLEAR t21.
      DATA(t22) = t2.
      t21 = t22.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA(t25) = abap_true.
      IF t25 = abap_true.
        DATA(t26) = VALUE string( ).
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
      CLEAR t32.
      DATA(t33) = t23.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
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
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t43.
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
          CLEAR t49.
          DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t50.
          DATA(t51) = t42.
          t50 = t51.
          DATA(t52) = VALUE string( ).
          DATA(t53) = t23.
          t52 = t53->value.
          t49 = t50->find_class_definition( i_name = t52 ).
          t45 = t49.
        ENDIF.
        t41 = t45.
        t40 = t41.
        DATA t54 TYPE REF TO zif_lnt_class_definition.
        CLEAR t54.
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = t40.
        t55 = xsdbool( t56 IS BOUND ).
        IF t55 = abap_true.
          DATA t57 TYPE REF TO zif_lnt_class_definition.
          CLEAR t57.
          DATA(t58) = abap_true.
          IF t58 = abap_true.
            DATA t59 TYPE REF TO zif_lnt_class_definition.
            CLEAR t59.
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
          CLEAR t66.
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
            DATA(t75) = VALUE string( ).
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
          CLEAR t79.
          t79 = t65.
          t64 ?= t79.
          t63 = t64.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          CLEAR t80.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = t63.
          t81 = xsdbool( t82 IS BOUND ).
          IF t81 = abap_true.
            DATA t83 TYPE REF TO zif_lnt_class_definition.
            CLEAR t83.
            DATA t84 TYPE REF TO zcl_lnt_class.
            CLEAR t84.
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
      DATA t87 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t87.
      DATA t88 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t88.
      DATA t89 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t89.
      DATA t90 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t90.
      DATA t91 TYPE REF TO zif_lnt_class_definition.
      CLEAR t91.
      DATA(t92) = t19.
      t91 = t92.
      DATA t93 TYPE REF TO zif_lnt_method_definitions.
      CLEAR t93.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = t91.
      IF t95 IS INITIAL.
        t94 = abap_true.
      ENDIF.
      IF t94 = abap_true.
        DATA t96 TYPE REF TO zif_lnt_method_definitions.
        CLEAR t96.
        t93 = t96.
      ELSE.
        DATA t97 TYPE REF TO zif_lnt_method_definitions.
        CLEAR t97.
        DATA t98 TYPE REF TO zif_lnt_class_definition.
        CLEAR t98.
        DATA(t99) = t91.
        t98 = t99.
        t97 = t98->get_method_definitions( ).
        t93 = t97.
      ENDIF.
      t90 = t93.
      t89 = t90.
      DATA t100 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t100.
      DATA(t101) = VALUE abap_bool( ).
      DATA(t102) = t89.
      IF t102 IS INITIAL.
        t101 = abap_true.
      ENDIF.
      IF t101 = abap_true.
        DATA t103 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t103.
        t100 = t103.
      ELSE.
        DATA t104 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t104.
        DATA t105 TYPE REF TO zif_lnt_method_definitions.
        CLEAR t105.
        DATA(t106) = t89.
        t105 = t106.
        t104 = t105->get_all( ).
        t100 = t104.
      ENDIF.
      t88 = t100.
      t87 = t88.
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = VALUE abap_bool( ).
      DATA(t109) = t87.
      IF t109 IS INITIAL.
        t108 = abap_true.
      ENDIF.
      t107 = xsdbool( t108 = abap_false ).
      IF t107 = abap_true.
        DATA t110 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t110.
        DATA t111 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t111.
        DATA t112 TYPE REF TO zif_lnt_generator_0f59ca3c.
        CLEAR t112.
        DATA(t113) = t87.
        t112 = t113.
        t111 = t112->iterate( ).
        t110 = t111.
        DO.
          DATA(t114) = abap_true.
          IF t114 = abap_false.
            EXIT.
          ENDIF.
          DATA t115 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t115.
          DATA t116 TYPE REF TO zcl_lnt_generator_0f216880.
          CLEAR t116.
          DATA(t117) = t110.
          t116 = t117->next( ).
          t115 = t116.
          DATA(t118) = VALUE abap_bool( ).
          DATA(t119) = t115.
          t118 = t119->done.
          IF t118 = abap_true.
            EXIT.
          ENDIF.
          DATA t120 TYPE REF TO zif_lnt_method_definition.
          CLEAR t120.
          DATA t121 TYPE REF TO zif_lnt_method_definition.
          CLEAR t121.
          DATA t122 TYPE REF TO zif_lnt_method_definition.
          CLEAR t122.
          DATA(t123) = t115.
          t122 = t123->value.
          t121 = t122.
          t120 = t121.
          DATA(t124) = VALUE string( ).
          DATA(t125) = VALUE string( ).
          DATA(t126) = VALUE string( ).
          DATA(t127) = VALUE abap_bool( ).
          DATA(t128) = abap_false.
          t127 = t128.
          DATA t129 TYPE REF TO cx_root.
          CLEAR t129.
          TRY.
              DATA(t130) = VALUE string( ).
              DATA(t131) = VALUE string( ).
              DATA(t132) = t120.
              t131 = t132->get_name( ).
              DATA(t133) = strlen( t131 ).
              t130 = t131.
              IF t130 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t130 TO UPPER CASE.
              ELSE.
                t130 = zlnt_runtime_uppe_91169605024d=>full( t130 ).
              ENDIF.
              t126 = t130.
              DATA(t134) = abap_true.
              t127 = t134.
            CATCH cx_root INTO t129.
              DATA(t135) = VALUE abap_bool( ).
              DATA(t136) = t127.
              t135 = xsdbool( t136 = abap_false ).
              IF t135 = abap_true.
                DATA(t137) = t110.
                t137->close( ).
              ENDIF.
              RAISE EXCEPTION t129.
          ENDTRY.
          DATA(t138) = VALUE abap_bool( ).
          DATA(t139) = t127.
          t138 = xsdbool( t139 = abap_false ).
          IF t138 = abap_true.
            DATA(t140) = t110.
            t140->close( ).
          ENDIF.
          DATA(t141) = t126.
          t125 = t141.
          t124 = t125.
          DATA(t142) = VALUE abap_bool( ).
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = VALUE abap_bool( ).
          DATA(t145) = abap_false.
          t144 = t145.
          DATA t146 TYPE REF TO cx_root.
          CLEAR t146.
          TRY.
              DATA(t147) = VALUE abap_bool( ).
              DATA(t148) = VALUE f( ).
              DATA(t149) = t120.
              t148 = t149->get_visibility( ).
              DATA(t150) = CONV f( 1 ).
              t147 = xsdbool( t148 = t150 ).
              t143 = t147.
              DATA(t151) = abap_true.
              t144 = t151.
            CATCH cx_root INTO t146.
              DATA(t152) = VALUE abap_bool( ).
              DATA(t153) = t144.
              t152 = xsdbool( t153 = abap_false ).
              IF t152 = abap_true.
                DATA(t154) = t110.
                t154->close( ).
              ENDIF.
              RAISE EXCEPTION t146.
          ENDTRY.
          DATA(t155) = VALUE abap_bool( ).
          DATA(t156) = t144.
          t155 = xsdbool( t156 = abap_false ).
          IF t155 = abap_true.
            DATA(t157) = t110.
            t157->close( ).
          ENDIF.
          DATA(t158) = t143.
          t142 = t158.
          IF t142 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t159) = VALUE abap_bool( ).
            DATA(t160) = VALUE abap_bool( ).
            DATA(t161) = VALUE abap_bool( ).
            DATA(t162) = abap_false.
            t161 = t162.
            DATA t163 TYPE REF TO cx_root.
            CLEAR t163.
            TRY.
                DATA(t164) = VALUE abap_bool( ).
                DATA(t165) = VALUE abap_bool( ).
                DATA(t166) = VALUE abap_bool( ).
                DATA(t167) = t124.
                DATA(t168) = |CONSTRUCTOR|.
                t166 = xsdbool( t167 = t168 ).
                t165 = t166.
                IF t166 = abap_false.
                  DATA(t169) = VALUE abap_bool( ).
                  DATA(t170) = t124.
                  DATA(t171) = |DESTRUCTOR|.
                  t169 = xsdbool( t170 = t171 ).
                  t165 = t169.
                ENDIF.
                t164 = t165.
                IF t165 = abap_false.
                  DATA(t172) = VALUE abap_bool( ).
                  DATA(t173) = t124.
                  DATA(t174) = |CLASS_CONSTRUCTOR|.
                  t172 = xsdbool( t173 = t174 ).
                  t164 = t172.
                ENDIF.
                t160 = t164.
                DATA(t175) = abap_true.
                t161 = t175.
              CATCH cx_root INTO t163.
                DATA(t176) = VALUE abap_bool( ).
                DATA(t177) = t161.
                t176 = xsdbool( t177 = abap_false ).
                IF t176 = abap_true.
                  DATA(t178) = t110.
                  t178->close( ).
                ENDIF.
                RAISE EXCEPTION t163.
            ENDTRY.
            DATA(t179) = VALUE abap_bool( ).
            DATA(t180) = t161.
            t179 = xsdbool( t180 = abap_false ).
            IF t179 = abap_true.
              DATA(t181) = t110.
              t181->close( ).
            ENDIF.
            DATA(t182) = t160.
            t159 = t182.
            IF t159 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
          DATA t183 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          CLEAR t183.
          DATA t184 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          CLEAR t184.
          DATA(t185) = VALUE abap_bool( ).
          DATA(t186) = abap_false.
          t185 = t186.
          DATA t187 TYPE REF TO cx_root.
          CLEAR t187.
          TRY.
              DATA t188 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
              CLEAR t188.
              DATA(t189) = t7.
              DATA(t190) = t124.
              t188 = t189->add( p0 = t190 ).
              t184 = t188.
              DATA(t191) = abap_true.
              t185 = t191.
            CATCH cx_root INTO t187.
              DATA(t192) = VALUE abap_bool( ).
              DATA(t193) = t185.
              t192 = xsdbool( t193 = abap_false ).
              IF t192 = abap_true.
                DATA(t194) = t110.
                t194->close( ).
              ENDIF.
              RAISE EXCEPTION t187.
          ENDTRY.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = t185.
          t195 = xsdbool( t196 = abap_false ).
          IF t195 = abap_true.
            DATA(t197) = t110.
            t197->close( ).
          ENDIF.
          DATA(t198) = t184.
          t183 = t198.
          DATA(t199) = VALUE abap_bool( ).
          DATA(t200) = VALUE abap_bool( ).
          DATA(t201) = VALUE abap_bool( ).
          DATA(t202) = abap_false.
          t201 = t202.
          DATA t203 TYPE REF TO cx_root.
          CLEAR t203.
          TRY.
              DATA(t204) = VALUE abap_bool( ).
              DATA(t205) = VALUE abap_bool( ).
              DATA(t206) = t9.
              DATA(t207) = t124.
              t205 = t206->has( p0 = t207 ).
              DATA(t208) = abap_false.
              t204 = xsdbool( t205 = t208 ).
              t200 = t204.
              DATA(t209) = abap_true.
              t201 = t209.
            CATCH cx_root INTO t203.
              DATA(t210) = VALUE abap_bool( ).
              DATA(t211) = t201.
              t210 = xsdbool( t211 = abap_false ).
              IF t210 = abap_true.
                DATA(t212) = t110.
                t212->close( ).
              ENDIF.
              RAISE EXCEPTION t203.
          ENDTRY.
          DATA(t213) = VALUE abap_bool( ).
          DATA(t214) = t201.
          t213 = xsdbool( t214 = abap_false ).
          IF t213 = abap_true.
            DATA(t215) = t110.
            t215->close( ).
          ENDIF.
          DATA(t216) = t200.
          t199 = t216.
          IF t199 = abap_true.
            DATA t217 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
            CLEAR t217.
            DATA t218 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
            CLEAR t218.
            DATA(t219) = VALUE abap_bool( ).
            DATA(t220) = abap_false.
            t219 = t220.
            DATA t221 TYPE REF TO cx_root.
            CLEAR t221.
            TRY.
                DATA t222 TYPE REF TO zlnt_runtime_map__fed782b2fc26.
                CLEAR t222.
                DATA(t223) = t9.
                DATA(t224) = t124.
                DATA(t225) = VALUE f( ).
                DATA(t226) = t120.
                t225 = t226->get_visibility( ).
                t222 = t223->set( p0 = t224 p1 = t225 ).
                t218 = t222.
                DATA(t227) = abap_true.
                t219 = t227.
              CATCH cx_root INTO t221.
                DATA(t228) = VALUE abap_bool( ).
                DATA(t229) = t219.
                t228 = xsdbool( t229 = abap_false ).
                IF t228 = abap_true.
                  DATA(t230) = t110.
                  t230->close( ).
                ENDIF.
                RAISE EXCEPTION t221.
            ENDTRY.
            DATA(t231) = VALUE abap_bool( ).
            DATA(t232) = t219.
            t231 = xsdbool( t232 = abap_false ).
            IF t231 = abap_true.
              DATA(t233) = t110.
              t233->close( ).
            ENDIF.
            DATA(t234) = t218.
            t217 = t234.
          ENDIF.
        ENDDO.
      ENDIF.
      DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t236.
      DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t237.
      DATA t238 TYPE REF TO zif_lnt_class_definition.
      CLEAR t238.
      DATA(t239) = t19.
      t238 = t239.
      DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t240.
      DATA(t241) = VALUE abap_bool( ).
      DATA(t242) = t238.
      IF t242 IS INITIAL.
        t241 = abap_true.
      ENDIF.
      IF t241 = abap_true.
        DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t243.
        t240 = t243.
      ELSE.
        DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t244.
        DATA t245 TYPE REF TO zif_lnt_class_definition.
        CLEAR t245.
        DATA(t246) = t238.
        t245 = t246.
        t244 = t245->get_aliases( ).
        t240 = t244.
      ENDIF.
      t237 = t240.
      t236 = t237.
      DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t247.
      DATA(t248) = VALUE abap_bool( ).
      DATA(t249) = t236.
      t248 = xsdbool( t249 IS BOUND ).
      IF t248 = abap_true.
        DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t250.
        DATA(t251) = t236.
        t250 = t251.
        t247 = t250.
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
        DATA(t259) = t7.
        DATA(t260) = VALUE string( ).
        DATA(t261) = VALUE string( ).
        DATA t262 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t262.
        DATA(t263) = t253.
        t262 = t263.
        DATA(t264) = VALUE string( ).
        DATA(t265) = VALUE string( ).
        DATA(t266) = VALUE string( ).
        DATA t267 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t267.
        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t268.
        DATA(t269) = t262.
        t268 = t269->token.
        t267 = t268.
        DATA(t270) = VALUE string( ).
        DATA(t271) = t267.
        t270 = t271->str.
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
          DATA(t281) = t265.
          t280 = t281.
          DATA(t282) = VALUE string( ).
          DATA(t283) = t280.
          DATA(t284) = 1.
          DATA(t285) = VALUE i( ).
          DATA(t286) = t280.
          DATA(t287) = strlen( t286 ).
          t285 = t287.
          DATA(t288) = strlen( t283 ).
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
            t282 = t283+t284(t285).
          ENDIF.
          t279 = t282.
          t265 = t279.
        ENDIF.
        DATA(t289) = t265.
        t264 = t289.
        t261 = t264.
        DATA(t290) = strlen( t261 ).
        t260 = t261.
        IF t260 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t260 TO UPPER CASE.
        ELSE.
          t260 = zlnt_runtime_uppe_91169605024d=>full( t260 ).
        ENDIF.
        t258 = t259->add( p0 = t260 ).
      ENDDO.
      DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t291.
      DATA t292 TYPE REF TO zif_lnt_class_definition.
      CLEAR t292.
      DATA(t293) = t19.
      t292 = t293.
      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t294.
      DATA(t295) = VALUE abap_bool( ).
      DATA(t296) = t292.
      IF t296 IS INITIAL.
        t295 = abap_true.
      ENDIF.
      IF t295 = abap_true.
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t297.
        t294 = t297.
      ELSE.
        DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t298.
        DATA t299 TYPE REF TO zif_lnt_class_definition.
        CLEAR t299.
        DATA(t300) = t292.
        t299 = t300.
        t298 = t299->get_super_class( ).
        t294 = t298.
      ENDIF.
      t291 = t294.
      t5 = t291.
    ENDDO.
    DATA t301 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t301.
    DATA t302 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t302.
    DATA t303 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t303.
    DATA(t304) = CAST zif_lnt_method_definitions( me->get_method_definitions( ) ).
    t303 = t304->get_all( ).
    t302 = t303->iterate( ).
    t301 = t302.
    DO.
      DATA(t305) = abap_true.
      IF t305 = abap_false.
        EXIT.
      ENDIF.
      DATA t306 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t306.
      DATA t307 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t307.
      DATA(t308) = t301.
      t307 = t308->next( ).
      t306 = t307.
      DATA(t309) = VALUE abap_bool( ).
      DATA(t310) = t306.
      t309 = t310->done.
      IF t309 = abap_true.
        EXIT.
      ENDIF.
      DATA t311 TYPE REF TO zif_lnt_method_definition.
      CLEAR t311.
      DATA t312 TYPE REF TO zif_lnt_method_definition.
      CLEAR t312.
      DATA t313 TYPE REF TO zif_lnt_method_definition.
      CLEAR t313.
      DATA(t314) = t306.
      t313 = t314->value.
      t312 = t313.
      t311 = t312.
      DATA(t315) = VALUE abap_bool( ).
      DATA(t316) = VALUE abap_bool( ).
      DATA(t317) = VALUE abap_bool( ).
      DATA(t318) = abap_false.
      t317 = t318.
      DATA t319 TYPE REF TO cx_root.
      CLEAR t319.
      TRY.
          DATA(t320) = VALUE abap_bool( ).
          DATA(t321) = VALUE abap_bool( ).
          DATA(t322) = t7.
          DATA(t323) = VALUE string( ).
          DATA(t324) = VALUE string( ).
          DATA(t325) = t311.
          t324 = t325->get_name( ).
          DATA(t326) = strlen( t324 ).
          t323 = t324.
          IF t323 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t323 TO UPPER CASE.
          ELSE.
            t323 = zlnt_runtime_uppe_91169605024d=>full( t323 ).
          ENDIF.
          t321 = t322->has( p0 = t323 ).
          t320 = t321.
          IF t321 = abap_true.
            DATA(t327) = VALUE abap_bool( ).
            DATA(t328) = VALUE abap_bool( ).
            DATA(t329) = t311.
            t328 = t329->is_redefinition( ).
            DATA(t330) = abap_false.
            t327 = xsdbool( t328 = t330 ).
            t320 = t327.
          ENDIF.
          t316 = t320.
          DATA(t331) = abap_true.
          t317 = t331.
        CATCH cx_root INTO t319.
          DATA(t332) = VALUE abap_bool( ).
          DATA(t333) = t317.
          t332 = xsdbool( t333 = abap_false ).
          IF t332 = abap_true.
            DATA(t334) = t301.
            t334->close( ).
          ENDIF.
          RAISE EXCEPTION t319.
      ENDTRY.
      DATA(t335) = VALUE abap_bool( ).
      DATA(t336) = t317.
      t335 = xsdbool( t336 = abap_false ).
      IF t335 = abap_true.
        DATA(t337) = t301.
        t337->close( ).
      ENDIF.
      DATA(t338) = t316.
      t315 = t338.
      IF t315 = abap_true.
        DATA(t339) = VALUE f( ).
        DATA(t340) = VALUE f( ).
        DATA(t341) = VALUE abap_bool( ).
        DATA(t342) = abap_false.
        t341 = t342.
        DATA t343 TYPE REF TO cx_root.
        CLEAR t343.
        TRY.
            DATA(t344) = VALUE f( ).
            DATA(t345) = VALUE i( ).
            DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t346.
            DATA(t347) = t1.
            t346 = t347->issues.
            DATA t348 TYPE REF TO zcl_lnt_issue.
            CLEAR t348.
            DATA(t349) = t1.
            DATA t350 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t350.
            DATA(t351) = t311.
            t350 = t351->get_token( ).
            DATA(t352) = VALUE string( ).
            DATA(t353) = VALUE string( ).
            DATA(t354) = ||.
            DATA(t355) = VALUE string( ).
            DATA(t356) = VALUE string( ).
            DATA(t357) = t311.
            t356 = t357->get_name( ).
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
            t348 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t349 i_token = t350 i_message_26cb = t352 i_fix = t362 ).
            t346->load( ).
            APPEND t348 TO t346->items.
            t345 = lines( t346->items ).
            t346->save( ).
            t344 = t345.
            t340 = t344.
            DATA(t363) = abap_true.
            t341 = t363.
          CATCH cx_root INTO t343.
            DATA(t364) = VALUE abap_bool( ).
            DATA(t365) = t341.
            t364 = xsdbool( t365 = abap_false ).
            IF t364 = abap_true.
              DATA(t366) = t301.
              t366->close( ).
            ENDIF.
            RAISE EXCEPTION t343.
        ENDTRY.
        DATA(t367) = VALUE abap_bool( ).
        DATA(t368) = t341.
        t367 = xsdbool( t368 = abap_false ).
        IF t367 = abap_true.
          DATA(t369) = t301.
          t369->close( ).
        ENDIF.
        DATA(t370) = t340.
        t339 = t370.
      ENDIF.
      DATA t371 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t371.
      DATA t372 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t372.
      DATA t373 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t373.
      DATA(t374) = VALUE abap_bool( ).
      DATA(t375) = abap_false.
      t374 = t375.
      DATA t376 TYPE REF TO cx_root.
      CLEAR t376.
      TRY.
          DATA t377 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t377.
          DATA(t378) = t9.
          DATA(t379) = VALUE string( ).
          DATA(t380) = VALUE string( ).
          DATA(t381) = t311.
          t380 = t381->get_name( ).
          DATA(t382) = strlen( t380 ).
          t379 = t380.
          IF t379 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t379 TO UPPER CASE.
          ELSE.
            t379 = zlnt_runtime_uppe_91169605024d=>full( t379 ).
          ENDIF.
          t377 = t378->get( p0 = t379 ).
          t373 = t377.
          DATA(t383) = abap_true.
          t374 = t383.
        CATCH cx_root INTO t376.
          DATA(t384) = VALUE abap_bool( ).
          DATA(t385) = t374.
          t384 = xsdbool( t385 = abap_false ).
          IF t384 = abap_true.
            DATA(t386) = t301.
            t386->close( ).
          ENDIF.
          RAISE EXCEPTION t376.
      ENDTRY.
      DATA(t387) = VALUE abap_bool( ).
      DATA(t388) = t374.
      t387 = xsdbool( t388 = abap_false ).
      IF t387 = abap_true.
        DATA(t389) = t301.
        t389->close( ).
      ENDIF.
      DATA(t390) = t373.
      t372 = t390.
      t371 = t372.
      DATA(t391) = VALUE abap_bool( ).
      DATA(t392) = VALUE abap_bool( ).
      DATA(t393) = VALUE abap_bool( ).
      DATA(t394) = abap_false.
      t393 = t394.
      DATA t395 TYPE REF TO cx_root.
      CLEAR t395.
      TRY.
          DATA(t396) = VALUE abap_bool( ).
          DATA(t397) = VALUE abap_bool( ).
          DATA(t398) = VALUE abap_bool( ).
          DATA(t399) = VALUE abap_bool( ).
          DATA(t400) = t311.
          t399 = t400->is_redefinition( ).
          DATA(t401) = abap_true.
          t398 = xsdbool( t399 = t401 ).
          t397 = t398.
          IF t398 = abap_true.
            DATA(t402) = VALUE abap_bool( ).
            DATA t403 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t403.
            DATA(t404) = t371.
            t403 = t404.
            DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t405.
            DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t406.
            t405 = t406.
            DATA(t407) = VALUE abap_bool( ).
            DATA(t408) = VALUE abap_bool( ).
            DATA(t409) = t403.
            IF t409 IS INITIAL.
              t408 = abap_true.
            ELSEIF t409->has = abap_false.
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
            DATA(t412) = t311.
            t411 = t412->get_visibility( ).
            DATA(t413) = VALUE f( ).
            DATA(t414) = t371.
            IF t414->number_special <> 0.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t413 = t414->value.
            t410 = xsdbool( t411 <> t413 ).
            t396 = t410.
          ENDIF.
          t392 = t396.
          DATA(t415) = abap_true.
          t393 = t415.
        CATCH cx_root INTO t395.
          DATA(t416) = VALUE abap_bool( ).
          DATA(t417) = t393.
          t416 = xsdbool( t417 = abap_false ).
          IF t416 = abap_true.
            DATA(t418) = t301.
            t418->close( ).
          ENDIF.
          RAISE EXCEPTION t395.
      ENDTRY.
      DATA(t419) = VALUE abap_bool( ).
      DATA(t420) = t393.
      t419 = xsdbool( t420 = abap_false ).
      IF t419 = abap_true.
        DATA(t421) = t301.
        t421->close( ).
      ENDIF.
      DATA(t422) = t392.
      t391 = t422.
      IF t391 = abap_true.
        DATA(t423) = VALUE f( ).
        DATA(t424) = VALUE f( ).
        DATA(t425) = VALUE abap_bool( ).
        DATA(t426) = abap_false.
        t425 = t426.
        DATA t427 TYPE REF TO cx_root.
        CLEAR t427.
        TRY.
            DATA(t428) = VALUE f( ).
            DATA(t429) = VALUE i( ).
            DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t430.
            DATA(t431) = t1.
            t430 = t431->issues.
            DATA t432 TYPE REF TO zcl_lnt_issue.
            CLEAR t432.
            DATA(t433) = t1.
            DATA t434 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t434.
            DATA(t435) = t311.
            t434 = t435->get_token( ).
            DATA(t436) = VALUE string( ).
            DATA(t437) = VALUE string( ).
            DATA(t438) = ||.
            DATA(t439) = VALUE string( ).
            DATA(t440) = VALUE string( ).
            DATA(t441) = t311.
            t440 = t441->get_name( ).
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
            t432 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t433 i_token = t434 i_message_26cb = t436 i_fix = t446 ).
            t430->load( ).
            APPEND t432 TO t430->items.
            t429 = lines( t430->items ).
            t430->save( ).
            t428 = t429.
            t424 = t428.
            DATA(t447) = abap_true.
            t425 = t447.
          CATCH cx_root INTO t427.
            DATA(t448) = VALUE abap_bool( ).
            DATA(t449) = t425.
            t448 = xsdbool( t449 = abap_false ).
            IF t448 = abap_true.
              DATA(t450) = t301.
              t450->close( ).
            ENDIF.
            RAISE EXCEPTION t427.
        ENDTRY.
        DATA(t451) = VALUE abap_bool( ).
        DATA(t452) = t425.
        t451 = xsdbool( t452 = abap_false ).
        IF t451 = abap_true.
          DATA(t453) = t301.
          t453->close( ).
        ENDIF.
        DATA(t454) = t424.
        t423 = t454.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_method_name_conflicts.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_method_definitions.
    CLEAR t5.
    DATA(t6) = me->method_defs.
    t5 = t6.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_generator_98c19d71.
    CLEAR t8.
    DATA(t9) = t5.
    t8 = NEW zcl_lnt_generator_98c19d71( i_outer = t9 ).
    t7 ?= t8.
    t4 = t7.
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA(t10) = abap_true.
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t12.
      DATA(t13) = t2.
      t12 = t13->next( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t11.
      t14 = t15->done.
      IF t14 = abap_true.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_method_definition.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_method_definition.
      CLEAR t18.
      DATA(t19) = t11.
      t18 = t19->value.
      t17 = t18.
      t16 = t17.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = abap_false.
      t22 = t23.
      DATA t24 TYPE REF TO cx_root.
      CLEAR t24.
      TRY.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = VALUE abap_bool( ).
          DATA t27 TYPE REF TO zif_lnt_union_a346537f.
          CLEAR t27.
          DATA t28 TYPE REF TO zif_lnt_union_a346537f.
          CLEAR t28.
          DATA t29 TYPE REF TO zcl_lnt_attributes.
          CLEAR t29.
          DATA(t30) = me->attributes.
          t29 = t30.
          DATA(t31) = VALUE string( ).
          DATA(t32) = VALUE string( ).
          DATA(t33) = t16.
          t32 = t33->get_name( ).
          t31 = t32.
          DATA t34 TYPE REF TO zif_lnt_union_a346537f.
          CLEAR t34.
          DATA t35 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
          CLEAR t35.
          DATA(t36) = t29.
          t35 = t36->by_name.
          DATA(t37) = VALUE string( ).
          DATA(t38) = t31.
          DATA(t39) = strlen( t38 ).
          t37 = t38.
          IF t37 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t37 TO UPPER CASE.
          ELSE.
            t37 = zlnt_runtime_uppe_91169605024d=>full( t37 ).
          ENDIF.
          t34 = t35->get( p0 = t37 ).
          t28 = t34.
          t27 = t28.
          DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t40.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          t40 = t41.
          DATA(t42) = VALUE abap_bool( ).
          DATA(t43) = VALUE abap_bool( ).
          DATA(t44) = t27.
          IF t44 IS INITIAL.
            t43 = abap_true.
          ENDIF.
          t42 = xsdbool( t43 = abap_false ).
          t26 = t42.
          t25 = t26.
          IF t26 = abap_false.
            DATA(t45) = VALUE abap_bool( ).
            DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t46.
            DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t47.
            DATA t48 TYPE REF TO zcl_lnt_type_definitions.
            CLEAR t48.
            DATA(t49) = me->types.
            t48 = t49.
            DATA(t50) = VALUE string( ).
            DATA(t51) = VALUE string( ).
            DATA(t52) = t16.
            t51 = t52->get_name( ).
            t50 = t51.
            DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t53.
            DATA t54 TYPE REF TO zcl_lnt_type_definitions_entry.
            CLEAR t54.
            DATA t55 TYPE REF TO zcl_lnt_type_definitions_entry.
            CLEAR t55.
            DATA t56 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
            CLEAR t56.
            DATA(t57) = t48.
            t56 = t57->map.
            DATA(t58) = VALUE string( ).
            DATA(t59) = t50.
            DATA(t60) = strlen( t59 ).
            t58 = t59.
            IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t58 TO UPPER CASE.
            ELSE.
              t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
            ENDIF.
            t55 = t56->get( p0 = t58 ).
            t54 = t55.
            DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
            CLEAR t61.
            DATA(t62) = VALUE abap_bool( ).
            DATA(t63) = t54.
            IF t63 IS INITIAL.
              t62 = abap_true.
            ENDIF.
            IF t62 = abap_true.
              DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t64.
              t61 = t64.
            ELSE.
              DATA t65 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t65.
              DATA t66 TYPE REF TO zcl_lnt_type_definitions_entry.
              CLEAR t66.
              DATA(t67) = t54.
              t66 = t67.
              t65 = t66->type_cba0.
              t61 = t65.
            ENDIF.
            t53 = t61.
            t47 = t53.
            t46 = t47.
            DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t68.
            DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t69.
            t68 = t69.
            DATA(t70) = VALUE abap_bool( ).
            DATA(t71) = VALUE abap_bool( ).
            DATA(t72) = t46.
            IF t72 IS INITIAL.
              t71 = abap_true.
            ENDIF.
            t70 = xsdbool( t71 = abap_false ).
            t45 = t70.
            t25 = t45.
          ENDIF.
          t21 = t25.
          DATA(t73) = abap_true.
          t22 = t73.
        CATCH cx_root INTO t24.
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = t22.
          t74 = xsdbool( t75 = abap_false ).
          IF t74 = abap_true.
            DATA(t76) = t2.
            t76->close( ).
          ENDIF.
          RAISE EXCEPTION t24.
      ENDTRY.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t22.
      t77 = xsdbool( t78 = abap_false ).
      IF t77 = abap_true.
        DATA(t79) = t2.
        t79->close( ).
      ENDIF.
      DATA(t80) = t21.
      t20 = t80.
      IF t20 = abap_true.
        DATA(t81) = VALUE f( ).
        DATA(t82) = VALUE f( ).
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = abap_false.
        t83 = t84.
        DATA t85 TYPE REF TO cx_root.
        CLEAR t85.
        TRY.
            DATA(t86) = VALUE f( ).
            DATA(t87) = VALUE i( ).
            DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t88.
            DATA(t89) = t1.
            t88 = t89->issues.
            DATA t90 TYPE REF TO zcl_lnt_issue.
            CLEAR t90.
            DATA(t91) = t1.
            DATA t92 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t92.
            DATA(t93) = t16.
            t92 = t93->get_token( ).
            DATA(t94) = VALUE string( ).
            DATA(t95) = VALUE string( ).
            DATA(t96) = |"|.
            DATA(t97) = VALUE string( ).
            DATA(t98) = t16.
            t97 = t98->get_name( ).
            DATA(t99) = strlen( t96 ).
            t95 = |{ t96 }{ t97 }|.
            DATA(t100) = |" already defined|.
            DATA(t101) = strlen( t95 ).
            t94 = |{ t95 }{ t100 }|.
            DATA t102 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t102.
            t90 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t91 i_token = t92 i_message_26cb = t94 i_fix = t102 ).
            t88->load( ).
            APPEND t90 TO t88->items.
            t87 = lines( t88->items ).
            t88->save( ).
            t86 = t87.
            t82 = t86.
            DATA(t103) = abap_true.
            t83 = t103.
          CATCH cx_root INTO t85.
            DATA(t104) = VALUE abap_bool( ).
            DATA(t105) = t83.
            t104 = xsdbool( t105 = abap_false ).
            IF t104 = abap_true.
              DATA(t106) = t2.
              t106->close( ).
            ENDIF.
            RAISE EXCEPTION t85.
        ENDTRY.
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = t83.
        t107 = xsdbool( t108 = abap_false ).
        IF t107 = abap_true.
          DATA(t109) = t2.
          t109->close( ).
        ENDIF.
        DATA(t110) = t82.
        t81 = t110.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_event_name_conflicts.
    DATA(t1) = i_input_967e.
    DATA(t2) = me->events_f95a.
    DATA t3 TYPE REF TO zif_lnt_event_definition.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
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
      DATA t11 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t11.
      DATA t12 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_attributes.
      DATA(t14) = me->attributes.
      t13 = t14.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = t3.
      t16 = t17->get_name( ).
      t15 = t16.
      DATA t18 TYPE REF TO zif_lnt_union_a346537f.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_map__89ba5e9f6101.
      DATA(t20) = t13.
      t19 = t20->by_name.
      DATA t21 TYPE string.
      DATA(t22) = t15.
      DATA(t23) = strlen( t22 ).
      t21 = t22.
      IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t21 TO UPPER CASE.
      ELSE.
        t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
      ENDIF.
      t18 = t19->get( p0 = t21 ).
      t12 = t18.
      t11 = t12.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t24 = t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = t11.
      IF t28 IS INITIAL.
        t27 = abap_true.
      ENDIF.
      t26 = xsdbool( t27 = abap_false ).
      t10 = t26.
      t9 = t10.
      IF t10 = abap_false.
        DATA(t29) = VALUE abap_bool( ).
        DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t31.
        DATA t32 TYPE REF TO zcl_lnt_type_definitions.
        DATA(t33) = me->types.
        t32 = t33.
        DATA t34 TYPE string.
        DATA t35 TYPE string.
        DATA(t36) = t3.
        t35 = t36->get_name( ).
        t34 = t35.
        DATA t37 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_type_definitions_entry.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_map__d1f17afcc3e9.
        DATA(t41) = t32.
        t40 = t41->map.
        DATA t42 TYPE string.
        DATA(t43) = t34.
        DATA(t44) = strlen( t43 ).
        t42 = t43.
        IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t42 TO UPPER CASE.
        ELSE.
          t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
        ENDIF.
        t39 = t40->get( p0 = t42 ).
        t38 = t39.
        DATA t45 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t45.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t38.
        IF t47 IS INITIAL.
          t46 = abap_true.
        ENDIF.
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t48.
          t45 = t48.
        ELSE.
          DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t50 TYPE REF TO zcl_lnt_type_definitions_entry.
          DATA(t51) = t38.
          t50 = t51.
          t49 = t50->type_cba0.
          t45 = t49.
        ENDIF.
        t37 = t45.
        t31 = t37.
        t30 = t31.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        t52 = t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = t30.
        IF t56 IS INITIAL.
          t55 = abap_true.
        ENDIF.
        t54 = xsdbool( t55 = abap_false ).
        t29 = t54.
        t9 = t29.
      ENDIF.
      t8 = t9.
      IF t9 = abap_false.
        DATA(t57) = VALUE abap_bool( ).
        DATA t58 TYPE REF TO zif_lnt_method_definition.
        CLEAR t58.
        DATA t59 TYPE REF TO zif_lnt_method_definition.
        CLEAR t59.
        DATA t60 TYPE REF TO zcl_lnt_method_definitions.
        DATA(t61) = me->method_defs.
        t60 = t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA t65 TYPE string.
          DATA(t66) = t3.
          t65 = t66->get_name( ).
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t65.
          t63 = t67.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t63 = t68.
        ENDIF.
        t62 = t63.
        DATA t69 TYPE REF TO zif_lnt_method_definition.
        CLEAR t69.
        DATA(t70) = VALUE abap_bool( ).
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t72) = t62.
        t71 = t72.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        t73 = t74.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = t71.
        IF t76 IS INITIAL.
          t75 = abap_true.
        ELSEIF t76->has = abap_false.
          t75 = abap_true.
        ENDIF.
        t70 = t75.
        IF t70 = abap_true.
          DATA t77 TYPE REF TO zif_lnt_method_definition.
          CLEAR t77.
          t69 = t77.
        ELSE.
          DATA t78 TYPE REF TO zif_lnt_method_definition.
          CLEAR t78.
          DATA t79 TYPE REF TO zlnt_runtime_map__df7ea9ca9d2a.
          DATA(t80) = t60.
          t79 = t80->all.
          DATA t81 TYPE string.
          DATA t82 TYPE string.
          DATA(t83) = t62.
          t82 = t83->value.
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
        t59 = t69.
        t58 = t59.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        t85 = t86.
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = t58.
        IF t89 IS INITIAL.
          t88 = abap_true.
        ENDIF.
        t87 = xsdbool( t88 = abap_false ).
        t57 = t87.
        t8 = t57.
      ENDIF.
      IF t8 = abap_true.
        DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t91) = t1.
        t90 = t91->issues.
        DATA t92 TYPE REF TO zcl_lnt_issue.
        DATA(t93) = t1.
        DATA t94 TYPE REF TO zcl_lnt_abstract_token.
        DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t96 TYPE REF TO zcl_lnt_event_definition.
        DATA(t97) = t3.
        t96 ?= t97.
        t95 = t96.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t99) = t95.
        t98 = t99->token.
        t94 = t98.
        DATA t100 TYPE string.
        DATA t101 TYPE string.
        DATA(t102) = |"|.
        DATA t103 TYPE string.
        DATA(t104) = t3.
        t103 = t104->get_name( ).
        DATA(t105) = strlen( t102 ).
        t101 = |{ t102 }{ t103 }|.
        DATA(t106) = |" already defined|.
        DATA(t107) = strlen( t101 ).
        t100 = |{ t101 }{ t106 }|.
        DATA t108 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t108.
        t92 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t93 i_token = t94 i_message_26cb = t100 i_fix = t108 ).
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
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d117_490f9bcc19a9.
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
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
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
      DATA(t41) = t34.
      t40 = t41->get_first_token( ).
      t39 = t40.
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t39.
      t44 = t45.
      DATA t46 TYPE string.
      DATA(t47) = t44.
      t46 = t47->str.
      t43 = t46.
      t42 = t43.
      DATA t48 TYPE REF TO zif_lnt_class_definition.
      CLEAR t48.
      DATA t49 TYPE REF TO zif_lnt_class_definition.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_current_scope.
      DATA t51 TYPE REF TO zcl_lnt_current_scope.
      DATA(t52) = t2.
      t51 = t52->scope.
      t50 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = abap_true.
      IF t55 = abap_true.
        DATA(t56) = t42.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t56.
        t54 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t54 = t58.
      ENDIF.
      t53 = t54.
      DATA t59 TYPE REF TO zif_lnt_class_definition.
      CLEAR t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t62) = t53.
      t61 = t62.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      t63 = t64.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = t61.
      IF t66 IS INITIAL.
        t65 = abap_true.
      ELSEIF t66->has = abap_false.
        t65 = abap_true.
      ENDIF.
      t60 = t65.
      IF t60 = abap_true.
        DATA t67 TYPE REF TO zif_lnt_class_definition.
        CLEAR t67.
        t59 = t67.
      ELSE.
        DATA t68 TYPE REF TO zif_lnt_class_definition.
        CLEAR t68.
        DATA t69 TYPE REF TO zif_lnt_class_definition.
        CLEAR t69.
        DATA t70 TYPE REF TO zif_lnt_class_definition.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t72 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t73) = t50.
        t72 = t73->current.
        t71 = t72.
        DATA t74 TYPE REF TO zif_lnt_class_definition.
        CLEAR t74.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = t71.
        IF t76 IS INITIAL.
          t75 = abap_true.
        ENDIF.
        IF t75 = abap_true.
          DATA t77 TYPE REF TO zif_lnt_class_definition.
          CLEAR t77.
          t74 = t77.
        ELSE.
          DATA t78 TYPE REF TO zif_lnt_class_definition.
          DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t80) = t71.
          t79 = t80.
          DATA t81 TYPE string.
          DATA(t82) = t53.
          t81 = t82->value.
          t78 = t79->find_class_definition( i_name = t81 ).
          t74 = t78.
        ENDIF.
        t70 = t74.
        t69 = t70.
        DATA t83 TYPE REF TO zif_lnt_class_definition.
        CLEAR t83.
        DATA t84 TYPE abap_bool.
        DATA(t85) = t69.
        t84 = xsdbool( t85 IS BOUND ).
        IF t84 = abap_true.
          DATA t86 TYPE REF TO zif_lnt_class_definition.
          CLEAR t86.
          DATA(t87) = abap_true.
          IF t87 = abap_true.
            DATA t88 TYPE REF TO zif_lnt_class_definition.
            DATA(t89) = t69.
            t88 = t89.
            t86 = t88.
          ELSE.
            DATA t90 TYPE REF TO zif_lnt_class_definition.
            CLEAR t90.
            t86 = t90.
          ENDIF.
          t83 = t86.
        ELSE.
          DATA t91 TYPE REF TO zif_lnt_class_definition.
          CLEAR t91.
          DATA t92 TYPE REF TO zcl_lnt_class.
          CLEAR t92.
          DATA t93 TYPE REF TO zcl_lnt_class.
          CLEAR t93.
          DATA t94 TYPE REF TO zif_lnt_object.
          CLEAR t94.
          DATA t95 TYPE REF TO zif_lnt_registry.
          DATA(t96) = t50.
          t95 = t96->reg.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          DATA(t98) = abap_true.
          IF t98 = abap_true.
            DATA(t99) = |CLAS|.
            DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t100->has = abap_true.
            t100->value = t99.
            t97 = t100.
          ELSE.
            DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t101.
            t97 = t101.
          ENDIF.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          DATA(t103) = abap_true.
          IF t103 = abap_true.
            DATA t104 TYPE string.
            DATA(t105) = t53.
            t104 = t105->value.
            DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t106->has = abap_true.
            t106->value = t104.
            t102 = t106.
          ELSE.
            DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t107.
            t102 = t107.
          ENDIF.
          t94 = t95->get_object( i_type_9913 = t97 i_name = t102 ).
          DATA t108 TYPE REF TO object.
          t108 = t94.
          t93 ?= t108.
          t92 = t93.
          DATA t109 TYPE REF TO zif_lnt_class_definition.
          CLEAR t109.
          DATA t110 TYPE abap_bool.
          DATA(t111) = t92.
          t110 = xsdbool( t111 IS BOUND ).
          IF t110 = abap_true.
            DATA t112 TYPE REF TO zif_lnt_class_definition.
            DATA t113 TYPE REF TO zcl_lnt_class.
            DATA(t114) = t92.
            t113 = t114.
            t112 = t113->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t109 = t112.
          ELSE.
            DATA t115 TYPE REF TO zif_lnt_class_definition.
            CLEAR t115.
            t109 = t115.
          ENDIF.
          t91 = t109.
          t83 = t91.
        ENDIF.
        t68 = t83.
        t59 = t68.
      ENDIF.
      t49 = t59.
      t48 = t49.
      DATA t116 TYPE abap_bool.
      DATA(t117) = t48.
      t116 = xsdbool( t117 IS BOUND ).
      IF t116 = abap_true.
        DATA t118 TYPE REF TO zcl_lnt_current_scope.
        DATA(t119) = t2.
        t118 = t119->scope.
        DATA t120 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t120.
        DATA(t121) = abap_true.
        IF t121 = abap_true.
          DATA(t122) = t39.
          t120 = t122.
        ELSE.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t123.
          t120 = t123.
        ENDIF.
        DATA t124 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t124.
        DATA(t125) = abap_true.
        IF t125 = abap_true.
          DATA t126 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t127 TYPE REF TO zif_lnt_class_definition.
          DATA(t128) = t48.
          t127 = t128.
          t126 ?= t127.
          t124 = t126.
        ELSE.
          DATA t129 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t129.
          t124 = t129.
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        DATA(t131) = |Object|.
        CLEAR t130.
        CREATE OBJECT t130.
        t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t130->sval = t131.
        DATA t132 TYPE string.
        DATA(t133) = t2.
        t132 = t133->filename.
        DATA t134 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t134.
        DATA(t135) = abap_true.
        IF t135 = abap_true.
          DATA t136 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t136.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA(t139) = abap_true.
          IF t139 = abap_true.
            DATA t140 TYPE string.
            DATA(t141) = t42.
            DATA(t142) = strlen( t141 ).
            t140 = t141.
            IF t140 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t140 TO UPPER CASE.
            ELSE.
              t140 = zlnt_runtime_uppe_91169605024d=>full( t140 ).
            ENDIF.
            DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t143->has = abap_true.
            t143->value = t140.
            t138 = t143.
          ELSE.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t144.
            t138 = t144.
          ENDIF.
          t137 = t138.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          DATA(t147) = abap_true.
          IF t147 = abap_true.
            DATA(t148) = |CLAS|.
            DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t149->has = abap_true.
            t149->value = t148.
            t146 = t149.
          ELSE.
            DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t150.
            t146 = t150.
          ENDIF.
          t145 = t146.
          DATA t151 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t152 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t152.
          t151 = t152.
          t136 = NEW zcl_lnt_ireference_extras( i_oo_name = t137 i_oo_type = t145 i_found_qualified = t151 ).
          CREATE OBJECT t136->zlnt_view_ownkeys_b0e8086400eb.
          t136->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t136->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t136->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t153 ).
          ENDIF.
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
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
          ENDIF.
          DATA(t157) = |ooType|.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t136->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t136->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
          ENDIF.
          t134 = t136.
        ELSE.
          DATA t159 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t159.
          t134 = t159.
        ENDIF.
        t118->add_reference( i_usage = t120 i_referencing = t124 i_type_9913 = t130 i_filename = t132 i_extra = t134 ).
      ELSE.
        DATA(t160) = VALUE abap_bool( ).
        DATA t161 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t161.
        DATA t162 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t162.
        DATA t163 TYPE REF TO zcl_lnt_current_scope.
        DATA(t164) = t2.
        t163 = t164->scope.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        DATA(t166) = abap_true.
        IF t166 = abap_true.
          DATA(t167) = t42.
          DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t168->has = abap_true.
          t168->value = t167.
          t165 = t168.
        ELSE.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t169.
          t165 = t169.
        ENDIF.
        t162 = t163->exists_object( i_name = t165 ).
        t161 = t162.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        t170 = t171.
        DATA(t172) = VALUE abap_bool( ).
        DATA(t173) = VALUE abap_bool( ).
        DATA(t174) = t161.
        IF t174 IS INITIAL.
          t173 = abap_true.
        ENDIF.
        t172 = xsdbool( t173 = abap_false ).
        t160 = t172.
        IF t160 = abap_true.
        ELSE.
          DATA(t175) = VALUE abap_bool( ).
          DATA(t176) = VALUE abap_bool( ).
          DATA t177 TYPE REF TO zcl_lnt_ddic.
          DATA t178 TYPE REF TO zcl_lnt_ddic.
          DATA t179 TYPE REF TO zcl_lnt_current_scope.
          DATA t180 TYPE REF TO zcl_lnt_current_scope.
          DATA(t181) = t2.
          t180 = t181->scope.
          t179 = t180.
          DATA t182 TYPE REF TO zcl_lnt_ddic.
          DATA t183 TYPE REF TO zif_lnt_registry.
          DATA(t184) = t179.
          t183 = t184->reg.
          t182 = NEW zcl_lnt_ddic( i_reg_f149 = t183 ).
          t178 = t182.
          t177 = t178.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          DATA(t187) = abap_true.
          IF t187 = abap_true.
            DATA(t188) = t42.
            DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t189->has = abap_true.
            t189->value = t188.
            t186 = t189.
          ELSE.
            DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t190.
            t186 = t190.
          ENDIF.
          t185 = t186.
          DATA(t191) = VALUE abap_bool( ).
          DATA(t192) = VALUE abap_bool( ).
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t194) = t185.
          t193 = t194.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          t195 = t196.
          DATA(t197) = VALUE abap_bool( ).
          DATA(t198) = t193.
          IF t198 IS INITIAL.
            t197 = abap_true.
          ELSEIF t198->has = abap_false.
            t197 = abap_true.
          ENDIF.
          t192 = t197.
          IF t192 = abap_true.
            DATA(t199) = abap_true.
            t191 = t199.
          ELSE.
            DATA t200 TYPE abap_bool.
            DATA t201 TYPE REF TO zif_lnt_registry.
            DATA(t202) = t177.
            t201 = t202->reg.
            DATA t203 TYPE string.
            DATA(t204) = t185.
            t203 = t204->value.
            t200 = t201->in_error_namespace( i_name = t203 ).
            t191 = t200.
          ENDIF.
          t176 = t191.
          DATA(t205) = abap_false.
          t175 = xsdbool( t176 = t205 ).
          IF t175 = abap_true.
            DATA t206 TYPE REF TO zcl_lnt_current_scope.
            DATA(t207) = t2.
            t206 = t207->scope.
            DATA t208 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t208.
            DATA(t209) = abap_true.
            IF t209 = abap_true.
              DATA(t210) = t39.
              t208 = t210.
            ELSE.
              DATA t211 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t211.
              t208 = t211.
            ENDIF.
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
            DATA(t216) = t2.
            t215 = t216->filename.
            DATA t217 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t217.
            t206->add_reference( i_usage = t208 i_referencing = t212 i_type_9913 = t213 i_filename = t215 i_extra = t217 ).
          ELSE.
            DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t219) = t2.
            t218 = t219->issues.
            DATA t220 TYPE REF TO zcl_lnt_issue.
            CLEAR t220.
            DATA(t221) = t2.
            DATA(t222) = t39.
            DATA(t223) = VALUE string( ).
            DATA(t224) = VALUE string( ).
            DATA(t225) = |Friend class |.
            DATA t226 TYPE string.
            DATA(t227) = t42.
            DATA(t228) = strlen( t227 ).
            t226 = t227.
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
            t220 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t221 i_token = t222 i_message_26cb = t223 i_fix = t232 ).
            t218->load( ).
            APPEND t220 TO t218->items.
            t218->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t233) = t3.
      DATA(t234) = t42.
      t233->load( ).
      APPEND t234 TO t233->items.
      t233->save( ).
    ENDDO.
    DATA(t235) = t3.
    result = t235.

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
        CLEAR t100.
        DATA(t101) = |Object|.
        CLEAR t100.
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
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          DATA(t109) = abap_true.
          IF t109 = abap_true.
            DATA t110 TYPE string.
            DATA t111 TYPE string.
            DATA(t112) = t3.
            t111 = t112->value.
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
            t108 = t114.
          ELSE.
            DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t115.
            t108 = t115.
          ENDIF.
          t107 = t108.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          DATA(t118) = abap_true.
          IF t118 = abap_true.
            DATA(t119) = |CLAS|.
            DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t120->has = abap_true.
            t120->value = t119.
            t117 = t120.
          ELSE.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t121.
            t117 = t121.
          ENDIF.
          t116 = t117.
          DATA t122 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t123 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t123.
          t122 = t123.
          t106 = NEW zcl_lnt_ireference_extras( i_oo_name = t107 i_oo_type = t116 i_found_qualified = t122 ).
          CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
          t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t124 ).
          ENDIF.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t125 ).
          ENDIF.
          CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
          t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t126) = |ooName|.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
          ENDIF.
          DATA(t128) = |ooType|.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
          ENDIF.
          t104 = t106.
        ELSE.
          DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t130.
          t104 = t130.
        ENDIF.
        t91->add_reference( i_usage = t93 i_referencing = t94 i_type_9913 = t100 i_filename = t102 i_extra = t104 ).
      ELSE.
        DATA(t131) = VALUE abap_bool( ).
        DATA(t132) = VALUE abap_bool( ).
        DATA t133 TYPE REF TO zcl_lnt_ddic.
        DATA t134 TYPE REF TO zcl_lnt_ddic.
        DATA t135 TYPE REF TO zcl_lnt_current_scope.
        DATA t136 TYPE REF TO zcl_lnt_current_scope.
        DATA(t137) = t2.
        t136 = t137->scope.
        t135 = t136.
        DATA t138 TYPE REF TO zcl_lnt_ddic.
        DATA t139 TYPE REF TO zif_lnt_registry.
        DATA(t140) = t135.
        t139 = t140->reg.
        t138 = NEW zcl_lnt_ddic( i_reg_f149 = t139 ).
        t134 = t138.
        t133 = t134.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        DATA(t143) = abap_true.
        IF t143 = abap_true.
          DATA t144 TYPE string.
          DATA(t145) = t3.
          t144 = t145->value.
          DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t146->has = abap_true.
          t146->value = t144.
          t142 = t146.
        ELSE.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t142 = t147.
        ENDIF.
        t141 = t142.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = VALUE abap_bool( ).
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t151) = t141.
        t150 = t151.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        t152 = t153.
        DATA(t154) = VALUE abap_bool( ).
        DATA(t155) = t150.
        IF t155 IS INITIAL.
          t154 = abap_true.
        ELSEIF t155->has = abap_false.
          t154 = abap_true.
        ENDIF.
        t149 = t154.
        IF t149 = abap_true.
          DATA(t156) = abap_true.
          t148 = t156.
        ELSE.
          DATA t157 TYPE abap_bool.
          DATA t158 TYPE REF TO zif_lnt_registry.
          DATA(t159) = t133.
          t158 = t159->reg.
          DATA t160 TYPE string.
          DATA(t161) = t141.
          t160 = t161->value.
          t157 = t158->in_error_namespace( i_name = t160 ).
          t148 = t157.
        ENDIF.
        t132 = t148.
        DATA(t162) = abap_false.
        t131 = xsdbool( t132 = t162 ).
        IF t131 = abap_true.
          DATA t163 TYPE REF TO zcl_lnt_current_scope.
          DATA(t164) = t2.
          t163 = t164->scope.
          DATA(t165) = t1.
          DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t166.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          DATA(t168) = |Object (Void)|.
          CLEAR t167.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t167->sval = t168.
          DATA t169 TYPE string.
          DATA(t170) = t2.
          t169 = t170->filename.
          DATA t171 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t171.
          t163->add_reference( i_usage = t165 i_referencing = t166 i_type_9913 = t167 i_filename = t169 i_extra = t171 ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_input_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA(t4) = t2.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
    t3 = t4->find_all_statements( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      DATA(t15) = t6.
      DATA(t16) = |PARTIALLY|.
      t14 = t15->find_direct_token_by_text( i_text = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = t13.
      IF t21 IS INITIAL.
        t20 = abap_true.
      ENDIF.
      t19 = xsdbool( t20 = abap_false ).
      t12 = t19.
      t11 = t12.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t22.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t25.
      DATA(t26) = t6.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t25 = t26->find_first_expression( i_type_9913 = t27 ).
      t24 = t25.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t24.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        DATA(t34) = t24.
        t33 = t34.
        t32 = t33->get_first_token( ).
        t28 = t32.
      ENDIF.
      t23 = t28.
      t22 = t23.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t36.
      DATA(t37) = t22.
      t36 = t37.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      t38 = t39.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = t36.
      IF t41 IS INITIAL.
        t40 = abap_true.
      ENDIF.
      t35 = t40.
      IF t35 = abap_true.
        DATA t42 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA(t46) = |ClassDefinition, unable to find interface token|.
          DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t47->has = abap_true.
          t47->value = t46.
          t44 = t47.
        ELSE.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          t44 = t48.
        ENDIF.
        t43 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t44 ).
        t42 = NEW #( ).
        t42->payload = t43.
        CLEAR t42->source_value.
        IF t43 IS BOUND.
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
        ENDIF.
        RAISE EXCEPTION t42.
      ENDIF.
      DATA(t51) = VALUE string( ).
      DATA(t52) = VALUE string( ).
      DATA(t53) = VALUE string( ).
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t54.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t55.
      DATA(t56) = t22.
      t55 = t56.
      t54 = t55.
      DATA(t57) = VALUE string( ).
      DATA(t58) = t54.
      t57 = t58->str.
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
      DATA(t63) = t51.
      t62 = t63.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = t11.
      t64 = t65.
      t61 = NEW zcl_lnt_iimplementing( i_name = t62 i_partial = t64 ).
      CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
      t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t66 ).
      ENDIF.
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
      IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
      ENDIF.
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
      DATA t73 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t73.
      DATA t74 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_current_scope.
      CLEAR t75.
      DATA(t76) = t1.
      t75 = t76->scope.
      t74 = t75.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t78.
      DATA(t79) = abap_true.
      IF t79 = abap_true.
        DATA(t80) = t51.
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t80.
        t78 = t81.
      ELSE.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t78 = t82.
      ENDIF.
      t77 = t78.
      DATA t83 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t83.
      DATA(t84) = VALUE abap_bool( ).
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t85.
      DATA(t86) = t77.
      t85 = t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      t87 = t88.
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = t85.
      IF t90 IS INITIAL.
        t89 = abap_true.
      ELSEIF t90->has = abap_false.
        t89 = abap_true.
      ENDIF.
      t84 = t89.
      IF t84 = abap_true.
        DATA t91 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t91.
        t83 = t91.
      ELSE.
        DATA t92 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t92.
        DATA t93 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t93.
        DATA t94 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t94.
        DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t95.
        DATA t96 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t96.
        DATA(t97) = t74.
        t96 = t97->current.
        t95 = t96.
        DATA t98 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t98.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = t95.
        IF t100 IS INITIAL.
          t99 = abap_true.
        ENDIF.
        IF t99 = abap_true.
          DATA t101 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t101.
          t98 = t101.
        ELSE.
          DATA t102 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t102.
          DATA t103 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t103.
          DATA(t104) = t95.
          t103 = t104.
          DATA(t105) = VALUE string( ).
          DATA(t106) = t77.
          t105 = t106->value.
          t102 = t103->find_interface_definition( i_name = t105 ).
          t98 = t102.
        ENDIF.
        t94 = t98.
        t93 = t94.
        DATA t107 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t107.
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = t93.
        t108 = xsdbool( t109 IS BOUND ).
        IF t108 = abap_true.
          DATA t110 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t110.
          DATA(t111) = abap_true.
          IF t111 = abap_true.
            DATA t112 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t112.
            DATA(t113) = t93.
            t112 = t113.
            t110 = t112.
          ELSE.
            DATA t114 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t114.
            t110 = t114.
          ENDIF.
          t107 = t110.
        ELSE.
          DATA t115 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t115.
          DATA t116 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t116.
          DATA t117 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t117.
          DATA t118 TYPE REF TO zif_lnt_object.
          CLEAR t118.
          DATA t119 TYPE REF TO zif_lnt_registry.
          CLEAR t119.
          DATA(t120) = t74.
          t119 = t120->reg.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA(t122) = abap_true.
          IF t122 = abap_true.
            DATA(t123) = |INTF|.
            DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t124->has = abap_true.
            t124->value = t123.
            t121 = t124.
          ELSE.
            DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t125.
            t121 = t125.
          ENDIF.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          DATA(t127) = abap_true.
          IF t127 = abap_true.
            DATA(t128) = VALUE string( ).
            DATA(t129) = t77.
            t128 = t129->value.
            DATA(t130) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t130->has = abap_true.
            t130->value = t128.
            t126 = t130.
          ELSE.
            DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t131.
            t126 = t131.
          ENDIF.
          t118 = t119->get_object( i_type_9913 = t121 i_name = t126 ).
          DATA t132 TYPE REF TO object.
          CLEAR t132.
          t132 = t118.
          t117 ?= t132.
          t116 = t117.
          DATA t133 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t133.
          DATA(t134) = VALUE abap_bool( ).
          DATA(t135) = t116.
          t134 = xsdbool( t135 IS BOUND ).
          IF t134 = abap_true.
            DATA t136 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t136.
            DATA t137 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t137.
            DATA t138 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t138.
            DATA(t139) = t116.
            t138 = t139.
            t137 = t138.
            DATA t140 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t140.
            DATA(t141) = t137.
            t140 = t141->def.
            t136 = t140.
            t133 = t136.
          ELSE.
            DATA t142 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t142.
            t133 = t142.
          ENDIF.
          t115 = t133.
          t107 = t115.
        ENDIF.
        t92 = t107.
        t83 = t92.
      ENDIF.
      t73 = t83.
      t72 = t73.
      DATA(t143) = VALUE abap_bool( ).
      DATA(t144) = t72.
      t143 = xsdbool( t144 IS BOUND ).
      IF t143 = abap_true.
        DATA t145 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t145.
        DATA(t146) = t1.
        t145 = t146->scope.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t147.
        DATA(t148) = abap_true.
        IF t148 = abap_true.
          DATA t149 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t149.
          DATA(t150) = t22.
          t149 = t150.
          t147 = t149.
        ELSE.
          DATA t151 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t151.
          t147 = t151.
        ENDIF.
        DATA t152 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t152.
        DATA(t153) = abap_true.
        IF t153 = abap_true.
          DATA t154 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t154.
          DATA t155 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t155.
          DATA(t156) = t72.
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
        DATA(t161) = t1.
        t160 = t161->filename.
        DATA t162 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t162.
        DATA(t163) = abap_true.
        IF t163 = abap_true.
          DATA t164 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t164.
          DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t165.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t166.
          DATA(t167) = abap_true.
          IF t167 = abap_true.
            DATA(t168) = VALUE string( ).
            DATA(t169) = t51.
            DATA(t170) = strlen( t169 ).
            t168 = t169.
            IF t168 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t168 TO UPPER CASE.
            ELSE.
              t168 = zlnt_runtime_uppe_91169605024d=>full( t168 ).
            ENDIF.
            DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t171->has = abap_true.
            t171->value = t168.
            t166 = t171.
          ELSE.
            DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t172.
            t166 = t172.
          ENDIF.
          t165 = t166.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          DATA(t175) = abap_true.
          IF t175 = abap_true.
            DATA(t176) = |INTF|.
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
          DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t179.
          DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t180.
          t179 = t180.
          t164 = NEW zcl_lnt_ireference_extras( i_oo_name = t165 i_oo_type = t173 i_found_qualified = t179 ).
          CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
          t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t181 ).
          ENDIF.
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
          IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
          ENDIF.
          DATA(t185) = |ooType|.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
          ENDIF.
          t162 = t164.
        ELSE.
          DATA t187 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t187.
          t162 = t187.
        ENDIF.
        t145->add_reference( i_usage = t147 i_referencing = t152 i_type_9913 = t158 i_filename = t160 i_extra = t162 ).
      ELSE.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = VALUE abap_bool( ).
        DATA t190 TYPE REF TO zcl_lnt_ddic.
        CLEAR t190.
        DATA t191 TYPE REF TO zcl_lnt_ddic.
        CLEAR t191.
        DATA t192 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t192.
        DATA t193 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t193.
        DATA(t194) = t1.
        t193 = t194->scope.
        t192 = t193.
        DATA t195 TYPE REF TO zcl_lnt_ddic.
        CLEAR t195.
        DATA t196 TYPE REF TO zif_lnt_registry.
        CLEAR t196.
        DATA(t197) = t192.
        t196 = t197->reg.
        t195 = NEW zcl_lnt_ddic( i_reg_f149 = t196 ).
        t191 = t195.
        t190 = t191.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t199.
        DATA(t200) = abap_true.
        IF t200 = abap_true.
          DATA(t201) = t51.
          DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t202->has = abap_true.
          t202->value = t201.
          t199 = t202.
        ELSE.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          t199 = t203.
        ENDIF.
        t198 = t199.
        DATA(t204) = VALUE abap_bool( ).
        DATA(t205) = VALUE abap_bool( ).
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        DATA(t207) = t198.
        t206 = t207.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        t208 = t209.
        DATA(t210) = VALUE abap_bool( ).
        DATA(t211) = t206.
        IF t211 IS INITIAL.
          t210 = abap_true.
        ELSEIF t211->has = abap_false.
          t210 = abap_true.
        ENDIF.
        t205 = t210.
        IF t205 = abap_true.
          DATA(t212) = abap_true.
          t204 = t212.
        ELSE.
          DATA(t213) = VALUE abap_bool( ).
          DATA t214 TYPE REF TO zif_lnt_registry.
          CLEAR t214.
          DATA(t215) = t190.
          t214 = t215->reg.
          DATA(t216) = VALUE string( ).
          DATA(t217) = t198.
          t216 = t217->value.
          t213 = t214->in_error_namespace( i_name = t216 ).
          t204 = t213.
        ENDIF.
        t189 = t204.
        DATA(t218) = abap_false.
        t188 = xsdbool( t189 = t218 ).
        IF t188 = abap_true.
          DATA t219 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t219.
          DATA(t220) = t1.
          t219 = t220->scope.
          DATA t221 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t221.
          DATA(t222) = abap_true.
          IF t222 = abap_true.
            DATA t223 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t223.
            DATA(t224) = t22.
            t223 = t224.
            t221 = t223.
          ELSE.
            DATA t225 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t225.
            t221 = t225.
          ENDIF.
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
          DATA(t230) = t1.
          t229 = t230->filename.
          DATA t231 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t231.
          DATA(t232) = abap_true.
          IF t232 = abap_true.
            DATA t233 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t233.
            DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t234.
            DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t235.
            DATA(t236) = abap_true.
            IF t236 = abap_true.
              DATA(t237) = VALUE string( ).
              DATA(t238) = t51.
              DATA(t239) = strlen( t238 ).
              t237 = t238.
              IF t237 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t237 TO UPPER CASE.
              ELSE.
                t237 = zlnt_runtime_uppe_91169605024d=>full( t237 ).
              ENDIF.
              DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t240->has = abap_true.
              t240->value = t237.
              t235 = t240.
            ELSE.
              DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t241.
              t235 = t241.
            ENDIF.
            t234 = t235.
            DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t242.
            DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t243.
            DATA(t244) = abap_true.
            IF t244 = abap_true.
              DATA(t245) = |INTF|.
              DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t246->has = abap_true.
              t246->value = t245.
              t243 = t246.
            ELSE.
              DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t247.
              t243 = t247.
            ENDIF.
            t242 = t243.
            DATA t248 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t248.
            DATA t249 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t249.
            t248 = t249.
            t233 = NEW zcl_lnt_ireference_extras( i_oo_name = t234 i_oo_type = t242 i_found_qualified = t248 ).
            CREATE OBJECT t233->zlnt_view_ownkeys_b0e8086400eb.
            t233->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t250.
            IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t250 ).
            ENDIF.
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
            IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t252 p1 = t253 ).
            ENDIF.
            DATA(t254) = |ooType|.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t254 p1 = t255 ).
            ENDIF.
            t231 = t233.
          ELSE.
            DATA t256 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t256.
            t231 = t256.
          ENDIF.
          t219->add_reference( i_usage = t221 i_referencing = t226 i_type_9913 = t227 i_filename = t229 i_extra = t231 ).
        ELSE.
          DATA t257 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t257.
          DATA(t258) = t1.
          t257 = t258->scope.
          DATA t259 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t259.
          DATA(t260) = abap_true.
          IF t260 = abap_true.
            DATA t261 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t261.
            DATA(t262) = t22.
            t261 = t262.
            t259 = t261.
          ELSE.
            DATA t263 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t263.
            t259 = t263.
          ENDIF.
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
          DATA(t268) = t1.
          t267 = t268->filename.
          DATA t269 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t269.
          DATA(t270) = abap_true.
          IF t270 = abap_true.
            DATA t271 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t271.
            DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t272.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t273.
            DATA(t274) = abap_true.
            IF t274 = abap_true.
              DATA(t275) = VALUE string( ).
              DATA(t276) = t51.
              DATA(t277) = strlen( t276 ).
              t275 = t276.
              IF t275 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t275 TO UPPER CASE.
              ELSE.
                t275 = zlnt_runtime_uppe_91169605024d=>full( t275 ).
              ENDIF.
              DATA(t278) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t278->has = abap_true.
              t278->value = t275.
              t273 = t278.
            ELSE.
              DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t279.
              t273 = t279.
            ENDIF.
            t272 = t273.
            DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t280.
            DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t281.
            DATA(t282) = abap_true.
            IF t282 = abap_true.
              DATA(t283) = |INTF|.
              DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t284->has = abap_true.
              t284->value = t283.
              t281 = t284.
            ELSE.
              DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t285.
              t281 = t285.
            ENDIF.
            t280 = t281.
            DATA t286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t286.
            DATA t287 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t287.
            t286 = t287.
            t271 = NEW zcl_lnt_ireference_extras( i_oo_name = t272 i_oo_type = t280 i_found_qualified = t286 ).
            CREATE OBJECT t271->zlnt_view_ownkeys_b0e8086400eb.
            t271->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t288.
            IF t271->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t271->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t288 ).
            ENDIF.
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
            IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
            ENDIF.
            DATA(t292) = |ooType|.
            DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t293.
            IF t271->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t271->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
            ENDIF.
            t269 = t271.
          ELSE.
            DATA t294 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t294.
            t269 = t294.
          ENDIF.
          t257->add_reference( i_usage = t259 i_referencing = t264 i_type_9913 = t265 i_filename = t267 i_extra = t269 ).
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_type_definitions.
    DATA(t1) = CAST zcl_lnt_type_definitions( me->g_t_d_i_s_ab_ty_cl_df_ts_cl_df( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_attributes.
    DATA(t1) = CAST zcl_lnt_attributes( me->g_a_in_sr_ab_ty_cl_df_ts_cl_df( ) ).
    result = t1.

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
