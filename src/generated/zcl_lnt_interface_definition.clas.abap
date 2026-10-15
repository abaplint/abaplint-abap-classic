* TS: src/abap/types/interface_definition.ts:22:1 InterfaceDefinition
CLASS zcl_lnt_interface_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_interface_definition.
    INTERFACES zif_lnt_union_865ccdda.
    DATA attributes TYPE REF TO zif_lnt_attributes.
    DATA implementing TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA type_definitions TYPE REF TO zif_lnt_type_definitions.
    DATA method_definitions TYPE REF TO zif_lnt_method_definitions.
    DATA events_f95a TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA global_value TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA aliases_62bb TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS get_super_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_implementing RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_aliases RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_events RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_attributes RETURNING VALUE(result) TYPE REF TO zif_lnt_attributes.
    METHODS get_type_definitions RETURNING VALUE(result) TYPE REF TO zif_lnt_type_definitions.
    METHODS is_local RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_global RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_method_definitions RETURNING VALUE(result) TYPE REF TO zif_lnt_method_definitions.
    METHODS check_method_name_length IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS check_interfaces_exists IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input i_node TYPE REF TO zcl_lnt_structure_node.
    METHODS parse IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input i_node TYPE REF TO zcl_lnt_structure_node.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_interface_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_input_967e.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_structure.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_sr_interface ).
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
        DATA(t11) = |InterfaceDefinition, unexpected node type|.
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
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t21.
    DATA(t22) = t1.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d539_1b20166f6dfe.
    t21 = t22->find_first_statement( i_type_9913 = t23 ).
    t20 = t21.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
    t19 = t20->find_first_expression( i_type_9913 = t24 ).
    t18 = t19.
    t17 = t18->get_first_token( ).
    t16 = t17.
    DATA(t25) = t16.
    DATA(t26) = VALUE string( ).
    DATA(t27) = t2.
    t26 = t27->filename.
    super->constructor( i_token = t25 i_filename = t26 ).
    DATA t28 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t28.
    DATA(t29) = t2.
    t28 = t29->scope.
    DATA(t30) = me.
    t28->add_interface_definition( i_i = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    CREATE OBJECT t31.
    me->events_f95a = t31.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `events`.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    CREATE OBJECT t32.
    me->implementing = t32.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `implementing`.
    DATA t33 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t37.
      DATA(t38) = t1.
      DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
      t37 = t38->find_first_expression( i_type_9913 = t39 ).
      t36 = t37.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      t40 = t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = t36.
      IF t44 IS INITIAL.
        t43 = abap_true.
      ENDIF.
      t42 = xsdbool( t43 = abap_false ).
      t35 = t42.
      DATA(t45) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t45->has = abap_true.
      t45->value = t35.
      t33 = t45.
    ELSE.
      DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t46.
      t33 = t46.
    ENDIF.
    me->global_value = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalValue`.
    DATA t47 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t48.
    DATA(t49) = t2.
    t48 = t49->scope.
    t47 = t48.
    DATA(t50) = VALUE string( ).
    DATA(t51) = VALUE string( ).
    DATA t52 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t52.
    DATA(t53) = t16.
    t52 = t53.
    DATA(t54) = VALUE string( ).
    DATA(t55) = t52.
    t54 = t55->str.
    t51 = t54.
    t50 = t51.
    DATA t56 TYPE REF TO zcl_lnt_position.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_position.
    CLEAR t57.
    DATA t58 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t59.
    DATA(t60) = t1.
    t59 = t60->get_first_token( ).
    t58 = t59.
    DATA t61 TYPE REF TO zcl_lnt_position.
    CLEAR t61.
    DATA(t62) = t58.
    t61 = t62->start.
    t57 = t61.
    t56 = t57.
    DATA(t63) = VALUE string( ).
    DATA(t64) = VALUE string( ).
    DATA(t65) = t2.
    t64 = t65->filename.
    t63 = t64.
    DATA t66 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t66.
    DATA t67 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t67.
    DATA(t68) = VALUE string( ).
    DATA(t69) = |interface|.
    t68 = t69.
    DATA(t70) = VALUE string( ).
    DATA(t71) = t50.
    t70 = t71.
    DATA t72 TYPE REF TO zcl_lnt_position.
    CLEAR t72.
    DATA(t73) = t56.
    t72 = t73.
    DATA(t74) = VALUE string( ).
    DATA(t75) = t63.
    t74 = t75.
    DATA t76 TYPE REF TO zcl_lnt_position.
    CLEAR t76.
    DATA t77 TYPE REF TO zcl_lnt_position.
    CLEAR t77.
    t76 = t77.
    t67 = NEW zcl_lnt_iscope_identifier( i_stype = t68 i_sname = t70 i_filename = t74 i_start = t72 i_end = t76 ).
    CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
    t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t78 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t81 ).
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t82 ).
    ENDIF.
    CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
    t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t83) = |stype|.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
    ENDIF.
    DATA(t85) = |sname|.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
    ENDIF.
    DATA(t87) = |start|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
    ENDIF.
    DATA(t89) = |filename|.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
    ENDIF.
    DATA(t91) = |end|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
    ENDIF.
    t66 = t67.
    DATA(t93) = VALUE abap_bool( ).
    DATA t94 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t94.
    DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t95.
    DATA(t96) = t47.
    t95 = t96->current.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    t97 = t98.
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = t94.
    IF t100 IS INITIAL.
      t99 = abap_true.
    ENDIF.
    t93 = t99.
    IF t93 = abap_true.
      DATA(t101) = t47.
      DATA t102 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t102.
      DATA(t103) = abap_true.
      IF t103 = abap_true.
        DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t104.
        DATA(t105) = t66.
        DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t106.
        t104 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t105 i_parent = t106 ).
        t102 = t104.
      ELSE.
        DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t107.
        t102 = t107.
      ENDIF.
      t101->current = t102.
      DELETE t101->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t108.
      DATA t109 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t109.
      DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t110.
      DATA(t111) = t47.
      t110 = t111->current.
      t109 = t110.
      t108 = t109.
      DATA(t112) = t47.
      DATA t113 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t113.
      DATA(t114) = abap_true.
      IF t114 = abap_true.
        DATA t115 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t115.
        DATA(t116) = t66.
        DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA(t119) = t108.
          t117 = t119.
        ELSE.
          DATA t120 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t120.
          t117 = t120.
        ENDIF.
        t115 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t116 i_parent = t117 ).
        t113 = t115.
      ELSE.
        DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t121.
        t113 = t121.
      ENDIF.
      t112->current = t113.
      DELETE t112->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t122) = t108.
      DATA t123 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t123.
      DATA t124 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t124.
      DATA(t125) = t47.
      t124 = t125->current.
      t123 = t124.
      t122->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t123 ).
    ENDIF.
    DATA(t126) = t2.
    DATA(t127) = t1.
    me->parse( i_input_967e = t126 i_node = t127 ).
    DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope.
    CLEAR t128.
    DATA t129 TYPE REF TO zcl_lnt_current_scope.
    CLEAR t129.
    DATA(t130) = t2.
    t129 = t130->scope.
    DATA t131 TYPE REF TO zcl_lnt_position.
    CLEAR t131.
    DATA t132 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t132.
    DATA t133 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t133.
    DATA(t134) = t1.
    t133 = t134->get_last_token( ).
    t132 = t133.
    DATA t135 TYPE REF TO zcl_lnt_position.
    CLEAR t135.
    DATA(t136) = VALUE f( ).
    DATA t137 TYPE REF TO zcl_lnt_position.
    CLEAR t137.
    DATA t138 TYPE REF TO zcl_lnt_position.
    CLEAR t138.
    DATA(t139) = t132.
    t138 = t139->start.
    t137 = t138.
    DATA(t140) = VALUE f( ).
    DATA(t141) = t137.
    t140 = t141->row.
    t136 = t140.
    DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t143.
    DATA t144 TYPE REF TO zcl_lnt_position.
    CLEAR t144.
    DATA t145 TYPE REF TO zcl_lnt_position.
    CLEAR t145.
    DATA(t146) = t132.
    t145 = t146->start.
    t144 = t145.
    DATA t147 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t147.
    DATA(t148) = t144.
    t147 = t148->col.
    t143 = t147.
    DATA(t149) = VALUE f( ).
    DATA(t150) = VALUE i( ).
    DATA(t151) = VALUE string( ).
    DATA(t152) = t132.
    t151 = t152->str.
    DATA(t153) = strlen( t151 ).
    t150 = t153.
    t149 = t150.
    DATA(t154) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t154->has = abap_true.
    t154->value = t149.
    t142 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t143 right = t154 op = `+` ).
    t135 = NEW zcl_lnt_position( i_row = t136 i_col = t142 ).
    t131 = t135.
    t128 = t129->pop( i_end = t131 ).
    DATA(t155) = t2.
    me->check_method_name_length( i_input_967e = t155 ).
  ENDMETHOD.

  METHOD get_super_class.
    DATA t1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t1.
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

  METHOD get_events.
    DATA(t1) = me->events_f95a.
    result = t1.

  ENDMETHOD.

  METHOD get_attributes.
    DATA(t1) = me->attributes.
    result = t1.

  ENDMETHOD.

  METHOD get_type_definitions.
    DATA(t1) = me->type_definitions.
    result = t1.

  ENDMETHOD.

  METHOD is_local.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = me->global_value.
    IF t3 IS BOUND.
      IF t3->has = abap_true.
        t2 = xsdbool( t3->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    t1 = xsdbool( t2 = abap_false ).
    result = t1.

  ENDMETHOD.

  METHOD is_global.
    DATA t1 TYPE abap_bool.
    DATA(t2) = me->global_value.
    t1 = t2->value.
    result = t1.

  ENDMETHOD.

  METHOD get_method_definitions.
    DATA(t1) = me->method_definitions.
    result = t1.

  ENDMETHOD.

  METHOD check_method_name_length.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t4.
    DATA(t5) = me->method_definitions.
    t4 = t5->get_all( ).
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA(t6) = abap_true.
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA t7 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t8.
      DATA(t9) = t2.
      t8 = t9->next( ).
      t7 = t8.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t7.
      t10 = t11->done.
      IF t10 = abap_true.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zif_lnt_method_definition.
      CLEAR t12.
      DATA t13 TYPE REF TO zif_lnt_method_definition.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_method_definition.
      CLEAR t14.
      DATA(t15) = t7.
      t14 = t15->value.
      t13 = t14.
      t12 = t13.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = abap_false.
      t18 = t19.
      DATA t20 TYPE REF TO cx_root.
      CLEAR t20.
      TRY.
          DATA(t21) = VALUE abap_bool( ).
          DATA(t22) = VALUE f( ).
          DATA(t23) = VALUE i( ).
          DATA(t24) = VALUE string( ).
          DATA(t25) = t12.
          t24 = t25->get_name( ).
          DATA(t26) = strlen( t24 ).
          t23 = t26.
          t22 = t23.
          DATA(t27) = CONV f( 30 ).
          t21 = xsdbool( t22 > t27 ).
          t17 = t21.
          DATA(t28) = abap_true.
          t18 = t28.
        CATCH cx_root INTO t20.
          DATA(t29) = VALUE abap_bool( ).
          DATA(t30) = t18.
          t29 = xsdbool( t30 = abap_false ).
          IF t29 = abap_true.
            DATA(t31) = t2.
            t31->close( ).
          ENDIF.
          RAISE EXCEPTION t20.
      ENDTRY.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t18.
      t32 = xsdbool( t33 = abap_false ).
      IF t32 = abap_true.
        DATA(t34) = t2.
        t34->close( ).
      ENDIF.
      DATA(t35) = t17.
      t16 = t35.
      IF t16 = abap_true.
        DATA(t36) = VALUE string( ).
        DATA(t37) = VALUE string( ).
        DATA(t38) = VALUE string( ).
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = abap_false.
        t39 = t40.
        DATA t41 TYPE REF TO cx_root.
        CLEAR t41.
        TRY.
            DATA(t42) = VALUE string( ).
            DATA(t43) = VALUE string( ).
            DATA(t44) = |Method name "|.
            DATA(t45) = VALUE string( ).
            DATA(t46) = t12.
            t45 = t46->get_name( ).
            DATA(t47) = strlen( t44 ).
            t43 = |{ t44 }{ t45 }|.
            DATA(t48) = |" is too long, maximum length is 30 characters|.
            DATA(t49) = strlen( t43 ).
            t42 = |{ t43 }{ t48 }|.
            t38 = t42.
            DATA(t50) = abap_true.
            t39 = t50.
          CATCH cx_root INTO t41.
            DATA(t51) = VALUE abap_bool( ).
            DATA(t52) = t39.
            t51 = xsdbool( t52 = abap_false ).
            IF t51 = abap_true.
              DATA(t53) = t2.
              t53->close( ).
            ENDIF.
            RAISE EXCEPTION t41.
        ENDTRY.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t39.
        t54 = xsdbool( t55 = abap_false ).
        IF t54 = abap_true.
          DATA(t56) = t2.
          t56->close( ).
        ENDIF.
        DATA(t57) = t38.
        t37 = t57.
        t36 = t37.
        DATA(t58) = VALUE f( ).
        DATA(t59) = VALUE f( ).
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = abap_false.
        t60 = t61.
        DATA t62 TYPE REF TO cx_root.
        CLEAR t62.
        TRY.
            DATA(t63) = VALUE f( ).
            DATA(t64) = VALUE i( ).
            DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t65.
            DATA(t66) = t1.
            t65 = t66->issues.
            DATA t67 TYPE REF TO zcl_lnt_issue.
            CLEAR t67.
            DATA(t68) = t1.
            DATA t69 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t69.
            DATA(t70) = t12.
            t69 = t70->get_token( ).
            DATA(t71) = t36.
            DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t72.
            t67 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t68 i_token = t69 i_message_26cb = t71 i_fix = t72 ).
            t65->load( ).
            APPEND t67 TO t65->items.
            t64 = lines( t65->items ).
            t65->save( ).
            t63 = t64.
            t59 = t63.
            DATA(t73) = abap_true.
            t60 = t73.
          CATCH cx_root INTO t62.
            DATA(t74) = VALUE abap_bool( ).
            DATA(t75) = t60.
            t74 = xsdbool( t75 = abap_false ).
            IF t74 = abap_true.
              DATA(t76) = t2.
              t76->close( ).
            ENDIF.
            RAISE EXCEPTION t62.
        ENDTRY.
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = t60.
        t77 = xsdbool( t78 = abap_false ).
        IF t77 = abap_true.
          DATA(t79) = t2.
          t79->close( ).
        ENDIF.
        DATA(t80) = t59.
        t58 = t80.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_interfaces_exists.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_node.
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
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      DATA(t15) = t6.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t14 = t15->find_direct_expression( i_type_9913 = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t13.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      IF t18 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t20.
        t17 = t20.
      ELSE.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t22.
        DATA(t23) = t13.
        t22 = t23.
        t21 = t22->get_first_token( ).
        t17 = t21.
      ENDIF.
      t12 = t17.
      t11 = t12.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t26.
      DATA(t27) = t11.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t26.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA(t32) = VALUE string( ).
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t34.
        DATA(t35) = t26.
        t34 = t35.
        t33 = t34.
        DATA(t36) = VALUE string( ).
        DATA(t37) = t33.
        t36 = t37->str.
        t32 = t36.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t32.
        t28 = t38.
      ENDIF.
      t25 = t28.
      t24 = t25.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = t24.
      IF t40 IS BOUND.
        IF t40->has = abap_true.
          t39 = xsdbool( strlen( t40->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t39 = abap_true.
        DATA(t41) = me->implementing.
        DATA t42 TYPE REF TO zcl_lnt_iimplementing.
        CLEAR t42.
        DATA(t43) = VALUE string( ).
        DATA(t44) = VALUE string( ).
        DATA(t45) = t24.
        t44 = t45->value.
        t43 = t44.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = abap_false.
        t46 = t47.
        t42 = NEW zcl_lnt_iimplementing( i_name = t43 i_partial = t46 ).
        CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
        t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t48 ).
        ENDIF.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `partial` p1 = t49 ).
        ENDIF.
        CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
        t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t50) = |name|.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
        ENDIF.
        DATA(t52) = |partial|.
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
        ENDIF.
        t41->load( ).
        APPEND t42 TO t41->items.
        t41->save( ).
        DATA t54 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t54.
        DATA t55 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t56.
        DATA t57 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t57.
        DATA(t58) = t1.
        t57 = t58->scope.
        t56 = t57.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA(t62) = VALUE string( ).
          DATA(t63) = t24.
          t62 = t63->value.
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
        DATA t66 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t66.
        DATA(t67) = VALUE abap_bool( ).
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t69) = t59.
        t68 = t69.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
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
          DATA t74 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t74.
          t66 = t74.
        ELSE.
          DATA t75 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t75.
          DATA t76 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t76.
          DATA t77 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t77.
          DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t78.
          DATA t79 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t79.
          DATA(t80) = t56.
          t79 = t80->current.
          t78 = t79.
          DATA t81 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t81.
          DATA(t82) = VALUE abap_bool( ).
          DATA(t83) = t78.
          IF t83 IS INITIAL.
            t82 = abap_true.
          ENDIF.
          IF t82 = abap_true.
            DATA t84 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t84.
            t81 = t84.
          ELSE.
            DATA t85 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t85.
            DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t86.
            DATA(t87) = t78.
            t86 = t87.
            DATA(t88) = VALUE string( ).
            DATA(t89) = t59.
            t88 = t89->value.
            t85 = t86->find_interface_definition( i_name = t88 ).
            t81 = t85.
          ENDIF.
          t77 = t81.
          t76 = t77.
          DATA t90 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t90.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = t76.
          t91 = xsdbool( t92 IS BOUND ).
          IF t91 = abap_true.
            DATA t93 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t93.
            DATA(t94) = abap_true.
            IF t94 = abap_true.
              DATA t95 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t95.
              DATA(t96) = t76.
              t95 = t96.
              t93 = t95.
            ELSE.
              DATA t97 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t97.
              t93 = t97.
            ENDIF.
            t90 = t93.
          ELSE.
            DATA t98 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t98.
            DATA t99 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t99.
            DATA t100 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t100.
            DATA t101 TYPE REF TO zif_lnt_object.
            CLEAR t101.
            DATA t102 TYPE REF TO zif_lnt_registry.
            CLEAR t102.
            DATA(t103) = t56.
            t102 = t103->reg.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            DATA(t105) = abap_true.
            IF t105 = abap_true.
              DATA(t106) = |INTF|.
              DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t107->has = abap_true.
              t107->value = t106.
              t104 = t107.
            ELSE.
              DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t108.
              t104 = t108.
            ENDIF.
            DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t109.
            DATA(t110) = abap_true.
            IF t110 = abap_true.
              DATA(t111) = VALUE string( ).
              DATA(t112) = t59.
              t111 = t112->value.
              DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t113->has = abap_true.
              t113->value = t111.
              t109 = t113.
            ELSE.
              DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t114.
              t109 = t114.
            ENDIF.
            t101 = t102->get_object( i_type_9913 = t104 i_name = t109 ).
            DATA t115 TYPE REF TO object.
            CLEAR t115.
            t115 = t101.
            t100 ?= t115.
            t99 = t100.
            DATA t116 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t116.
            DATA(t117) = VALUE abap_bool( ).
            DATA(t118) = t99.
            t117 = xsdbool( t118 IS BOUND ).
            IF t117 = abap_true.
              DATA t119 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t119.
              DATA t120 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t120.
              DATA t121 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t121.
              DATA(t122) = t99.
              t121 = t122.
              t120 = t121.
              DATA t123 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t123.
              DATA(t124) = t120.
              t123 = t124->def.
              t119 = t123.
              t116 = t119.
            ELSE.
              DATA t125 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t125.
              t116 = t125.
            ENDIF.
            t98 = t116.
            t90 = t98.
          ENDIF.
          t75 = t90.
          t66 = t75.
        ENDIF.
        t55 = t66.
        t54 = t55.
        DATA(t126) = VALUE abap_bool( ).
        DATA(t127) = t54.
        t126 = xsdbool( t127 IS BOUND ).
        IF t126 = abap_true.
          DATA t128 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t128.
          DATA(t129) = t1.
          t128 = t129->scope.
          DATA(t130) = t11.
          DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t131.
          DATA(t132) = abap_true.
          IF t132 = abap_true.
            DATA t133 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t133.
            DATA t134 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t134.
            DATA(t135) = t54.
            t134 = t135.
            t133 ?= t134.
            t131 = t133.
          ELSE.
            DATA t136 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t136.
            t131 = t136.
          ENDIF.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          DATA(t138) = |Object|.
          CLEAR t137.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t137->sval = t138.
          DATA(t139) = CONV string( me->filename ).
          DATA t140 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t140.
          DATA(t141) = abap_true.
          IF t141 = abap_true.
            DATA t142 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t142.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t143.
            DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t144.
            DATA(t145) = abap_true.
            IF t145 = abap_true.
              DATA(t146) = VALUE string( ).
              DATA(t147) = VALUE string( ).
              DATA(t148) = t24.
              t147 = t148->value.
              DATA(t149) = strlen( t147 ).
              t146 = t147.
              IF t146 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t146 TO UPPER CASE.
              ELSE.
                t146 = zlnt_runtime_uppe_91169605024d=>full( t146 ).
              ENDIF.
              DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t150->has = abap_true.
              t150->value = t146.
              t144 = t150.
            ELSE.
              DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t151.
              t144 = t151.
            ENDIF.
            t143 = t144.
            DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t152.
            DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t153.
            DATA(t154) = abap_true.
            IF t154 = abap_true.
              DATA(t155) = |INTF|.
              DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t156->has = abap_true.
              t156->value = t155.
              t153 = t156.
            ELSE.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t157.
              t153 = t157.
            ENDIF.
            t152 = t153.
            DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t158.
            DATA t159 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t159.
            t158 = t159.
            t142 = NEW zcl_lnt_ireference_extras( i_oo_name = t143 i_oo_type = t152 i_found_qualified = t158 ).
            CREATE OBJECT t142->zlnt_view_ownkeys_b0e8086400eb.
            t142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t160.
            IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t160 ).
            ENDIF.
            DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t161.
            IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t161 ).
            ENDIF.
            CREATE OBJECT t142->zlnt_json_ownkeys_70e5fd461788.
            t142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t162) = |ooName|.
            DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t163.
            IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
            ENDIF.
            DATA(t164) = |ooType|.
            DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t165.
            IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
            ENDIF.
            t140 = t142.
          ELSE.
            DATA t166 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t166.
            t140 = t166.
          ENDIF.
          t128->add_reference( i_usage = t130 i_referencing = t131 i_type_9913 = t137 i_filename = t139 i_extra = t140 ).
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
          DATA(t173) = t1.
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
            DATA(t180) = VALUE string( ).
            DATA(t181) = t24.
            t180 = t181->value.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = t180.
            t178 = t182.
          ELSE.
            DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t183.
            t178 = t183.
          ENDIF.
          t177 = t178.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = VALUE abap_bool( ).
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          DATA(t187) = t177.
          t186 = t187.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t189.
          t188 = t189.
          DATA(t190) = VALUE abap_bool( ).
          DATA(t191) = t186.
          IF t191 IS INITIAL.
            t190 = abap_true.
          ELSEIF t191->has = abap_false.
            t190 = abap_true.
          ENDIF.
          t185 = t190.
          IF t185 = abap_true.
            DATA(t192) = abap_true.
            t184 = t192.
          ELSE.
            DATA(t193) = VALUE abap_bool( ).
            DATA t194 TYPE REF TO zif_lnt_registry.
            CLEAR t194.
            DATA(t195) = t169.
            t194 = t195->reg.
            DATA(t196) = VALUE string( ).
            DATA(t197) = t177.
            t196 = t197->value.
            t193 = t194->in_error_namespace( i_name = t196 ).
            t184 = t193.
          ENDIF.
          t168 = t184.
          DATA(t198) = abap_false.
          t167 = xsdbool( t168 = t198 ).
          IF t167 = abap_true.
            DATA t199 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t199.
            DATA(t200) = t1.
            t199 = t200->scope.
            DATA(t201) = t11.
            DATA t202 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t202.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            DATA(t204) = |Object (Void)|.
            CLEAR t203.
            CREATE OBJECT t203.
            t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t203->sval = t204.
            DATA(t205) = CONV string( me->filename ).
            DATA t206 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t206.
            t199->add_reference( i_usage = t201 i_referencing = t202 i_type_9913 = t203 i_filename = t205 i_extra = t206 ).
          ELSE.
            DATA t207 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            CLEAR t207.
            DATA t208 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            CLEAR t208.
            DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t209.
            DATA(t210) = abap_true.
            IF t210 = abap_true.
              DATA(t211) = VALUE string( ).
              DATA(t212) = VALUE string( ).
              DATA(t213) = |Interface |.
              DATA(t214) = VALUE string( ).
              DATA(t215) = t24.
              t214 = t215->value.
              DATA(t216) = strlen( t213 ).
              t212 = |{ t213 }{ t214 }|.
              DATA(t217) = | unknown|.
              DATA(t218) = strlen( t212 ).
              t211 = |{ t212 }{ t217 }|.
              DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t219->has = abap_true.
              t219->value = t211.
              t209 = t219.
            ELSE.
              DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t220.
              t209 = t220.
            ENDIF.
            t208 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t209 ).
            t207 = NEW #( ).
            t207->payload = t208.
            CLEAR t207->source_value.
            IF t208 IS BOUND.
              DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t221.
              DATA t222 TYPE REF TO object.
              CLEAR t222.
              CLEAR t221.
              t222 = t208.
              TRY.
                  t207->source_value ?= t222.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t207->source_value IS NOT BOUND.
                TRY.
                    t221 ?= t208.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t221 IS BOUND.
                  t207->source_value = t221->source( ).
                ENDIF.
                IF t207->source_value IS NOT BOUND.
                  CREATE OBJECT t207->source_value.
                  t207->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t207->source_value->oval = t208.
                ENDIF.
              ENDIF.
            ENDIF.
            RAISE EXCEPTION t207.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_node.
    DATA(t3) = t1.
    DATA(t4) = t2.
    me->check_interfaces_exists( i_input_967e = t3 i_node = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_object_oriented.
    DATA t6 TYPE REF TO zcl_lnt_object_oriented.
    DATA t7 TYPE REF TO zcl_lnt_current_scope.
    DATA(t8) = t1.
    t7 = t8->scope.
    t6 = NEW zcl_lnt_object_oriented( i_scope = t7 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t10) = t5.
    DATA(t11) = me.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t12.
    t9 = t10->from_interfaces( i_definition = t11 i_skip_34cc = t12 ).
    DATA t13 TYPE REF TO zcl_lnt_attributes.
    DATA(t14) = t2.
    DATA(t15) = t1.
    t13 = NEW zcl_lnt_attributes( i_node = t14 i_input_967e = t15 ).
    me->attributes = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `attributes`.
    DATA t16 TYPE REF TO zif_lnt_type_definitions.
    DATA(t17) = me->attributes.
    t16 = t17->get_types( ).
    me->type_definitions = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `typeDefinitions`.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = me->attributes.
    t18 = t19->get_aliases( ).
    me->aliases_62bb = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `aliases`.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t2.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
    t21 = t22->find_all_statements( i_type_9913 = t23 ).
    t20 = t21.
    DATA(t24) = t20.
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    DATA(t27) = VALUE i( ).
    DO.
      t24->load( ).
      IF t27 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t24->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = t25.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t35 = t36->find_direct_expression( i_type_9913 = t37 ).
      t34 = t35.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = t34.
      IF t40 IS INITIAL.
        t39 = abap_true.
      ENDIF.
      IF t39 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        t38 = t41.
      ELSE.
        DATA t42 TYPE string.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        DATA(t44) = t34.
        t43 = t44.
        t42 = t43->concat_tokens( ).
        DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t45->has = abap_true.
        t45->value = t42.
        t38 = t45.
      ENDIF.
      t33 = t38.
      t32 = t33.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = t32.
      IF t48 IS INITIAL.
        t47 = abap_true.
      ELSEIF t48->has = abap_false.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t46 = t49.
      ELSE.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        DATA(t52) = t32.
        t51 = t52->value.
        DATA(t53) = strlen( t51 ).
        t50 = t51.
        IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t50 TO UPPER CASE.
        ELSE.
          t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
        ENDIF.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t50.
        t46 = t54.
      ENDIF.
      t31 = t46.
      t30 = t31.
      DATA(t55) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zif_lnt_event_definition.
      CLEAR t56.
      DATA t57 TYPE REF TO zif_lnt_event_definition.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t59) = me->events_f95a.
      t58 = t59.
      DATA t60 TYPE i.
      DATA t61 TYPE i.
      DATA(t62) = t58.
      t62->load( ).
      t61 = lines( t62->items ).
      t60 = t61.
      DATA t63 TYPE i.
      DATA(t64) = 0.
      t63 = t64.
      DATA t65 TYPE REF TO zif_lnt_event_definition.
      DATA t66 TYPE REF TO zif_lnt_event_definition.
      CLEAR t66.
      t65 = t66.
      DO.
        DATA t67 TYPE abap_bool.
        DATA(t68) = t63.
        DATA(t69) = t60.
        t67 = xsdbool( t68 < t69 ).
        IF t67 = abap_false.
          EXIT.
        ENDIF.
        DATA t70 TYPE REF TO zif_lnt_event_definition.
        CLEAR t70.
        DATA t71 TYPE REF TO zif_lnt_event_definition.
        CLEAR t71.
        DATA t72 TYPE REF TO zif_lnt_event_definition.
        CLEAR t72.
        DATA(t73) = t58.
        DATA(t74) = t63.
        DATA t75 TYPE REF TO object.
        t75 = t73->get( p0 = t74 ).
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        CLEAR t72.
        IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t76 ?= t75.
          DATA t77 TYPE REF TO object.
          t77 = t76->as_ref( ).
          t72 ?= t77.
        ELSE.
          t72 ?= t75.
        ENDIF.
        t71 = t72.
        t70 = t71.
        DATA(t78) = VALUE abap_bool( ).
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA(t80) = abap_true.
        IF t80 = abap_true.
          DATA t81 TYPE string.
          DATA t82 TYPE string.
          DATA(t83) = t70.
          t82 = t83->get_name( ).
          DATA(t84) = strlen( t82 ).
          t81 = t82.
          IF t81 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t81 TO UPPER CASE.
          ELSE.
            t81 = zlnt_runtime_uppe_91169605024d=>full( t81 ).
          ENDIF.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t81.
          t79 = t85.
        ELSE.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t86.
          t79 = t86.
        ENDIF.
        DATA(t87) = t30.
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = VALUE abap_bool( ).
        IF t79 IS BOUND.
          t88 = t79->has.
        ENDIF.
        IF t87 IS BOUND.
          t89 = t87->has.
        ENDIF.
        IF t88 = t89.
          IF t88 = abap_false.
            t78 = abap_true.
          ELSEIF t79->value = t87->value.
            t78 = abap_true.
          ENDIF.
        ENDIF.
        IF t78 = abap_true.
          DATA t90 TYPE REF TO zif_lnt_event_definition.
          CLEAR t90.
          DATA(t91) = abap_true.
          IF t91 = abap_true.
            DATA(t92) = t70.
            t90 = t92.
          ELSE.
            DATA t93 TYPE REF TO zif_lnt_event_definition.
            CLEAR t93.
            t90 = t93.
          ENDIF.
          t65 = t90.
          EXIT.
        ENDIF.
        DATA t94 TYPE i.
        DATA(t95) = t63.
        DATA(t96) = 1.
        t94 = t95 + t96.
        t63 = t94.
      ENDDO.
      DATA(t97) = t65.
      t57 = t97.
      t56 = t57.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      t98 = t99.
      DATA(t100) = VALUE abap_bool( ).
      DATA(t101) = VALUE abap_bool( ).
      DATA(t102) = t56.
      IF t102 IS INITIAL.
        t101 = abap_true.
      ENDIF.
      t100 = xsdbool( t101 = abap_false ).
      t55 = t100.
      IF t55 = abap_true.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t104) = t1.
        t103 = t104->issues.
        DATA t105 TYPE REF TO zcl_lnt_issue.
        CLEAR t105.
        DATA(t106) = t1.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t108) = t25.
        t107 = t108->get_first_token( ).
        DATA(t109) = VALUE string( ).
        DATA(t110) = VALUE string( ).
        DATA(t111) = |Event |.
        DATA(t112) = VALUE string( ).
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t114) = t30.
        t113 = t114.
        DATA(t115) = VALUE string( ).
        DATA(t116) = VALUE abap_bool( ).
        DATA(t117) = t113.
        IF t117 IS INITIAL.
          t116 = abap_true.
        ELSEIF t117->has = abap_false.
          t116 = abap_true.
        ENDIF.
        IF t116 = abap_true.
          DATA(t118) = |undefined|.
          t115 = t118.
        ELSE.
          DATA t119 TYPE string.
          DATA(t120) = t113.
          t119 = t120->value.
          t115 = t119.
        ENDIF.
        t112 = t115.
        DATA(t121) = strlen( t111 ).
        t110 = |{ t111 }{ t112 }|.
        DATA(t122) = | already defined|.
        DATA(t123) = strlen( t110 ).
        t109 = |{ t110 }{ t122 }|.
        DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t124.
        t105 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t106 i_token = t107 i_message_26cb = t109 i_fix = t124 ).
        t103->load( ).
        APPEND t105 TO t103->items.
        t103->save( ).
        CONTINUE.
      ENDIF.
      DATA(t125) = me->events_f95a.
      DATA t126 TYPE REF TO zcl_lnt_event_definition.
      DATA(t127) = t25.
      DATA(t128) = CONV f( 3 ).
      DATA(t129) = t1.
      t126 = NEW zcl_lnt_event_definition( i_node = t127 i_visibility_33e6 = t128 i_input_967e = t129 ).
      t125->load( ).
      APPEND t126 TO t125->items.
      t125->save( ).
    ENDDO.
    DATA t130 TYPE REF TO zcl_lnt_method_definitions.
    DATA(t131) = t2.
    DATA(t132) = t1.
    t130 = NEW zcl_lnt_method_definitions( i_node = t131 i_input_967e = t132 ).
    me->method_definitions = t130.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methodDefinitions`.
    DATA(t133) = VALUE abap_bool( ).
    DATA t134 TYPE REF TO zif_lnt_method_definition.
    CLEAR t134.
    DATA t135 TYPE REF TO zif_lnt_method_definition.
    CLEAR t135.
    DATA(t136) = me->method_definitions.
    DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t137.
    DATA(t138) = abap_true.
    IF t138 = abap_true.
      DATA(t139) = |CONSTRUCTOR|.
      DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t140->has = abap_true.
      t140->value = t139.
      t137 = t140.
    ELSE.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      t137 = t141.
    ENDIF.
    t135 = t136->get_by_name( i_name = t137 ).
    t134 = t135.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    t142 = t143.
    DATA(t144) = VALUE abap_bool( ).
    DATA(t145) = VALUE abap_bool( ).
    DATA(t146) = t134.
    IF t146 IS INITIAL.
      t145 = abap_true.
    ENDIF.
    t144 = xsdbool( t145 = abap_false ).
    t133 = t144.
    IF t133 = abap_true.
      DATA t147 TYPE REF TO zif_lnt_method_definition.
      CLEAR t147.
      DATA t148 TYPE REF TO zif_lnt_method_definition.
      CLEAR t148.
      DATA t149 TYPE REF TO zif_lnt_method_definition.
      CLEAR t149.
      DATA(t150) = me->method_definitions.
      DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t151.
      DATA(t152) = abap_true.
      IF t152 = abap_true.
        DATA(t153) = |CONSTRUCTOR|.
        DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t154->has = abap_true.
        t154->value = t153.
        t151 = t154.
      ELSE.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        t151 = t155.
      ENDIF.
      t149 = t150->get_by_name( i_name = t151 ).
      t148 = t149.
      t147 = t148.
      DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t157) = t1.
      t156 = t157->issues.
      DATA t158 TYPE REF TO zcl_lnt_issue.
      DATA(t159) = t1.
      DATA t160 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t161) = t147.
      t160 = t161->get_token( ).
      DATA(t162) = |Interfaces cannot have constructor methods|.
      DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t163.
      t158 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t159 i_token = t160 i_message_26cb = t162 i_fix = t163 ).
      t156->load( ).
      APPEND t158 TO t156->items.
      t156->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1060_3f544f5e9b16.
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
ENDCLASS.
