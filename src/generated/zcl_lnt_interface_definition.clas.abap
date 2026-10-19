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
    DATA t5 TYPE REF TO zif_lnt_structure.
    t5 = t1->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    IF xsdbool( xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_sr_interface ) = abap_false ) = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = |InterfaceDefinition, unexpected node type|.
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
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d539_1b20166f6dfe.
    t20 = t1->find_first_statement( i_type_9913 = t23 ).
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
    t16 = t20->find_first_expression( i_type_9913 = t24 )->get_first_token( ).
    DATA(t26) = VALUE string( ).
    t26 = t2->filename.
    super->constructor( i_token = t16 i_filename = t26 ).
    t2->scope->add_interface_definition( i_i = me ).
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    me->events_f95a = t31.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `events`.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    me->implementing = t32.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `implementing`.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
    t37 = t1->find_first_expression( i_type_9913 = t39 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = VALUE abap_bool( ).
    t42 = xsdbool( xsdbool( t37 IS INITIAL ) = abap_false ).
    DATA(t45) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t45->has = abap_true.
    t45->value = t42.
    me->global_value = t45.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalValue`.
    DATA t47 TYPE REF TO zcl_lnt_current_scope.
    t47 = t2->scope.
    DATA(t54) = VALUE string( ).
    t54 = t16->str.
    DATA t61 TYPE REF TO zcl_lnt_position.
    t61 = t1->get_first_token( )->start.
    DATA(t64) = VALUE string( ).
    t64 = t2->filename.
    DATA t66 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t67 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t76 TYPE REF TO zcl_lnt_position.
    t67 = NEW zcl_lnt_iscope_identifier( i_stype = |interface| i_sname = t54 i_filename = t64 i_start = t61 i_end = t76 ).
    CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
    t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t78 ).
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t80 ).
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t81 ).
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t82 ).
    ENDIF.
    CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
    t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |stype| p1 = t84 ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |sname| p1 = t86 ).
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |start| p1 = t88 ).
    ENDIF.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t90 ).
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |end| p1 = t92 ).
    ENDIF.
    t66 = t67.
    DATA t95 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t95 = t47->current.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t95 IS INITIAL ) = abap_true.
      DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t47->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t66 i_parent = t106 ).
      DELETE t47->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t108 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t108 = t47->current.
      t47->current = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t66 i_parent = t108 ).
      DELETE t47->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t124 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t124 = t47->current.
      t108->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t124 ).
    ENDIF.
    me->parse( i_input_967e = t2 i_node = t1 ).
    DATA t128 TYPE REF TO zcl_lnt_spaghetti_scope.
    DATA t129 TYPE REF TO zcl_lnt_current_scope.
    t129 = t2->scope.
    DATA t132 TYPE REF TO zcl_lnt_abstract_token.
    t132 = t1->get_last_token( ).
    DATA(t136) = VALUE f( ).
    t136 = t132->start->row.
    DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t143 = t132->start->col.
    DATA(t149) = VALUE f( ).
    t149 = strlen( t132->str ).
    DATA(t154) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t154->has = abap_true.
    t154->value = t149.
    t128 = t129->pop( i_end = NEW zcl_lnt_position( i_row = t136 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t143 right = t154 op = `+` ) ) ).
    me->check_method_name_length( i_input_967e = t2 ).
  ENDMETHOD.

  METHOD get_super_class.
    CLEAR result.

  ENDMETHOD.

  METHOD get_implementing.
    result = me->implementing.

  ENDMETHOD.

  METHOD get_aliases.
    result = me->aliases_62bb.

  ENDMETHOD.

  METHOD get_events.
    result = me->events_f95a.

  ENDMETHOD.

  METHOD get_attributes.
    result = me->attributes.

  ENDMETHOD.

  METHOD get_type_definitions.
    result = me->type_definitions.

  ENDMETHOD.

  METHOD is_local.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = me->global_value.
    IF t3 IS BOUND.
      IF t3->has = abap_true.
        t2 = xsdbool( t3->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    result = xsdbool( t2 = abap_false ).

  ENDMETHOD.

  METHOD is_global.
    result = me->global_value->value.

  ENDMETHOD.

  METHOD get_method_definitions.
    result = me->method_definitions.

  ENDMETHOD.

  METHOD check_method_name_length.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    t2 = me->method_definitions->get_all( )->iterate( ).
    DO.
      DATA t7 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t7.
      t7 = t2->next( ).
      IF t7->done = abap_true.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zif_lnt_method_definition.
      CLEAR t12.
      t12 = t7->value.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      t18 = abap_false.
      DATA t20 TYPE REF TO cx_root.
      CLEAR t20.
      TRY.
          DATA(t22) = VALUE f( ).
          t22 = strlen( t12->get_name( ) ).
          t17 = xsdbool( t22 > CONV f( 30 ) ).
          t18 = abap_true.
        CATCH cx_root INTO t20.
          IF xsdbool( t18 = abap_false ) = abap_true.
            t2->close( ).
          ENDIF.
          RAISE EXCEPTION t20.
      ENDTRY.
      IF xsdbool( t18 = abap_false ) = abap_true.
        t2->close( ).
      ENDIF.
      IF t17 = abap_true.
        DATA(t36) = VALUE string( ).
        DATA(t38) = VALUE string( ).
        DATA(t39) = VALUE abap_bool( ).
        t39 = abap_false.
        DATA t41 TYPE REF TO cx_root.
        CLEAR t41.
        TRY.
            DATA(t43) = VALUE string( ).
            DATA(t44) = |Method name "|.
            DATA(t45) = VALUE string( ).
            t45 = t12->get_name( ).
            DATA(t47) = strlen( t44 ).
            t43 = |{ t44 }{ t45 }|.
            DATA(t49) = strlen( t43 ).
            t38 = |{ t43 }{ |" is too long, maximum length is 30 characters| }|.
            t39 = abap_true.
          CATCH cx_root INTO t41.
            IF xsdbool( t39 = abap_false ) = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t41.
        ENDTRY.
        IF xsdbool( t39 = abap_false ) = abap_true.
          t2->close( ).
        ENDIF.
        t36 = t38.
        DATA(t58) = VALUE f( ).
        DATA(t59) = VALUE f( ).
        DATA(t60) = VALUE abap_bool( ).
        t60 = abap_false.
        DATA t62 TYPE REF TO cx_root.
        CLEAR t62.
        TRY.
            DATA(t63) = VALUE f( ).
            DATA(t64) = VALUE i( ).
            DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t65.
            t65 = t1->issues.
            DATA t67 TYPE REF TO zcl_lnt_issue.
            CLEAR t67.
            DATA t69 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t69.
            t69 = t12->get_token( ).
            DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t72.
            t67 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t69 i_message_26cb = t36 i_fix = t72 ).
            t65->load( ).
            APPEND t67 TO t65->items.
            t64 = lines( t65->items ).
            t65->save( ).
            t63 = t64.
            t59 = t63.
            t60 = abap_true.
          CATCH cx_root INTO t62.
            IF xsdbool( t60 = abap_false ) = abap_true.
              t2->close( ).
            ENDIF.
            RAISE EXCEPTION t62.
        ENDTRY.
        IF xsdbool( t60 = abap_false ) = abap_true.
          t2->close( ).
        ENDIF.
        t58 = t59.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_interfaces_exists.
    DATA(t1) = i_input_967e.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
    t3 = i_node->find_all_statements( i_type_9913 = t5 ).
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
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t11.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t13.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2.
      t13 = t6->find_direct_expression( i_type_9913 = t16 ).
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      IF xsdbool( t13 IS INITIAL ) = abap_true.
        CLEAR t17.
      ELSE.
        t17 = t13->get_first_token( ).
      ENDIF.
      t11 = t17.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t26.
      t26 = t11.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      IF xsdbool( t26 IS INITIAL ) = abap_true.
        CLEAR t28.
      ELSE.
        DATA(t36) = VALUE string( ).
        t36 = t26->str.
        DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t38->has = abap_true.
        t38->value = t36.
        t28 = t38.
      ENDIF.
      t24 = t28.
      DATA(t39) = VALUE abap_bool( ).
      IF t24 IS BOUND.
        IF t24->has = abap_true.
          t39 = xsdbool( strlen( t24->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t39 = abap_true.
        DATA(t41) = me->implementing.
        DATA t42 TYPE REF TO zcl_lnt_iimplementing.
        CLEAR t42.
        DATA(t43) = VALUE string( ).
        t43 = t24->value.
        t42 = NEW zcl_lnt_iimplementing( i_name = t43 i_partial = abap_false ).
        CREATE OBJECT t42->zlnt_view_ownkeys_b0e8086400eb.
        t42->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t48 ).
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        IF t42->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t42->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `partial` p1 = t49 ).
        ENDIF.
        CREATE OBJECT t42->zlnt_json_ownkeys_70e5fd461788.
        t42->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t51 ).
        DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t53.
        IF t42->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t42->zlnt_json_ownkeys_70e5fd461788->put( p0 = |partial| p1 = t53 ).
        ENDIF.
        t41->load( ).
        APPEND t42 TO t41->items.
        t41->save( ).
        DATA t54 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t54.
        DATA t56 TYPE REF TO zcl_lnt_current_scope.
        CLEAR t56.
        t56 = t1->scope.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA(t62) = VALUE string( ).
        t62 = t24->value.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t62.
        t59 = t64.
        DATA t66 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t66.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t68 = t59.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t70.
        DATA(t72) = VALUE abap_bool( ).
        IF t68 IS INITIAL.
          t72 = abap_true.
        ELSEIF t68->has = abap_false.
          t72 = abap_true.
        ENDIF.
        IF t72 = abap_true.
          CLEAR t66.
        ELSE.
          DATA t76 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t76.
          DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t78.
          t78 = t56->current.
          DATA t81 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t81.
          IF xsdbool( t78 IS INITIAL ) = abap_true.
            CLEAR t81.
          ELSE.
            DATA t86 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            CLEAR t86.
            t86 = t78.
            DATA(t88) = VALUE string( ).
            t88 = t59->value.
            t81 = t86->find_interface_definition( i_name = t88 ).
          ENDIF.
          t76 = t81.
          DATA t90 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t90.
          IF xsdbool( t76 IS BOUND ) = abap_true.
            t90 = t76.
          ELSE.
            DATA t99 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t99.
            DATA t100 TYPE REF TO zcl_lnt_ob_interface.
            CLEAR t100.
            DATA t101 TYPE REF TO zif_lnt_object.
            CLEAR t101.
            DATA t102 TYPE REF TO zif_lnt_registry.
            CLEAR t102.
            t102 = t56->reg.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t107->has = abap_true.
            t107->value = |INTF|.
            t104 = t107.
            DATA(t111) = VALUE string( ).
            t111 = t59->value.
            DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t113->has = abap_true.
            t113->value = t111.
            t101 = t102->get_object( i_type_9913 = t104 i_name = t113 ).
            DATA t115 TYPE REF TO object.
            CLEAR t115.
            t115 = t101.
            t100 ?= t115.
            t99 = t100.
            DATA t116 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t116.
            IF xsdbool( t99 IS BOUND ) = abap_true.
              t116 = t99->def.
            ELSE.
              CLEAR t116.
            ENDIF.
            t90 = t116.
          ENDIF.
          t66 = t90.
        ENDIF.
        t54 = t66.
        IF xsdbool( t54 IS BOUND ) = abap_true.
          DATA t128 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t128.
          t128 = t1->scope.
          DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t131.
          DATA t133 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t133.
          DATA t134 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t134.
          t134 = t54.
          t133 ?= t134.
          t131 = t133.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          CLEAR t137.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t137->sval = |Object|.
          DATA(t139) = CONV string( me->filename ).
          DATA t142 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t142.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          DATA(t146) = VALUE string( ).
          DATA(t147) = VALUE string( ).
          t147 = t24->value.
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
          t143 = t150.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA(t156) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t156->has = abap_true.
          t156->value = |INTF|.
          t152 = t156.
          DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t158.
          CLEAR t158.
          t142 = NEW zcl_lnt_ireference_extras( i_oo_name = t143 i_oo_type = t152 i_found_qualified = t158 ).
          CREATE OBJECT t142->zlnt_view_ownkeys_b0e8086400eb.
          t142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t160 ).
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t161 ).
          ENDIF.
          CREATE OBJECT t142->zlnt_json_ownkeys_70e5fd461788.
          t142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t163 ).
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t165 ).
          ENDIF.
          t128->add_reference( i_usage = t11 i_referencing = t131 i_type_9913 = t137 i_filename = t139 i_extra = t142 ).
        ELSE.
          DATA t172 TYPE REF TO zcl_lnt_current_scope.
          CLEAR t172.
          t172 = t1->scope.
          DATA t174 TYPE REF TO zcl_lnt_ddic.
          CLEAR t174.
          DATA t175 TYPE REF TO zif_lnt_registry.
          CLEAR t175.
          t175 = t172->reg.
          t174 = NEW zcl_lnt_ddic( i_reg_f149 = t175 ).
          DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t177.
          DATA(t180) = VALUE string( ).
          t180 = t24->value.
          DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t182->has = abap_true.
          t182->value = t180.
          t177 = t182.
          DATA(t184) = VALUE abap_bool( ).
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          t186 = t177.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          CLEAR t188.
          DATA(t190) = VALUE abap_bool( ).
          IF t186 IS INITIAL.
            t190 = abap_true.
          ELSEIF t186->has = abap_false.
            t190 = abap_true.
          ENDIF.
          IF t190 = abap_true.
            t184 = abap_true.
          ELSE.
            DATA t194 TYPE REF TO zif_lnt_registry.
            CLEAR t194.
            t194 = t174->reg.
            DATA(t196) = VALUE string( ).
            t196 = t177->value.
            t184 = t194->in_error_namespace( i_name = t196 ).
          ENDIF.
          IF xsdbool( t184 = abap_false ) = abap_true.
            DATA t199 TYPE REF TO zcl_lnt_current_scope.
            CLEAR t199.
            t199 = t1->scope.
            DATA t202 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t202.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            CLEAR t203.
            CREATE OBJECT t203.
            t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t203->sval = |Object (Void)|.
            DATA(t205) = CONV string( me->filename ).
            DATA t206 TYPE REF TO zcl_lnt_ireference_extras.
            CLEAR t206.
            t199->add_reference( i_usage = t11 i_referencing = t202 i_type_9913 = t203 i_filename = t205 i_extra = t206 ).
          ELSE.
            DATA t207 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            CLEAR t207.
            DATA t208 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            CLEAR t208.
            DATA(t211) = VALUE string( ).
            DATA(t212) = VALUE string( ).
            DATA(t213) = |Interface |.
            DATA(t214) = VALUE string( ).
            t214 = t24->value.
            DATA(t216) = strlen( t213 ).
            t212 = |{ t213 }{ t214 }|.
            DATA(t218) = strlen( t212 ).
            t211 = |{ t212 }{ | unknown| }|.
            DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t219->has = abap_true.
            t219->value = t211.
            t208 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t219 ).
            t207 = NEW #( ).
            t207->payload = t208.
            CLEAR t207->source_value.
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
            RAISE EXCEPTION t207.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_node.
    me->check_interfaces_exists( i_input_967e = t1 i_node = t2 ).
    DATA t7 TYPE REF TO zcl_lnt_current_scope.
    t7 = t1->scope.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t9 = NEW zcl_lnt_object_oriented( i_scope = t7 )->from_interfaces( i_definition = me i_skip_34cc = t12 ).
    me->attributes = NEW zcl_lnt_attributes( i_node = t2 i_input_967e = t1 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `attributes`.
    me->type_definitions = me->attributes->get_types( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `typeDefinitions`.
    me->aliases_62bb = me->attributes->get_aliases( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `aliases`.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
    t20 = t2->find_all_statements( i_type_9913 = t23 ).
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    DATA t26 TYPE REF TO object.
    DATA(t27) = VALUE i( ).
    DO.
      t20->load( ).
      IF t27 >= lines( t20->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t20->items INDEX t27 + 1 INTO t26.
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
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
      t34 = t25->find_direct_expression( i_type_9913 = t37 ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      IF xsdbool( t34 IS INITIAL ) = abap_true.
        CLEAR t38.
      ELSE.
        DATA t42 TYPE string.
        t42 = t34->concat_tokens( ).
        DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t45->has = abap_true.
        t45->value = t42.
        t38 = t45.
      ENDIF.
      t32 = t38.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t47) = VALUE abap_bool( ).
      IF t32 IS INITIAL.
        t47 = abap_true.
      ELSEIF t32->has = abap_false.
        t47 = abap_true.
      ENDIF.
      IF t47 = abap_true.
        CLEAR t46.
      ELSE.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        t51 = t32->value.
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
      t30 = t46.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t58 = me->events_f95a.
      DATA t60 TYPE i.
      t58->load( ).
      t60 = lines( t58->items ).
      DATA t63 TYPE i.
      t63 = 0.
      DATA t65 TYPE REF TO zif_lnt_event_definition.
      CLEAR t65.
      DO.
        IF xsdbool( t63 < t60 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t70 TYPE REF TO zif_lnt_event_definition.
        CLEAR t70.
        DATA t72 TYPE REF TO zif_lnt_event_definition.
        CLEAR t72.
        DATA t75 TYPE REF TO object.
        t75 = t58->get( p0 = t63 ).
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
        t70 = t72.
        DATA(t78) = VALUE abap_bool( ).
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        t82 = t70->get_name( ).
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
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = VALUE abap_bool( ).
        IF t79 IS BOUND.
          t88 = t79->has.
        ENDIF.
        IF t30 IS BOUND.
          t89 = t30->has.
        ENDIF.
        IF t88 = t89.
          IF t88 = abap_false.
            t78 = abap_true.
          ELSEIF t79->value = t30->value.
            t78 = abap_true.
          ENDIF.
        ENDIF.
        IF t78 = abap_true.
          t65 = t70.
          EXIT.
        ENDIF.
        DATA(t96) = 1.
        t63 = t63 + t96.
      ENDDO.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      IF xsdbool( xsdbool( t65 IS INITIAL ) = abap_false ) = abap_true.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t103 = t1->issues.
        DATA t105 TYPE REF TO zcl_lnt_issue.
        CLEAR t105.
        DATA t107 TYPE REF TO zcl_lnt_abstract_token.
        t107 = t25->get_first_token( ).
        DATA(t109) = VALUE string( ).
        DATA(t110) = VALUE string( ).
        DATA(t111) = |Event |.
        DATA(t112) = VALUE string( ).
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t113 = t30.
        DATA(t115) = VALUE string( ).
        DATA(t116) = VALUE abap_bool( ).
        IF t113 IS INITIAL.
          t116 = abap_true.
        ELSEIF t113->has = abap_false.
          t116 = abap_true.
        ENDIF.
        IF t116 = abap_true.
          t115 = |undefined|.
        ELSE.
          t115 = t113->value.
        ENDIF.
        t112 = t115.
        DATA(t121) = strlen( t111 ).
        t110 = |{ t111 }{ t112 }|.
        DATA(t123) = strlen( t110 ).
        t109 = |{ t110 }{ | already defined| }|.
        DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t124.
        t105 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t107 i_message_26cb = t109 i_fix = t124 ).
        t103->load( ).
        APPEND t105 TO t103->items.
        t103->save( ).
        CONTINUE.
      ENDIF.
      DATA(t125) = me->events_f95a.
      DATA t126 TYPE REF TO zcl_lnt_event_definition.
      t126 = NEW zcl_lnt_event_definition( i_node = t25 i_visibility_33e6 = CONV f( 3 ) i_input_967e = t1 ).
      t125->load( ).
      APPEND t126 TO t125->items.
      t125->save( ).
    ENDDO.
    me->method_definitions = NEW zcl_lnt_method_definitions( i_node = t2 i_input_967e = t1 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methodDefinitions`.
    DATA t135 TYPE REF TO zif_lnt_method_definition.
    DATA(t136) = me->method_definitions.
    DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t140->has = abap_true.
    t140->value = |CONSTRUCTOR|.
    t135 = t136->get_by_name( i_name = t140 ).
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t135 IS INITIAL ) = abap_false ) = abap_true.
      DATA t149 TYPE REF TO zif_lnt_method_definition.
      DATA(t150) = me->method_definitions.
      DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t154->has = abap_true.
      t154->value = |CONSTRUCTOR|.
      t149 = t150->get_by_name( i_name = t154 ).
      DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t156 = t1->issues.
      DATA t158 TYPE REF TO zcl_lnt_issue.
      DATA t163 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t158 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t1 i_token = t149->get_token( ) i_message_26cb = |Interfaces cannot have constructor methods| i_fix = t163 ).
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
