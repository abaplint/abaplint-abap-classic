* TS: src/abap/5_syntax/_current_scope.ts:28:1 CurrentScope
CLASS zcl_lnt_current_scope DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA current TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA allow_header_use TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA parent_obj TYPE REF TO zif_lnt_object.
    DATA local_friends TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_obj_1ed0 TYPE REF TO zif_lnt_object.
    CLASS-METHODS build_default IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zcl_lnt_current_scope.
    CLASS-METHODS add_built_in IMPORTING i_s TYPE REF TO zcl_lnt_current_scope i_extras TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_release RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_release.
    METHODS get_version RETURNING VALUE(result) TYPE string.
    METHODS get_language_version RETURNING VALUE(result) TYPE string.
    METHODS get_open_abap RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_registry.
    METHODS add_type IMPORTING i_type_9913 TYPE REF TO zcl_lnt_typed_identifier.
    METHODS add_type_named IMPORTING i_name TYPE string i_type_9913 TYPE REF TO zcl_lnt_typed_identifier.
    METHODS add_extra_like_type IMPORTING i_type_9913 TYPE REF TO zcl_lnt_typed_identifier.
    METHODS add_extra_like_type_named IMPORTING i_name TYPE string i_type_9913 TYPE REF TO zcl_lnt_typed_identifier.
    METHODS add_class_definition IMPORTING i_c TYPE REF TO zif_lnt_class_definition.
    METHODS add_form_definitions IMPORTING i_f TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS update_form_definition IMPORTING i_f TYPE REF TO zif_lnt_form_definition.
    METHODS add_interface_definition IMPORTING i_i TYPE REF TO zif_lnt_interface_definition.
    METHODS add_named_identifier IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_typed_identifier.
    METHODS add_named_identifier_to_parent IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_typed_identifier.
    METHODS add_identifier IMPORTING i_identifier TYPE REF TO zcl_lnt_typed_identifier.
    METHODS add_deferred IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_type_9913 TYPE string.
    METHODS add_list_prefix IMPORTING i_identifiers TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_prefix TYPE string.
    METHODS add_list IMPORTING i_identifiers TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS add_reference IMPORTING i_usage TYPE REF TO zcl_lnt_abstract_token i_referencing TYPE REF TO zcl_lnt_fi_identifier i_type_9913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_filename TYPE string i_extra TYPE REF TO zcl_lnt_ireference_extras.
    METHODS add_sql_conversion IMPORTING i_field_name TYPE string i_message_26cb TYPE string i_token TYPE REF TO zcl_lnt_abstract_token.
    METHODS find_function_module IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    METHODS find_object_definition IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_interface_definition.
    METHODS find_behavior_definition RETURNING VALUE(result) TYPE REF TO zcl_lnt_behavior_definition.
    METHODS is_badi_def IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS exists_object IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_59e28496.
    METHODS find_class_definition IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_class_definition.
    METHODS find_type_pool_constant IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_type_pool_type IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_interface_definition IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zif_lnt_interface_definition.
    METHODS find_form_definition IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_form_definition.
    METHODS find_type IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_extra_like_type IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_variable IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS find_returning_parameter RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS get_ddic RETURNING VALUE(result) TYPE REF TO zcl_lnt_ddic.
    METHODS get_ddic_references RETURNING VALUE(result) TYPE REF TO zif_lnt_ddic_references.
    METHODS get_msag_references RETURNING VALUE(result) TYPE REF TO zif_lnt_msag_references.
    METHODS get_parent_obj RETURNING VALUE(result) TYPE REF TO zif_lnt_object.
    METHODS get_name RETURNING VALUE(result) TYPE string.
    METHODS get_type RETURNING VALUE(result) TYPE string.
    METHODS push IMPORTING i_stype TYPE string i_sname TYPE string i_start TYPE REF TO zcl_lnt_position i_filename TYPE string.
    METHODS is_oo RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_any_oo RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_in_static_method RETURNING VALUE(result) TYPE abap_bool.
    METHODS add_local_friend IMPORTING i_class_name TYPE string i_friend_name TYPE string.
    METHODS is_local_friend IMPORTING i_class_name TYPE string i_friend_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_enclosing_class_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS is_global_oo RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_type_pool RETURNING VALUE(result) TYPE abap_bool.
    METHODS set_allow_header_use IMPORTING i_name TYPE string.
    METHODS is_allow_header_use IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS pop IMPORTING i_end TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_spaghetti_scope.
    METHODS add_form_definitions_one IMPORTING i_x TYPE REF TO zif_lnt_form_definition.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_current_scope IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    me->local_friends = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `localFriends`.
    DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t4.
    me->current = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    DATA(t5) = t2.
    me->parent_obj = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parentObj`.
    DATA(t6) = t1.
    me->reg = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD build_default.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_current_scope.
    DATA t4 TYPE REF TO zcl_lnt_current_scope.
    DATA(t5) = t1.
    DATA(t6) = t2.
    t4 = NEW zcl_lnt_current_scope( i_reg_f149 = t5 i_obj_1ed0 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_current_scope.
    DATA(t8) = t3.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = CONV f( 1 ).
    DATA(t12) = CONV f( 1 ).
    DATA(t13) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t13->has = abap_true.
    t13->value = t12.
    t10 = NEW zcl_lnt_position( i_row = t11 i_col = t13 ).
    t9 = t10.
    DATA t14 TYPE string.
    DATA(t15) = CONV string( zcl_lnt_built_in=>filename ).
    t14 = t15.
    DATA t16 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t18 TYPE string.
    DATA(t19) = |_builtin|.
    t18 = t19.
    DATA t20 TYPE string.
    DATA(t21) = |_builtin|.
    t20 = t21.
    DATA t22 TYPE REF TO zcl_lnt_position.
    DATA(t23) = t9.
    t22 = t23.
    DATA t24 TYPE string.
    DATA(t25) = t14.
    t24 = t25.
    DATA t26 TYPE REF TO zcl_lnt_position.
    DATA t27 TYPE REF TO zcl_lnt_position.
    CLEAR t27.
    t26 = t27.
    t17 = NEW zcl_lnt_iscope_identifier( i_stype = t18 i_sname = t20 i_filename = t24 i_start = t22 i_end = t26 ).
    CREATE OBJECT t17->zlnt_view_ownkeys_b0e8086400eb.
    t17->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t32 ).
    ENDIF.
    CREATE OBJECT t17->zlnt_json_ownkeys_70e5fd461788.
    t17->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t33) = |stype|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
    ENDIF.
    DATA(t35) = |sname|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    DATA(t37) = |start|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |filename|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |end|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    t16 = t17.
    DATA(t43) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t46) = t7.
    t45 = t46->current.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    t47 = t48.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = t44.
    IF t50 IS INITIAL.
      t49 = abap_true.
    ENDIF.
    t43 = t49.
    IF t43 = abap_true.
      DATA(t51) = t7.
      DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t52.
      DATA(t53) = abap_true.
      IF t53 = abap_true.
        DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t55) = t16.
        DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t56.
        t54 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t55 i_parent = t56 ).
        t52 = t54.
      ELSE.
        DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t57.
        t52 = t57.
      ENDIF.
      t51->current = t52.
      DELETE t51->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t59 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t60 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t61) = t7.
      t60 = t61->current.
      t59 = t60.
      t58 = t59.
      DATA(t62) = t7.
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t63.
      DATA(t64) = abap_true.
      IF t64 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t65.
        DATA(t66) = t16.
        DATA t67 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = t58.
          t67 = t69.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t70.
          t67 = t70.
        ENDIF.
        t65 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t66 i_parent = t67 ).
        t63 = t65.
      ELSE.
        DATA t71 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t71.
        t63 = t71.
      ENDIF.
      t62->current = t63.
      DELETE t62->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t72) = t58.
      DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t74 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t75) = t7.
      t74 = t75->current.
      t73 = t74.
      t72->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t73 ).
    ENDIF.
    DATA(t76) = t3.
    DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t79 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA t80 TYPE REF TO zif_lnt_configuration.
    DATA(t81) = t1.
    t80 = t81->get_config( ).
    t79 = t80->get_syntax_setttings( ).
    t78 = t79->zlnt_view_read_sr_3e1871ae1d38( ).
    t77 = t78.
    zcl_lnt_current_scope=>add_built_in( i_s = t76 i_extras = t77 ).
    DATA t82 TYPE string.
    DATA(t83) = |_global|.
    t82 = t83.
    DATA t84 TYPE abap_bool.
    DATA(t85) = t2.
    t84 = xsdbool( t85 IS BOUND ).
    IF t84 = abap_true.
      DATA t86 TYPE string.
      DATA t87 TYPE string.
      DATA(t88) = t82.
      DATA(t89) = |_|.
      DATA(t90) = strlen( t88 ).
      t87 = |{ t88 }{ t89 }|.
      DATA t91 TYPE string.
      DATA(t92) = t2.
      t91 = t92->get_name( ).
      DATA(t93) = strlen( t87 ).
      t86 = |{ t87 }{ t91 }|.
      t82 = t86.
    ENDIF.
    DATA t94 TYPE REF TO zcl_lnt_current_scope.
    DATA(t95) = t3.
    t94 = t95.
    DATA t96 TYPE string.
    DATA(t97) = t82.
    t96 = t97.
    DATA t98 TYPE REF TO zcl_lnt_position.
    DATA t99 TYPE REF TO zcl_lnt_position.
    DATA(t100) = CONV f( 1 ).
    DATA(t101) = CONV f( 1 ).
    DATA(t102) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t102->has = abap_true.
    t102->value = t101.
    t99 = NEW zcl_lnt_position( i_row = t100 i_col = t102 ).
    t98 = t99.
    DATA t103 TYPE string.
    DATA(t104) = t82.
    t103 = t104.
    DATA t105 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t105.
    DATA t106 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t107 TYPE string.
    DATA(t108) = |_global|.
    t107 = t108.
    DATA t109 TYPE string.
    DATA(t110) = t96.
    t109 = t110.
    DATA t111 TYPE REF TO zcl_lnt_position.
    DATA(t112) = t98.
    t111 = t112.
    DATA t113 TYPE string.
    DATA(t114) = t103.
    t113 = t114.
    DATA t115 TYPE REF TO zcl_lnt_position.
    DATA t116 TYPE REF TO zcl_lnt_position.
    CLEAR t116.
    t115 = t116.
    t106 = NEW zcl_lnt_iscope_identifier( i_stype = t107 i_sname = t109 i_filename = t113 i_start = t111 i_end = t115 ).
    CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
    t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t117 ).
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t118 ).
    ENDIF.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t119 ).
    ENDIF.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t120 ).
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t121 ).
    ENDIF.
    CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
    t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t122) = |stype|.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
    ENDIF.
    DATA(t124) = |sname|.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
    ENDIF.
    DATA(t126) = |start|.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
    ENDIF.
    DATA(t128) = |filename|.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
    ENDIF.
    DATA(t130) = |end|.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
    ENDIF.
    t105 = t106.
    DATA(t132) = VALUE abap_bool( ).
    DATA t133 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t134 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t135) = t94.
    t134 = t135->current.
    t133 = t134.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    t136 = t137.
    DATA(t138) = VALUE abap_bool( ).
    DATA(t139) = t133.
    IF t139 IS INITIAL.
      t138 = abap_true.
    ENDIF.
    t132 = t138.
    IF t132 = abap_true.
      DATA(t140) = t94.
      DATA t141 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t141.
      DATA(t142) = abap_true.
      IF t142 = abap_true.
        DATA t143 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t144) = t105.
        DATA t145 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t145.
        t143 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t144 i_parent = t145 ).
        t141 = t143.
      ELSE.
        DATA t146 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t146.
        t141 = t146.
      ENDIF.
      t140->current = t141.
      DELETE t140->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t147 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t148 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t149 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t150) = t94.
      t149 = t150->current.
      t148 = t149.
      t147 = t148.
      DATA(t151) = t94.
      DATA t152 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t152.
      DATA(t153) = abap_true.
      IF t153 = abap_true.
        DATA t154 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t154.
        DATA(t155) = t105.
        DATA t156 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t156.
        DATA(t157) = abap_true.
        IF t157 = abap_true.
          DATA(t158) = t147.
          t156 = t158.
        ELSE.
          DATA t159 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t159.
          t156 = t159.
        ENDIF.
        t154 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t155 i_parent = t156 ).
        t152 = t154.
      ELSE.
        DATA t160 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t160.
        t152 = t160.
      ENDIF.
      t151->current = t152.
      DELETE t151->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t161) = t147.
      DATA t162 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t163 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t164) = t94.
      t163 = t164->current.
      t162 = t163.
      t161->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t162 ).
    ENDIF.
    DATA(t165) = t3.
    result = t165.

  ENDMETHOD.

  METHOD add_built_in.
    DATA(t1) = i_s.
    DATA(t2) = i_extras.
    DATA t3 TYPE REF TO zcl_lnt_built_in.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_built_in.
    CLEAR t4.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4 = NEW zcl_lnt_built_in( ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t3.
    DATA(t8) = t2.
    t6 = t7->get_db65( i_extras = t8 ).
    t5 = t6.
    DATA(t9) = t1.
    DATA(t10) = t5.
    t9->add_list( i_identifiers = t10 ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_built_in.
    DATA(t13) = t3.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t17 = zcl_lnt_built_in=>types_cache.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    t18 = t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t16.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    t15 = t20.
    IF t15 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = t12.
      t23 = t24->build_sy( ).
      t22 = t23.
      DATA t25 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t26 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA(t28) = CONV f( 1 ).
      DATA(t29) = CONV f( 1 ).
      DATA(t30) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = NEW zcl_lnt_position( i_row = t28 i_col = t30 ).
      DATA(t31) = |abap_bool|.
      t26 = NEW zcl_lnt_lx_identifier( i_start = t27 i_str = t31 ).
      t25 = t26.
      DATA(t32) = t22.
      DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t33.
      DATA(t34) = t25.
      DATA(t35) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t36 TYPE REF TO zcl_lnt_character_type.
      CLEAR t36.
      DATA(t37) = CONV f( 1 ).
      DATA t38 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t38.
      DATA(t39) = abap_true.
      IF t39 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA(t43) = abap_true.
        IF t43 = abap_true.
          DATA(t44) = |ABAP_BOOL|.
          DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t45->has = abap_true.
          t45->value = t44.
          t42 = t45.
        ELSE.
          DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t46.
          t42 = t46.
        ENDIF.
        t41 = t42.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA(t50) = |ABAP_BOOL|.
          DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t51->has = abap_true.
          t51->value = t50.
          t48 = t51.
        ELSE.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t48 = t52.
        ENDIF.
        t47 = t48.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        t53 = t54.
        DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t56.
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        t57 = t58.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t59 = t60.
        t40 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t41 i_conversion_exit = t53 i_derived_from_constant = t55 i_ddic_name = t47 i_rtti_name = t57 i_description = t59 ).
        CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
        t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t61 ).
        ENDIF.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t62 ).
        ENDIF.
        CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
        t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t63) = |qualifiedName|.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
        ENDIF.
        DATA(t65) = |ddicName|.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
        ENDIF.
        t38 = t40.
      ELSE.
        DATA t67 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t67.
        t38 = t67.
      ENDIF.
      t36 = NEW zcl_lnt_character_type( i_length = t37 i_extra = t38 ).
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t33 = NEW zcl_lnt_typed_identifier( i_token = t34 i_filename = t35 i_type_9913 = t36 i_meta = t68 i_value = t69 ).
      t32->load( ).
      APPEND t33 TO t32->items.
      t32->save( ).
      DATA t70 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t71 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t72 TYPE REF TO zcl_lnt_position.
      DATA(t73) = CONV f( 1 ).
      DATA(t74) = CONV f( 1 ).
      DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t75->has = abap_true.
      t75->value = t74.
      t72 = NEW zcl_lnt_position( i_row = t73 i_col = t75 ).
      DATA(t76) = |cursor|.
      t71 = NEW zcl_lnt_lx_identifier( i_start = t72 i_str = t76 ).
      t70 = t71.
      DATA(t77) = t22.
      DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t78.
      DATA(t79) = t70.
      DATA(t80) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t81 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t81.
      DATA t82 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t82.
      DATA(t83) = abap_true.
      IF t83 = abap_true.
        DATA t84 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA(t87) = abap_true.
        IF t87 = abap_true.
          DATA(t88) = |CURSOR|.
          DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t89->has = abap_true.
          t89->value = t88.
          t86 = t89.
        ELSE.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          t86 = t90.
        ENDIF.
        t85 = t86.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        DATA(t93) = abap_true.
        IF t93 = abap_true.
          DATA(t94) = |CURSOR|.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = t94.
          t92 = t95.
        ELSE.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t92 = t96.
        ENDIF.
        t91 = t92.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t97 = t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t100 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t100.
        t99 = t100.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        t101 = t102.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t103 = t104.
        t84 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t85 i_conversion_exit = t97 i_derived_from_constant = t99 i_ddic_name = t91 i_rtti_name = t101 i_description = t103 ).
        CREATE OBJECT t84->zlnt_view_ownkeys_b0e8086400eb.
        t84->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t106 ).
        ENDIF.
        CREATE OBJECT t84->zlnt_json_ownkeys_70e5fd461788.
        t84->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t107) = |qualifiedName|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |ddicName|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        t82 = t84.
      ELSE.
        DATA t111 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t111.
        t82 = t111.
      ENDIF.
      t81 = zcl_lnt_integer_type=>get_db65( i_input_967e = t82 ).
      DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t112.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      t78 = NEW zcl_lnt_typed_identifier( i_token = t79 i_filename = t80 i_type_9913 = t81 i_meta = t112 i_value = t113 ).
      t77->load( ).
      APPEND t78 TO t77->items.
      t77->save( ).
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t114.
      DATA(t115) = abap_true.
      IF t115 = abap_true.
        DATA(t116) = t22.
        t114 = t116.
      ELSE.
        DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t117.
        t114 = t117.
      ENDIF.
      zcl_lnt_built_in=>types_cache = t114.
    ENDIF.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t119.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t119 = zcl_lnt_built_in=>types_cache.
    t118 = t119.
    t14 = t118.
    t11 = t14.
    DATA t120 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t120.
    DATA t121 TYPE REF TO object.
    CLEAR t121.
    DATA(t122) = VALUE i( ).
    DO.
      t11->load( ).
      IF t122 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t121.
      READ TABLE t11->items INDEX t122 + 1 INTO t121.
      t122 = t122 + 1.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      CLEAR t120.
      IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t123 ?= t121.
        DATA t124 TYPE REF TO object.
        t124 = t123->as_ref( ).
        t120 ?= t124.
      ELSE.
        t120 ?= t121.
      ENDIF.
      DATA t125 TYPE REF TO zcl_lnt_current_scope.
      DATA(t126) = t1.
      t125 = t126.
      DATA t127 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t127.
      DATA t128 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t128.
      DATA(t129) = abap_true.
      IF t129 = abap_true.
        DATA(t130) = t120.
        t128 = t130.
      ELSE.
        DATA t131 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t131.
        t128 = t131.
      ENDIF.
      t127 = t128.
      DATA(t132) = VALUE abap_bool( ).
      DATA t133 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t134) = t127.
      t133 = t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      t135 = t136.
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = t133.
      IF t138 IS INITIAL.
        t137 = abap_true.
      ENDIF.
      t132 = t137.
      IF t132 = abap_true.
      ELSE.
        DATA(t139) = t125.
        DATA(t140) = VALUE string( ).
        DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t142 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t143) = t127.
        t142 = t143.
        t141 = t142.
        DATA(t144) = VALUE string( ).
        DATA t145 TYPE string.
        DATA t146 TYPE string.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        DATA t148 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t149) = t141.
        t148 = t149->token.
        t147 = t148.
        DATA t150 TYPE string.
        DATA(t151) = t147.
        t150 = t151->str.
        t146 = t150.
        t145 = t146.
        DATA(t152) = VALUE abap_bool( ).
        DATA(t153) = VALUE string( ).
        DATA(t154) = t145.
        DATA(t155) = 0.
        DATA(t156) = 1.
        DATA(t157) = strlen( t154 ).
        IF t155 < 0.
          t155 = t155 + t157.
          IF t155 < 0.
            t155 = 0.
          ENDIF.
        ENDIF.
        IF t155 > t157 OR t156 <= 0.
          CLEAR t153.
        ELSE.
          IF t156 > t157 - t155.
            t156 = t157 - t155.
          ENDIF.
          t153 = t154+t155(t156).
        ENDIF.
        DATA(t158) = |!|.
        t152 = xsdbool( t153 = t158 ).
        IF t152 = abap_true.
          DATA(t159) = VALUE string( ).
          DATA t160 TYPE string.
          DATA(t161) = t145.
          t160 = t161.
          DATA(t162) = VALUE string( ).
          DATA(t163) = t160.
          DATA(t164) = 1.
          DATA t165 TYPE i.
          DATA(t166) = t160.
          DATA(t167) = strlen( t166 ).
          t165 = t167.
          DATA(t168) = strlen( t163 ).
          IF t164 < 0.
            t164 = t164 + t168.
            IF t164 < 0.
              t164 = 0.
            ENDIF.
          ENDIF.
          IF t164 > t168 OR t165 <= 0.
            CLEAR t162.
          ELSE.
            IF t165 > t168 - t164.
              t165 = t168 - t164.
            ENDIF.
            t162 = t163+t164(t165).
          ENDIF.
          t159 = t162.
          t145 = t159.
        ENDIF.
        DATA(t169) = t145.
        t144 = t169.
        t140 = t144.
        DATA t170 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t170.
        DATA(t171) = abap_true.
        IF t171 = abap_true.
          DATA t172 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t173) = t127.
          t172 = t173.
          t170 = t172.
        ELSE.
          DATA t174 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t174.
          t170 = t174.
        ENDIF.
        t139->add_type_named( i_name = t140 i_type_9913 = t170 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_release.
    DATA t1 TYPE REF TO zcl_lnt_abap_release.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = me->reg.
    t2 = t3->get_config( ).
    t1 = t2->get_release( ).
    result = t1.

  ENDMETHOD.

  METHOD get_version.
    DATA t1 TYPE string.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = me->reg.
    t2 = t3->get_config( ).
    t1 = t2->get_version( ).
    result = t1.

  ENDMETHOD.

  METHOD get_language_version.
    DATA t1 TYPE string.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = me->reg.
    t2 = t3->get_config( ).
    t1 = t2->get_language_version( ).
    result = t1.

  ENDMETHOD.

  METHOD get_open_abap.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = me->reg.
    t2 = t3->get_config( ).
    t1 = t2->is_open_abap( ).
    result = t1.

  ENDMETHOD.

  METHOD get_registry.
    DATA(t1) = me->reg.
    result = t1.

  ENDMETHOD.

  METHOD add_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t12) = t1.
    t11 = t12.
    t10 = t11.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t10.
    t17 = t18->token.
    t16 = t17.
    DATA t19 TYPE string.
    DATA(t20) = t16.
    t19 = t20->str.
    t15 = t19.
    t14 = t15.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE string( ).
    DATA(t23) = t14.
    DATA(t24) = 0.
    DATA(t25) = 1.
    DATA(t26) = strlen( t23 ).
    IF t24 < 0.
      t24 = t24 + t26.
      IF t24 < 0.
        t24 = 0.
      ENDIF.
    ENDIF.
    IF t24 > t26 OR t25 <= 0.
      CLEAR t22.
    ELSE.
      IF t25 > t26 - t24.
        t25 = t26 - t24.
      ENDIF.
      t22 = t23+t24(t25).
    ENDIF.
    DATA(t27) = |!|.
    t21 = xsdbool( t22 = t27 ).
    IF t21 = abap_true.
      DATA(t28) = VALUE string( ).
      DATA t29 TYPE string.
      DATA(t30) = t14.
      t29 = t30.
      DATA(t31) = VALUE string( ).
      DATA(t32) = t29.
      DATA(t33) = 1.
      DATA t34 TYPE i.
      DATA(t35) = t29.
      DATA(t36) = strlen( t35 ).
      t34 = t36.
      DATA(t37) = strlen( t32 ).
      IF t33 < 0.
        t33 = t33 + t37.
        IF t33 < 0.
          t33 = 0.
        ENDIF.
      ENDIF.
      IF t33 > t37 OR t34 <= 0.
        CLEAR t31.
      ELSE.
        IF t34 > t37 - t33.
          t34 = t37 - t33.
        ENDIF.
        t31 = t32+t33(t34).
      ENDIF.
      t28 = t31.
      t14 = t28.
    ENDIF.
    DATA(t38) = t14.
    t13 = t38.
    t9 = t13.
    DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t42) = t1.
      t41 = t42.
      t39 = t41.
    ELSE.
      DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t43.
      t39 = t43.
    ENDIF.
    me->add_type_named( i_name = t9 i_type_9913 = t39 ).
  ENDMETHOD.

  METHOD add_type_named.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA(t5) = t2.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t11.
    DATA(t12) = me->current.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      RETURN.
    ENDIF.
    DATA(t17) = VALUE string( ).
    DATA(t18) = VALUE string( ).
    DATA(t19) = t1.
    DATA(t20) = strlen( t19 ).
    t18 = t19.
    IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t18 TO UPPER CASE.
    ELSE.
      t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
    ENDIF.
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t27.
    DATA(t28) = me->current.
    t27 = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t29.
    DATA(t30) = t26.
    t29 = t30->data_56cc.
    t25 = t29.
    t24 = t25->types.
    DATA(t31) = t17.
    t23 = t24->get( p0 = t31 ).
    t22 = t23.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t22.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    t34 = xsdbool( t35 = abap_false ).
    t21 = t34.
    IF t21 = abap_true.
      DATA t37 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA(t41) = VALUE string( ).
        DATA(t42) = VALUE string( ).
        DATA(t43) = |Type name "|.
        DATA(t44) = t1.
        DATA(t45) = strlen( t43 ).
        t42 = |{ t43 }{ t44 }|.
        DATA(t46) = |" already defined|.
        DATA(t47) = strlen( t42 ).
        t41 = |{ t42 }{ t46 }|.
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t41.
        t39 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t39 = t49.
      ENDIF.
      t38 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t39 ).
      t37 = NEW #( ).
      t37->payload = t38.
      CLEAR t37->source_value.
      IF t38 IS BOUND.
        DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t50.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        CLEAR t50.
        t51 = t38.
        TRY.
            t37->source_value ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37->source_value IS NOT BOUND.
          TRY.
              t50 ?= t38.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50 IS BOUND.
            t37->source_value = t50->source( ).
          ENDIF.
          IF t37->source_value IS NOT BOUND.
            CREATE OBJECT t37->source_value.
            t37->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t37->source_value->oval = t38.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t37.
    ELSE.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = CONV abap_bool( me->is_oo( ) ).
      t52 = t53.
      IF t53 = abap_true.
        DATA(t54) = VALUE abap_bool( ).
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t55.
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t56.
        DATA t57 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        CLEAR t57.
        DATA t58 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t58.
        DATA t59 TYPE REF TO zcl_lnt_scope_data.
        CLEAR t59.
        DATA t60 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t60.
        DATA(t61) = me->current.
        t60 = t61.
        t59 = t60.
        DATA t62 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t62.
        DATA(t63) = t59.
        t62 = t63->data_56cc.
        t58 = t62.
        t57 = t58->vars.
        DATA(t64) = t17.
        t56 = t57->get( p0 = t64 ).
        t55 = t56.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        t65 = t66.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = VALUE abap_bool( ).
        DATA(t69) = t55.
        IF t69 IS INITIAL.
          t68 = abap_true.
        ENDIF.
        t67 = xsdbool( t68 = abap_false ).
        t54 = t67.
        t52 = t54.
      ENDIF.
      IF t52 = abap_true.
        DATA t70 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t71.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA(t73) = abap_true.
        IF t73 = abap_true.
          DATA(t74) = VALUE string( ).
          DATA(t75) = VALUE string( ).
          DATA(t76) = |"|.
          DATA(t77) = t1.
          DATA(t78) = strlen( t76 ).
          t75 = |{ t76 }{ t77 }|.
          DATA(t79) = |" already defined|.
          DATA(t80) = strlen( t75 ).
          t74 = |{ t75 }{ t79 }|.
          DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t81->has = abap_true.
          t81->value = t74.
          t72 = t81.
        ELSE.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          t72 = t82.
        ENDIF.
        t71 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t72 ).
        t70 = NEW #( ).
        t70->payload = t71.
        CLEAR t70->source_value.
        IF t71 IS BOUND.
          DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t83.
          DATA t84 TYPE REF TO object.
          CLEAR t84.
          CLEAR t83.
          t84 = t71.
          TRY.
              t70->source_value ?= t84.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t70->source_value IS NOT BOUND.
            TRY.
                t83 ?= t71.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t83 IS BOUND.
              t70->source_value = t83->source( ).
            ENDIF.
            IF t70->source_value IS NOT BOUND.
              CREATE OBJECT t70->source_value.
              t70->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t70->source_value->oval = t71.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t70.
      ENDIF.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t86.
    DATA t87 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t87.
    DATA t88 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t88.
    DATA t89 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t89.
    DATA(t90) = me->current.
    t89 = t90.
    t88 = t89.
    DATA t91 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t91.
    DATA(t92) = t88.
    t91 = t92->data_56cc.
    t87 = t91.
    t86 = t87->types.
    DATA(t93) = t17.
    DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t94.
    DATA(t95) = t2.
    t94 = t95.
    t85 = t86->set( p0 = t93 p1 = t94 ).
  ENDMETHOD.

  METHOD add_extra_like_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t12) = t1.
    t11 = t12.
    t10 = t11.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t10.
    t17 = t18->token.
    t16 = t17.
    DATA t19 TYPE string.
    DATA(t20) = t16.
    t19 = t20->str.
    t15 = t19.
    t14 = t15.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE string( ).
    DATA(t23) = t14.
    DATA(t24) = 0.
    DATA(t25) = 1.
    DATA(t26) = strlen( t23 ).
    IF t24 < 0.
      t24 = t24 + t26.
      IF t24 < 0.
        t24 = 0.
      ENDIF.
    ENDIF.
    IF t24 > t26 OR t25 <= 0.
      CLEAR t22.
    ELSE.
      IF t25 > t26 - t24.
        t25 = t26 - t24.
      ENDIF.
      t22 = t23+t24(t25).
    ENDIF.
    DATA(t27) = |!|.
    t21 = xsdbool( t22 = t27 ).
    IF t21 = abap_true.
      DATA(t28) = VALUE string( ).
      DATA t29 TYPE string.
      DATA(t30) = t14.
      t29 = t30.
      DATA(t31) = VALUE string( ).
      DATA(t32) = t29.
      DATA(t33) = 1.
      DATA t34 TYPE i.
      DATA(t35) = t29.
      DATA(t36) = strlen( t35 ).
      t34 = t36.
      DATA(t37) = strlen( t32 ).
      IF t33 < 0.
        t33 = t33 + t37.
        IF t33 < 0.
          t33 = 0.
        ENDIF.
      ENDIF.
      IF t33 > t37 OR t34 <= 0.
        CLEAR t31.
      ELSE.
        IF t34 > t37 - t33.
          t34 = t37 - t33.
        ENDIF.
        t31 = t32+t33(t34).
      ENDIF.
      t28 = t31.
      t14 = t28.
    ENDIF.
    DATA(t38) = t14.
    t13 = t38.
    t9 = t13.
    DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t42) = t1.
      t41 = t42.
      t39 = t41.
    ELSE.
      DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t43.
      t39 = t43.
    ENDIF.
    me->add_extra_like_type_named( i_name = t9 i_type_9913 = t39 ).
  ENDMETHOD.

  METHOD add_extra_like_type_named.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA(t5) = t2.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t11.
    DATA(t12) = me->current.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      RETURN.
    ENDIF.
    DATA(t17) = VALUE string( ).
    DATA(t18) = VALUE string( ).
    DATA(t19) = t1.
    DATA(t20) = strlen( t19 ).
    t18 = t19.
    IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t18 TO UPPER CASE.
    ELSE.
      t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
    ENDIF.
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t27.
    DATA(t28) = me->current.
    t27 = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t29.
    DATA(t30) = t26.
    t29 = t30->data_56cc.
    t25 = t29.
    t24 = t25->extra_like_types.
    DATA(t31) = t17.
    t23 = t24->get( p0 = t31 ).
    t22 = t23.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t22.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    t34 = xsdbool( t35 = abap_false ).
    t21 = t34.
    IF t21 = abap_true.
      DATA t37 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA(t41) = VALUE string( ).
        DATA(t42) = VALUE string( ).
        DATA(t43) = |Type name "|.
        DATA(t44) = t1.
        DATA(t45) = strlen( t43 ).
        t42 = |{ t43 }{ t44 }|.
        DATA(t46) = |" already defined|.
        DATA(t47) = strlen( t42 ).
        t41 = |{ t42 }{ t46 }|.
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t41.
        t39 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t39 = t49.
      ENDIF.
      t38 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t39 ).
      t37 = NEW #( ).
      t37->payload = t38.
      CLEAR t37->source_value.
      IF t38 IS BOUND.
        DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t50.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        CLEAR t50.
        t51 = t38.
        TRY.
            t37->source_value ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37->source_value IS NOT BOUND.
          TRY.
              t50 ?= t38.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50 IS BOUND.
            t37->source_value = t50->source( ).
          ENDIF.
          IF t37->source_value IS NOT BOUND.
            CREATE OBJECT t37->source_value.
            t37->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t37->source_value->oval = t38.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t37.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t53.
    DATA t54 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t55.
    DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t56.
    DATA(t57) = me->current.
    t56 = t57.
    t55 = t56.
    DATA t58 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t58.
    DATA(t59) = t55.
    t58 = t59->data_56cc.
    t54 = t58.
    t53 = t54->extra_like_types.
    DATA(t60) = t17.
    DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t61.
    DATA(t62) = t2.
    t61 = t62.
    t52 = t53->set( p0 = t60 p1 = t61 ).
  ENDMETHOD.

  METHOD add_class_definition.
    DATA(t1) = i_c.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = me->current.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA(t12) = t1.
    t11 = t12->get_name( ).
    DATA(t13) = strlen( t11 ).
    t10 = t11.
    IF t10 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t10 TO UPPER CASE.
    ELSE.
      t10 = zlnt_runtime_uppe_91169605024d=>full( t10 ).
    ENDIF.
    t9 = t10.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zif_lnt_class_definition.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_class_definition.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t20.
    DATA(t21) = me->current.
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t22.
    DATA(t23) = t19.
    t22 = t23->data_56cc.
    t18 = t22.
    t17 = t18->cdefs.
    DATA(t24) = t9.
    t16 = t17->get( p0 = t24 ).
    t15 = t16.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t15.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    t27 = xsdbool( t28 = abap_false ).
    t14 = t27.
    IF t14 = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA(t34) = VALUE string( ).
        DATA(t35) = VALUE string( ).
        DATA(t36) = |Class "|.
        DATA(t37) = t9.
        DATA(t38) = strlen( t36 ).
        t35 = |{ t36 }{ t37 }|.
        DATA(t39) = |" already defined|.
        DATA(t40) = strlen( t35 ).
        t34 = |{ t35 }{ t39 }|.
        DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t41->has = abap_true.
        t41->value = t34.
        t32 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t32 = t42.
      ENDIF.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      IF t31 IS BOUND.
        DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t43.
        DATA t44 TYPE REF TO object.
        CLEAR t44.
        CLEAR t43.
        t44 = t31.
        TRY.
            t30->source_value ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30->source_value IS NOT BOUND.
          TRY.
              t43 ?= t31.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t43 IS BOUND.
            t30->source_value = t43->source( ).
          ENDIF.
          IF t30->source_value IS NOT BOUND.
            CREATE OBJECT t30->source_value.
            t30->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t30->source_value->oval = t31.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t30.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t49.
    DATA(t50) = me->current.
    t49 = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t51.
    DATA(t52) = t48.
    t51 = t52->data_56cc.
    t47 = t51.
    t46 = t47->cdefs.
    DATA(t53) = t9.
    DATA(t54) = t1.
    t45 = t46->set( p0 = t53 p1 = t54 ).
  ENDMETHOD.

  METHOD add_form_definitions.
    DATA(t1) = i_f.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t4) = me->current.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE i( ).
    DATA(t10) = t1.
    DATA t11 TYPE REF TO zif_lnt_form_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t10->load( ).
      IF t13 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t10->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t17 TYPE REF TO zcl_lnt_iscope_data.
      DATA t18 TYPE REF TO zcl_lnt_scope_data.
      DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t20) = me->current.
      t19 = t20.
      t18 = t19.
      DATA t21 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t22) = t18.
      t21 = t22->data_56cc.
      t17 = t21.
      t16 = t17->forms.
      DATA(t23) = t11.
      t16->load( ).
      APPEND t23 TO t16->items.
      t16->save( ).
    ENDDO.
    DATA t24 TYPE i.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_iscope_data.
    DATA t27 TYPE REF TO zcl_lnt_scope_data.
    DATA t28 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t29) = me->current.
    t28 = t29.
    t27 = t28.
    DATA t30 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t31) = t27.
    t30 = t31->data_56cc.
    t26 = t30.
    t25 = t26->forms.
    t25->load( ).
    t24 = lines( t25->items ).
    t9 = t24.
  ENDMETHOD.

  METHOD update_form_definition.
    DATA(t1) = i_f.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t3) = me->current.
    t2 = t3.
    DO.
      DATA(t4) = VALUE abap_bool( ).
      DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t6) = t2.
      t5 = t6.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      t7 = t8.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t5.
      IF t11 IS INITIAL.
        t10 = abap_true.
      ENDIF.
      t9 = xsdbool( t10 = abap_false ).
      t4 = t9.
      IF t4 = abap_false.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zcl_lnt_iscope_data.
      DATA t15 TYPE REF TO zcl_lnt_scope_data.
      DATA t16 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t17) = t2.
      t16 = t17.
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t19) = t15.
      t18 = t19->data_56cc.
      t14 = t18.
      t13 = t14->forms.
      t12 = t13.
      DATA t20 TYPE i.
      DATA(t21) = 0.
      t20 = t21.
      DO.
        DATA t22 TYPE abap_bool.
        DATA(t23) = t20.
        DATA t24 TYPE i.
        DATA(t25) = t12.
        t25->load( ).
        t24 = lines( t25->items ).
        t22 = xsdbool( t23 < t24 ).
        IF t22 = abap_false.
          EXIT.
        ENDIF.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zif_lnt_form_definition.
        CLEAR t27.
        DATA(t28) = t12.
        DATA(t29) = t20.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        t28->load( ).
        CLEAR t30.
        READ TABLE t28->items INDEX t29 INTO t30.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        CLEAR t27.
        IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t31 ?= t30.
          DATA t32 TYPE REF TO object.
          t32 = t31->as_ref( ).
          t27 ?= t32.
        ELSE.
          t27 ?= t30.
        ENDIF.
        DATA t33 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t34) = t1.
        t33 ?= t34.
        t26 = t27->equals( i_id = t33 ).
        IF t26 = abap_true.
          DATA(t35) = t12.
          DATA(t36) = t20.
          DATA(t37) = t1.
          t35->put( p0 = t36 p1 = t37 ).
          RETURN.
        ENDIF.
        DATA t38 TYPE i.
        DATA(t39) = t20.
        DATA(t40) = 1.
        t38 = t39 + t40.
        t20 = t38.
      ENDDO.
      DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t43) = t2.
      t42 = t43.
      t41 = t42->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t41.
    ENDDO.
  ENDMETHOD.

  METHOD add_interface_definition.
    DATA(t1) = i_i.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t3.
    DATA(t4) = me->current.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA(t12) = t1.
    t11 = t12->get_name( ).
    DATA(t13) = strlen( t11 ).
    t10 = t11.
    IF t10 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t10 TO UPPER CASE.
    ELSE.
      t10 = zlnt_runtime_uppe_91169605024d=>full( t10 ).
    ENDIF.
    t9 = t10.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zif_lnt_class_definition.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_class_definition.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t20.
    DATA(t21) = me->current.
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t22.
    DATA(t23) = t19.
    t22 = t23->data_56cc.
    t18 = t22.
    t17 = t18->cdefs.
    DATA(t24) = t9.
    t16 = t17->get( p0 = t24 ).
    t15 = t16.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t15.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    t27 = xsdbool( t28 = abap_false ).
    t14 = t27.
    IF t14 = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA(t34) = VALUE string( ).
        DATA(t35) = VALUE string( ).
        DATA(t36) = |Interface "|.
        DATA(t37) = t9.
        DATA(t38) = strlen( t36 ).
        t35 = |{ t36 }{ t37 }|.
        DATA(t39) = |" already defined|.
        DATA(t40) = strlen( t35 ).
        t34 = |{ t35 }{ t39 }|.
        DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t41->has = abap_true.
        t41->value = t34.
        t32 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t32 = t42.
      ENDIF.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      IF t31 IS BOUND.
        DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t43.
        DATA t44 TYPE REF TO object.
        CLEAR t44.
        CLEAR t43.
        t44 = t31.
        TRY.
            t30->source_value ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30->source_value IS NOT BOUND.
          TRY.
              t43 ?= t31.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t43 IS BOUND.
            t30->source_value = t43->source( ).
          ENDIF.
          IF t30->source_value IS NOT BOUND.
            CREATE OBJECT t30->source_value.
            t30->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t30->source_value->oval = t31.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t30.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t49.
    DATA(t50) = me->current.
    t49 = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t51.
    DATA(t52) = t48.
    t51 = t52->data_56cc.
    t47 = t51.
    t46 = t47->idefs.
    DATA(t53) = t9.
    DATA(t54) = t1.
    t45 = t46->set( p0 = t53 p1 = t54 ).
  ENDMETHOD.

  METHOD add_named_identifier.
    DATA(t1) = i_name.
    DATA(t2) = i_identifier.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t4.
    DATA(t5) = me->current.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA(t12) = t1.
    DATA(t13) = strlen( t12 ).
    t11 = t12.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t20.
    DATA(t21) = me->current.
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t22.
    DATA(t23) = t19.
    t22 = t23->data_56cc.
    t18 = t22.
    t17 = t18->vars.
    DATA(t24) = t10.
    t16 = t17->get( p0 = t24 ).
    t15 = t16.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t15.
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    t27 = xsdbool( t28 = abap_false ).
    t14 = t27.
    IF t14 = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA(t33) = abap_true.
      IF t33 = abap_true.
        DATA(t34) = VALUE string( ).
        DATA(t35) = VALUE string( ).
        DATA(t36) = |Variable name "|.
        DATA(t37) = t1.
        DATA(t38) = strlen( t36 ).
        t35 = |{ t36 }{ t37 }|.
        DATA(t39) = |" already defined|.
        DATA(t40) = strlen( t35 ).
        t34 = |{ t35 }{ t39 }|.
        DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t41->has = abap_true.
        t41->value = t34.
        t32 = t41.
      ELSE.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        t32 = t42.
      ENDIF.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      IF t31 IS BOUND.
        DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t43.
        DATA t44 TYPE REF TO object.
        CLEAR t44.
        CLEAR t43.
        t44 = t31.
        TRY.
            t30->source_value ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30->source_value IS NOT BOUND.
          TRY.
              t43 ?= t31.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t43 IS BOUND.
            t30->source_value = t43->source( ).
          ENDIF.
          IF t30->source_value IS NOT BOUND.
            CREATE OBJECT t30->source_value.
            t30->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t30->source_value->oval = t31.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t30.
    ELSE.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = CONV abap_bool( me->is_oo( ) ).
      t45 = t46.
      IF t46 = abap_true.
        DATA(t47) = VALUE abap_bool( ).
        DATA t48 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_scope_data.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t53.
        DATA(t54) = me->current.
        t53 = t54.
        t52 = t53.
        DATA t55 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t55.
        DATA(t56) = t52.
        t55 = t56->data_56cc.
        t51 = t55.
        t50 = t51->types.
        DATA(t57) = t10.
        t49 = t50->get( p0 = t57 ).
        t48 = t49.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        t58 = t59.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = t48.
        IF t62 IS INITIAL.
          t61 = abap_true.
        ENDIF.
        t60 = xsdbool( t61 = abap_false ).
        t47 = t60.
        t45 = t47.
      ENDIF.
      IF t45 = abap_true.
        DATA t63 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t64.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA(t66) = abap_true.
        IF t66 = abap_true.
          DATA(t67) = VALUE string( ).
          DATA(t68) = VALUE string( ).
          DATA(t69) = |"|.
          DATA(t70) = t1.
          DATA(t71) = strlen( t69 ).
          t68 = |{ t69 }{ t70 }|.
          DATA(t72) = |" already defined|.
          DATA(t73) = strlen( t68 ).
          t67 = |{ t68 }{ t72 }|.
          DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t74->has = abap_true.
          t74->value = t67.
          t65 = t74.
        ELSE.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t65 = t75.
        ENDIF.
        t64 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t65 ).
        t63 = NEW #( ).
        t63->payload = t64.
        CLEAR t63->source_value.
        IF t64 IS BOUND.
          DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t76.
          DATA t77 TYPE REF TO object.
          CLEAR t77.
          CLEAR t76.
          t77 = t64.
          TRY.
              t63->source_value ?= t77.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t63->source_value IS NOT BOUND.
            TRY.
                t76 ?= t64.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t76 IS BOUND.
              t63->source_value = t76->source( ).
            ENDIF.
            IF t63->source_value IS NOT BOUND.
              CREATE OBJECT t63->source_value.
              t63->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t63->source_value->oval = t64.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t63.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t79.
    DATA t80 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t80.
    DATA t81 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t81.
    DATA t82 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t82.
    DATA(t83) = me->current.
    t82 = t83.
    t81 = t82.
    DATA t84 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t84.
    DATA(t85) = t81.
    t84 = t85->data_56cc.
    t80 = t84.
    t79 = t80->vars.
    DATA(t86) = t10.
    DATA(t87) = t2.
    t78 = t79->set( p0 = t86 p1 = t87 ).
  ENDMETHOD.

  METHOD add_named_identifier_to_parent.
    DATA(t1) = i_name.
    DATA(t2) = i_identifier.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t4.
    DATA(t5) = me->current.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t12.
    DATA(t13) = me->current.
    t12 = t13.
    t11 = t12->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t15.
    DATA(t16) = t10.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t15.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      RETURN.
    ENDIF.
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA(t23) = t1.
    DATA(t24) = strlen( t23 ).
    t22 = t23.
    IF t22 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t22 TO UPPER CASE.
    ELSE.
      t22 = zlnt_runtime_uppe_91169605024d=>full( t22 ).
    ENDIF.
    t21 = t22.
    DATA(t25) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t28.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t31.
    DATA(t32) = t10.
    t31 = t32.
    t30 = t31.
    DATA t33 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t33.
    DATA(t34) = t30.
    t33 = t34->data_56cc.
    t29 = t33.
    t28 = t29->vars.
    DATA(t35) = t21.
    t27 = t28->get( p0 = t35 ).
    t26 = t27.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    t36 = t37.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = t26.
    IF t40 IS INITIAL.
      t39 = abap_true.
    ENDIF.
    t38 = xsdbool( t39 = abap_false ).
    t25 = t38.
    IF t25 = abap_true.
      DATA t41 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t42.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE string( ).
        DATA(t47) = |Variable name "|.
        DATA(t48) = t1.
        DATA(t49) = strlen( t47 ).
        t46 = |{ t47 }{ t48 }|.
        DATA(t50) = |" already defined|.
        DATA(t51) = strlen( t46 ).
        t45 = |{ t46 }{ t50 }|.
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t45.
        t43 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        t43 = t53.
      ENDIF.
      t42 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t43 ).
      t41 = NEW #( ).
      t41->payload = t42.
      CLEAR t41->source_value.
      IF t42 IS BOUND.
        DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t54.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        CLEAR t54.
        t55 = t42.
        TRY.
            t41->source_value ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41->source_value IS NOT BOUND.
          TRY.
              t54 ?= t42.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t54 IS BOUND.
            t41->source_value = t54->source( ).
          ENDIF.
          IF t41->source_value IS NOT BOUND.
            CREATE OBJECT t41->source_value.
            t41->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t41->source_value->oval = t42.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t41.
    ELSE.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = CONV abap_bool( me->is_oo( ) ).
      t56 = t57.
      IF t57 = abap_true.
        DATA(t58) = VALUE abap_bool( ).
        DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t59.
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        CLEAR t61.
        DATA t62 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t62.
        DATA t63 TYPE REF TO zcl_lnt_scope_data.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t64.
        DATA(t65) = t10.
        t64 = t65.
        t63 = t64.
        DATA t66 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t66.
        DATA(t67) = t63.
        t66 = t67->data_56cc.
        t62 = t66.
        t61 = t62->types.
        DATA(t68) = t21.
        t60 = t61->get( p0 = t68 ).
        t59 = t60.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        t69 = t70.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = t59.
        IF t73 IS INITIAL.
          t72 = abap_true.
        ENDIF.
        t71 = xsdbool( t72 = abap_false ).
        t58 = t71.
        t56 = t58.
      ENDIF.
      IF t56 = abap_true.
        DATA t74 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t74.
        DATA t75 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t75.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA(t77) = abap_true.
        IF t77 = abap_true.
          DATA(t78) = VALUE string( ).
          DATA(t79) = VALUE string( ).
          DATA(t80) = |"|.
          DATA(t81) = t1.
          DATA(t82) = strlen( t80 ).
          t79 = |{ t80 }{ t81 }|.
          DATA(t83) = |" already defined|.
          DATA(t84) = strlen( t79 ).
          t78 = |{ t79 }{ t83 }|.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = t78.
          t76 = t85.
        ELSE.
          DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t86.
          t76 = t86.
        ENDIF.
        t75 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t76 ).
        t74 = NEW #( ).
        t74->payload = t75.
        CLEAR t74->source_value.
        IF t75 IS BOUND.
          DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t87.
          DATA t88 TYPE REF TO object.
          CLEAR t88.
          CLEAR t87.
          t88 = t75.
          TRY.
              t74->source_value ?= t88.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t74->source_value IS NOT BOUND.
            TRY.
                t87 ?= t75.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t87 IS BOUND.
              t74->source_value = t87->source( ).
            ENDIF.
            IF t74->source_value IS NOT BOUND.
              CREATE OBJECT t74->source_value.
              t74->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t74->source_value->oval = t75.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t74.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t91.
    DATA t92 TYPE REF TO zcl_lnt_scope_data.
    CLEAR t92.
    DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t93.
    DATA(t94) = t10.
    t93 = t94.
    t92 = t93.
    DATA t95 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t95.
    DATA(t96) = t92.
    t95 = t96->data_56cc.
    t91 = t95.
    t90 = t91->vars.
    DATA(t97) = t21.
    DATA(t98) = t2.
    t89 = t90->set( p0 = t97 p1 = t98 ).
  ENDMETHOD.

  METHOD add_identifier.
    DATA(t1) = i_identifier.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t12) = t1.
    t11 = t12.
    t10 = t11.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = t10.
    t17 = t18->token.
    t16 = t17.
    DATA t19 TYPE string.
    DATA(t20) = t16.
    t19 = t20->str.
    t15 = t19.
    t14 = t15.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE string( ).
    DATA(t23) = t14.
    DATA(t24) = 0.
    DATA(t25) = 1.
    DATA(t26) = strlen( t23 ).
    IF t24 < 0.
      t24 = t24 + t26.
      IF t24 < 0.
        t24 = 0.
      ENDIF.
    ENDIF.
    IF t24 > t26 OR t25 <= 0.
      CLEAR t22.
    ELSE.
      IF t25 > t26 - t24.
        t25 = t26 - t24.
      ENDIF.
      t22 = t23+t24(t25).
    ENDIF.
    DATA(t27) = |!|.
    t21 = xsdbool( t22 = t27 ).
    IF t21 = abap_true.
      DATA(t28) = VALUE string( ).
      DATA t29 TYPE string.
      DATA(t30) = t14.
      t29 = t30.
      DATA(t31) = VALUE string( ).
      DATA(t32) = t29.
      DATA(t33) = 1.
      DATA t34 TYPE i.
      DATA(t35) = t29.
      DATA(t36) = strlen( t35 ).
      t34 = t36.
      DATA(t37) = strlen( t32 ).
      IF t33 < 0.
        t33 = t33 + t37.
        IF t33 < 0.
          t33 = 0.
        ENDIF.
      ENDIF.
      IF t33 > t37 OR t34 <= 0.
        CLEAR t31.
      ELSE.
        IF t34 > t37 - t33.
          t34 = t37 - t33.
        ENDIF.
        t31 = t32+t33(t34).
      ENDIF.
      t28 = t31.
      t14 = t28.
    ENDIF.
    DATA(t38) = t14.
    t13 = t38.
    t9 = t13.
    DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t40) = t1.
    t39 = t40.
    me->add_named_identifier( i_name = t9 i_identifier = t39 ).
  ENDMETHOD.

  METHOD add_deferred.
    DATA(t1) = i_token.
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
    DATA t12 TYPE REF TO zcl_lnt_iscope_data.
    DATA t13 TYPE REF TO zcl_lnt_scope_data.
    DATA t14 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t15) = me->current.
    t14 = t15.
    t13 = t14.
    DATA t16 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t17) = t13.
    t16 = t17->data_56cc.
    t12 = t16.
    t11 = t12->deferred.
    DATA t18 TYPE string.
    DATA t19 TYPE string.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t22) = t1.
    t21 = t22.
    t20 = t21.
    DATA t23 TYPE string.
    DATA(t24) = t20.
    t23 = t24->str.
    t19 = t23.
    DATA(t25) = strlen( t19 ).
    t18 = t19.
    IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t18 TO UPPER CASE.
    ELSE.
      t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_deferred_information.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    DATA t28 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t29) = t1.
    t28 = t29.
    t27 = t28.
    DATA t30 TYPE string.
    DATA(t31) = t2.
    t30 = t31.
    t26 = NEW zcl_lnt_deferred_information( i_token = t27 i_oo_type = t30 ).
    CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
    t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
    t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |token|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |ooType|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    t10 = t11->set( p0 = t18 p1 = t26 ).
  ENDMETHOD.

  METHOD add_list_prefix.
    DATA(t1) = i_identifiers.
    DATA(t2) = i_prefix.
    DATA(t3) = t1.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    DATA(t6) = VALUE i( ).
    DO.
      t3->load( ).
      IF t6 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t3->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA(t9) = VALUE string( ).
      DATA(t10) = t2.
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t13) = t4.
      t12 = t13.
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t19) = t12.
      t18 = t19->token.
      t17 = t18.
      DATA t20 TYPE string.
      DATA(t21) = t17.
      t20 = t21->str.
      t16 = t20.
      t15 = t16.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE string( ).
      DATA(t24) = t15.
      DATA(t25) = 0.
      DATA(t26) = 1.
      DATA(t27) = strlen( t24 ).
      IF t25 < 0.
        t25 = t25 + t27.
        IF t25 < 0.
          t25 = 0.
        ENDIF.
      ENDIF.
      IF t25 > t27 OR t26 <= 0.
        CLEAR t23.
      ELSE.
        IF t26 > t27 - t25.
          t26 = t27 - t25.
        ENDIF.
        t23 = t24+t25(t26).
      ENDIF.
      DATA(t28) = |!|.
      t22 = xsdbool( t23 = t28 ).
      IF t22 = abap_true.
        DATA(t29) = VALUE string( ).
        DATA t30 TYPE string.
        DATA(t31) = t15.
        t30 = t31.
        DATA(t32) = VALUE string( ).
        DATA(t33) = t30.
        DATA(t34) = 1.
        DATA t35 TYPE i.
        DATA(t36) = t30.
        DATA(t37) = strlen( t36 ).
        t35 = t37.
        DATA(t38) = strlen( t33 ).
        IF t34 < 0.
          t34 = t34 + t38.
          IF t34 < 0.
            t34 = 0.
          ENDIF.
        ENDIF.
        IF t34 > t38 OR t35 <= 0.
          CLEAR t32.
        ELSE.
          IF t35 > t38 - t34.
            t35 = t38 - t34.
          ENDIF.
          t32 = t33+t34(t35).
        ENDIF.
        t29 = t32.
        t15 = t29.
      ENDIF.
      DATA(t39) = t15.
      t14 = t39.
      t11 = t14.
      DATA(t40) = strlen( t10 ).
      t9 = |{ t10 }{ t11 }|.
      DATA(t41) = t4.
      me->add_named_identifier( i_name = t9 i_identifier = t41 ).
    ENDDO.
  ENDMETHOD.

  METHOD add_list.
    DATA(t1) = i_identifiers.
    DATA(t2) = t1.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
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
      DATA t8 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = t3.
        t9 = t11.
      ELSE.
        DATA t12 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t12.
        t9 = t12.
      ENDIF.
      t8 = t9.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t15) = t8.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t14.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      t13 = t18.
      IF t13 = abap_true.
      ELSE.
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t23) = t8.
        t22 = t23.
        t21 = t22.
        DATA(t24) = VALUE string( ).
        DATA t25 TYPE string.
        DATA t26 TYPE string.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t29) = t21.
        t28 = t29->token.
        t27 = t28.
        DATA t30 TYPE string.
        DATA(t31) = t27.
        t30 = t31->str.
        t26 = t30.
        t25 = t26.
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = VALUE string( ).
        DATA(t34) = t25.
        DATA(t35) = 0.
        DATA(t36) = 1.
        DATA(t37) = strlen( t34 ).
        IF t35 < 0.
          t35 = t35 + t37.
          IF t35 < 0.
            t35 = 0.
          ENDIF.
        ENDIF.
        IF t35 > t37 OR t36 <= 0.
          CLEAR t33.
        ELSE.
          IF t36 > t37 - t35.
            t36 = t37 - t35.
          ENDIF.
          t33 = t34+t35(t36).
        ENDIF.
        DATA(t38) = |!|.
        t32 = xsdbool( t33 = t38 ).
        IF t32 = abap_true.
          DATA(t39) = VALUE string( ).
          DATA t40 TYPE string.
          DATA(t41) = t25.
          t40 = t41.
          DATA(t42) = VALUE string( ).
          DATA(t43) = t40.
          DATA(t44) = 1.
          DATA t45 TYPE i.
          DATA(t46) = t40.
          DATA(t47) = strlen( t46 ).
          t45 = t47.
          DATA(t48) = strlen( t43 ).
          IF t44 < 0.
            t44 = t44 + t48.
            IF t44 < 0.
              t44 = 0.
            ENDIF.
          ENDIF.
          IF t44 > t48 OR t45 <= 0.
            CLEAR t42.
          ELSE.
            IF t45 > t48 - t44.
              t45 = t48 - t44.
            ENDIF.
            t42 = t43+t44(t45).
          ENDIF.
          t39 = t42.
          t25 = t39.
        ENDIF.
        DATA(t49) = t25.
        t24 = t49.
        t20 = t24.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t51) = t8.
        t50 = t51.
        me->add_named_identifier( i_name = t20 i_identifier = t50 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD add_reference.
    DATA(t1) = i_usage.
    DATA(t2) = i_referencing.
    DATA(t3) = i_type_9913.
    DATA(t4) = i_filename.
    DATA(t5) = i_extra.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t8.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t8.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    t6 = t7.
    IF t7 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      DATA(t16) = t3.
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t15.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t14 = t19.
      t6 = t14.
    ENDIF.
    IF t6 = abap_true.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t23.
    DATA(t24) = t1.
    t23 = t24.
    DATA(t25) = t4.
    t22 = NEW zcl_lnt_fi_identifier( i_token = t23 i_filename = t25 ).
    t21 = t22.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE string( ).
    DATA(t28) = t3.
    IF t28 IS BOUND.
      t27 = t28->type_of( ).
    ELSE.
      t27 = `undefined`.
    ENDIF.
    DATA(t29) = |object|.
    t26 = xsdbool( t27 = t29 ).
    IF t26 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      DATA(t31) = t3.
      CLEAR t30.
      IF t31 IS BOUND.
        IF t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t30 ?= t31->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
          ENDTRY.
        ELSEIF t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
          CREATE OBJECT t30.
          t30->source = t31.
        ELSE.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
        ENDIF.
        t30->load( ).
      ENDIF.
      DATA(t32) = VALUE string( ).
      t30->dense( ).
      DATA(t33) = VALUE i( ).
      DO.
        t30->load( ).
        IF t33 >= lines( t30->items ).
          EXIT.
        ENDIF.
        CLEAR t32.
        READ TABLE t30->items INDEX t33 + 1 INTO t32.
        IF t30->has( t33 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t33 = t33 + 1.
        DATA t34 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t34.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t35.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t39.
        DATA(t40) = me->current.
        t39 = t40.
        DATA t41 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t41.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = t39.
        IF t43 IS INITIAL.
          t42 = abap_true.
        ENDIF.
        IF t42 = abap_true.
          DATA t44 TYPE REF TO zcl_lnt_iscope_data.
          CLEAR t44.
          t41 = t44.
        ELSE.
          DATA t45 TYPE REF TO zcl_lnt_iscope_data.
          CLEAR t45.
          DATA t46 TYPE REF TO zcl_lnt_scope_data.
          CLEAR t46.
          DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t47.
          DATA(t48) = t39.
          t47 = t48.
          t46 = t47.
          DATA t49 TYPE REF TO zcl_lnt_iscope_data.
          CLEAR t49.
          DATA(t50) = t46.
          t49 = t50->data_56cc.
          t45 = t49.
          t41 = t45.
        ENDIF.
        t38 = t41.
        t37 = t38.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = t37.
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t54.
          t51 = t54.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_iscope_data.
          CLEAR t56.
          DATA(t57) = t37.
          t56 = t57.
          t55 = t56->references.
          t51 = t55.
        ENDIF.
        t36 = t51.
        t35 = t36.
        DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t58.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = t35.
        IF t60 IS INITIAL.
          t59 = abap_true.
        ENDIF.
        IF t59 = abap_true.
          DATA t61 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t61.
          t58 = t61.
        ELSE.
          DATA(t62) = VALUE f( ).
          DATA(t63) = VALUE i( ).
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t64.
          DATA(t65) = t35.
          t64 = t65.
          DATA t66 TYPE REF TO zcl_lnt_ireference.
          CLEAR t66.
          DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t67.
          DATA(t68) = t21.
          t67 = t68.
          DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t69.
          DATA(t70) = t2.
          t69 = t70.
          DATA(t71) = VALUE string( ).
          DATA(t72) = t32.
          t71 = t72.
          DATA t73 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t73.
          DATA(t74) = t5.
          t73 = t74.
          t66 = NEW zcl_lnt_ireference( i_position_a3fd = t67 i_resolved = t69 i_reference_type = t71 i_extra = t73 ).
          CREATE OBJECT t66->zlnt_view_ownkeys_b0e8086400eb.
          t66->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t75.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t75 ).
          ENDIF.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t76.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `resolved` p1 = t76 ).
          ENDIF.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t77.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `referenceType` p1 = t77 ).
          ENDIF.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extra` p1 = t78 ).
          ENDIF.
          CREATE OBJECT t66->zlnt_json_ownkeys_70e5fd461788.
          t66->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t79) = |position|.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
          ENDIF.
          DATA(t81) = |resolved|.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
          ENDIF.
          DATA(t83) = |referenceType|.
          DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t84.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
          ENDIF.
          DATA(t85) = |extra|.
          DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t86.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
          ENDIF.
          t64->load( ).
          APPEND t66 TO t64->items.
          t63 = lines( t64->items ).
          t64->save( ).
          t62 = t63.
          DATA(t87) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t87->has = abap_true.
          t87->value = t62.
          t58 = t87.
        ENDIF.
        t34 = t58.
      ENDDO.
    ELSE.
      DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t91.
      DATA t92 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t93.
      DATA(t94) = me->current.
      t93 = t94.
      DATA t95 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t95.
      DATA(t96) = VALUE abap_bool( ).
      DATA(t97) = t93.
      IF t97 IS INITIAL.
        t96 = abap_true.
      ENDIF.
      IF t96 = abap_true.
        DATA t98 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t98.
        t95 = t98.
      ELSE.
        DATA t99 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t99.
        DATA t100 TYPE REF TO zcl_lnt_scope_data.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t101.
        DATA(t102) = t93.
        t101 = t102.
        t100 = t101.
        DATA t103 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t103.
        DATA(t104) = t100.
        t103 = t104->data_56cc.
        t99 = t103.
        t95 = t99.
      ENDIF.
      t92 = t95.
      t91 = t92.
      DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t105.
      DATA(t106) = VALUE abap_bool( ).
      DATA(t107) = t91.
      IF t107 IS INITIAL.
        t106 = abap_true.
      ENDIF.
      IF t106 = abap_true.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t108.
        t105 = t108.
      ELSE.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t110.
        DATA(t111) = t91.
        t110 = t111.
        t109 = t110->references.
        t105 = t109.
      ENDIF.
      t90 = t105.
      t89 = t90.
      DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t112.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = t89.
      IF t114 IS INITIAL.
        t113 = abap_true.
      ENDIF.
      IF t113 = abap_true.
        DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t115.
        t112 = t115.
      ELSE.
        DATA(t116) = VALUE f( ).
        DATA(t117) = VALUE i( ).
        DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t118.
        DATA(t119) = t89.
        t118 = t119.
        DATA t120 TYPE REF TO zcl_lnt_ireference.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t121.
        DATA(t122) = t21.
        t121 = t122.
        DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t123.
        DATA(t124) = t2.
        t123 = t124.
        DATA(t125) = VALUE string( ).
        DATA(t126) = VALUE string( ).
        DATA(t127) = t3.
        t126 = t127->as_string( ).
        t125 = t126.
        DATA t128 TYPE REF TO zcl_lnt_ireference_extras.
        CLEAR t128.
        DATA(t129) = t5.
        t128 = t129.
        t120 = NEW zcl_lnt_ireference( i_position_a3fd = t121 i_resolved = t123 i_reference_type = t125 i_extra = t128 ).
        CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
        t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t130 ).
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `resolved` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `referenceType` p1 = t132 ).
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extra` p1 = t133 ).
        ENDIF.
        CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
        t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t134) = |position|.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
        ENDIF.
        DATA(t136) = |resolved|.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
        ENDIF.
        DATA(t138) = |referenceType|.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
        ENDIF.
        DATA(t140) = |extra|.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
        ENDIF.
        t118->load( ).
        APPEND t120 TO t118->items.
        t117 = lines( t118->items ).
        t118->save( ).
        t116 = t117.
        DATA(t142) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t142->has = abap_true.
        t142->value = t116.
        t112 = t142.
      ENDIF.
      t88 = t112.
    ENDIF.
  ENDMETHOD.

  METHOD add_sql_conversion.
    DATA(t1) = i_field_name.
    DATA(t2) = i_message_26cb.
    DATA(t3) = i_token.
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t10) = me->current.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t9.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_iscope_data.
      DATA t16 TYPE REF TO zcl_lnt_scope_data.
      DATA t17 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t18) = t9.
      t17 = t18.
      t16 = t17.
      DATA t19 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t20) = t16.
      t19 = t20->data_56cc.
      t15 = t19.
      t11 = t15.
    ENDIF.
    t8 = t11.
    t7 = t8.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t7.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t27) = t7.
      t26 = t27.
      t25 = t26->sql_conversion.
      t21 = t25.
    ENDIF.
    t6 = t21.
    t5 = t6.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t5.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA(t32) = VALUE f( ).
      DATA(t33) = VALUE i( ).
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t35) = t5.
      t34 = t35.
      DATA t36 TYPE REF TO zcl_lnt_shape_9a575e77.
      CLEAR t36.
      DATA t37 TYPE string.
      DATA(t38) = t1.
      t37 = t38.
      DATA t39 TYPE string.
      DATA(t40) = t2.
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA(t44) = t3.
        t42 = t44.
      ELSE.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t45.
        t42 = t45.
      ENDIF.
      t41 = t42.
      t36 = NEW zcl_lnt_shape_9a575e77( i_field_name = t37 i_message_26cb = t39 i_token = t41 ).
      CREATE OBJECT t36->zlnt_view_ownkeys_b0e8086400eb.
      t36->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fieldName` p1 = t46 ).
      ENDIF.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t47 ).
      ENDIF.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t48 ).
      ENDIF.
      CREATE OBJECT t36->zlnt_json_ownkeys_70e5fd461788.
      t36->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t49) = |fieldName|.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
      ENDIF.
      DATA(t51) = |message|.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
      ENDIF.
      DATA(t53) = |token|.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
      ENDIF.
      t34->load( ).
      APPEND t36 TO t34->items.
      t33 = lines( t34->items ).
      t34->save( ).
      t32 = t33.
      DATA(t55) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t55->has = abap_true.
      t55->value = t32.
      t28 = t55.
    ENDIF.
    t4 = t28.
  ENDMETHOD.

  METHOD find_function_module.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t12.
    DATA(t13) = me->reg.
    DATA(t14) = |FUGR|.
    t12 = t13->get_objects_by_type( i_type_9913 = t14 ).
    t11 = t12->iterate( ).
    t10 = t11.
    DO.
      DATA(t15) = abap_true.
      IF t15 = abap_false.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t17.
      DATA(t18) = t10.
      t17 = t18->next( ).
      t16 = t17.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t16.
      t19 = t20->done.
      IF t19 = abap_true.
        EXIT.
      ENDIF.
      DATA t21 TYPE REF TO zif_lnt_object.
      CLEAR t21.
      DATA t22 TYPE REF TO zif_lnt_object.
      CLEAR t22.
      DATA t23 TYPE REF TO zif_lnt_object.
      CLEAR t23.
      DATA(t24) = t16.
      t23 = t24->value.
      t22 = t23.
      t21 = t22.
      DATA t25 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = abap_false.
      t28 = t29.
      DATA t30 TYPE REF TO cx_root.
      CLEAR t30.
      TRY.
          DATA t31 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
          CLEAR t31.
          DATA t32 TYPE REF TO zcl_lnt_function_group.
          CLEAR t32.
          DATA(t33) = t21.
          t32 ?= t33.
          DATA(t34) = VALUE string( ).
          DATA(t35) = t1.
          t34 = t35->value.
          t31 = t32->get_module( i_name = t34 ).
          t27 = t31.
          DATA(t36) = abap_true.
          t28 = t36.
        CATCH cx_root INTO t30.
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = t28.
          t37 = xsdbool( t38 = abap_false ).
          IF t37 = abap_true.
            DATA(t39) = t10.
            t39->close( ).
          ENDIF.
          RAISE EXCEPTION t30.
      ENDTRY.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = t28.
      t40 = xsdbool( t41 = abap_false ).
      IF t40 = abap_true.
        DATA(t42) = t10.
        t42->close( ).
      ENDIF.
      DATA(t43) = t27.
      t26 = t43.
      t25 = t26.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = abap_false.
      t46 = t47.
      DATA t48 TYPE REF TO cx_root.
      CLEAR t48.
      TRY.
          DATA(t49) = VALUE abap_bool( ).
          DATA t50 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
          CLEAR t50.
          DATA(t51) = t25.
          t50 = t51.
          DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t52.
          DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t53.
          t52 = t53.
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = t50.
          IF t56 IS INITIAL.
            t55 = abap_true.
          ENDIF.
          t54 = xsdbool( t55 = abap_false ).
          t49 = t54.
          t45 = t49.
          DATA(t57) = abap_true.
          t46 = t57.
        CATCH cx_root INTO t48.
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = t46.
          t58 = xsdbool( t59 = abap_false ).
          IF t58 = abap_true.
            DATA(t60) = t10.
            t60->close( ).
          ENDIF.
          RAISE EXCEPTION t48.
      ENDTRY.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = t46.
      t61 = xsdbool( t62 = abap_false ).
      IF t61 = abap_true.
        DATA(t63) = t10.
        t63->close( ).
      ENDIF.
      DATA(t64) = t45.
      t44 = t64.
      IF t44 = abap_true.
        DATA t65 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        CLEAR t66.
        DATA t67 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        CLEAR t67.
        DATA(t68) = VALUE abap_bool( ).
        DATA(t69) = abap_false.
        t68 = t69.
        DATA t70 TYPE REF TO cx_root.
        CLEAR t70.
        TRY.
            DATA t71 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
            CLEAR t71.
            DATA(t72) = abap_true.
            IF t72 = abap_true.
              DATA t73 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
              CLEAR t73.
              DATA(t74) = t25.
              t73 = t74.
              t71 = t73.
            ELSE.
              DATA t75 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
              CLEAR t75.
              t71 = t75.
            ENDIF.
            t67 = t71.
            DATA(t76) = abap_true.
            t68 = t76.
          CATCH cx_root INTO t70.
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = t68.
            t77 = xsdbool( t78 = abap_false ).
            IF t77 = abap_true.
              DATA(t79) = t10.
              t79->close( ).
            ENDIF.
            RAISE EXCEPTION t70.
        ENDTRY.
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = t68.
        t80 = xsdbool( t81 = abap_false ).
        IF t80 = abap_true.
          DATA(t82) = t10.
          t82->close( ).
        ENDIF.
        DATA(t83) = t67.
        t66 = t83.
        t65 = t66.
        DATA(t84) = t10.
        t84->close( ).
        DATA(t85) = t65.
        result = t85.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t86 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t86.
    result = t86.

  ENDMETHOD.

  METHOD find_object_definition.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_class_definition.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_class_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA t15 TYPE string.
      DATA(t16) = t1.
      t15 = t16->value.
      DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t17->has = abap_true.
      t17->value = t15.
      t13 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t18.
      t13 = t18.
    ENDIF.
    t12 = t13.
    DATA t19 TYPE REF TO zif_lnt_class_definition.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t22) = t12.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ELSEIF t26->has = abap_false.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    IF t20 = abap_true.
      DATA t27 TYPE REF TO zif_lnt_class_definition.
      CLEAR t27.
      t19 = t27.
    ELSE.
      DATA t28 TYPE REF TO zif_lnt_class_definition.
      CLEAR t28.
      DATA t29 TYPE REF TO zif_lnt_class_definition.
      CLEAR t29.
      DATA t30 TYPE REF TO zif_lnt_class_definition.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t32) = me->current.
      t31 = t32.
      DATA t33 TYPE REF TO zif_lnt_class_definition.
      CLEAR t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t31.
      IF t35 IS INITIAL.
        t34 = abap_true.
      ENDIF.
      IF t34 = abap_true.
        DATA t36 TYPE REF TO zif_lnt_class_definition.
        CLEAR t36.
        t33 = t36.
      ELSE.
        DATA t37 TYPE REF TO zif_lnt_class_definition.
        DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t39) = t31.
        t38 = t39.
        DATA t40 TYPE string.
        DATA(t41) = t12.
        t40 = t41->value.
        t37 = t38->find_class_definition( i_name = t40 ).
        t33 = t37.
      ENDIF.
      t30 = t33.
      t29 = t30.
      DATA t42 TYPE REF TO zif_lnt_class_definition.
      CLEAR t42.
      DATA t43 TYPE abap_bool.
      DATA(t44) = t29.
      t43 = xsdbool( t44 IS BOUND ).
      IF t43 = abap_true.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        DATA(t46) = abap_true.
        IF t46 = abap_true.
          DATA t47 TYPE REF TO zif_lnt_class_definition.
          DATA(t48) = t29.
          t47 = t48.
          t45 = t47.
        ELSE.
          DATA t49 TYPE REF TO zif_lnt_class_definition.
          CLEAR t49.
          t45 = t49.
        ENDIF.
        t42 = t45.
      ELSE.
        DATA t50 TYPE REF TO zif_lnt_class_definition.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_class.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_class.
        CLEAR t52.
        DATA t53 TYPE REF TO zif_lnt_object.
        CLEAR t53.
        DATA(t54) = me->reg.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA(t56) = abap_true.
        IF t56 = abap_true.
          DATA(t57) = |CLAS|.
          DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t58->has = abap_true.
          t58->value = t57.
          t55 = t58.
        ELSE.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          t55 = t59.
        ENDIF.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA t62 TYPE string.
          DATA(t63) = t12.
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
        t53 = t54->get_object( i_type_9913 = t55 i_name = t60 ).
        DATA t66 TYPE REF TO object.
        t66 = t53.
        t52 ?= t66.
        t51 = t52.
        DATA t67 TYPE REF TO zif_lnt_class_definition.
        CLEAR t67.
        DATA t68 TYPE abap_bool.
        DATA(t69) = t51.
        t68 = xsdbool( t69 IS BOUND ).
        IF t68 = abap_true.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          DATA t71 TYPE REF TO zcl_lnt_class.
          DATA(t72) = t51.
          t71 = t72.
          t70 = t71->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t67 = t70.
        ELSE.
          DATA t73 TYPE REF TO zif_lnt_class_definition.
          CLEAR t73.
          t67 = t73.
        ENDIF.
        t50 = t67.
        t42 = t50.
      ENDIF.
      t28 = t42.
      t19 = t28.
    ENDIF.
    t11 = t19.
    t10 = t11.
    DATA t74 TYPE abap_bool.
    DATA(t75) = t10.
    t74 = xsdbool( t75 IS BOUND ).
    IF t74 = abap_true.
      DATA t76 TYPE REF TO zif_lnt_interface_definition.
      DATA t77 TYPE REF TO zif_lnt_class_definition.
      DATA(t78) = t10.
      t77 = t78.
      t76 ?= t77.
      result = t76.
      RETURN.
    ENDIF.
    DATA t79 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    DATA(t83) = abap_true.
    IF t83 = abap_true.
      DATA t84 TYPE string.
      DATA(t85) = t1.
      t84 = t85->value.
      DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t86->has = abap_true.
      t86->value = t84.
      t82 = t86.
    ELSE.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      t82 = t87.
    ENDIF.
    t81 = t82.
    DATA t88 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t88.
    DATA(t89) = VALUE abap_bool( ).
    DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t91) = t81.
    t90 = t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    t92 = t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = t90.
    IF t95 IS INITIAL.
      t94 = abap_true.
    ELSEIF t95->has = abap_false.
      t94 = abap_true.
    ENDIF.
    t89 = t94.
    IF t89 = abap_true.
      DATA t96 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t96.
      t88 = t96.
    ELSE.
      DATA t97 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t97.
      DATA t98 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t98.
      DATA t99 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t99.
      DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t101) = me->current.
      t100 = t101.
      DATA t102 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t102.
      DATA(t103) = VALUE abap_bool( ).
      DATA(t104) = t100.
      IF t104 IS INITIAL.
        t103 = abap_true.
      ENDIF.
      IF t103 = abap_true.
        DATA t105 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t105.
        t102 = t105.
      ELSE.
        DATA t106 TYPE REF TO zif_lnt_interface_definition.
        DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t108) = t100.
        t107 = t108.
        DATA t109 TYPE string.
        DATA(t110) = t81.
        t109 = t110->value.
        t106 = t107->find_interface_definition( i_name = t109 ).
        t102 = t106.
      ENDIF.
      t99 = t102.
      t98 = t99.
      DATA t111 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t111.
      DATA t112 TYPE abap_bool.
      DATA(t113) = t98.
      t112 = xsdbool( t113 IS BOUND ).
      IF t112 = abap_true.
        DATA t114 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t114.
        DATA(t115) = abap_true.
        IF t115 = abap_true.
          DATA t116 TYPE REF TO zif_lnt_interface_definition.
          DATA(t117) = t98.
          t116 = t117.
          t114 = t116.
        ELSE.
          DATA t118 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t118.
          t114 = t118.
        ENDIF.
        t111 = t114.
      ELSE.
        DATA t119 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t121.
        DATA t122 TYPE REF TO zif_lnt_object.
        CLEAR t122.
        DATA(t123) = me->reg.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        DATA(t125) = abap_true.
        IF t125 = abap_true.
          DATA(t126) = |INTF|.
          DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t127->has = abap_true.
          t127->value = t126.
          t124 = t127.
        ELSE.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          t124 = t128.
        ENDIF.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA t131 TYPE string.
          DATA(t132) = t81.
          t131 = t132->value.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t131.
          t129 = t133.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t129 = t134.
        ENDIF.
        t122 = t123->get_object( i_type_9913 = t124 i_name = t129 ).
        DATA t135 TYPE REF TO object.
        t135 = t122.
        t121 ?= t135.
        t120 = t121.
        DATA t136 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t136.
        DATA t137 TYPE abap_bool.
        DATA(t138) = t120.
        t137 = xsdbool( t138 IS BOUND ).
        IF t137 = abap_true.
          DATA t139 TYPE REF TO zif_lnt_interface_definition.
          DATA t140 TYPE REF TO zcl_lnt_ob_interface.
          DATA t141 TYPE REF TO zcl_lnt_ob_interface.
          DATA(t142) = t120.
          t141 = t142.
          t140 = t141.
          DATA t143 TYPE REF TO zif_lnt_interface_definition.
          DATA(t144) = t140.
          t143 = t144->def.
          t139 = t143.
          t136 = t139.
        ELSE.
          DATA t145 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t145.
          t136 = t145.
        ENDIF.
        t119 = t136.
        t111 = t119.
      ENDIF.
      t97 = t111.
      t88 = t97.
    ENDIF.
    t80 = t88.
    t79 = t80.
    DATA t146 TYPE abap_bool.
    DATA(t147) = t79.
    t146 = xsdbool( t147 IS BOUND ).
    IF t146 = abap_true.
      DATA t148 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t148.
      DATA(t149) = abap_true.
      IF t149 = abap_true.
        DATA t150 TYPE REF TO zif_lnt_interface_definition.
        DATA(t151) = t79.
        t150 = t151.
        t148 = t150.
      ELSE.
        DATA t152 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t152.
        t148 = t152.
      ENDIF.
      result = t148.
      RETURN.
    ENDIF.
    DATA t153 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t153.
    result = t153.

  ENDMETHOD.

  METHOD find_behavior_definition.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE string.
    DATA(t3) = me->parent_obj.
    t2 = t3->get_type( ).
    DATA(t4) = |CLAS|.
    t1 = xsdbool( t2 <> t4 ).
    IF t1 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_behavior_definition.
      CLEAR t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_class.
    DATA t11 TYPE REF TO zcl_lnt_class.
    DATA(t12) = me->parent_obj.
    t11 ?= t12.
    t10 = t11.
    DATA t13 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    DATA(t18) = t10.
    t17 = t18->get_main_abap_file( ).
    t16 = t17.
    DATA t19 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t16.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA(t26) = t16.
      t25 = t26.
      t24 = t25.
      DATA t27 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t28) = t24.
      t27 = t28->info.
      t23 = t27.
      t19 = t23.
    ENDIF.
    t15 = t19.
    t14 = t15.
    DATA t29 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t29.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t14.
    IF t31 IS INITIAL.
      t30 = abap_true.
    ENDIF.
    IF t30 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t32.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t34 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t35) = t14.
      t34 = t35.
      DATA t36 TYPE string.
      DATA t37 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t38) = t10.
      t37 = t38.
      DATA t39 TYPE string.
      DATA(t40) = t37.
      t39 = t40->name.
      t36 = t39.
      t33 = t34->get_class_definition_by_name( i_name = t36 ).
      t29 = t33.
    ENDIF.
    t13 = t29.
    t9 = t13.
    t8 = t9.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = t8.
    IF t43 IS INITIAL.
      t42 = abap_true.
    ENDIF.
    IF t42 = abap_true.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t41 = t44.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t46 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t47) = t8.
      t46 = t47.
      t45 = t46->behavior_definition_name.
      t41 = t45.
    ENDIF.
    t7 = t41.
    t6 = t7.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t50) = t6.
    t49 = t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    t51 = t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = t49.
    IF t54 IS INITIAL.
      t53 = abap_true.
    ELSEIF t54->has = abap_false.
      t53 = abap_true.
    ENDIF.
    t48 = t53.
    IF t48 = abap_true.
      DATA t55 TYPE REF TO zcl_lnt_behavior_definition.
      CLEAR t55.
      result = t55.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zcl_lnt_behavior_definition.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_object.
    CLEAR t57.
    DATA(t58) = me->reg.
    DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t59.
    DATA(t60) = abap_true.
    IF t60 = abap_true.
      DATA(t61) = |BDEF|.
      DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t62->has = abap_true.
      t62->value = t61.
      t59 = t62.
    ELSE.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t63.
      t59 = t63.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t64.
    DATA(t65) = abap_true.
    IF t65 = abap_true.
      DATA t66 TYPE string.
      DATA(t67) = t6.
      t66 = t67->value.
      DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t68->has = abap_true.
      t68->value = t66.
      t64 = t68.
    ELSE.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t69.
      t64 = t69.
    ENDIF.
    t57 = t58->get_object( i_type_9913 = t59 i_name = t64 ).
    DATA t70 TYPE REF TO object.
    t70 = t57.
    t56 ?= t70.
    result = t56.

  ENDMETHOD.

  METHOD is_badi_def.
    DATA(t1) = i_name.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = t1.
    DATA(t5) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t8.
    DATA(t9) = me->reg.
    DATA(t10) = |ENHS|.
    t8 = t9->get_objects_by_type( i_type_9913 = t10 ).
    t7 = t8->iterate( ).
    t6 = t7.
    DO.
      DATA(t11) = abap_true.
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      DATA(t14) = t6.
      t13 = t14->next( ).
      t12 = t13.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t12.
      t15 = t16->done.
      IF t15 = abap_true.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zif_lnt_object.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      DATA(t20) = t12.
      t19 = t20->value.
      t18 = t19.
      t17 = t18.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = abap_false.
      t23 = t24.
      DATA t25 TYPE REF TO cx_root.
      CLEAR t25.
      TRY.
          DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t26.
          DATA t27 TYPE REF TO zcl_lnt_enhancement_spot.
          CLEAR t27.
          DATA t28 TYPE REF TO zcl_lnt_enhancement_spot.
          CLEAR t28.
          DATA(t29) = t17.
          t28 ?= t29.
          t27 = t28.
          DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t30.
          DATA(t31) = VALUE abap_bool( ).
          DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t32.
          DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t33.
          DATA(t34) = t27.
          t33 = t34->badis.
          t32 = t33.
          DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t35.
          DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t36.
          t35 = t36.
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = t32.
          IF t38 IS INITIAL.
            t37 = abap_true.
          ENDIF.
          t31 = t37.
          IF t31 = abap_true.
            DATA(t39) = t27.
            DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t40.
            DATA(t41) = abap_true.
            IF t41 = abap_true.
              DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t42.
              DATA(t43) = t27.
              t42 = t43->parse_xml( ).
              t40 = t42.
            ELSE.
              DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t44.
              t40 = t44.
            ENDIF.
            t39->badis = t40.
            DELETE t39->zlnt_record_delet_0597644d88b4 WHERE table_line = `badis`.
          ENDIF.
          DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t45.
          DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t46.
          DATA(t47) = t27.
          t46 = t47->badis.
          t45 = t46.
          t30 = t45.
          t26 = t30.
          t22 = t26.
          DATA(t48) = abap_true.
          t23 = t48.
        CATCH cx_root INTO t25.
          DATA(t49) = VALUE abap_bool( ).
          DATA(t50) = t23.
          t49 = xsdbool( t50 = abap_false ).
          IF t49 = abap_true.
            DATA(t51) = t6.
            t51->close( ).
          ENDIF.
          RAISE EXCEPTION t25.
      ENDTRY.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t23.
      t52 = xsdbool( t53 = abap_false ).
      IF t52 = abap_true.
        DATA(t54) = t6.
        t54->close( ).
      ENDIF.
      DATA(t55) = t22.
      t21 = t55.
      DATA t56 TYPE REF TO zcl_lnt_ibadi_definition.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      DATA(t58) = VALUE i( ).
      DO.
        t21->load( ).
        IF t58 >= lines( t21->items ).
          EXIT.
        ENDIF.
        CLEAR t57.
        READ TABLE t21->items INDEX t58 + 1 INTO t57.
        t58 = t58 + 1.
        DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t59.
        CLEAR t56.
        IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t59 ?= t57.
          DATA t60 TYPE REF TO object.
          CLEAR t60.
          t60 = t59->as_ref( ).
          t56 ?= t60.
        ELSE.
          t56 ?= t57.
        ENDIF.
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = abap_false.
        t63 = t64.
        DATA t65 TYPE REF TO cx_root.
        CLEAR t65.
        TRY.
            DATA(t66) = VALUE abap_bool( ).
            DATA(t67) = VALUE string( ).
            DATA(t68) = VALUE string( ).
            DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t69.
            DATA(t70) = t56.
            t69 = t70->name.
            t68 = t69->value.
            DATA(t71) = strlen( t68 ).
            t67 = t68.
            IF t67 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t67 TO UPPER CASE.
            ELSE.
              t67 = zlnt_runtime_uppe_91169605024d=>full( t67 ).
            ENDIF.
            DATA(t72) = t2.
            t66 = xsdbool( t67 = t72 ).
            t62 = t66.
            DATA(t73) = abap_true.
            t63 = t73.
          CATCH cx_root INTO t65.
            DATA(t74) = VALUE abap_bool( ).
            DATA(t75) = t63.
            t74 = xsdbool( t75 = abap_false ).
            IF t74 = abap_true.
              DATA(t76) = t6.
              t76->close( ).
            ENDIF.
            RAISE EXCEPTION t65.
        ENDTRY.
        DATA(t77) = VALUE abap_bool( ).
        DATA(t78) = t63.
        t77 = xsdbool( t78 = abap_false ).
        IF t77 = abap_true.
          DATA(t79) = t6.
          t79->close( ).
        ENDIF.
        DATA(t80) = t62.
        t61 = t80.
        IF t61 = abap_true.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = abap_true.
          t81 = t82.
          DATA(t83) = t6.
          t83->close( ).
          DATA(t84) = t81.
          result = t84.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t85) = abap_false.
    result = t85.

  ENDMETHOD.

  METHOD exists_object.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE string.
    DATA(t11) = ||.
    t10 = t11.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE string.
    DATA(t14) = me->parent_obj.
    t13 = t14->get_type( ).
    DATA(t15) = |PROG|.
    t12 = xsdbool( t13 = t15 ).
    IF t12 = abap_true.
      DATA t16 TYPE string.
      DATA(t17) = `\PROGRAM=`.
      DATA t18 TYPE string.
      DATA(t19) = me->parent_obj.
      t18 = t19->get_name( ).
      DATA(t20) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      t10 = t16.
    ELSE.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE string.
      DATA(t23) = me->parent_obj.
      t22 = t23->get_type( ).
      DATA(t24) = |CLAS|.
      t21 = xsdbool( t22 = t24 ).
      IF t21 = abap_true.
        DATA t25 TYPE string.
        DATA(t26) = `\CLASS-POOL=`.
        DATA t27 TYPE string.
        DATA(t28) = me->parent_obj.
        t27 = t28->get_name( ).
        DATA(t29) = strlen( t26 ).
        t25 = |{ t26 }{ t27 }|.
        t10 = t25.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zif_lnt_class_definition.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_class_definition.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t33) = me->current.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_class_definition.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t32.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    IF t35 = abap_true.
      DATA t37 TYPE REF TO zif_lnt_class_definition.
      CLEAR t37.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zif_lnt_class_definition.
      DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t40) = t32.
      t39 = t40.
      DATA t41 TYPE string.
      DATA(t42) = t1.
      t41 = t42->value.
      t38 = t39->find_class_definition( i_name = t41 ).
      t34 = t38.
    ENDIF.
    t31 = t34.
    t30 = t31.
    DATA t43 TYPE abap_bool.
    DATA(t44) = t30.
    t43 = xsdbool( t44 IS BOUND ).
    IF t43 = abap_true.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE REF TO zif_lnt_class_definition.
      DATA(t48) = t30.
      t47 = t48.
      t46 = t47->is_global( ).
      DATA(t49) = abap_true.
      t45 = xsdbool( t46 = t49 ).
      IF t45 = abap_true.
        DATA(t50) = ||.
        t10 = t50.
      ENDIF.
      DATA t51 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t51.
      DATA(t52) = abap_true.
      IF t52 = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t55.
        DATA(t56) = abap_true.
        IF t56 = abap_true.
          DATA t57 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t58 TYPE REF TO zif_lnt_class_definition.
          DATA(t59) = t30.
          t58 = t59.
          t57 ?= t58.
          t55 = t57.
        ELSE.
          DATA t60 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t60.
          t55 = t60.
        ENDIF.
        t54 = t55.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA(t63) = abap_true.
        IF t63 = abap_true.
          DATA(t64) = |CLAS|.
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t64.
          t62 = t65.
        ELSE.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          t62 = t66.
        ENDIF.
        t61 = t62.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t69) = abap_true.
        IF t69 = abap_true.
          DATA t70 TYPE string.
          DATA t71 TYPE string.
          DATA(t72) = t10.
          DATA(t73) = `\CLASS=`.
          DATA(t74) = strlen( t72 ).
          t71 = |{ t72 }{ t73 }|.
          DATA t75 TYPE string.
          DATA t76 TYPE REF TO zif_lnt_class_definition.
          DATA(t77) = t30.
          t76 = t77.
          t75 = t76->get_name( ).
          DATA(t78) = strlen( t71 ).
          t70 = |{ t71 }{ t75 }|.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t70.
          t68 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t68 = t80.
        ENDIF.
        t67 = t68.
        t53 = NEW zcl_lnt_shape_59e28496( i_id = t54 i_oo_type = t61 i_rtti_name = t67 ).
        CREATE OBJECT t53->zlnt_view_ownkeys_b0e8086400eb.
        t53->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t53->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t53->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t81 ).
        ENDIF.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t53->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t53->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t82 ).
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t53->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t53->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t83 ).
        ENDIF.
        CREATE OBJECT t53->zlnt_json_ownkeys_70e5fd461788.
        t53->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t84) = |id|.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t53->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t53->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
        ENDIF.
        DATA(t86) = |ooType|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t53->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t53->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
        DATA(t88) = |RTTIName|.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t53->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t53->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
        ENDIF.
        t51 = t53.
      ELSE.
        DATA t90 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t90.
        t51 = t90.
      ENDIF.
      result = t51.
      RETURN.
    ENDIF.
    DATA t91 TYPE REF TO zif_lnt_object.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_object.
    CLEAR t92.
    DATA(t93) = me->reg.
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
      DATA(t102) = t1.
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
    t92 = t93->get_object( i_type_9913 = t94 i_name = t99 ).
    t91 = t92.
    DATA t105 TYPE abap_bool.
    DATA(t106) = t91.
    t105 = xsdbool( t106 IS BOUND ).
    IF t105 = abap_true.
      DATA t107 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t107.
      DATA(t108) = abap_true.
      IF t108 = abap_true.
        DATA t109 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t112 TYPE REF TO zif_lnt_object.
        DATA(t113) = t91.
        t112 = t113.
        t111 = t112->get_identifier( ).
        t110 = t111.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
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
        t114 = t115.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        DATA(t122) = abap_true.
        IF t122 = abap_true.
          DATA t123 TYPE string.
          DATA(t124) = `\CLASS=`.
          DATA t125 TYPE string.
          DATA t126 TYPE REF TO zif_lnt_object.
          DATA(t127) = t91.
          t126 = t127.
          t125 = t126->get_name( ).
          DATA(t128) = strlen( t124 ).
          t123 = |{ t124 }{ t125 }|.
          DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t129->has = abap_true.
          t129->value = t123.
          t121 = t129.
        ELSE.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          t121 = t130.
        ENDIF.
        t120 = t121.
        t109 = NEW zcl_lnt_shape_59e28496( i_id = t110 i_oo_type = t114 i_rtti_name = t120 ).
        CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
        t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t132 ).
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t133 ).
        ENDIF.
        CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
        t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t134) = |id|.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
        ENDIF.
        DATA(t136) = |ooType|.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
        ENDIF.
        DATA(t138) = |RTTIName|.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
        ENDIF.
        t107 = t109.
      ELSE.
        DATA t140 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t140.
        t107 = t140.
      ENDIF.
      result = t107.
      RETURN.
    ENDIF.
    DATA t141 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t142.
    DATA t143 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t144) = me->current.
    t143 = t144.
    DATA t145 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t145.
    DATA(t146) = VALUE abap_bool( ).
    DATA(t147) = t143.
    IF t147 IS INITIAL.
      t146 = abap_true.
    ENDIF.
    IF t146 = abap_true.
      DATA t148 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t148.
      t145 = t148.
    ELSE.
      DATA t149 TYPE REF TO zif_lnt_interface_definition.
      DATA t150 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t151) = t143.
      t150 = t151.
      DATA t152 TYPE string.
      DATA(t153) = t1.
      t152 = t153->value.
      t149 = t150->find_interface_definition( i_name = t152 ).
      t145 = t149.
    ENDIF.
    t142 = t145.
    t141 = t142.
    DATA t154 TYPE abap_bool.
    DATA(t155) = t141.
    t154 = xsdbool( t155 IS BOUND ).
    IF t154 = abap_true.
      DATA t156 TYPE abap_bool.
      DATA t157 TYPE abap_bool.
      DATA t158 TYPE REF TO zif_lnt_interface_definition.
      DATA(t159) = t141.
      t158 = t159.
      t157 = t158->is_global( ).
      DATA(t160) = abap_true.
      t156 = xsdbool( t157 = t160 ).
      IF t156 = abap_true.
        DATA(t161) = ||.
        t10 = t161.
      ENDIF.
      DATA t162 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t162.
      DATA(t163) = abap_true.
      IF t163 = abap_true.
        DATA t164 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t164.
        DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t165.
        DATA t166 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t166.
        DATA(t167) = abap_true.
        IF t167 = abap_true.
          DATA t168 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t169 TYPE REF TO zif_lnt_interface_definition.
          DATA(t170) = t141.
          t169 = t170.
          t168 ?= t169.
          t166 = t168.
        ELSE.
          DATA t171 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t171.
          t166 = t171.
        ENDIF.
        t165 = t166.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        DATA(t174) = abap_true.
        IF t174 = abap_true.
          DATA(t175) = |INTF|.
          DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t176->has = abap_true.
          t176->value = t175.
          t173 = t176.
        ELSE.
          DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t177.
          t173 = t177.
        ENDIF.
        t172 = t173.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t179.
        DATA(t180) = abap_true.
        IF t180 = abap_true.
          DATA t181 TYPE string.
          DATA t182 TYPE string.
          DATA(t183) = t10.
          DATA(t184) = `\INTERFACE=`.
          DATA(t185) = strlen( t183 ).
          t182 = |{ t183 }{ t184 }|.
          DATA t186 TYPE string.
          DATA t187 TYPE REF TO zif_lnt_interface_definition.
          DATA(t188) = t141.
          t187 = t188.
          t186 = t187->get_name( ).
          DATA(t189) = strlen( t182 ).
          t181 = |{ t182 }{ t186 }|.
          DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t190->has = abap_true.
          t190->value = t181.
          t179 = t190.
        ELSE.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t191.
          t179 = t191.
        ENDIF.
        t178 = t179.
        t164 = NEW zcl_lnt_shape_59e28496( i_id = t165 i_oo_type = t172 i_rtti_name = t178 ).
        CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
        t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t192 ).
        ENDIF.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t193 ).
        ENDIF.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t194 ).
        ENDIF.
        CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
        t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t195) = |id|.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
        ENDIF.
        DATA(t197) = |ooType|.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
        ENDIF.
        DATA(t199) = |RTTIName|.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
        ENDIF.
        t162 = t164.
      ELSE.
        DATA t201 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t201.
        t162 = t201.
      ENDIF.
      result = t162.
      RETURN.
    ENDIF.
    DATA t202 TYPE REF TO zif_lnt_object.
    CLEAR t202.
    DATA t203 TYPE REF TO zif_lnt_object.
    CLEAR t203.
    DATA(t204) = me->reg.
    DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t205.
    DATA(t206) = abap_true.
    IF t206 = abap_true.
      DATA(t207) = |INTF|.
      DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t208->has = abap_true.
      t208->value = t207.
      t205 = t208.
    ELSE.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t209.
      t205 = t209.
    ENDIF.
    DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t210.
    DATA(t211) = abap_true.
    IF t211 = abap_true.
      DATA t212 TYPE string.
      DATA(t213) = t1.
      t212 = t213->value.
      DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t214->has = abap_true.
      t214->value = t212.
      t210 = t214.
    ELSE.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t215.
      t210 = t215.
    ENDIF.
    t203 = t204->get_object( i_type_9913 = t205 i_name = t210 ).
    t202 = t203.
    DATA t216 TYPE abap_bool.
    DATA(t217) = t202.
    t216 = xsdbool( t217 IS BOUND ).
    IF t216 = abap_true.
      DATA t218 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t218.
      DATA(t219) = abap_true.
      IF t219 = abap_true.
        DATA t220 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t220.
        DATA t221 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t222 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t223 TYPE REF TO zif_lnt_object.
        DATA(t224) = t202.
        t223 = t224.
        t222 = t223->get_identifier( ).
        t221 = t222.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t226.
        DATA(t227) = abap_true.
        IF t227 = abap_true.
          DATA(t228) = |INTF|.
          DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t229->has = abap_true.
          t229->value = t228.
          t226 = t229.
        ELSE.
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          t226 = t230.
        ENDIF.
        t225 = t226.
        DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t231.
        DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t232.
        DATA(t233) = abap_true.
        IF t233 = abap_true.
          DATA t234 TYPE string.
          DATA(t235) = `\INTERFACE=`.
          DATA t236 TYPE string.
          DATA t237 TYPE REF TO zif_lnt_object.
          DATA(t238) = t202.
          t237 = t238.
          t236 = t237->get_name( ).
          DATA(t239) = strlen( t235 ).
          t234 = |{ t235 }{ t236 }|.
          DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t240->has = abap_true.
          t240->value = t234.
          t232 = t240.
        ELSE.
          DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t241.
          t232 = t241.
        ENDIF.
        t231 = t232.
        t220 = NEW zcl_lnt_shape_59e28496( i_id = t221 i_oo_type = t225 i_rtti_name = t231 ).
        CREATE OBJECT t220->zlnt_view_ownkeys_b0e8086400eb.
        t220->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t242 ).
        ENDIF.
        DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t243.
        IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t243 ).
        ENDIF.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t244 ).
        ENDIF.
        CREATE OBJECT t220->zlnt_json_ownkeys_70e5fd461788.
        t220->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t245) = |id|.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
        ENDIF.
        DATA(t247) = |ooType|.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
        ENDIF.
        DATA(t249) = |RTTIName|.
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t250.
        IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t249 p1 = t250 ).
        ENDIF.
        t218 = t220.
      ELSE.
        DATA t251 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t251.
        t218 = t251.
      ENDIF.
      result = t218.
      RETURN.
    ENDIF.
    DATA t252 TYPE REF TO zcl_lnt_shape_59e28496.
    CLEAR t252.
    DATA t253 TYPE REF TO zcl_lnt_shape_59e28496.
    CLEAR t253.
    DATA t254 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t255) = me->current.
    t254 = t255.
    DATA t256 TYPE REF TO zcl_lnt_shape_59e28496.
    CLEAR t256.
    DATA(t257) = VALUE abap_bool( ).
    DATA(t258) = t254.
    IF t258 IS INITIAL.
      t257 = abap_true.
    ENDIF.
    IF t257 = abap_true.
      DATA t259 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t259.
      t256 = t259.
    ELSE.
      DATA t260 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t261 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t262) = t254.
      t261 = t262.
      DATA t263 TYPE string.
      DATA(t264) = t1.
      t263 = t264->value.
      t260 = t261->find_deferred( i_name = t263 ).
      t256 = t260.
    ENDIF.
    t253 = t256.
    t252 = t253.
    DATA(t265) = VALUE abap_bool( ).
    DATA t266 TYPE REF TO zcl_lnt_shape_59e28496.
    DATA(t267) = t252.
    t266 = t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    t268 = t269.
    DATA(t270) = VALUE abap_bool( ).
    DATA(t271) = VALUE abap_bool( ).
    DATA(t272) = t266.
    IF t272 IS INITIAL.
      t271 = abap_true.
    ENDIF.
    t270 = xsdbool( t271 = abap_false ).
    t265 = t270.
    IF t265 = abap_true.
      DATA t273 TYPE string.
      DATA(t274) = t10.
      t273 = t274.
      DATA t275 TYPE string.
      DATA t276 TYPE string.
      DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t278 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA(t279) = t252.
      t278 = t279.
      t277 = t278->oo_type.
      t276 = t277->value.
      t275 = t276.
      DATA t280 TYPE abap_bool.
      DATA(t281) = t275.
      DATA(t282) = |INTF|.
      t280 = xsdbool( t281 = t282 ).
      IF t280 = abap_true.
        DATA t283 TYPE string.
        DATA t284 TYPE string.
        DATA(t285) = t273.
        DATA(t286) = `\INTERFACE=`.
        DATA(t287) = strlen( t285 ).
        t284 = |{ t285 }{ t286 }|.
        DATA t288 TYPE string.
        DATA(t289) = t1.
        t288 = t289->value.
        DATA(t290) = strlen( t284 ).
        t283 = |{ t284 }{ t288 }|.
        t273 = t283.
      ELSE.
        DATA t291 TYPE string.
        DATA t292 TYPE string.
        DATA(t293) = t273.
        DATA(t294) = `\CLASS=`.
        DATA(t295) = strlen( t293 ).
        t292 = |{ t293 }{ t294 }|.
        DATA t296 TYPE string.
        DATA(t297) = t1.
        t296 = t297->value.
        DATA(t298) = strlen( t292 ).
        t291 = |{ t292 }{ t296 }|.
        t273 = t291.
      ENDIF.
      DATA t299 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t299.
      DATA(t300) = abap_true.
      IF t300 = abap_true.
        DATA t301 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t301.
        DATA t302 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t303 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t304 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA(t305) = t252.
        t304 = t305.
        t303 = t304->id.
        t302 = t303.
        DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t306.
        DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t307.
        DATA(t308) = abap_true.
        IF t308 = abap_true.
          DATA t309 TYPE string.
          DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t311 TYPE REF TO zcl_lnt_shape_59e28496.
          DATA(t312) = t252.
          t311 = t312.
          t310 = t311->oo_type.
          t309 = t310->value.
          DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t313->has = abap_true.
          t313->value = t309.
          t307 = t313.
        ELSE.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t314.
          t307 = t314.
        ENDIF.
        t306 = t307.
        DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t315.
        DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t316.
        DATA(t317) = abap_true.
        IF t317 = abap_true.
          DATA(t318) = t273.
          DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t319->has = abap_true.
          t319->value = t318.
          t316 = t319.
        ELSE.
          DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t320.
          t316 = t320.
        ENDIF.
        t315 = t316.
        t301 = NEW zcl_lnt_shape_59e28496( i_id = t302 i_oo_type = t306 i_rtti_name = t315 ).
        CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
        t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t321.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t321 ).
        ENDIF.
        DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t322.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t322 ).
        ENDIF.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t323.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t323 ).
        ENDIF.
        CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
        t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t324) = |id|.
        DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t325.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
        ENDIF.
        DATA(t326) = |ooType|.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t327.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
        ENDIF.
        DATA(t328) = |RTTIName|.
        DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t329.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
        ENDIF.
        t299 = t301.
      ELSE.
        DATA t330 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t330.
        t299 = t330.
      ENDIF.
      result = t299.
      RETURN.
    ENDIF.
    DATA t331 TYPE REF TO zcl_lnt_shape_59e28496.
    CLEAR t331.
    result = t331.

  ENDMETHOD.

  METHOD find_class_definition.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_class_definition.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_class_definition.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_class_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t13) = me->current.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_class_definition.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t12.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zif_lnt_class_definition.
      CLEAR t17.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zif_lnt_class_definition.
      DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t20) = t12.
      t19 = t20.
      DATA t21 TYPE string.
      DATA(t22) = t1.
      t21 = t22->value.
      t18 = t19->find_class_definition( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t10.
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_class_definition.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zif_lnt_class_definition.
        DATA(t28) = t10.
        t27 = t28.
        t25 = t27.
      ELSE.
        DATA t29 TYPE REF TO zif_lnt_class_definition.
        CLEAR t29.
        t25 = t29.
      ENDIF.
      result = t25.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_class.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_class.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_object.
    CLEAR t32.
    DATA(t33) = me->reg.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA(t36) = |CLAS|.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t36.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE string.
      DATA(t42) = t1.
      t41 = t42->value.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t41.
      t39 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t39 = t44.
    ENDIF.
    t32 = t33->get_object( i_type_9913 = t34 i_name = t39 ).
    DATA t45 TYPE REF TO object.
    t45 = t32.
    t31 ?= t45.
    t30 = t31.
    DATA t46 TYPE abap_bool.
    DATA(t47) = t30.
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zif_lnt_class_definition.
      DATA t49 TYPE REF TO zcl_lnt_class.
      DATA(t50) = t30.
      t49 = t50.
      t48 = t49->gt_dfn_ins_src_obj_cls_ts_clss( ).
      result = t48.
      RETURN.
    ENDIF.
    DATA t51 TYPE REF TO zif_lnt_class_definition.
    CLEAR t51.
    result = t51.

  ENDMETHOD.

  METHOD find_type_pool_constant.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ELSEIF t9->has = abap_false.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE i( ).
      DATA(t13) = VALUE string( ).
      DATA(t14) = t1.
      t13 = t14->value.
      DATA(t15) = |_|.
      DATA(t16) = strlen( t13 ).
      IF t15 IS INITIAL.
        t12 = 0.
      ELSE.
        FIND t15 IN t13 MATCH OFFSET t12.
        IF sy-subrc <> 0.
          t12 = -1.
        ENDIF.
      ENDIF.
      DATA(t17) = 0.
      t11 = xsdbool( t12 >= t17 ).
      DATA(t18) = abap_false.
      t10 = xsdbool( t11 = t18 ).
      t2 = t10.
    ENDIF.
    IF t2 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA(t20) = VALUE string( ).
    DATA(t21) = VALUE string( ).
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t22.
    DATA(t23) = VALUE string( ).
    DATA(t24) = t1.
    t23 = t24->value.
    DATA(t25) = |_|.
    DATA(t26) = strlen( t23 ).
    DATA(t27) = VALUE i( ).
    DATA(t28) = VALUE i( ).
    DATA(t29) = VALUE i( ).
    DATA(t30) = VALUE i( ).
    DATA(t31) = VALUE string( ).
    CREATE OBJECT t22.
    t30 = strlen( t25 ).
    t27 = 0.
    IF t30 = 0.
      WHILE t27 < t26.
        t31 = t23+t27(1).
        APPEND t31 TO t22->items.
        t27 = t27 + 1.
      ENDWHILE.
    ELSE.
      WHILE t27 <= t26.
        FIND FIRST OCCURRENCE OF t25 IN SECTION OFFSET t27 OF t23 MATCH OFFSET t28.
        IF sy-subrc = 0.
          t29 = t28 - t27.
        ELSE.
          t28 = -1.
          t29 = t26 - t27.
        ENDIF.
        CLEAR t31.
        IF t29 > 0.
          t31 = t23+t27(t29).
        ENDIF.
        APPEND t31 TO t22->items.
        IF t28 < 0.
          EXIT.
        ENDIF.
        t27 = t28 + t30.
      ENDWHILE.
    ENDIF.
    IF t22->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t22->load( ).
    CLEAR t21.
    READ TABLE t22->items INDEX 1 INTO t21.
    t20 = t21.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE i( ).
    DATA(t35) = t20.
    DATA(t36) = strlen( t35 ).
    t34 = t36.
    DATA(t37) = 1.
    t33 = xsdbool( t34 <= t37 ).
    t32 = t33.
    IF t33 = abap_false.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE i( ).
      DATA(t40) = t20.
      DATA(t41) = strlen( t40 ).
      t39 = t41.
      DATA(t42) = 5.
      t38 = xsdbool( t39 > t42 ).
      t32 = t38.
    ENDIF.
    IF t32 = abap_true.
      DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t43.
      result = t43.
      RETURN.
    ENDIF.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE string( ).
    DATA(t47) = me->parent_obj.
    t46 = t47->get_type( ).
    DATA(t48) = |TYPE|.
    t45 = xsdbool( t46 = t48 ).
    t44 = t45.
    IF t45 = abap_true.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = VALUE string( ).
      DATA(t51) = VALUE string( ).
      DATA(t52) = me->parent_obj.
      t51 = t52->get_name( ).
      DATA(t53) = strlen( t51 ).
      t50 = t51.
      IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t50 TO UPPER CASE.
      ELSE.
        t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
      ENDIF.
      DATA(t54) = VALUE string( ).
      DATA(t55) = t20.
      DATA(t56) = strlen( t55 ).
      t54 = t55.
      IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t54 TO UPPER CASE.
      ELSE.
        t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
      ENDIF.
      t49 = xsdbool( t50 = t54 ).
      t44 = t49.
    ENDIF.
    IF t44 = abap_true.
      DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t57.
      result = t57.
      RETURN.
    ENDIF.
    DATA t58 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_object.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_object.
    CLEAR t62.
    DATA(t63) = me->reg.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t64.
    DATA(t65) = abap_true.
    IF t65 = abap_true.
      DATA(t66) = |TYPE|.
      DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t67->has = abap_true.
      t67->value = t66.
      t64 = t67.
    ELSE.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      t64 = t68.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t69.
    DATA(t70) = abap_true.
    IF t70 = abap_true.
      DATA(t71) = t20.
      DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t72->has = abap_true.
      t72->value = t71.
      t69 = t72.
    ELSE.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t73.
      t69 = t73.
    ENDIF.
    t62 = t63->get_object( i_type_9913 = t64 i_name = t69 ).
    t61 = t62.
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t74.
      DATA t75 TYPE REF TO object.
      CLEAR t75.
      CLEAR t74.
      t75 = t61.
      TRY.
          t60 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t74 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t60 = t74->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t59.
    IF t60 IS BOUND.
      IF t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t59 ?= t60->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t59 IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
      ENDIF.
    ENDIF.
    t58 = t59.
    DATA(t76) = VALUE abap_bool( ).
    DATA t77 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t77.
    DATA(t78) = t58.
    t77 = t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    t79 = t80.
    DATA(t81) = VALUE abap_bool( ).
    DATA(t82) = t77.
    IF t82 IS INITIAL.
      t81 = abap_true.
    ENDIF.
    t76 = t81.
    IF t76 = abap_true.
      DATA t83 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t83.
      result = t83.
      RETURN.
    ENDIF.
    DATA t84 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t88.
    DATA t89 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_syntax_logic.
    CLEAR t90.
    DATA(t91) = me->reg.
    DATA t92 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t92.
    DATA(t93) = t58.
    t92 = t93.
    t90 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t91 i_object_19cd = t92 ).
    t89 = t90->run( ).
    t88 = t89->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t87 = t88->get_first_child( ).
    t86 = t87.
    DATA t94 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t94.
    DATA(t95) = VALUE abap_bool( ).
    DATA(t96) = t86.
    IF t96 IS INITIAL.
      t95 = abap_true.
    ENDIF.
    IF t95 = abap_true.
      DATA t97 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t97.
      t94 = t97.
    ELSE.
      DATA t98 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t98.
      DATA t99 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t99.
      DATA(t100) = t86.
      t99 = t100.
      t98 = t99->get_first_child( ).
      t94 = t98.
    ENDIF.
    t85 = t94.
    t84 = t85.
    DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t101.
    DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t103.
    DATA(t104) = t84.
    t103 = t104.
    DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t105.
    DATA(t106) = VALUE abap_bool( ).
    DATA(t107) = t103.
    IF t107 IS INITIAL.
      t106 = abap_true.
    ENDIF.
    IF t106 = abap_true.
      DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t108.
      t105 = t108.
    ELSE.
      DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t109.
      DATA t110 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t110.
      DATA(t111) = t103.
      t110 = t111.
      DATA(t112) = VALUE string( ).
      DATA(t113) = t1.
      t112 = t113->value.
      t109 = t110->find_variable( i_name = t112 ).
      t105 = t109.
    ENDIF.
    t102 = t105.
    t101 = t102.
    DATA(t114) = t101.
    result = t114.

  ENDMETHOD.

  METHOD find_type_pool_type.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE i( ).
    DATA(t5) = t1.
    DATA(t6) = |_|.
    DATA(t7) = strlen( t5 ).
    IF t6 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t6 IN t5 MATCH OFFSET t4.
      IF sy-subrc <> 0.
        t4 = -1.
      ENDIF.
    ENDIF.
    DATA(t8) = 0.
    t3 = xsdbool( t4 >= t8 ).
    DATA(t9) = abap_false.
    t2 = xsdbool( t3 = t9 ).
    IF t2 = abap_true.
      DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA(t11) = VALUE string( ).
    DATA(t12) = VALUE string( ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t13.
    DATA(t14) = t1.
    DATA(t15) = |_|.
    DATA(t16) = strlen( t14 ).
    DATA(t17) = VALUE i( ).
    DATA(t18) = VALUE i( ).
    DATA(t19) = VALUE i( ).
    DATA(t20) = VALUE i( ).
    DATA(t21) = VALUE string( ).
    CREATE OBJECT t13.
    t20 = strlen( t15 ).
    t17 = 0.
    IF t20 = 0.
      WHILE t17 < t16.
        t21 = t14+t17(1).
        APPEND t21 TO t13->items.
        t17 = t17 + 1.
      ENDWHILE.
    ELSE.
      WHILE t17 <= t16.
        FIND FIRST OCCURRENCE OF t15 IN SECTION OFFSET t17 OF t14 MATCH OFFSET t18.
        IF sy-subrc = 0.
          t19 = t18 - t17.
        ELSE.
          t18 = -1.
          t19 = t16 - t17.
        ENDIF.
        CLEAR t21.
        IF t19 > 0.
          t21 = t14+t17(t19).
        ENDIF.
        APPEND t21 TO t13->items.
        IF t18 < 0.
          EXIT.
        ENDIF.
        t17 = t18 + t20.
      ENDWHILE.
    ENDIF.
    IF t13->has( 1 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t13->load( ).
    CLEAR t12.
    READ TABLE t13->items INDEX 1 INTO t12.
    t11 = t12.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE i( ).
    DATA(t25) = t11.
    DATA(t26) = strlen( t25 ).
    t24 = t26.
    DATA(t27) = 2.
    t23 = xsdbool( t24 <= t27 ).
    t22 = t23.
    IF t23 = abap_false.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = VALUE i( ).
      DATA(t30) = t11.
      DATA(t31) = strlen( t30 ).
      t29 = t31.
      DATA(t32) = 5.
      t28 = xsdbool( t29 > t32 ).
      t22 = t28.
    ENDIF.
    IF t22 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE string( ).
    DATA(t37) = me->parent_obj.
    t36 = t37->get_type( ).
    DATA(t38) = |TYPE|.
    t35 = xsdbool( t36 = t38 ).
    t34 = t35.
    IF t35 = abap_true.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE string( ).
      DATA(t41) = VALUE string( ).
      DATA(t42) = me->parent_obj.
      t41 = t42->get_name( ).
      DATA(t43) = strlen( t41 ).
      t40 = t41.
      IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t40 TO UPPER CASE.
      ELSE.
        t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
      ENDIF.
      DATA(t44) = VALUE string( ).
      DATA(t45) = t11.
      DATA(t46) = strlen( t45 ).
      t44 = t45.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      t39 = xsdbool( t40 = t44 ).
      t34 = t39.
    ENDIF.
    IF t34 = abap_true.
      DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t47.
      result = t47.
      RETURN.
    ENDIF.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t49.
    DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_ddic.
    CLEAR t51.
    DATA(t52) = me->reg.
    t51 = NEW zcl_lnt_ddic( i_reg_f149 = t52 ).
    DATA(t53) = t1.
    t50 = t51->lookup_no_void( i_name = t53 ).
    t49 = t50.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    t54 = t55.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = t49.
    IF t58 IS INITIAL.
      t57 = abap_true.
    ENDIF.
    t56 = xsdbool( t57 = abap_false ).
    t48 = t56.
    IF t48 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t59.
      result = t59.
      RETURN.
    ENDIF.
    DATA t60 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_object.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_object.
    CLEAR t64.
    DATA(t65) = me->reg.
    DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t66.
    DATA(t67) = abap_true.
    IF t67 = abap_true.
      DATA(t68) = |TYPE|.
      DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t69->has = abap_true.
      t69->value = t68.
      t66 = t69.
    ELSE.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t70.
      t66 = t70.
    ENDIF.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t71.
    DATA(t72) = abap_true.
    IF t72 = abap_true.
      DATA(t73) = t11.
      DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t74->has = abap_true.
      t74->value = t73.
      t71 = t74.
    ELSE.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      t71 = t75.
    ENDIF.
    t64 = t65->get_object( i_type_9913 = t66 i_name = t71 ).
    t63 = t64.
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      CLEAR t76.
      t77 = t63.
      TRY.
          t62 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t76 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t62 = t76->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t61.
    IF t62 IS BOUND.
      IF t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t61 ?= t62->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t61 IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
      ENDIF.
    ENDIF.
    t60 = t61.
    DATA(t78) = VALUE abap_bool( ).
    DATA t79 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t79.
    DATA(t80) = t60.
    t79 = t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    t81 = t82.
    DATA(t83) = VALUE abap_bool( ).
    DATA(t84) = t79.
    IF t84 IS INITIAL.
      t83 = abap_true.
    ENDIF.
    t78 = t83.
    IF t78 = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t85.
      result = t85.
      RETURN.
    ENDIF.
    DATA t86 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_spaghetti_scope.
    CLEAR t90.
    DATA t91 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t91.
    DATA t92 TYPE REF TO zcl_lnt_syntax_logic.
    CLEAR t92.
    DATA(t93) = me->reg.
    DATA t94 TYPE REF TO zcl_lnt_abap_object.
    CLEAR t94.
    DATA(t95) = t60.
    t94 = t95.
    t92 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t93 i_object_19cd = t94 ).
    t91 = t92->run( ).
    t90 = t91->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t89 = t90->get_first_child( ).
    t88 = t89.
    DATA t96 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t96.
    DATA(t97) = VALUE abap_bool( ).
    DATA(t98) = t88.
    IF t98 IS INITIAL.
      t97 = abap_true.
    ENDIF.
    IF t97 = abap_true.
      DATA t99 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t99.
      t96 = t99.
    ELSE.
      DATA t100 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t100.
      DATA t101 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t101.
      DATA(t102) = t88.
      t101 = t102.
      t100 = t101->get_first_child( ).
      t96 = t100.
    ENDIF.
    t87 = t96.
    t86 = t87.
    DATA t103 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t103.
    DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t105.
    DATA(t106) = t86.
    t105 = t106.
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t107.
    DATA(t108) = VALUE abap_bool( ).
    DATA(t109) = t105.
    IF t109 IS INITIAL.
      t108 = abap_true.
    ENDIF.
    IF t108 = abap_true.
      DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t110.
      t107 = t110.
    ELSE.
      DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t111.
      DATA t112 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t112.
      DATA(t113) = t105.
      t112 = t113.
      DATA(t114) = t1.
      t111 = t112->find_type( i_name = t114 ).
      t107 = t111.
    ENDIF.
    t104 = t107.
    t103 = t104.
    DATA(t115) = t103.
    result = t115.

  ENDMETHOD.

  METHOD find_interface_definition.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t13) = me->current.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t12.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t17.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zif_lnt_interface_definition.
      DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t20) = t12.
      t19 = t20.
      DATA t21 TYPE string.
      DATA(t22) = t1.
      t21 = t22->value.
      t18 = t19->find_interface_definition( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t10.
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zif_lnt_interface_definition.
        DATA(t28) = t10.
        t27 = t28.
        t25 = t27.
      ELSE.
        DATA t29 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t29.
        t25 = t29.
      ENDIF.
      result = t25.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_ob_interface.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_object.
    CLEAR t32.
    DATA(t33) = me->reg.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA(t36) = |INTF|.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t36.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE string.
      DATA(t42) = t1.
      t41 = t42->value.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t41.
      t39 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t39 = t44.
    ENDIF.
    t32 = t33->get_object( i_type_9913 = t34 i_name = t39 ).
    DATA t45 TYPE REF TO object.
    t45 = t32.
    t31 ?= t45.
    t30 = t31.
    DATA t46 TYPE abap_bool.
    DATA(t47) = t30.
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zif_lnt_interface_definition.
      DATA t49 TYPE REF TO zcl_lnt_ob_interface.
      DATA t50 TYPE REF TO zcl_lnt_ob_interface.
      DATA(t51) = t30.
      t50 = t51.
      t49 = t50.
      DATA t52 TYPE REF TO zif_lnt_interface_definition.
      DATA(t53) = t49.
      t52 = t53->def.
      t48 = t52.
      result = t48.
      RETURN.
    ENDIF.
    DATA t54 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t54.
    result = t54.

  ENDMETHOD.

  METHOD find_form_definition.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zif_lnt_form_definition.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t4) = me->current.
    t3 = t4.
    DATA t5 TYPE REF TO zif_lnt_form_definition.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_form_definition.
      CLEAR t8.
      t5 = t8.
    ELSE.
      DATA t9 TYPE REF TO zif_lnt_form_definition.
      DATA t10 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t11) = t3.
      t10 = t11.
      DATA(t12) = t1.
      t9 = t10->find_form_definition( i_name = t12 ).
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t12) = me->current.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t11.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t18 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t19) = t11.
      t18 = t19.
      DATA t20 TYPE string.
      DATA(t21) = t1.
      t20 = t21->value.
      t17 = t18->find_type( i_name = t20 ).
      t13 = t17.
    ENDIF.
    t10 = t13.
    result = t10.

  ENDMETHOD.

  METHOD find_extra_like_type.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t12) = me->current.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t11.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t18 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t19) = t11.
      t18 = t19.
      DATA t20 TYPE string.
      DATA(t21) = t1.
      t20 = t21->value.
      t17 = t18->find_extra_like_type( i_name = t20 ).
      t13 = t17.
    ENDIF.
    t10 = t13.
    result = t10.

  ENDMETHOD.

  METHOD find_variable.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t13) = me->current.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t12.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t17.
      t14 = t17.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t20) = t12.
      t19 = t20.
      DATA t21 TYPE string.
      DATA(t22) = t1.
      t21 = t22->value.
      t18 = t19->find_variable( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t10.
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t28) = t10.
        t27 = t28.
        t25 = t27.
      ELSE.
        DATA t29 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t29.
        t25 = t29.
      ENDIF.
      result = t25.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA t33 TYPE string.
      DATA(t34) = t1.
      t33 = t34->value.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t33.
      t31 = t35.
    ELSE.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      t31 = t36.
    ENDIF.
    t30 = me->find_type_pool_constant( i_name = t31 ).
    result = t30.

  ENDMETHOD.

  METHOD find_returning_parameter.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t8) = me->current.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t7.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t12.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zcl_lnt_iscope_data.
      DATA t14 TYPE REF TO zcl_lnt_scope_data.
      DATA t15 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t16) = t7.
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t18) = t14.
      t17 = t18->data_56cc.
      t13 = t17.
      t9 = t13.
    ENDIF.
    t6 = t9.
    t5 = t6.
    DATA t19 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t5.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t25) = t5.
      t24 = t25.
      t23 = t24->vars.
      t19 = t23.
    ENDIF.
    t4 = t19.
    t3 = t4.
    DATA t26 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    CLEAR t26.
    DATA t27 TYPE abap_bool.
    DATA(t28) = t3.
    t27 = xsdbool( t28 IS BOUND ).
    IF t27 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t30) = t3.
      t29 = t30.
      t26 = t29.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t32 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t33) = NEW zlnt_runtime_map__126b79e3f8a9( ).
      t32 = t33.
      DATA(t34) = t32.
      t31 = t34.
      t26 = t31.
    ENDIF.
    t2 = t26.
    t1 = t2->keys( ).
    DATA(t35) = VALUE string( ).
    t1->dense( ).
    DATA(t36) = VALUE i( ).
    DO.
      t1->load( ).
      IF t36 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t35.
      READ TABLE t1->items INDEX t36 + 1 INTO t35.
      IF t1->has( t36 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t36 = t36 + 1.
      DATA t37 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t38 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t39 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t40 TYPE REF TO zcl_lnt_iscope_data.
      DATA t41 TYPE REF TO zcl_lnt_scope_data.
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t43) = me->current.
      t42 = t43.
      t41 = t42.
      DATA t44 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t45) = t41.
      t44 = t45->data_56cc.
      t40 = t44.
      t39 = t40->vars.
      DATA(t46) = t35.
      t38 = t39->get( p0 = t46 ).
      t37 = t38.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t51) = t37.
      t50 = t51.
      t49 = t50.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t53) = t49.
      t52 = t53->meta.
      t48 = t52.
      DATA(t54) = |returning|.
      t47 = t48->includes( p0 = t54 ).
      IF t47 = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t55.
        DATA(t56) = abap_true.
        IF t56 = abap_true.
          DATA t57 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t58) = t37.
          t57 = t58.
          t55 = t57.
        ELSE.
          DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t59.
          t55 = t59.
        ENDIF.
        result = t55.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t60.
    result = t60.

  ENDMETHOD.

  METHOD get_ddic.
    DATA t1 TYPE REF TO zcl_lnt_ddic.
    DATA(t2) = me->reg.
    t1 = NEW zcl_lnt_ddic( i_reg_f149 = t2 ).
    result = t1.

  ENDMETHOD.

  METHOD get_ddic_references.
    DATA t1 TYPE REF TO zif_lnt_ddic_references.
    DATA(t2) = me->reg.
    t1 = t2->get_ddic_references( ).
    result = t1.

  ENDMETHOD.

  METHOD get_msag_references.
    DATA t1 TYPE REF TO zif_lnt_msag_references.
    DATA(t2) = me->reg.
    t1 = t2->get_msag_references( ).
    result = t1.

  ENDMETHOD.

  METHOD get_parent_obj.
    DATA(t1) = me->parent_obj.
    result = t1.

  ENDMETHOD.

  METHOD get_name.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA(t3) = me->current.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = |error, getName|.
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
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t20.
    DATA(t21) = me->current.
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t22.
    DATA(t23) = t19.
    t22 = t23->identifier.
    t18 = t22.
    t17 = t18->sname.
    result = t17.

  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t2.
    DATA(t3) = me->current.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = |error, getType|.
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
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t20.
    DATA(t21) = me->current.
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t22.
    DATA(t23) = t19.
    t22 = t23->identifier.
    t18 = t22.
    t17 = t18->stype.
    result = t17.

  ENDMETHOD.

  METHOD push.
    DATA(t1) = i_stype.
    DATA(t2) = i_sname.
    DATA(t3) = i_start.
    DATA(t4) = i_filename.
    DATA t5 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t7 TYPE string.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE string.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = t3.
    t11 = t12.
    DATA t13 TYPE string.
    DATA(t14) = t4.
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE REF TO zcl_lnt_position.
    CLEAR t16.
    t15 = t16.
    t6 = NEW zcl_lnt_iscope_identifier( i_stype = t7 i_sname = t9 i_filename = t13 i_start = t11 i_end = t15 ).
    CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
    t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t17 ).
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t18 ).
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t19 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t20 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t21 ).
    ENDIF.
    CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
    t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t22) = |stype|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    ENDIF.
    DATA(t24) = |sname|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    DATA(t26) = |start|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA(t28) = |filename|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |end|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    t5 = t6.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t34) = me->current.
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
      DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t42) = t5.
        DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t43.
        t41 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t42 i_parent = t43 ).
        t39 = t41.
      ELSE.
        DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t44.
        t39 = t44.
      ENDIF.
      me->current = t39.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t46 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t47) = me->current.
      t46 = t47.
      t45 = t46.
      DATA t48 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t48.
      DATA(t49) = abap_true.
      IF t49 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t50.
        DATA(t51) = t5.
        DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t52.
        DATA(t53) = abap_true.
        IF t53 = abap_true.
          DATA(t54) = t45.
          t52 = t54.
        ELSE.
          DATA t55 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t55.
          t52 = t55.
        ENDIF.
        t50 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t51 i_parent = t52 ).
        t48 = t50.
      ELSE.
        DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t56.
        t48 = t56.
      ENDIF.
      me->current = t48.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA(t57) = t45.
      DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t59) = me->current.
      t58 = t59.
      t57->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t58 ).
    ENDIF.
  ENDMETHOD.

  METHOD is_oo.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t2) = me->current.
    t1 = t2.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t5) = t1.
      t4 = t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t6 = t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = t4.
      IF t10 IS INITIAL.
        t9 = abap_true.
      ENDIF.
      t8 = xsdbool( t9 = abap_false ).
      t3 = t8.
      IF t3 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t14 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t15 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t16) = t1.
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t18) = t14.
      t17 = t18->identifier.
      t13 = t17.
      t12 = t13->stype.
      t11 = t12.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t11.
      DATA(t22) = |class_definition|.
      t20 = xsdbool( t21 = t22 ).
      t19 = t20.
      IF t20 = abap_false.
        DATA t23 TYPE abap_bool.
        DATA(t24) = t11.
        DATA(t25) = |interface|.
        t23 = xsdbool( t24 = t25 ).
        t19 = t23.
      ENDIF.
      IF t19 = abap_true.
        DATA(t26) = abap_true.
        result = t26.
        RETURN.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t28 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t29) = t1.
      t28 = t29.
      t27 = t28->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t27.
    ENDDO.
    DATA(t30) = abap_false.
    result = t30.

  ENDMETHOD.

  METHOD is_any_oo.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t2) = me->current.
    t1 = t2.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t5) = t1.
      t4 = t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t6 = t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = t4.
      IF t10 IS INITIAL.
        t9 = abap_true.
      ENDIF.
      t8 = xsdbool( t9 = abap_false ).
      t3 = t8.
      IF t3 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t14 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t15 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t16) = t1.
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t18) = t14.
      t17 = t18->identifier.
      t13 = t17.
      t12 = t13->stype.
      t11 = t12.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t11.
      DATA(t23) = |class_definition|.
      t21 = xsdbool( t22 = t23 ).
      t20 = t21.
      IF t21 = abap_false.
        DATA t24 TYPE abap_bool.
        DATA(t25) = t11.
        DATA(t26) = |class_implementation|.
        t24 = xsdbool( t25 = t26 ).
        t20 = t24.
      ENDIF.
      t19 = t20.
      IF t20 = abap_false.
        DATA t27 TYPE abap_bool.
        DATA(t28) = t11.
        DATA(t29) = |interface|.
        t27 = xsdbool( t28 = t29 ).
        t19 = t27.
      ENDIF.
      IF t19 = abap_true.
        DATA(t30) = abap_true.
        result = t30.
        RETURN.
      ENDIF.
      DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t33) = t1.
      t32 = t33.
      t31 = t32->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t31.
    ENDDO.
    DATA(t34) = abap_false.
    result = t34.

  ENDMETHOD.

  METHOD is_in_static_method.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t2) = me->current.
    t1 = t2.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t5) = t1.
      t4 = t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t6 = t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = t4.
      IF t10 IS INITIAL.
        t9 = abap_true.
      ENDIF.
      t8 = xsdbool( t9 = abap_false ).
      t3 = t8.
      IF t3 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t14 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t15 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t16) = t1.
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t18) = t14.
      t17 = t18->identifier.
      t13 = t17.
      t12 = t13->stype.
      t11 = t12.
      DATA t19 TYPE abap_bool.
      DATA(t20) = t11.
      DATA(t21) = |method_instance|.
      t19 = xsdbool( t20 = t21 ).
      IF t19 = abap_true.
        DATA(t22) = abap_false.
        result = t22.
        RETURN.
      ELSE.
        DATA t23 TYPE abap_bool.
        DATA(t24) = t11.
        DATA(t25) = |class_implementation|.
        t23 = xsdbool( t24 = t25 ).
        IF t23 = abap_true.
          DATA(t26) = abap_true.
          result = t26.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t28 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t29) = t1.
      t28 = t29.
      t27 = t28->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t27.
    ENDDO.
    DATA(t30) = abap_false.
    result = t30.

  ENDMETHOD.

  METHOD add_local_friend.
    DATA(t1) = i_class_name.
    DATA(t2) = i_friend_name.
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE string.
    DATA(t5) = t1.
    DATA(t6) = strlen( t5 ).
    t4 = t5.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t11) = me->local_friends.
    DATA(t12) = t3.
    t10 = t11->get( p0 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t9.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t18) = t9.
      t17 = t18.
      t13 = t17.
    ENDIF.
    t8 = t13.
    t7 = t8.
    DATA(t19) = t7.
    DATA t20 TYPE string.
    DATA(t21) = t2.
    DATA(t22) = strlen( t21 ).
    t20 = t21.
    IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t20 TO UPPER CASE.
    ELSE.
      t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
    ENDIF.
    t19->load( ).
    APPEND t20 TO t19->items.
    t19->save( ).
    DATA t23 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    DATA(t24) = me->local_friends.
    DATA(t25) = t3.
    DATA(t26) = t7.
    t23 = t24->set( p0 = t25 p1 = t26 ).
  ENDMETHOD.

  METHOD is_local_friend.
    DATA(t1) = i_class_name.
    DATA(t2) = i_friend_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t6.
    DATA(t7) = me->local_friends.
    DATA t8 TYPE string.
    DATA(t9) = t1.
    DATA(t10) = strlen( t9 ).
    t8 = t9.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t6 = t7->get( p0 = t8 ).
    t5 = t6.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = t5.
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    IF t12 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t14.
      t11 = t14.
    ELSE.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t17) = t5.
      t16 = t17.
      DATA t18 TYPE string.
      DATA(t19) = t2.
      DATA(t20) = strlen( t19 ).
      t18 = t19.
      IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t18 TO UPPER CASE.
      ELSE.
        t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
      ENDIF.
      t15 = t16->includes( p0 = t18 ).
      DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t21->has = abap_true.
      t21->value = t15.
      t11 = t21.
    ENDIF.
    t4 = t11.
    DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA(t24) = abap_true.
      DATA(t25) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t25->has = abap_true.
      t25->value = t24.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t26.
      t22 = t26.
    ENDIF.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    IF t4 IS BOUND.
      t27 = t4->has.
    ENDIF.
    IF t22 IS BOUND.
      t28 = t22->has.
    ENDIF.
    IF t27 = t28.
      IF t27 = abap_false.
        t3 = abap_true.
      ELSEIF t4->value = t22->value.
        t3 = abap_true.
      ENDIF.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD get_enclosing_class_name.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t2) = me->current.
    t1 = t2.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t5) = t1.
      t4 = t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t6 = t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = t4.
      IF t10 IS INITIAL.
        t9 = abap_true.
      ENDIF.
      t8 = xsdbool( t9 = abap_false ).
      t3 = t8.
      IF t3 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t14 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t15 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t16) = t1.
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t18) = t14.
      t17 = t18->identifier.
      t13 = t17.
      t12 = t13->stype.
      DATA(t19) = |class_implementation|.
      t11 = xsdbool( t12 = t19 ).
      IF t11 = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        DATA(t21) = abap_true.
        IF t21 = abap_true.
          DATA t22 TYPE string.
          DATA t23 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t26) = t1.
          t25 = t26.
          t24 = t25.
          DATA t27 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA(t28) = t24.
          t27 = t28->identifier.
          t23 = t27.
          t22 = t23->sname.
          DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t29->has = abap_true.
          t29->value = t22.
          t20 = t29.
        ELSE.
          DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t30.
          t20 = t30.
        ENDIF.
        result = t20.
        RETURN.
      ENDIF.
      DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t33) = t1.
      t32 = t33.
      t31 = t32->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t31.
    ENDDO.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    result = t34.

  ENDMETHOD.

  METHOD is_global_oo.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE string.
    DATA(t4) = me->parent_obj.
    t3 = t4->get_type( ).
    DATA(t5) = |INTF|.
    t2 = xsdbool( t3 = t5 ).
    t1 = t2.
    IF t2 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE string.
      DATA(t8) = me->parent_obj.
      t7 = t8->get_type( ).
      DATA(t9) = |CLAS|.
      t6 = xsdbool( t7 = t9 ).
      t1 = t6.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD is_type_pool.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t9) = me->current.
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t8.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t15 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t16 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t17) = t8.
      t16 = t17.
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t19) = t15.
      t18 = t19->identifier.
      t14 = t18.
      t10 = t14.
    ENDIF.
    t7 = t10.
    t6 = t7.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t6.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t20 = t23.
    ELSE.
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t26) = t6.
      t25 = t26.
      t24 = t25->filename.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t24.
      t20 = t27.
    ENDIF.
    t5 = t20.
    t4 = t5.
    DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t4.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ELSEIF t30->has = abap_false.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t31.
      t28 = t31.
    ELSE.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE string.
      DATA(t34) = t4.
      t33 = t34->value.
      DATA(t35) = |.type.abap|.
      DATA(t36) = strlen( t33 ).
      DATA t37 TYPE i.
      DATA(t38) = VALUE i( ).
      DATA(t39) = VALUE string( ).
      t37 = strlen( t35 ).
      IF t37 = 0.
        t32 = abap_true.
      ELSEIF t37 <= t36.
        t38 = 0.
        t38 = t36 - t37.
        t39 = t33+t38(t37).
        IF t39 = t35.
          t32 = abap_true.
        ENDIF.
      ENDIF.
      DATA(t40) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t40->has = abap_true.
      t40->value = t32.
      t28 = t40.
    ENDIF.
    t3 = t28.
    DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t41.
    DATA(t42) = abap_true.
    IF t42 = abap_true.
      DATA(t43) = abap_true.
      DATA(t44) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t44->has = abap_true.
      t44->value = t43.
      t41 = t44.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t45.
      t41 = t45.
    ENDIF.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    IF t3 IS BOUND.
      t46 = t3->has.
    ENDIF.
    IF t41 IS BOUND.
      t47 = t41->has.
    ENDIF.
    IF t46 = t47.
      IF t46 = abap_false.
        t2 = abap_true.
      ELSEIF t3->value = t41->value.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    t1 = t2.
    IF t2 = abap_false.
      DATA(t48) = abap_false.
      t1 = t48.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_allow_header_use.
    DATA(t1) = i_name.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA(t4) = t1.
      DATA(t5) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t5->has = abap_true.
      t5->value = t4.
      t2 = t5.
    ELSE.
      DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t6.
      t2 = t6.
    ENDIF.
    me->allow_header_use = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `allowHeaderUse`.
  ENDMETHOD.

  METHOD is_allow_header_use.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA t5 TYPE string.
      DATA(t6) = t1.
      DATA(t7) = strlen( t6 ).
      t5 = t6.
      IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t5 TO UPPER CASE.
      ELSE.
        t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
      ENDIF.
      DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t8->has = abap_true.
      t8->value = t5.
      t3 = t8.
    ELSE.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t3 = t9.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = me->allow_header_use.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t11.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ELSEIF t15->has = abap_false.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE string.
      DATA t18 TYPE string.
      DATA(t19) = t11.
      t18 = t19->value.
      DATA(t20) = strlen( t18 ).
      t17 = t18.
      IF t17 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t17 TO UPPER CASE.
      ELSE.
        t17 = zlnt_runtime_uppe_91169605024d=>full( t17 ).
      ENDIF.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t17.
      t13 = t21.
    ENDIF.
    t10 = t13.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    IF t3 IS BOUND.
      t22 = t3->has.
    ENDIF.
    IF t10 IS BOUND.
      t23 = t10->has.
    ENDIF.
    IF t22 = t23.
      IF t22 = abap_false.
        t2 = abap_true.
      ELSEIF t3->value = t10->value.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD pop.
    DATA(t1) = i_end.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    me->allow_header_use = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `allowHeaderUse`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t4.
    DATA(t5) = me->current.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = |something wrong, top scope popped|.
        DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t15->has = abap_true.
        t15->value = t14.
        t12 = t15.
      ELSE.
        DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t16.
        t12 = t16.
      ENDIF.
      t11 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t12 ).
      t10 = NEW #( ).
      t10->payload = t11.
      CLEAR t10->source_value.
      IF t11 IS BOUND.
        DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t17.
        DATA t18 TYPE REF TO object.
        CLEAR t18.
        CLEAR t17.
        t18 = t11.
        TRY.
            t10->source_value ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10->source_value IS NOT BOUND.
          TRY.
              t17 ?= t11.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t17 IS BOUND.
            t10->source_value = t17->source( ).
          ENDIF.
          IF t10->source_value IS NOT BOUND.
            CREATE OBJECT t10->source_value.
            t10->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t10->source_value->oval = t11.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t10.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t20.
    DATA(t21) = me->current.
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_position.
    CLEAR t22.
    DATA(t23) = t1.
    t22 = t23.
    DATA t24 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t24.
    DATA(t25) = t19.
    t24 = t25->identifier.
    DATA t26 TYPE REF TO zcl_lnt_position.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA(t28) = t22.
      t26 = t28.
    ELSE.
      DATA t29 TYPE REF TO zcl_lnt_position.
      CLEAR t29.
      t26 = t29.
    ENDIF.
    t24->end = t26.
    DELETE t24->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t24->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t24->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t30 ).
    ENDIF.
    DATA(t31) = |end|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t24->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t24->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t34.
    DATA(t35) = me->current.
    t34 = t35.
    t33 = t34.
    DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t37.
    DATA(t38) = me->current.
    t37 = t38.
    t36 = t37->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    me->current = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope.
    CLEAR t39.
    DATA(t40) = t33.
    t39 = NEW zcl_lnt_spaghetti_scope( i_top = t40 ).
    result = t39.

  ENDMETHOD.

  METHOD add_form_definitions_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = t3.
    DATA(t6) = t1.
    t5->load( ).
    APPEND t6 TO t5->items.
    t5->save( ).
    DATA(t7) = t3.
    t2 = t7.
    me->add_form_definitions( i_f = t2 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d772_da9da4eaf5f6.
  ENDMETHOD.
ENDCLASS.
