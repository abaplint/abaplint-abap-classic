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
    me->local_friends = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `localFriends`.
    CLEAR me->current.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    me->parent_obj = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parentObj`.
    me->reg = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD build_default.
    DATA(t1) = i_reg_f149.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zcl_lnt_current_scope.
    DATA t4 TYPE REF TO zcl_lnt_current_scope.
    t4 = NEW zcl_lnt_current_scope( i_reg_f149 = t1 i_obj_1ed0 = t2 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_current_scope.
    t7 = t3.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = CONV f( 1 ).
    DATA(t12) = CONV f( 1 ).
    DATA(t13) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t13->has = abap_true.
    t13->value = t12.
    t10 = NEW zcl_lnt_position( i_row = t11 i_col = t13 ).
    DATA(t15) = CONV string( zcl_lnt_built_in=>filename ).
    DATA t16 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t18 TYPE string.
    t18 = |_builtin|.
    DATA t20 TYPE string.
    t20 = |_builtin|.
    DATA t22 TYPE REF TO zcl_lnt_position.
    t22 = t10.
    DATA t24 TYPE string.
    t24 = t15.
    DATA t26 TYPE REF TO zcl_lnt_position.
    t17 = NEW zcl_lnt_iscope_identifier( i_stype = t18 i_sname = t20 i_filename = t24 i_start = t22 i_end = t26 ).
    CREATE OBJECT t17->zlnt_view_ownkeys_b0e8086400eb.
    t17->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t32 ).
    ENDIF.
    CREATE OBJECT t17->zlnt_json_ownkeys_70e5fd461788.
    t17->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t33) = |stype|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
    DATA(t35) = |sname|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    DATA(t37) = |start|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |filename|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |end|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    t16 = t17.
    DATA(t43) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t45 = t7->current.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t43 = xsdbool( t45 IS INITIAL ).
    IF t43 = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t56 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t54 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t16 i_parent = t56 ).
      t7->current = t54.
      DELETE t7->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t60 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t60 = t7->current.
      t58 = t60.
      DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t67 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t67 = t58.
      t65 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t16 i_parent = t67 ).
      t7->current = t65.
      DELETE t7->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t74 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t74 = t7->current.
      t73 = t74.
      t58->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t73 ).
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t79 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA t80 TYPE REF TO zif_lnt_configuration.
    t80 = t1->get_config( ).
    t79 = t80->get_syntax_setttings( ).
    t78 = t79->zlnt_view_read_sr_3e1871ae1d38( ).
    t77 = t78.
    zcl_lnt_current_scope=>add_built_in( i_s = t3 i_extras = t77 ).
    DATA t82 TYPE string.
    t82 = |_global|.
    DATA t84 TYPE abap_bool.
    t84 = xsdbool( t2 IS BOUND ).
    IF t84 = abap_true.
      DATA t86 TYPE string.
      DATA t87 TYPE string.
      DATA(t88) = t82.
      DATA(t89) = |_|.
      DATA(t90) = strlen( t88 ).
      t87 = |{ t88 }{ t89 }|.
      DATA t91 TYPE string.
      t91 = t2->get_name( ).
      DATA(t93) = strlen( t87 ).
      t86 = |{ t87 }{ t91 }|.
      t82 = t86.
    ENDIF.
    DATA t94 TYPE REF TO zcl_lnt_current_scope.
    t94 = t3.
    DATA t99 TYPE REF TO zcl_lnt_position.
    DATA(t100) = CONV f( 1 ).
    DATA(t101) = CONV f( 1 ).
    DATA(t102) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t102->has = abap_true.
    t102->value = t101.
    t99 = NEW zcl_lnt_position( i_row = t100 i_col = t102 ).
    DATA t105 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t106 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t107 TYPE string.
    t107 = |_global|.
    DATA t109 TYPE string.
    t109 = t82.
    DATA t111 TYPE REF TO zcl_lnt_position.
    t111 = t99.
    DATA t113 TYPE string.
    t113 = t82.
    DATA t115 TYPE REF TO zcl_lnt_position.
    t106 = NEW zcl_lnt_iscope_identifier( i_stype = t107 i_sname = t109 i_filename = t113 i_start = t111 i_end = t115 ).
    CREATE OBJECT t106->zlnt_view_ownkeys_b0e8086400eb.
    t106->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t117 ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t118 ).
    ENDIF.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t119 ).
    ENDIF.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t120 ).
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t106->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t121 ).
    ENDIF.
    CREATE OBJECT t106->zlnt_json_ownkeys_70e5fd461788.
    t106->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t122) = |stype|.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
    DATA(t124) = |sname|.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
    ENDIF.
    DATA(t126) = |start|.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
    ENDIF.
    DATA(t128) = |filename|.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
    ENDIF.
    DATA(t130) = |end|.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t106->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t106->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
    ENDIF.
    t105 = t106.
    DATA(t132) = VALUE abap_bool( ).
    DATA t134 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t134 = t94->current.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t132 = xsdbool( t134 IS INITIAL ).
    IF t132 = abap_true.
      DATA t143 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t145 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t143 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t105 i_parent = t145 ).
      t94->current = t143.
      DELETE t94->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t147 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t149 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t149 = t94->current.
      t147 = t149.
      DATA t154 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t156 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t156 = t147.
      t154 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t105 i_parent = t156 ).
      t94->current = t154.
      DELETE t94->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t162 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t163 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t163 = t94->current.
      t162 = t163.
      t147->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t162 ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD add_built_in.
    DATA(t1) = i_s.
    DATA(t2) = i_extras.
    DATA t3 TYPE REF TO zcl_lnt_built_in.
    DATA t4 TYPE REF TO zcl_lnt_built_in.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t4 = NEW zcl_lnt_built_in( ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t3->get_db65( i_extras = t2 ).
    t1->add_list( i_identifiers = t6 ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t17 = zcl_lnt_built_in=>types_cache.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t15 = xsdbool( t17 IS INITIAL ).
    IF t15 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t23 = t3->build_sy( ).
      t22 = t23.
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
      DATA t33 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t35) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t36 TYPE REF TO zcl_lnt_character_type.
      DATA(t37) = CONV f( 1 ).
      DATA t38 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t40 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t44) = |ABAP_BOOL|.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = t44.
      t41 = t45.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t50) = |ABAP_BOOL|.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t50.
      t47 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t40 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t41 i_conversion_exit = t53 i_derived_from_constant = t55 i_ddic_name = t47 i_rtti_name = t57 i_description = t59 ).
      CREATE OBJECT t40->zlnt_view_ownkeys_b0e8086400eb.
      t40->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t61 ).
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t40->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t62 ).
      ENDIF.
      CREATE OBJECT t40->zlnt_json_ownkeys_70e5fd461788.
      t40->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t63) = |qualifiedName|.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
      DATA(t65) = |ddicName|.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t40->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
      ENDIF.
      t38 = t40.
      t36 = NEW zcl_lnt_character_type( i_length = t37 i_extra = t38 ).
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t33 = NEW zcl_lnt_typed_identifier( i_token = t26 i_filename = t35 i_type_9913 = t36 i_meta = t68 i_value = t69 ).
      t22->load( ).
      APPEND t33 TO t22->items.
      t22->save( ).
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
      DATA t78 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t80) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t81 TYPE REF TO zcl_lnt_integer_type.
      DATA t82 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t84 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t88) = |CURSOR|.
      DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t89->has = abap_true.
      t89->value = t88.
      t85 = t89.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t94) = |CURSOR|.
      DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t95->has = abap_true.
      t95->value = t94.
      t91 = t95.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t84 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t85 i_conversion_exit = t97 i_derived_from_constant = t99 i_ddic_name = t91 i_rtti_name = t101 i_description = t103 ).
      CREATE OBJECT t84->zlnt_view_ownkeys_b0e8086400eb.
      t84->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t105 ).
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t106 ).
      ENDIF.
      CREATE OBJECT t84->zlnt_json_ownkeys_70e5fd461788.
      t84->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t107) = |qualifiedName|.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
      DATA(t109) = |ddicName|.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
      ENDIF.
      t82 = t84.
      t81 = zcl_lnt_integer_type=>get_db65( i_input_967e = t82 ).
      DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t78 = NEW zcl_lnt_typed_identifier( i_token = t71 i_filename = t80 i_type_9913 = t81 i_meta = t112 i_value = t113 ).
      t22->load( ).
      APPEND t78 TO t22->items.
      t22->save( ).
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      zcl_lnt_built_in=>types_cache = t22.
    ENDIF.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t119 = zcl_lnt_built_in=>types_cache.
    t11 = t119.
    DATA t120 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t121 TYPE REF TO object.
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
      DATA t127 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t127.
      t127 = t120.
      DATA(t132) = VALUE abap_bool( ).
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      t132 = xsdbool( t127 IS INITIAL ).
      IF t132 = abap_true.
      ELSE.
        DATA(t140) = VALUE string( ).
        DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
        t141 = t127.
        DATA(t144) = VALUE string( ).
        DATA t145 TYPE string.
        DATA t148 TYPE REF TO zcl_lnt_abstract_token.
        t148 = t141->token.
        DATA t150 TYPE string.
        t150 = t148->str.
        t145 = t150.
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
          t160 = t145.
          DATA(t162) = VALUE string( ).
          DATA(t164) = 1.
          DATA t165 TYPE i.
          t165 = strlen( t160 ).
          DATA(t168) = strlen( t160 ).
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
            t162 = t160+t164(t165).
          ENDIF.
          t159 = t162.
          t145 = t159.
        ENDIF.
        t144 = t145.
        t140 = t144.
        DATA t170 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t170.
        t170 = t127.
        t1->add_type_named( i_name = t140 i_type_9913 = t170 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_release.
    DATA t1 TYPE REF TO zcl_lnt_abap_release.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    t2 = me->reg->get_config( ).
    t1 = t2->get_release( ).
    result = t1.

  ENDMETHOD.

  METHOD get_version.
    DATA t1 TYPE string.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    t2 = me->reg->get_config( ).
    t1 = t2->get_version( ).
    result = t1.

  ENDMETHOD.

  METHOD get_language_version.
    DATA t1 TYPE string.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    t2 = me->reg->get_config( ).
    t1 = t2->get_language_version( ).
    result = t1.

  ENDMETHOD.

  METHOD get_open_abap.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    t2 = me->reg->get_config( ).
    t1 = t2->is_open_abap( ).
    result = t1.

  ENDMETHOD.

  METHOD get_registry.
    result = me->reg.

  ENDMETHOD.

  METHOD add_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( t1 IS INITIAL ).
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    t10 = t1.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    t17 = t10->token.
    DATA t19 TYPE string.
    t19 = t17->str.
    t14 = t19.
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
      t29 = t14.
      DATA(t31) = VALUE string( ).
      DATA(t33) = 1.
      DATA t34 TYPE i.
      t34 = strlen( t29 ).
      DATA(t37) = strlen( t29 ).
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
        t31 = t29+t33(t34).
      ENDIF.
      t28 = t31.
      t14 = t28.
    ENDIF.
    t13 = t14.
    t9 = t13.
    DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
    t39 = t1.
    me->add_type_named( i_name = t9 i_type_9913 = t39 ).
  ENDMETHOD.

  METHOD add_type_named.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t2 IS INITIAL ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( me->current IS INITIAL ).
    IF t10 = abap_true.
      RETURN.
    ENDIF.
    DATA(t17) = VALUE string( ).
    DATA(t18) = VALUE string( ).
    DATA(t20) = strlen( t1 ).
    t18 = t1.
    IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t18 TO UPPER CASE.
    ELSE.
      t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
    ENDIF.
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t24 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t25 TYPE REF TO zcl_lnt_iscope_data.
    DATA t26 TYPE REF TO zcl_lnt_scope_data.
    t26 = me->current.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    t29 = t26->data_56cc.
    t25 = t29.
    t24 = t25->types.
    t23 = t24->get( p0 = t17 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = xsdbool( t23 IS INITIAL ).
    t34 = xsdbool( t35 = abap_false ).
    t21 = t34.
    IF t21 = abap_true.
      DATA t37 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t38 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = VALUE string( ).
      DATA(t42) = VALUE string( ).
      DATA(t43) = |Type name "|.
      DATA(t45) = strlen( t43 ).
      t42 = |{ t43 }{ t1 }|.
      DATA(t46) = |" already defined|.
      DATA(t47) = strlen( t42 ).
      t41 = |{ t42 }{ t46 }|.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t41.
      t39 = t48.
      t38 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t39 ).
      t37 = NEW #( ).
      t37->payload = t38.
      CLEAR t37->source_value.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
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
      RAISE EXCEPTION t37.
    ELSE.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = CONV abap_bool( me->is_oo( ) ).
      t52 = t53.
      IF t53 = abap_true.
        DATA(t54) = VALUE abap_bool( ).
        DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t57 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA t58 TYPE REF TO zcl_lnt_iscope_data.
        DATA t59 TYPE REF TO zcl_lnt_scope_data.
        t59 = me->current.
        DATA t62 TYPE REF TO zcl_lnt_iscope_data.
        t62 = t59->data_56cc.
        t58 = t62.
        t57 = t58->vars.
        t56 = t57->get( p0 = t17 ).
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = xsdbool( t56 IS INITIAL ).
        t67 = xsdbool( t68 = abap_false ).
        t54 = t67.
        t52 = t54.
      ENDIF.
      IF t52 = abap_true.
        DATA t70 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t71 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t74) = VALUE string( ).
        DATA(t75) = VALUE string( ).
        DATA(t76) = |"|.
        DATA(t78) = strlen( t76 ).
        t75 = |{ t76 }{ t1 }|.
        DATA(t79) = |" already defined|.
        DATA(t80) = strlen( t75 ).
        t74 = |{ t75 }{ t79 }|.
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t74.
        t72 = t81.
        t71 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t72 ).
        t70 = NEW #( ).
        t70->payload = t71.
        CLEAR t70->source_value.
        DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t84 TYPE REF TO object.
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
        RAISE EXCEPTION t70.
      ENDIF.
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t86 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t87 TYPE REF TO zcl_lnt_iscope_data.
    DATA t88 TYPE REF TO zcl_lnt_scope_data.
    t88 = me->current.
    DATA t91 TYPE REF TO zcl_lnt_iscope_data.
    t91 = t88->data_56cc.
    t87 = t91.
    t86 = t87->types.
    DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
    t94 = t2.
    t85 = t86->set( p0 = t17 p1 = t94 ).
  ENDMETHOD.

  METHOD add_extra_like_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( t1 IS INITIAL ).
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    t10 = t1.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    t17 = t10->token.
    DATA t19 TYPE string.
    t19 = t17->str.
    t14 = t19.
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
      t29 = t14.
      DATA(t31) = VALUE string( ).
      DATA(t33) = 1.
      DATA t34 TYPE i.
      t34 = strlen( t29 ).
      DATA(t37) = strlen( t29 ).
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
        t31 = t29+t33(t34).
      ENDIF.
      t28 = t31.
      t14 = t28.
    ENDIF.
    t13 = t14.
    t9 = t13.
    DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
    t39 = t1.
    me->add_extra_like_type_named( i_name = t9 i_type_9913 = t39 ).
  ENDMETHOD.

  METHOD add_extra_like_type_named.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t2 IS INITIAL ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( me->current IS INITIAL ).
    IF t10 = abap_true.
      RETURN.
    ENDIF.
    DATA(t17) = VALUE string( ).
    DATA(t18) = VALUE string( ).
    DATA(t20) = strlen( t1 ).
    t18 = t1.
    IF t18 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t18 TO UPPER CASE.
    ELSE.
      t18 = zlnt_runtime_uppe_91169605024d=>full( t18 ).
    ENDIF.
    t17 = t18.
    DATA(t21) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t24 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t25 TYPE REF TO zcl_lnt_iscope_data.
    DATA t26 TYPE REF TO zcl_lnt_scope_data.
    t26 = me->current.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    t29 = t26->data_56cc.
    t25 = t29.
    t24 = t25->extra_like_types.
    t23 = t24->get( p0 = t17 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = xsdbool( t23 IS INITIAL ).
    t34 = xsdbool( t35 = abap_false ).
    t21 = t34.
    IF t21 = abap_true.
      DATA t37 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t38 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t41) = VALUE string( ).
      DATA(t42) = VALUE string( ).
      DATA(t43) = |Type name "|.
      DATA(t45) = strlen( t43 ).
      t42 = |{ t43 }{ t1 }|.
      DATA(t46) = |" already defined|.
      DATA(t47) = strlen( t42 ).
      t41 = |{ t42 }{ t46 }|.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t41.
      t39 = t48.
      t38 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t39 ).
      t37 = NEW #( ).
      t37->payload = t38.
      CLEAR t37->source_value.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
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
      RAISE EXCEPTION t37.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t53 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t54 TYPE REF TO zcl_lnt_iscope_data.
    DATA t55 TYPE REF TO zcl_lnt_scope_data.
    t55 = me->current.
    DATA t58 TYPE REF TO zcl_lnt_iscope_data.
    t58 = t55->data_56cc.
    t54 = t58.
    t53 = t54->extra_like_types.
    DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
    t61 = t2.
    t52 = t53->set( p0 = t17 p1 = t61 ).
  ENDMETHOD.

  METHOD add_class_definition.
    DATA(t1) = i_c.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( me->current IS INITIAL ).
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    t11 = t1->get_name( ).
    DATA(t13) = strlen( t11 ).
    t10 = t11.
    IF t10 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t10 TO UPPER CASE.
    ELSE.
      t10 = zlnt_runtime_uppe_91169605024d=>full( t10 ).
    ENDIF.
    t9 = t10.
    DATA(t14) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zif_lnt_class_definition.
    DATA t17 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    t19 = me->current.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    t22 = t19->data_56cc.
    t18 = t22.
    t17 = t18->cdefs.
    t16 = t17->get( p0 = t9 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = xsdbool( t16 IS INITIAL ).
    t27 = xsdbool( t28 = abap_false ).
    t14 = t27.
    IF t14 = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t34) = VALUE string( ).
      DATA(t35) = VALUE string( ).
      DATA(t36) = |Class "|.
      DATA(t38) = strlen( t36 ).
      t35 = |{ t36 }{ t9 }|.
      DATA(t39) = |" already defined|.
      DATA(t40) = strlen( t35 ).
      t34 = |{ t35 }{ t39 }|.
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t34.
      t32 = t41.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
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
      RAISE EXCEPTION t30.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t46 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t47 TYPE REF TO zcl_lnt_iscope_data.
    DATA t48 TYPE REF TO zcl_lnt_scope_data.
    t48 = me->current.
    DATA t51 TYPE REF TO zcl_lnt_iscope_data.
    t51 = t48->data_56cc.
    t47 = t51.
    t46 = t47->cdefs.
    t45 = t46->set( p0 = t9 p1 = t1 ).
  ENDMETHOD.

  METHOD add_form_definitions.
    DATA(t1) = i_f.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( me->current IS INITIAL ).
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE i( ).
    DATA t11 TYPE REF TO zif_lnt_form_definition.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t1->load( ).
      IF t13 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t1->items INDEX t13 + 1 INTO t12.
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
      t18 = me->current.
      DATA t21 TYPE REF TO zcl_lnt_iscope_data.
      t21 = t18->data_56cc.
      t17 = t21.
      t16 = t17->forms.
      t16->load( ).
      APPEND t11 TO t16->items.
      t16->save( ).
    ENDDO.
    DATA t24 TYPE i.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_iscope_data.
    DATA t27 TYPE REF TO zcl_lnt_scope_data.
    t27 = me->current.
    DATA t30 TYPE REF TO zcl_lnt_iscope_data.
    t30 = t27->data_56cc.
    t26 = t30.
    t25 = t26->forms.
    t25->load( ).
    t24 = lines( t25->items ).
    t9 = t24.
  ENDMETHOD.

  METHOD update_form_definition.
    DATA(t1) = i_f.
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t2 = me->current.
    DO.
      DATA(t4) = VALUE abap_bool( ).
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = xsdbool( t2 IS INITIAL ).
      t9 = xsdbool( t10 = abap_false ).
      t4 = t9.
      IF t4 = abap_false.
        EXIT.
      ENDIF.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zcl_lnt_iscope_data.
      DATA t15 TYPE REF TO zcl_lnt_scope_data.
      t15 = t2.
      DATA t18 TYPE REF TO zcl_lnt_iscope_data.
      t18 = t15->data_56cc.
      t14 = t18.
      t13 = t14->forms.
      t12 = t13.
      DATA t20 TYPE i.
      t20 = 0.
      DO.
        DATA t22 TYPE abap_bool.
        DATA t24 TYPE i.
        t12->load( ).
        t24 = lines( t12->items ).
        t22 = xsdbool( t20 < t24 ).
        IF t22 = abap_false.
          EXIT.
        ENDIF.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zif_lnt_form_definition.
        CLEAR t27.
        DATA(t29) = t20.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        t12->load( ).
        CLEAR t30.
        READ TABLE t12->items INDEX t29 INTO t30.
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
        t33 ?= t1.
        t26 = t27->equals( i_id = t33 ).
        IF t26 = abap_true.
          t12->put( p0 = t20 p1 = t1 ).
          RETURN.
        ENDIF.
        DATA t38 TYPE i.
        DATA(t40) = 1.
        t38 = t20 + t40.
        t20 = t38.
      ENDDO.
      DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t42 = t2.
      t41 = t42->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t41.
    ENDDO.
  ENDMETHOD.

  METHOD add_interface_definition.
    DATA(t1) = i_i.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( me->current IS INITIAL ).
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    t11 = t1->get_name( ).
    DATA(t13) = strlen( t11 ).
    t10 = t11.
    IF t10 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t10 TO UPPER CASE.
    ELSE.
      t10 = zlnt_runtime_uppe_91169605024d=>full( t10 ).
    ENDIF.
    t9 = t10.
    DATA(t14) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zif_lnt_class_definition.
    DATA t17 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    t19 = me->current.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    t22 = t19->data_56cc.
    t18 = t22.
    t17 = t18->cdefs.
    t16 = t17->get( p0 = t9 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = xsdbool( t16 IS INITIAL ).
    t27 = xsdbool( t28 = abap_false ).
    t14 = t27.
    IF t14 = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t34) = VALUE string( ).
      DATA(t35) = VALUE string( ).
      DATA(t36) = |Interface "|.
      DATA(t38) = strlen( t36 ).
      t35 = |{ t36 }{ t9 }|.
      DATA(t39) = |" already defined|.
      DATA(t40) = strlen( t35 ).
      t34 = |{ t35 }{ t39 }|.
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t34.
      t32 = t41.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
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
      RAISE EXCEPTION t30.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA t46 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA t47 TYPE REF TO zcl_lnt_iscope_data.
    DATA t48 TYPE REF TO zcl_lnt_scope_data.
    t48 = me->current.
    DATA t51 TYPE REF TO zcl_lnt_iscope_data.
    t51 = t48->data_56cc.
    t47 = t51.
    t46 = t47->idefs.
    t45 = t46->set( p0 = t9 p1 = t1 ).
  ENDMETHOD.

  METHOD add_named_identifier.
    DATA(t1) = i_name.
    DATA(t2) = i_identifier.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( me->current IS INITIAL ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA(t13) = strlen( t1 ).
    t11 = t1.
    IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t11 TO UPPER CASE.
    ELSE.
      t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
    ENDIF.
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t17 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    t19 = me->current.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    t22 = t19->data_56cc.
    t18 = t22.
    t17 = t18->vars.
    t16 = t17->get( p0 = t10 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = xsdbool( t16 IS INITIAL ).
    t27 = xsdbool( t28 = abap_false ).
    t14 = t27.
    IF t14 = abap_true.
      DATA t30 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t31 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t34) = VALUE string( ).
      DATA(t35) = VALUE string( ).
      DATA(t36) = |Variable name "|.
      DATA(t38) = strlen( t36 ).
      t35 = |{ t36 }{ t1 }|.
      DATA(t39) = |" already defined|.
      DATA(t40) = strlen( t35 ).
      t34 = |{ t35 }{ t39 }|.
      DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t41->has = abap_true.
      t41->value = t34.
      t32 = t41.
      t31 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t32 ).
      t30 = NEW #( ).
      t30->payload = t31.
      CLEAR t30->source_value.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t44 TYPE REF TO object.
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
      RAISE EXCEPTION t30.
    ELSE.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = CONV abap_bool( me->is_oo( ) ).
      t45 = t46.
      IF t46 = abap_true.
        DATA(t47) = VALUE abap_bool( ).
        DATA t49 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t50 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA t51 TYPE REF TO zcl_lnt_iscope_data.
        DATA t52 TYPE REF TO zcl_lnt_scope_data.
        t52 = me->current.
        DATA t55 TYPE REF TO zcl_lnt_iscope_data.
        t55 = t52->data_56cc.
        t51 = t55.
        t50 = t51->types.
        t49 = t50->get( p0 = t10 ).
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = xsdbool( t49 IS INITIAL ).
        t60 = xsdbool( t61 = abap_false ).
        t47 = t60.
        t45 = t47.
      ENDIF.
      IF t45 = abap_true.
        DATA t63 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t64 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t67) = VALUE string( ).
        DATA(t68) = VALUE string( ).
        DATA(t69) = |"|.
        DATA(t71) = strlen( t69 ).
        t68 = |{ t69 }{ t1 }|.
        DATA(t72) = |" already defined|.
        DATA(t73) = strlen( t68 ).
        t67 = |{ t68 }{ t72 }|.
        DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t74->has = abap_true.
        t74->value = t67.
        t65 = t74.
        t64 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t65 ).
        t63 = NEW #( ).
        t63->payload = t64.
        CLEAR t63->source_value.
        DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t77 TYPE REF TO object.
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
        RAISE EXCEPTION t63.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t79 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t80 TYPE REF TO zcl_lnt_iscope_data.
    DATA t81 TYPE REF TO zcl_lnt_scope_data.
    t81 = me->current.
    DATA t84 TYPE REF TO zcl_lnt_iscope_data.
    t84 = t81->data_56cc.
    t80 = t84.
    t79 = t80->vars.
    t78 = t79->set( p0 = t10 p1 = t2 ).
  ENDMETHOD.

  METHOD add_named_identifier_to_parent.
    DATA(t1) = i_name.
    DATA(t2) = i_identifier.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( me->current IS INITIAL ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t12 = me->current.
    t11 = t12->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t14 = xsdbool( t10 IS INITIAL ).
    IF t14 = abap_true.
      RETURN.
    ENDIF.
    DATA(t21) = VALUE string( ).
    DATA(t22) = VALUE string( ).
    DATA(t24) = strlen( t1 ).
    t22 = t1.
    IF t22 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t22 TO UPPER CASE.
    ELSE.
      t22 = zlnt_runtime_uppe_91169605024d=>full( t22 ).
    ENDIF.
    t21 = t22.
    DATA(t25) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t28 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    DATA t30 TYPE REF TO zcl_lnt_scope_data.
    t30 = t10.
    DATA t33 TYPE REF TO zcl_lnt_iscope_data.
    t33 = t30->data_56cc.
    t29 = t33.
    t28 = t29->vars.
    t27 = t28->get( p0 = t21 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = xsdbool( t27 IS INITIAL ).
    t38 = xsdbool( t39 = abap_false ).
    t25 = t38.
    IF t25 = abap_true.
      DATA t41 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t42 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = VALUE string( ).
      DATA(t46) = VALUE string( ).
      DATA(t47) = |Variable name "|.
      DATA(t49) = strlen( t47 ).
      t46 = |{ t47 }{ t1 }|.
      DATA(t50) = |" already defined|.
      DATA(t51) = strlen( t46 ).
      t45 = |{ t46 }{ t50 }|.
      DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t52->has = abap_true.
      t52->value = t45.
      t43 = t52.
      t42 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t43 ).
      t41 = NEW #( ).
      t41->payload = t42.
      CLEAR t41->source_value.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
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
      RAISE EXCEPTION t41.
    ELSE.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = CONV abap_bool( me->is_oo( ) ).
      t56 = t57.
      IF t57 = abap_true.
        DATA(t58) = VALUE abap_bool( ).
        DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t61 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA t62 TYPE REF TO zcl_lnt_iscope_data.
        DATA t63 TYPE REF TO zcl_lnt_scope_data.
        t63 = t10.
        DATA t66 TYPE REF TO zcl_lnt_iscope_data.
        t66 = t63->data_56cc.
        t62 = t66.
        t61 = t62->types.
        t60 = t61->get( p0 = t21 ).
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = xsdbool( t60 IS INITIAL ).
        t71 = xsdbool( t72 = abap_false ).
        t58 = t71.
        t56 = t58.
      ENDIF.
      IF t56 = abap_true.
        DATA t74 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t75 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t78) = VALUE string( ).
        DATA(t79) = VALUE string( ).
        DATA(t80) = |"|.
        DATA(t82) = strlen( t80 ).
        t79 = |{ t80 }{ t1 }|.
        DATA(t83) = |" already defined|.
        DATA(t84) = strlen( t79 ).
        t78 = |{ t79 }{ t83 }|.
        DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t85->has = abap_true.
        t85->value = t78.
        t76 = t85.
        t75 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t76 ).
        t74 = NEW #( ).
        t74->payload = t75.
        CLEAR t74->source_value.
        DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t88 TYPE REF TO object.
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
        RAISE EXCEPTION t74.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t90 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t91 TYPE REF TO zcl_lnt_iscope_data.
    DATA t92 TYPE REF TO zcl_lnt_scope_data.
    t92 = t10.
    DATA t95 TYPE REF TO zcl_lnt_iscope_data.
    t95 = t92->data_56cc.
    t91 = t95.
    t90 = t91->vars.
    t89 = t90->set( p0 = t21 p1 = t2 ).
  ENDMETHOD.

  METHOD add_identifier.
    DATA(t1) = i_identifier.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( t1 IS INITIAL ).
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    t10 = t1.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    t17 = t10->token.
    DATA t19 TYPE string.
    t19 = t17->str.
    t14 = t19.
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
      t29 = t14.
      DATA(t31) = VALUE string( ).
      DATA(t33) = 1.
      DATA t34 TYPE i.
      t34 = strlen( t29 ).
      DATA(t37) = strlen( t29 ).
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
        t31 = t29+t33(t34).
      ENDIF.
      t28 = t31.
      t14 = t28.
    ENDIF.
    t13 = t14.
    t9 = t13.
    DATA t39 TYPE REF TO zcl_lnt_typed_identifier.
    t39 = t1.
    me->add_named_identifier( i_name = t9 i_identifier = t39 ).
  ENDMETHOD.

  METHOD add_deferred.
    DATA(t1) = i_token.
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( t1 IS INITIAL ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
    DATA t11 TYPE REF TO zlnt_runtime_map__f9d623f88b73.
    DATA t12 TYPE REF TO zcl_lnt_iscope_data.
    DATA t13 TYPE REF TO zcl_lnt_scope_data.
    t13 = me->current.
    DATA t16 TYPE REF TO zcl_lnt_iscope_data.
    t16 = t13->data_56cc.
    t12 = t16.
    t11 = t12->deferred.
    DATA t18 TYPE string.
    DATA t19 TYPE string.
    DATA t23 TYPE string.
    t23 = t1->str.
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
    t27 = t1.
    DATA t30 TYPE string.
    t30 = t2.
    t26 = NEW zcl_lnt_deferred_information( i_token = t27 i_oo_type = t30 ).
    CREATE OBJECT t26->zlnt_view_ownkeys_b0e8086400eb.
    t26->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t26->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t26->zlnt_json_ownkeys_70e5fd461788.
    t26->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |token|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    DATA(t36) = |ooType|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t26->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    t10 = t11->set( p0 = t18 p1 = t26 ).
  ENDMETHOD.

  METHOD add_list_prefix.
    DATA(t1) = i_identifiers.
    DATA(t2) = i_prefix.
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t5 TYPE REF TO object.
    DATA(t6) = VALUE i( ).
    DO.
      t1->load( ).
      IF t6 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t1->items INDEX t6 + 1 INTO t5.
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
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE REF TO zcl_lnt_fi_identifier.
      t12 = t4.
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE string.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      t18 = t12->token.
      DATA t20 TYPE string.
      t20 = t18->str.
      t15 = t20.
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
        t30 = t15.
        DATA(t32) = VALUE string( ).
        DATA(t34) = 1.
        DATA t35 TYPE i.
        t35 = strlen( t30 ).
        DATA(t38) = strlen( t30 ).
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
          t32 = t30+t34(t35).
        ENDIF.
        t29 = t32.
        t15 = t29.
      ENDIF.
      t14 = t15.
      t11 = t14.
      DATA(t40) = strlen( t2 ).
      t9 = |{ t2 }{ t11 }|.
      me->add_named_identifier( i_name = t9 i_identifier = t4 ).
    ENDDO.
  ENDMETHOD.

  METHOD add_list.
    DATA(t1) = i_identifiers.
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t1->load( ).
      IF t5 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t1->items INDEX t5 + 1 INTO t4.
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
      t8 = t3.
      DATA(t13) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      t13 = xsdbool( t8 IS INITIAL ).
      IF t13 = abap_true.
      ELSE.
        DATA(t20) = VALUE string( ).
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        t21 = t8.
        DATA(t24) = VALUE string( ).
        DATA t25 TYPE string.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        t28 = t21->token.
        DATA t30 TYPE string.
        t30 = t28->str.
        t25 = t30.
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
          t40 = t25.
          DATA(t42) = VALUE string( ).
          DATA(t44) = 1.
          DATA t45 TYPE i.
          t45 = strlen( t40 ).
          DATA(t48) = strlen( t40 ).
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
            t42 = t40+t44(t45).
          ENDIF.
          t39 = t42.
          t25 = t39.
        ENDIF.
        t24 = t25.
        t20 = t24.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        t50 = t8.
        me->add_named_identifier( i_name = t20 i_identifier = t50 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD add_reference.
    DATA(t1) = i_usage.
    DATA(t2) = i_referencing.
    DATA(t3) = i_type_9913.
    DATA(t5) = i_extra.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t7 = xsdbool( t1 IS INITIAL ).
    t6 = t7.
    IF t7 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t14 = xsdbool( t3 IS INITIAL ).
      t6 = t14.
    ENDIF.
    IF t6 = abap_true.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    t23 = t1.
    DATA(t25) = i_filename.
    t22 = NEW zcl_lnt_fi_identifier( i_token = t23 i_filename = t25 ).
    t21 = t22.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE string( ).
    IF t3 IS BOUND.
      t27 = t3->type_of( ).
    ELSE.
      t27 = `undefined`.
    ENDIF.
    DATA(t29) = |object|.
    t26 = xsdbool( t27 = t29 ).
    IF t26 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF t3 IS BOUND.
        IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t30 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
          ENDTRY.
        ELSEIF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
          CREATE OBJECT t30.
          t30->source = t3.
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
        DATA t37 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t37.
        DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t39.
        t39 = me->current.
        DATA t41 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t41.
        DATA(t42) = xsdbool( t39 IS INITIAL ).
        IF t42 = abap_true.
          CLEAR t41.
        ELSE.
          DATA t46 TYPE REF TO zcl_lnt_scope_data.
          CLEAR t46.
          t46 = t39.
          DATA t49 TYPE REF TO zcl_lnt_iscope_data.
          CLEAR t49.
          t49 = t46->data_56cc.
          t41 = t49.
        ENDIF.
        t37 = t41.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t51.
        DATA(t52) = xsdbool( t37 IS INITIAL ).
        IF t52 = abap_true.
          CLEAR t51.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_iscope_data.
          CLEAR t56.
          t56 = t37.
          t55 = t56->references.
          t51 = t55.
        ENDIF.
        t35 = t51.
        DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t58.
        DATA(t59) = xsdbool( t35 IS INITIAL ).
        IF t59 = abap_true.
          CLEAR t58.
        ELSE.
          DATA(t62) = VALUE f( ).
          DATA(t63) = VALUE i( ).
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t64.
          t64 = t35.
          DATA t66 TYPE REF TO zcl_lnt_ireference.
          CLEAR t66.
          DATA t67 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t67.
          t67 = t21.
          DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t69.
          t69 = t2.
          DATA(t71) = VALUE string( ).
          t71 = t32.
          DATA t73 TYPE REF TO zcl_lnt_ireference_extras.
          CLEAR t73.
          t73 = t5.
          t66 = NEW zcl_lnt_ireference( i_position_a3fd = t67 i_resolved = t69 i_reference_type = t71 i_extra = t73 ).
          CREATE OBJECT t66->zlnt_view_ownkeys_b0e8086400eb.
          t66->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t75.
          t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t75 ).
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
          t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
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
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t91 TYPE REF TO zcl_lnt_iscope_data.
      DATA t93 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t93 = me->current.
      DATA t95 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t96) = xsdbool( t93 IS INITIAL ).
      IF t96 = abap_true.
      ELSE.
        DATA t100 TYPE REF TO zcl_lnt_scope_data.
        t100 = t93.
        DATA t103 TYPE REF TO zcl_lnt_iscope_data.
        t103 = t100->data_56cc.
        t95 = t103.
      ENDIF.
      t91 = t95.
      DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t106) = xsdbool( t91 IS INITIAL ).
      IF t106 = abap_true.
      ELSE.
        DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t110 TYPE REF TO zcl_lnt_iscope_data.
        t110 = t91.
        t109 = t110->references.
        t105 = t109.
      ENDIF.
      t89 = t105.
      DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t113) = xsdbool( t89 IS INITIAL ).
      IF t113 = abap_true.
      ELSE.
        DATA(t116) = VALUE f( ).
        DATA(t117) = VALUE i( ).
        DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t118 = t89.
        DATA t120 TYPE REF TO zcl_lnt_ireference.
        DATA t121 TYPE REF TO zcl_lnt_fi_identifier.
        t121 = t21.
        DATA t123 TYPE REF TO zcl_lnt_fi_identifier.
        t123 = t2.
        DATA(t125) = VALUE string( ).
        DATA(t126) = VALUE string( ).
        t126 = t3->as_string( ).
        t125 = t126.
        DATA t128 TYPE REF TO zcl_lnt_ireference_extras.
        t128 = t5.
        t120 = NEW zcl_lnt_ireference( i_position_a3fd = t121 i_resolved = t123 i_reference_type = t125 i_extra = t128 ).
        CREATE OBJECT t120->zlnt_view_ownkeys_b0e8086400eb.
        t120->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t130 ).
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `resolved` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `referenceType` p1 = t132 ).
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t120->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t120->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extra` p1 = t133 ).
        ENDIF.
        CREATE OBJECT t120->zlnt_json_ownkeys_70e5fd461788.
        t120->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t134) = |position|.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
        DATA(t136) = |resolved|.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
        ENDIF.
        DATA(t138) = |referenceType|.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t120->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t120->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
        ENDIF.
        DATA(t140) = |extra|.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_iscope_data.
    DATA t9 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t9 = me->current.
    DATA t11 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t12) = xsdbool( t9 IS INITIAL ).
    IF t12 = abap_true.
    ELSE.
      DATA t16 TYPE REF TO zcl_lnt_scope_data.
      t16 = t9.
      DATA t19 TYPE REF TO zcl_lnt_iscope_data.
      t19 = t16->data_56cc.
      t11 = t19.
    ENDIF.
    t7 = t11.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = xsdbool( t7 IS INITIAL ).
    IF t22 = abap_true.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zcl_lnt_iscope_data.
      t26 = t7.
      t25 = t26->sql_conversion.
      t21 = t25.
    ENDIF.
    t5 = t21.
    DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t29) = xsdbool( t5 IS INITIAL ).
    IF t29 = abap_true.
    ELSE.
      DATA(t32) = VALUE f( ).
      DATA(t33) = VALUE i( ).
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t34 = t5.
      DATA t36 TYPE REF TO zcl_lnt_shape_9a575e77.
      DATA t37 TYPE string.
      t37 = i_field_name.
      DATA t39 TYPE string.
      t39 = i_message_26cb.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      t41 = i_token.
      t36 = NEW zcl_lnt_shape_9a575e77( i_field_name = t37 i_message_26cb = t39 i_token = t41 ).
      CREATE OBJECT t36->zlnt_view_ownkeys_b0e8086400eb.
      t36->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fieldName` p1 = t46 ).
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t47 ).
      ENDIF.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t48 ).
      ENDIF.
      CREATE OBJECT t36->zlnt_json_ownkeys_70e5fd461788.
      t36->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t49) = |fieldName|.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
      DATA(t51) = |message|.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
      ENDIF.
      DATA(t53) = |token|.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t11 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t12 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA(t14) = |FUGR|.
    t12 = me->reg->get_objects_by_type( i_type_9913 = t14 ).
    t11 = t12->iterate( ).
    t10 = t11.
    DO.
      DATA t16 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t17.
      t17 = t10->next( ).
      t16 = t17.
      DATA(t19) = VALUE abap_bool( ).
      t19 = t16->done.
      IF t19 = abap_true.
        EXIT.
      ENDIF.
      DATA t23 TYPE REF TO zif_lnt_object.
      CLEAR t23.
      t23 = t16->value.
      DATA t25 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      CLEAR t25.
      DATA t27 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      t28 = abap_false.
      DATA t30 TYPE REF TO cx_root.
      CLEAR t30.
      TRY.
          DATA t31 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
          CLEAR t31.
          DATA t32 TYPE REF TO zcl_lnt_function_group.
          CLEAR t32.
          t32 ?= t23.
          DATA(t34) = VALUE string( ).
          t34 = t1->value.
          t31 = t32->get_module( i_name = t34 ).
          t27 = t31.
          t28 = abap_true.
        CATCH cx_root INTO t30.
          DATA(t37) = VALUE abap_bool( ).
          t37 = xsdbool( t28 = abap_false ).
          IF t37 = abap_true.
            t10->close( ).
          ENDIF.
          RAISE EXCEPTION t30.
      ENDTRY.
      DATA(t40) = VALUE abap_bool( ).
      t40 = xsdbool( t28 = abap_false ).
      IF t40 = abap_true.
        t10->close( ).
      ENDIF.
      t25 = t27.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = VALUE abap_bool( ).
      t46 = abap_false.
      DATA t48 TYPE REF TO cx_root.
      CLEAR t48.
      TRY.
          DATA(t49) = VALUE abap_bool( ).
          DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t52.
          CLEAR t52.
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = xsdbool( t25 IS INITIAL ).
          t54 = xsdbool( t55 = abap_false ).
          t49 = t54.
          t45 = t49.
          t46 = abap_true.
        CATCH cx_root INTO t48.
          DATA(t58) = VALUE abap_bool( ).
          t58 = xsdbool( t46 = abap_false ).
          IF t58 = abap_true.
            t10->close( ).
          ENDIF.
          RAISE EXCEPTION t48.
      ENDTRY.
      DATA(t61) = VALUE abap_bool( ).
      t61 = xsdbool( t46 = abap_false ).
      IF t61 = abap_true.
        t10->close( ).
      ENDIF.
      t44 = t45.
      IF t44 = abap_true.
        DATA t67 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
        CLEAR t67.
        DATA(t68) = VALUE abap_bool( ).
        t68 = abap_false.
        DATA t70 TYPE REF TO cx_root.
        CLEAR t70.
        TRY.
            t67 = t25.
            t68 = abap_true.
          CATCH cx_root INTO t70.
            DATA(t77) = VALUE abap_bool( ).
            t77 = xsdbool( t68 = abap_false ).
            IF t77 = abap_true.
              t10->close( ).
            ENDIF.
            RAISE EXCEPTION t70.
        ENDTRY.
        DATA(t80) = VALUE abap_bool( ).
        t80 = xsdbool( t68 = abap_false ).
        IF t80 = abap_true.
          t10->close( ).
        ENDIF.
        t10->close( ).
        result = t67.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_object_definition.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_class_definition.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t15 TYPE string.
    t15 = t1->value.
    DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t17->has = abap_true.
    t17->value = t15.
    t12 = t17.
    DATA t19 TYPE REF TO zif_lnt_class_definition.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t21 = t12.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = VALUE abap_bool( ).
    IF t21 IS INITIAL.
      t25 = abap_true.
    ELSEIF t21->has = abap_false.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    IF t20 = abap_true.
    ELSE.
      DATA t29 TYPE REF TO zif_lnt_class_definition.
      DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t31 = me->current.
      DATA t33 TYPE REF TO zif_lnt_class_definition.
      DATA(t34) = xsdbool( t31 IS INITIAL ).
      IF t34 = abap_true.
      ELSE.
        DATA t37 TYPE REF TO zif_lnt_class_definition.
        DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t38 = t31.
        DATA t40 TYPE string.
        t40 = t12->value.
        t37 = t38->find_class_definition( i_name = t40 ).
        t33 = t37.
      ENDIF.
      t29 = t33.
      DATA t42 TYPE REF TO zif_lnt_class_definition.
      DATA t43 TYPE abap_bool.
      t43 = xsdbool( t29 IS BOUND ).
      IF t43 = abap_true.
        t42 = t29.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_class.
        DATA t52 TYPE REF TO zcl_lnt_class.
        DATA t53 TYPE REF TO zif_lnt_object.
        DATA(t54) = me->reg.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t57) = |CLAS|.
        DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t58->has = abap_true.
        t58->value = t57.
        t55 = t58.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t62 TYPE string.
        t62 = t12->value.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t62.
        t60 = t64.
        t53 = t54->get_object( i_type_9913 = t55 i_name = t60 ).
        DATA t66 TYPE REF TO object.
        t66 = t53.
        t52 ?= t66.
        t51 = t52.
        DATA t67 TYPE REF TO zif_lnt_class_definition.
        DATA t68 TYPE abap_bool.
        t68 = xsdbool( t51 IS BOUND ).
        IF t68 = abap_true.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          DATA t71 TYPE REF TO zcl_lnt_class.
          t71 = t51.
          t70 = t71->gt_dfn_ins_src_obj_cls_ts_clss( ).
          t67 = t70.
        ELSE.
          CLEAR t67.
        ENDIF.
        t42 = t67.
      ENDIF.
      t19 = t42.
    ENDIF.
    t10 = t19.
    DATA t74 TYPE abap_bool.
    t74 = xsdbool( t10 IS BOUND ).
    IF t74 = abap_true.
      DATA t76 TYPE REF TO zif_lnt_interface_definition.
      DATA t77 TYPE REF TO zif_lnt_class_definition.
      t77 = t10.
      t76 ?= t77.
      result = t76.
      RETURN.
    ENDIF.
    DATA t79 TYPE REF TO zif_lnt_interface_definition.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t84 TYPE string.
    t84 = t1->value.
    DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t86->has = abap_true.
    t86->value = t84.
    t81 = t86.
    DATA t88 TYPE REF TO zif_lnt_interface_definition.
    DATA(t89) = VALUE abap_bool( ).
    DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t90 = t81.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = VALUE abap_bool( ).
    IF t90 IS INITIAL.
      t94 = abap_true.
    ELSEIF t90->has = abap_false.
      t94 = abap_true.
    ENDIF.
    t89 = t94.
    IF t89 = abap_true.
    ELSE.
      DATA t98 TYPE REF TO zif_lnt_interface_definition.
      DATA t100 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t100 = me->current.
      DATA t102 TYPE REF TO zif_lnt_interface_definition.
      DATA(t103) = xsdbool( t100 IS INITIAL ).
      IF t103 = abap_true.
      ELSE.
        DATA t106 TYPE REF TO zif_lnt_interface_definition.
        DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t107 = t100.
        DATA t109 TYPE string.
        t109 = t81->value.
        t106 = t107->find_interface_definition( i_name = t109 ).
        t102 = t106.
      ENDIF.
      t98 = t102.
      DATA t111 TYPE REF TO zif_lnt_interface_definition.
      DATA t112 TYPE abap_bool.
      t112 = xsdbool( t98 IS BOUND ).
      IF t112 = abap_true.
        t111 = t98.
      ELSE.
        DATA t120 TYPE REF TO zcl_lnt_ob_interface.
        DATA t121 TYPE REF TO zcl_lnt_ob_interface.
        DATA t122 TYPE REF TO zif_lnt_object.
        DATA(t123) = me->reg.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t126) = |INTF|.
        DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t127->has = abap_true.
        t127->value = t126.
        t124 = t127.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t131 TYPE string.
        t131 = t81->value.
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = t131.
        t129 = t133.
        t122 = t123->get_object( i_type_9913 = t124 i_name = t129 ).
        DATA t135 TYPE REF TO object.
        t135 = t122.
        t121 ?= t135.
        t120 = t121.
        DATA t136 TYPE REF TO zif_lnt_interface_definition.
        DATA t137 TYPE abap_bool.
        t137 = xsdbool( t120 IS BOUND ).
        IF t137 = abap_true.
          DATA t143 TYPE REF TO zif_lnt_interface_definition.
          t143 = t120->def.
          t136 = t143.
        ELSE.
          CLEAR t136.
        ENDIF.
        t111 = t136.
      ENDIF.
      t88 = t111.
    ENDIF.
    t79 = t88.
    DATA t146 TYPE abap_bool.
    t146 = xsdbool( t79 IS BOUND ).
    IF t146 = abap_true.
      result = t79.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_behavior_definition.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE string.
    t2 = me->parent_obj->get_type( ).
    DATA(t4) = |CLAS|.
    t1 = xsdbool( t2 <> t4 ).
    IF t1 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t10 TYPE REF TO zcl_lnt_class.
    DATA t11 TYPE REF TO zcl_lnt_class.
    t11 ?= me->parent_obj.
    t10 = t11.
    DATA t14 TYPE REF TO zif_lnt_abap_file_information.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    t17 = t10->get_main_abap_file( ).
    t16 = t17.
    DATA t19 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t20) = xsdbool( t16 IS INITIAL ).
    IF t20 = abap_true.
    ELSE.
      DATA t27 TYPE REF TO zif_lnt_abap_file_information.
      t27 = t16->info.
      t19 = t27.
    ENDIF.
    t14 = t19.
    DATA t29 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t30) = xsdbool( t14 IS INITIAL ).
    IF t30 = abap_true.
    ELSE.
      DATA t33 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t34 TYPE REF TO zif_lnt_abap_file_information.
      t34 = t14.
      DATA t36 TYPE string.
      DATA t37 TYPE REF TO zcl_lnt_abstract_object.
      t37 = t10.
      DATA t39 TYPE string.
      t39 = t37->name.
      t36 = t39.
      t33 = t34->get_class_definition_by_name( i_name = t36 ).
      t29 = t33.
    ENDIF.
    t8 = t29.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t42) = xsdbool( t8 IS INITIAL ).
    IF t42 = abap_true.
    ELSE.
      DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t46 TYPE REF TO zcl_lnt_info_class_definition.
      t46 = t8.
      t45 = t46->behavior_definition_name.
      t41 = t45.
    ENDIF.
    t6 = t41.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t49 = t6.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = VALUE abap_bool( ).
    IF t49 IS INITIAL.
      t53 = abap_true.
    ELSEIF t49->has = abap_false.
      t53 = abap_true.
    ENDIF.
    t48 = t53.
    IF t48 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zcl_lnt_behavior_definition.
    DATA t57 TYPE REF TO zif_lnt_object.
    DATA(t58) = me->reg.
    DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t61) = |BDEF|.
    DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t62->has = abap_true.
    t62->value = t61.
    t59 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t66 TYPE string.
    t66 = t6->value.
    DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t68->has = abap_true.
    t68->value = t66.
    t64 = t68.
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
    DATA(t5) = strlen( t1 ).
    t3 = t1.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA(t10) = |ENHS|.
    t8 = me->reg->get_objects_by_type( i_type_9913 = t10 ).
    t7 = t8->iterate( ).
    t6 = t7.
    DO.
      DATA t12 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t12.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      t13 = t6->next( ).
      t12 = t13.
      DATA(t15) = VALUE abap_bool( ).
      t15 = t12->done.
      IF t15 = abap_true.
        EXIT.
      ENDIF.
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      t19 = t12->value.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      t23 = abap_false.
      DATA t25 TYPE REF TO cx_root.
      CLEAR t25.
      TRY.
          DATA t27 TYPE REF TO zcl_lnt_enhancement_spot.
          CLEAR t27.
          DATA t28 TYPE REF TO zcl_lnt_enhancement_spot.
          CLEAR t28.
          t28 ?= t19.
          t27 = t28.
          DATA(t31) = VALUE abap_bool( ).
          DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t33.
          t33 = t27->badis.
          DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t35.
          CLEAR t35.
          t31 = xsdbool( t33 IS INITIAL ).
          IF t31 = abap_true.
            DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t42.
            t42 = t27->parse_xml( ).
            t27->badis = t42.
            DELETE t27->zlnt_record_delet_0597644d88b4 WHERE table_line = `badis`.
          ENDIF.
          DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t46.
          t46 = t27->badis.
          t22 = t46.
          t23 = abap_true.
        CATCH cx_root INTO t25.
          DATA(t49) = VALUE abap_bool( ).
          t49 = xsdbool( t23 = abap_false ).
          IF t49 = abap_true.
            t6->close( ).
          ENDIF.
          RAISE EXCEPTION t25.
      ENDTRY.
      DATA(t52) = VALUE abap_bool( ).
      t52 = xsdbool( t23 = abap_false ).
      IF t52 = abap_true.
        t6->close( ).
      ENDIF.
      t21 = t22.
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
        t63 = abap_false.
        DATA t65 TYPE REF TO cx_root.
        CLEAR t65.
        TRY.
            DATA(t66) = VALUE abap_bool( ).
            DATA(t67) = VALUE string( ).
            DATA(t68) = VALUE string( ).
            DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t69.
            t69 = t56->name.
            t68 = t69->value.
            DATA(t71) = strlen( t68 ).
            t67 = t68.
            IF t67 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t67 TO UPPER CASE.
            ELSE.
              t67 = zlnt_runtime_uppe_91169605024d=>full( t67 ).
            ENDIF.
            t66 = xsdbool( t67 = t2 ).
            t62 = t66.
            t63 = abap_true.
          CATCH cx_root INTO t65.
            DATA(t74) = VALUE abap_bool( ).
            t74 = xsdbool( t63 = abap_false ).
            IF t74 = abap_true.
              t6->close( ).
            ENDIF.
            RAISE EXCEPTION t65.
        ENDTRY.
        DATA(t77) = VALUE abap_bool( ).
        t77 = xsdbool( t63 = abap_false ).
        IF t77 = abap_true.
          t6->close( ).
        ENDIF.
        t61 = t62.
        IF t61 = abap_true.
          DATA(t81) = VALUE abap_bool( ).
          t81 = abap_true.
          t6->close( ).
          result = t81.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD exists_object.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE string.
    t10 = ||.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE string.
    t13 = me->parent_obj->get_type( ).
    DATA(t15) = |PROG|.
    t12 = xsdbool( t13 = t15 ).
    IF t12 = abap_true.
      DATA t16 TYPE string.
      DATA(t17) = `\PROGRAM=`.
      DATA t18 TYPE string.
      t18 = me->parent_obj->get_name( ).
      DATA(t20) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      t10 = t16.
    ELSE.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE string.
      t22 = me->parent_obj->get_type( ).
      DATA(t24) = |CLAS|.
      t21 = xsdbool( t22 = t24 ).
      IF t21 = abap_true.
        DATA t25 TYPE string.
        DATA(t26) = `\CLASS-POOL=`.
        DATA t27 TYPE string.
        t27 = me->parent_obj->get_name( ).
        DATA(t29) = strlen( t26 ).
        t25 = |{ t26 }{ t27 }|.
        t10 = t25.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zif_lnt_class_definition.
    DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t32 = me->current.
    DATA t34 TYPE REF TO zif_lnt_class_definition.
    DATA(t35) = xsdbool( t32 IS INITIAL ).
    IF t35 = abap_true.
    ELSE.
      DATA t38 TYPE REF TO zif_lnt_class_definition.
      DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t39 = t32.
      DATA t41 TYPE string.
      t41 = t1->value.
      t38 = t39->find_class_definition( i_name = t41 ).
      t34 = t38.
    ENDIF.
    t30 = t34.
    DATA t43 TYPE abap_bool.
    t43 = xsdbool( t30 IS BOUND ).
    IF t43 = abap_true.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE REF TO zif_lnt_class_definition.
      t47 = t30.
      t46 = t47->is_global( ).
      t45 = xsdbool( t46 = abap_true ).
      IF t45 = abap_true.
        t10 = ||.
      ENDIF.
      DATA t53 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t54 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t57 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t58 TYPE REF TO zif_lnt_class_definition.
      t58 = t30.
      t57 ?= t58.
      t54 = t57.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t64) = |CLAS|.
      DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t65->has = abap_true.
      t65->value = t64.
      t61 = t65.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t70 TYPE string.
      DATA t71 TYPE string.
      DATA(t72) = t10.
      DATA(t73) = `\CLASS=`.
      DATA(t74) = strlen( t72 ).
      t71 = |{ t72 }{ t73 }|.
      DATA t75 TYPE string.
      DATA t76 TYPE REF TO zif_lnt_class_definition.
      t76 = t30.
      t75 = t76->get_name( ).
      DATA(t78) = strlen( t71 ).
      t70 = |{ t71 }{ t75 }|.
      DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t79->has = abap_true.
      t79->value = t70.
      t67 = t79.
      t53 = NEW zcl_lnt_shape_59e28496( i_id = t54 i_oo_type = t61 i_rtti_name = t67 ).
      CREATE OBJECT t53->zlnt_view_ownkeys_b0e8086400eb.
      t53->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t53->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t81 ).
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t53->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t53->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t82 ).
      ENDIF.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t53->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t53->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t83 ).
      ENDIF.
      CREATE OBJECT t53->zlnt_json_ownkeys_70e5fd461788.
      t53->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t84) = |id|.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t53->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
      DATA(t86) = |ooType|.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t53->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t53->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
      ENDIF.
      DATA(t88) = |RTTIName|.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t53->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t53->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
      ENDIF.
      result = t53.
      RETURN.
    ENDIF.
    DATA t91 TYPE REF TO zif_lnt_object.
    DATA t92 TYPE REF TO zif_lnt_object.
    DATA(t93) = me->reg.
    DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t96) = |CLAS|.
    DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t97->has = abap_true.
    t97->value = t96.
    t94 = t97.
    DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t101 TYPE string.
    t101 = t1->value.
    DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t103->has = abap_true.
    t103->value = t101.
    t99 = t103.
    t92 = t93->get_object( i_type_9913 = t94 i_name = t99 ).
    t91 = t92.
    DATA t105 TYPE abap_bool.
    t105 = xsdbool( t91 IS BOUND ).
    IF t105 = abap_true.
      DATA t109 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t110 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t111 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t112 TYPE REF TO zif_lnt_object.
      t112 = t91.
      t111 = t112->get_identifier( ).
      t110 = t111.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t117) = |CLAS|.
      DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t118->has = abap_true.
      t118->value = t117.
      t114 = t118.
      DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t123 TYPE string.
      DATA(t124) = `\CLASS=`.
      DATA t125 TYPE string.
      DATA t126 TYPE REF TO zif_lnt_object.
      t126 = t91.
      t125 = t126->get_name( ).
      DATA(t128) = strlen( t124 ).
      t123 = |{ t124 }{ t125 }|.
      DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t129->has = abap_true.
      t129->value = t123.
      t120 = t129.
      t109 = NEW zcl_lnt_shape_59e28496( i_id = t110 i_oo_type = t114 i_rtti_name = t120 ).
      CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
      t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t131 ).
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t132 ).
      ENDIF.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t133 ).
      ENDIF.
      CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
      t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t134) = |id|.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
      DATA(t136) = |ooType|.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
      ENDIF.
      DATA(t138) = |RTTIName|.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
      ENDIF.
      result = t109.
      RETURN.
    ENDIF.
    DATA t141 TYPE REF TO zif_lnt_interface_definition.
    DATA t143 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t143 = me->current.
    DATA t145 TYPE REF TO zif_lnt_interface_definition.
    DATA(t146) = xsdbool( t143 IS INITIAL ).
    IF t146 = abap_true.
    ELSE.
      DATA t149 TYPE REF TO zif_lnt_interface_definition.
      DATA t150 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t150 = t143.
      DATA t152 TYPE string.
      t152 = t1->value.
      t149 = t150->find_interface_definition( i_name = t152 ).
      t145 = t149.
    ENDIF.
    t141 = t145.
    DATA t154 TYPE abap_bool.
    t154 = xsdbool( t141 IS BOUND ).
    IF t154 = abap_true.
      DATA t156 TYPE abap_bool.
      DATA t157 TYPE abap_bool.
      DATA t158 TYPE REF TO zif_lnt_interface_definition.
      t158 = t141.
      t157 = t158->is_global( ).
      t156 = xsdbool( t157 = abap_true ).
      IF t156 = abap_true.
        t10 = ||.
      ENDIF.
      DATA t164 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t165 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t168 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t169 TYPE REF TO zif_lnt_interface_definition.
      t169 = t141.
      t168 ?= t169.
      t165 = t168.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t175) = |INTF|.
      DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t176->has = abap_true.
      t176->value = t175.
      t172 = t176.
      DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t181 TYPE string.
      DATA t182 TYPE string.
      DATA(t184) = `\INTERFACE=`.
      DATA(t185) = strlen( t10 ).
      t182 = |{ t10 }{ t184 }|.
      DATA t186 TYPE string.
      DATA t187 TYPE REF TO zif_lnt_interface_definition.
      t187 = t141.
      t186 = t187->get_name( ).
      DATA(t189) = strlen( t182 ).
      t181 = |{ t182 }{ t186 }|.
      DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t190->has = abap_true.
      t190->value = t181.
      t178 = t190.
      t164 = NEW zcl_lnt_shape_59e28496( i_id = t165 i_oo_type = t172 i_rtti_name = t178 ).
      CREATE OBJECT t164->zlnt_view_ownkeys_b0e8086400eb.
      t164->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t192 ).
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t193 ).
      ENDIF.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t164->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t164->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t194 ).
      ENDIF.
      CREATE OBJECT t164->zlnt_json_ownkeys_70e5fd461788.
      t164->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t195) = |id|.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
      DATA(t197) = |ooType|.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t197 p1 = t198 ).
      ENDIF.
      DATA(t199) = |RTTIName|.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t164->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t164->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
      ENDIF.
      result = t164.
      RETURN.
    ENDIF.
    DATA t202 TYPE REF TO zif_lnt_object.
    DATA t203 TYPE REF TO zif_lnt_object.
    DATA(t204) = me->reg.
    DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t207) = |INTF|.
    DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t208->has = abap_true.
    t208->value = t207.
    t205 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t212 TYPE string.
    t212 = t1->value.
    DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t214->has = abap_true.
    t214->value = t212.
    t210 = t214.
    t203 = t204->get_object( i_type_9913 = t205 i_name = t210 ).
    t202 = t203.
    DATA t216 TYPE abap_bool.
    t216 = xsdbool( t202 IS BOUND ).
    IF t216 = abap_true.
      DATA t220 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t221 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t222 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t223 TYPE REF TO zif_lnt_object.
      t223 = t202.
      t222 = t223->get_identifier( ).
      t221 = t222.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t228) = |INTF|.
      DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t229->has = abap_true.
      t229->value = t228.
      t225 = t229.
      DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t234 TYPE string.
      DATA(t235) = `\INTERFACE=`.
      DATA t236 TYPE string.
      DATA t237 TYPE REF TO zif_lnt_object.
      t237 = t202.
      t236 = t237->get_name( ).
      DATA(t239) = strlen( t235 ).
      t234 = |{ t235 }{ t236 }|.
      DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t240->has = abap_true.
      t240->value = t234.
      t231 = t240.
      t220 = NEW zcl_lnt_shape_59e28496( i_id = t221 i_oo_type = t225 i_rtti_name = t231 ).
      CREATE OBJECT t220->zlnt_view_ownkeys_b0e8086400eb.
      t220->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t242 ).
      DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t243 ).
      ENDIF.
      DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t220->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t244 ).
      ENDIF.
      CREATE OBJECT t220->zlnt_json_ownkeys_70e5fd461788.
      t220->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t245) = |id|.
      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
      DATA(t247) = |ooType|.
      DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
      ENDIF.
      DATA(t249) = |RTTIName|.
      DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t220->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t249 p1 = t250 ).
      ENDIF.
      result = t220.
      RETURN.
    ENDIF.
    DATA t252 TYPE REF TO zcl_lnt_shape_59e28496.
    DATA t254 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t254 = me->current.
    DATA t256 TYPE REF TO zcl_lnt_shape_59e28496.
    DATA(t257) = xsdbool( t254 IS INITIAL ).
    IF t257 = abap_true.
    ELSE.
      DATA t260 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t261 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t261 = t254.
      DATA t263 TYPE string.
      t263 = t1->value.
      t260 = t261->find_deferred( i_name = t263 ).
      t256 = t260.
    ENDIF.
    t252 = t256.
    DATA(t265) = VALUE abap_bool( ).
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t270) = VALUE abap_bool( ).
    DATA(t271) = xsdbool( t252 IS INITIAL ).
    t270 = xsdbool( t271 = abap_false ).
    t265 = t270.
    IF t265 = abap_true.
      DATA t273 TYPE string.
      t273 = t10.
      DATA t276 TYPE string.
      DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t278 TYPE REF TO zcl_lnt_shape_59e28496.
      t278 = t252.
      t277 = t278->oo_type.
      t276 = t277->value.
      DATA t280 TYPE abap_bool.
      DATA(t282) = |INTF|.
      t280 = xsdbool( t276 = t282 ).
      IF t280 = abap_true.
        DATA t283 TYPE string.
        DATA t284 TYPE string.
        DATA(t285) = t273.
        DATA(t286) = `\INTERFACE=`.
        DATA(t287) = strlen( t285 ).
        t284 = |{ t285 }{ t286 }|.
        DATA t288 TYPE string.
        t288 = t1->value.
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
        t296 = t1->value.
        DATA(t298) = strlen( t292 ).
        t291 = |{ t292 }{ t296 }|.
        t273 = t291.
      ENDIF.
      DATA t301 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t302 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t303 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t304 TYPE REF TO zcl_lnt_shape_59e28496.
      t304 = t252.
      t303 = t304->id.
      t302 = t303.
      DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t309 TYPE string.
      DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t311 TYPE REF TO zcl_lnt_shape_59e28496.
      t311 = t252.
      t310 = t311->oo_type.
      t309 = t310->value.
      DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t313->has = abap_true.
      t313->value = t309.
      t306 = t313.
      DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t319->has = abap_true.
      t319->value = t273.
      t315 = t319.
      t301 = NEW zcl_lnt_shape_59e28496( i_id = t302 i_oo_type = t306 i_rtti_name = t315 ).
      CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
      t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t321 ).
      DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t322 ).
      ENDIF.
      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t323 ).
      ENDIF.
      CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
      t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t324) = |id|.
      DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
      DATA(t326) = |ooType|.
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
      ENDIF.
      DATA(t328) = |RTTIName|.
      DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
      ENDIF.
      result = t301.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_class_definition.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_class_definition.
    DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t12 = me->current.
    DATA t14 TYPE REF TO zif_lnt_class_definition.
    DATA(t15) = xsdbool( t12 IS INITIAL ).
    IF t15 = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zif_lnt_class_definition.
      DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t19 = t12.
      DATA t21 TYPE string.
      t21 = t1->value.
      t18 = t19->find_class_definition( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t10 = t14.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t10 IS BOUND ).
    IF t23 = abap_true.
      result = t10.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_class.
    DATA t31 TYPE REF TO zcl_lnt_class.
    DATA t32 TYPE REF TO zif_lnt_object.
    DATA(t33) = me->reg.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t36) = |CLAS|.
    DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t37->has = abap_true.
    t37->value = t36.
    t34 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE string.
    t41 = t1->value.
    DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t43->has = abap_true.
    t43->value = t41.
    t39 = t43.
    t32 = t33->get_object( i_type_9913 = t34 i_name = t39 ).
    DATA t45 TYPE REF TO object.
    t45 = t32.
    t31 ?= t45.
    t30 = t31.
    DATA t46 TYPE abap_bool.
    t46 = xsdbool( t30 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zif_lnt_class_definition.
      DATA t49 TYPE REF TO zcl_lnt_class.
      t49 = t30.
      t48 = t49->gt_dfn_ins_src_obj_cls_ts_clss( ).
      result = t48.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_type_pool_constant.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4 = t1.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = VALUE abap_bool( ).
    IF t4 IS INITIAL.
      t8 = abap_true.
    ELSEIF t4->has = abap_false.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE i( ).
      DATA(t13) = VALUE string( ).
      t13 = t1->value.
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
      t10 = xsdbool( t11 = abap_false ).
      t2 = t10.
    ENDIF.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t20) = VALUE string( ).
    DATA(t21) = VALUE string( ).
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t23) = VALUE string( ).
    t23 = t1->value.
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
    t34 = strlen( t20 ).
    DATA(t37) = 1.
    t33 = xsdbool( t34 <= t37 ).
    t32 = t33.
    IF t33 = abap_false.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE i( ).
      t39 = strlen( t20 ).
      DATA(t42) = 5.
      t38 = xsdbool( t39 > t42 ).
      t32 = t38.
    ENDIF.
    IF t32 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE string( ).
    t46 = me->parent_obj->get_type( ).
    DATA(t48) = |TYPE|.
    t45 = xsdbool( t46 = t48 ).
    t44 = t45.
    IF t45 = abap_true.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = VALUE string( ).
      DATA(t51) = VALUE string( ).
      t51 = me->parent_obj->get_name( ).
      DATA(t53) = strlen( t51 ).
      t50 = t51.
      IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t50 TO UPPER CASE.
      ELSE.
        t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
      ENDIF.
      DATA(t54) = VALUE string( ).
      DATA(t56) = strlen( t20 ).
      t54 = t20.
      IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t54 TO UPPER CASE.
      ELSE.
        t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
      ENDIF.
      t49 = xsdbool( t50 = t54 ).
      t44 = t49.
    ENDIF.
    IF t44 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t58 TYPE REF TO zcl_lnt_abap_object.
    DATA t59 TYPE REF TO zcl_lnt_abap_object.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_object.
    DATA t62 TYPE REF TO zif_lnt_object.
    DATA(t63) = me->reg.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t66) = |TYPE|.
    DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t67->has = abap_true.
    t67->value = t66.
    t64 = t67.
    DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t72->has = abap_true.
    t72->value = t20.
    t69 = t72.
    t62 = t63->get_object( i_type_9913 = t64 i_name = t69 ).
    t61 = t62.
    IF t61 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
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
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t76 = xsdbool( t58 IS INITIAL ).
    IF t76 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t86 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t87 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t88 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t89 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t90 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t91) = me->reg.
    DATA t92 TYPE REF TO zcl_lnt_abap_object.
    t92 = t58.
    t90 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t91 i_object_19cd = t92 ).
    t89 = t90->run( ).
    t88 = t89->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t87 = t88->get_first_child( ).
    t86 = t87.
    DATA t94 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t95) = xsdbool( t86 IS INITIAL ).
    IF t95 = abap_true.
    ELSE.
      DATA t98 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t99 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t99 = t86.
      t98 = t99->get_first_child( ).
      t94 = t98.
    ENDIF.
    DATA t103 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t103 = t94.
    DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t106) = xsdbool( t103 IS INITIAL ).
    IF t106 = abap_true.
    ELSE.
      DATA t109 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t110 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t110 = t103.
      DATA(t112) = VALUE string( ).
      t112 = t1->value.
      t109 = t110->find_variable( i_name = t112 ).
      t105 = t109.
    ENDIF.
    result = t105.

  ENDMETHOD.

  METHOD find_type_pool_type.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE i( ).
    DATA(t6) = |_|.
    DATA(t7) = strlen( t1 ).
    IF t6 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t6 IN t1 MATCH OFFSET t4.
      IF sy-subrc <> 0.
        t4 = -1.
      ENDIF.
    ENDIF.
    DATA(t8) = 0.
    t3 = xsdbool( t4 >= t8 ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t11) = VALUE string( ).
    DATA(t12) = VALUE string( ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t15) = |_|.
    DATA(t16) = strlen( t1 ).
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
        t21 = t1+t17(1).
        APPEND t21 TO t13->items.
        t17 = t17 + 1.
      ENDWHILE.
    ELSE.
      WHILE t17 <= t16.
        FIND FIRST OCCURRENCE OF t15 IN SECTION OFFSET t17 OF t1 MATCH OFFSET t18.
        IF sy-subrc = 0.
          t19 = t18 - t17.
        ELSE.
          t18 = -1.
          t19 = t16 - t17.
        ENDIF.
        CLEAR t21.
        IF t19 > 0.
          t21 = t1+t17(t19).
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
    t24 = strlen( t11 ).
    DATA(t27) = 2.
    t23 = xsdbool( t24 <= t27 ).
    t22 = t23.
    IF t23 = abap_false.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = VALUE i( ).
      t29 = strlen( t11 ).
      DATA(t32) = 5.
      t28 = xsdbool( t29 > t32 ).
      t22 = t28.
    ENDIF.
    IF t22 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE string( ).
    t36 = me->parent_obj->get_type( ).
    DATA(t38) = |TYPE|.
    t35 = xsdbool( t36 = t38 ).
    t34 = t35.
    IF t35 = abap_true.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE string( ).
      DATA(t41) = VALUE string( ).
      t41 = me->parent_obj->get_name( ).
      DATA(t43) = strlen( t41 ).
      t40 = t41.
      IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t40 TO UPPER CASE.
      ELSE.
        t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
      ENDIF.
      DATA(t44) = VALUE string( ).
      DATA(t46) = strlen( t11 ).
      t44 = t11.
      IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t44 TO UPPER CASE.
      ELSE.
        t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
      ENDIF.
      t39 = xsdbool( t40 = t44 ).
      t34 = t39.
    ENDIF.
    IF t34 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t48) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t51 TYPE REF TO zcl_lnt_ddic.
    DATA(t52) = me->reg.
    t51 = NEW zcl_lnt_ddic( i_reg_f149 = t52 ).
    t50 = t51->lookup_no_void( i_name = t1 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = xsdbool( t50 IS INITIAL ).
    t56 = xsdbool( t57 = abap_false ).
    t48 = t56.
    IF t48 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t60 TYPE REF TO zcl_lnt_abap_object.
    DATA t61 TYPE REF TO zcl_lnt_abap_object.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t63 TYPE REF TO zif_lnt_object.
    DATA t64 TYPE REF TO zif_lnt_object.
    DATA(t65) = me->reg.
    DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t68) = |TYPE|.
    DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t69->has = abap_true.
    t69->value = t68.
    t66 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t74->has = abap_true.
    t74->value = t11.
    t71 = t74.
    t64 = t65->get_object( i_type_9913 = t66 i_name = t71 ).
    t63 = t64.
    IF t63 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t77 TYPE REF TO object.
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
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t78 = xsdbool( t60 IS INITIAL ).
    IF t78 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t88 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t89 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t90 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t91 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t92 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t93) = me->reg.
    DATA t94 TYPE REF TO zcl_lnt_abap_object.
    t94 = t60.
    t92 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t93 i_object_19cd = t94 ).
    t91 = t92->run( ).
    t90 = t91->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t89 = t90->get_first_child( ).
    t88 = t89.
    DATA t96 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t97) = xsdbool( t88 IS INITIAL ).
    IF t97 = abap_true.
    ELSE.
      DATA t100 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t101 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t101 = t88.
      t100 = t101->get_first_child( ).
      t96 = t100.
    ENDIF.
    DATA t105 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t105 = t96.
    DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t108) = xsdbool( t105 IS INITIAL ).
    IF t108 = abap_true.
    ELSE.
      DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t112 TYPE REF TO zif_lnt_spaghetti_scope_node.
      t112 = t105.
      t111 = t112->find_type( i_name = t1 ).
      t107 = t111.
    ENDIF.
    result = t107.

  ENDMETHOD.

  METHOD find_interface_definition.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zif_lnt_interface_definition.
    DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t12 = me->current.
    DATA t14 TYPE REF TO zif_lnt_interface_definition.
    DATA(t15) = xsdbool( t12 IS INITIAL ).
    IF t15 = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zif_lnt_interface_definition.
      DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t19 = t12.
      DATA t21 TYPE string.
      t21 = t1->value.
      t18 = t19->find_interface_definition( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t10 = t14.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t10 IS BOUND ).
    IF t23 = abap_true.
      result = t10.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_ob_interface.
    DATA t31 TYPE REF TO zcl_lnt_ob_interface.
    DATA t32 TYPE REF TO zif_lnt_object.
    DATA(t33) = me->reg.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t36) = |INTF|.
    DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t37->has = abap_true.
    t37->value = t36.
    t34 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE string.
    t41 = t1->value.
    DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t43->has = abap_true.
    t43->value = t41.
    t39 = t43.
    t32 = t33->get_object( i_type_9913 = t34 i_name = t39 ).
    DATA t45 TYPE REF TO object.
    t45 = t32.
    t31 ?= t45.
    t30 = t31.
    DATA t46 TYPE abap_bool.
    t46 = xsdbool( t30 IS BOUND ).
    IF t46 = abap_true.
      DATA t52 TYPE REF TO zif_lnt_interface_definition.
      t52 = t30->def.
      result = t52.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_form_definition.
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t3 = me->current.
    DATA t5 TYPE REF TO zif_lnt_form_definition.
    DATA(t6) = xsdbool( t3 IS INITIAL ).
    IF t6 = abap_true.
    ELSE.
      DATA t9 TYPE REF TO zif_lnt_form_definition.
      DATA t10 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t10 = t3.
      DATA(t12) = i_name.
      t9 = t10->find_form_definition( i_name = t12 ).
      t5 = t9.
    ENDIF.
    result = t5.

  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t11 = me->current.
    DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t14) = xsdbool( t11 IS INITIAL ).
    IF t14 = abap_true.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t18 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t18 = t11.
      DATA t20 TYPE string.
      t20 = t1->value.
      t17 = t18->find_type( i_name = t20 ).
      t13 = t17.
    ENDIF.
    result = t13.

  ENDMETHOD.

  METHOD find_extra_like_type.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t11 = me->current.
    DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t14) = xsdbool( t11 IS INITIAL ).
    IF t14 = abap_true.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t18 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t18 = t11.
      DATA t20 TYPE string.
      t20 = t1->value.
      t17 = t18->find_extra_like_type( i_name = t20 ).
      t13 = t17.
    ENDIF.
    result = t13.

  ENDMETHOD.

  METHOD find_variable.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t12 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t12 = me->current.
    DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t15) = xsdbool( t12 IS INITIAL ).
    IF t15 = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t19 = t12.
      DATA t21 TYPE string.
      t21 = t1->value.
      t18 = t19->find_variable( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t10 = t14.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t10 IS BOUND ).
    IF t23 = abap_true.
      result = t10.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE string.
    t33 = t1->value.
    DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t35->has = abap_true.
    t35->value = t33.
    t31 = t35.
    t30 = me->find_type_pool_constant( i_name = t31 ).
    result = t30.

  ENDMETHOD.

  METHOD find_returning_parameter.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t3 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t5 TYPE REF TO zcl_lnt_iscope_data.
    DATA t7 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t7 = me->current.
    DATA t9 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t10) = xsdbool( t7 IS INITIAL ).
    IF t10 = abap_true.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_scope_data.
      t14 = t7.
      DATA t17 TYPE REF TO zcl_lnt_iscope_data.
      t17 = t14->data_56cc.
      t9 = t17.
    ENDIF.
    t5 = t9.
    DATA t19 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA(t20) = xsdbool( t5 IS INITIAL ).
    IF t20 = abap_true.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t24 TYPE REF TO zcl_lnt_iscope_data.
      t24 = t5.
      t23 = t24->vars.
      t19 = t23.
    ENDIF.
    t3 = t19.
    DATA t26 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t27 TYPE abap_bool.
    t27 = xsdbool( t3 IS BOUND ).
    IF t27 = abap_true.
      t26 = t3.
    ELSE.
      t26 = NEW zlnt_runtime_map__126b79e3f8a9( ).
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
      t41 = me->current.
      DATA t44 TYPE REF TO zcl_lnt_iscope_data.
      t44 = t41->data_56cc.
      t40 = t44.
      t39 = t40->vars.
      t38 = t39->get( p0 = t35 ).
      t37 = t38.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t52 = t37->meta.
      t48 = t52.
      DATA(t54) = |returning|.
      t47 = t48->includes( p0 = t54 ).
      IF t47 = abap_true.
        result = t37.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_ddic.
    DATA t1 TYPE REF TO zcl_lnt_ddic.
    DATA(t2) = me->reg.
    t1 = NEW zcl_lnt_ddic( i_reg_f149 = t2 ).
    result = t1.

  ENDMETHOD.

  METHOD get_ddic_references.
    DATA t1 TYPE REF TO zif_lnt_ddic_references.
    t1 = me->reg->get_ddic_references( ).
    result = t1.

  ENDMETHOD.

  METHOD get_msag_references.
    DATA t1 TYPE REF TO zif_lnt_msag_references.
    t1 = me->reg->get_msag_references( ).
    result = t1.

  ENDMETHOD.

  METHOD get_parent_obj.
    result = me->parent_obj.

  ENDMETHOD.

  METHOD get_name.
    DATA(t1) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = xsdbool( me->current IS INITIAL ).
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t12) = |error, getName|.
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
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t22 TYPE REF TO zcl_lnt_iscope_identifier.
    t22 = me->current->identifier.
    t18 = t22.
    t17 = t18->sname.
    result = t17.

  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1 = xsdbool( me->current IS INITIAL ).
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t9 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t12) = |error, getType|.
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
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t22 TYPE REF TO zcl_lnt_iscope_identifier.
    t22 = me->current->identifier.
    t18 = t22.
    t17 = t18->stype.
    result = t17.

  ENDMETHOD.

  METHOD push.
    DATA t5 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t6 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t7 TYPE string.
    t7 = i_stype.
    DATA t9 TYPE string.
    t9 = i_sname.
    DATA t11 TYPE REF TO zcl_lnt_position.
    t11 = i_start.
    DATA t13 TYPE string.
    t13 = i_filename.
    DATA t15 TYPE REF TO zcl_lnt_position.
    t6 = NEW zcl_lnt_iscope_identifier( i_stype = t7 i_sname = t9 i_filename = t13 i_start = t11 i_end = t15 ).
    CREATE OBJECT t6->zlnt_view_ownkeys_b0e8086400eb.
    t6->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t17 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t18 ).
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t19 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t20 ).
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t6->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t21 ).
    ENDIF.
    CREATE OBJECT t6->zlnt_json_ownkeys_70e5fd461788.
    t6->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t22) = |stype|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    DATA(t24) = |sname|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    DATA(t26) = |start|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA(t28) = |filename|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |end|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t6->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    t5 = t6.
    DATA(t32) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t32 = xsdbool( me->current IS INITIAL ).
    IF t32 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t43 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t41 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t5 i_parent = t43 ).
      me->current = t41.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    ELSE.
      DATA t45 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t45 = me->current.
      DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t52 = t45.
      t50 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t5 i_parent = t52 ).
      me->current = t50.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
      DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t58 = me->current.
      t45->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t58 ).
    ENDIF.
  ENDMETHOD.

  METHOD is_oo.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t1 = me->current.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = xsdbool( t1 IS INITIAL ).
      t8 = xsdbool( t9 = abap_false ).
      t3 = t8.
      IF t3 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      t17 = t1->identifier.
      t13 = t17.
      t12 = t13->stype.
      t11 = t12.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t22) = |class_definition|.
      t20 = xsdbool( t11 = t22 ).
      t19 = t20.
      IF t20 = abap_false.
        DATA t23 TYPE abap_bool.
        DATA(t25) = |interface|.
        t23 = xsdbool( t11 = t25 ).
        t19 = t23.
      ENDIF.
      IF t19 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t28 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t28 = t1.
      t27 = t28->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t27.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_any_oo.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t1 = me->current.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = xsdbool( t1 IS INITIAL ).
      t8 = xsdbool( t9 = abap_false ).
      t3 = t8.
      IF t3 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      t17 = t1->identifier.
      t13 = t17.
      t12 = t13->stype.
      t11 = t12.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE abap_bool.
      DATA(t23) = |class_definition|.
      t21 = xsdbool( t11 = t23 ).
      t20 = t21.
      IF t21 = abap_false.
        DATA t24 TYPE abap_bool.
        DATA(t26) = |class_implementation|.
        t24 = xsdbool( t11 = t26 ).
        t20 = t24.
      ENDIF.
      t19 = t20.
      IF t20 = abap_false.
        DATA t27 TYPE abap_bool.
        DATA(t29) = |interface|.
        t27 = xsdbool( t11 = t29 ).
        t19 = t27.
      ENDIF.
      IF t19 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t32 = t1.
      t31 = t32->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t31.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_in_static_method.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t1 = me->current.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = xsdbool( t1 IS INITIAL ).
      t8 = xsdbool( t9 = abap_false ).
      t3 = t8.
      IF t3 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      t17 = t1->identifier.
      t13 = t17.
      t12 = t13->stype.
      t11 = t12.
      DATA t19 TYPE abap_bool.
      DATA(t21) = |method_instance|.
      t19 = xsdbool( t11 = t21 ).
      IF t19 = abap_true.
        result = abap_false.
        RETURN.
      ELSE.
        DATA t23 TYPE abap_bool.
        DATA(t25) = |class_implementation|.
        t23 = xsdbool( t11 = t25 ).
        IF t23 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t28 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t28 = t1.
      t27 = t28->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t27.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD add_local_friend.
    DATA(t1) = i_class_name.
    DATA(t2) = i_friend_name.
    DATA(t3) = VALUE string( ).
    DATA t4 TYPE string.
    DATA(t6) = strlen( t1 ).
    t4 = t1.
    IF t4 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t4 TO UPPER CASE.
    ELSE.
      t4 = zlnt_runtime_uppe_91169605024d=>full( t4 ).
    ENDIF.
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t10 = me->local_friends->get( p0 = t3 ).
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t14) = xsdbool( t9 IS INITIAL ).
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t16.
      t13 = t16.
    ELSE.
      t13 = t9.
    ENDIF.
    t7 = t13.
    DATA t20 TYPE string.
    DATA(t22) = strlen( t2 ).
    t20 = t2.
    IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t20 TO UPPER CASE.
    ELSE.
      t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
    ENDIF.
    t7->load( ).
    APPEND t20 TO t7->items.
    t7->save( ).
    DATA t23 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    t23 = me->local_friends->set( p0 = t3 p1 = t7 ).
  ENDMETHOD.

  METHOD is_local_friend.
    DATA(t1) = i_class_name.
    DATA(t2) = i_friend_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t7) = me->local_friends.
    DATA t8 TYPE string.
    DATA(t10) = strlen( t1 ).
    t8 = t1.
    IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t8 TO UPPER CASE.
    ELSE.
      t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
    ENDIF.
    t6 = t7->get( p0 = t8 ).
    t5 = t6.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t12) = xsdbool( t5 IS INITIAL ).
    IF t12 = abap_true.
    ELSE.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t16 = t5.
      DATA t18 TYPE string.
      DATA(t20) = strlen( t2 ).
      t18 = t2.
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
    DATA(t25) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t25->has = abap_true.
    t25->value = abap_true.
    t22 = t25.
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
    t1 = me->current.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = xsdbool( t1 IS INITIAL ).
      t8 = xsdbool( t9 = abap_false ).
      t3 = t8.
      IF t3 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      t17 = t1->identifier.
      t13 = t17.
      t12 = t13->stype.
      DATA(t19) = |class_implementation|.
      t11 = xsdbool( t12 = t19 ).
      IF t11 = abap_true.
        DATA t22 TYPE string.
        DATA t23 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA t27 TYPE REF TO zcl_lnt_iscope_identifier.
        t27 = t1->identifier.
        t23 = t27.
        t22 = t23->sname.
        DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t29->has = abap_true.
        t29->value = t22.
        result = t29.
        RETURN.
      ENDIF.
      DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t32 = t1.
      t31 = t32->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t31.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD is_global_oo.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE string.
    t3 = me->parent_obj->get_type( ).
    DATA(t5) = |INTF|.
    t2 = xsdbool( t3 = t5 ).
    t1 = t2.
    IF t2 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE string.
      t7 = me->parent_obj->get_type( ).
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
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t8 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t8 = me->current.
    DATA t10 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t11) = xsdbool( t8 IS INITIAL ).
    IF t11 = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_iscope_identifier.
      t18 = t8->identifier.
      t10 = t18.
    ENDIF.
    t6 = t10.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = xsdbool( t6 IS INITIAL ).
    IF t21 = abap_true.
    ELSE.
      DATA t24 TYPE string.
      DATA t25 TYPE REF TO zcl_lnt_iscope_identifier.
      t25 = t6.
      t24 = t25->filename.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t24.
      t20 = t27.
    ENDIF.
    t4 = t20.
    DATA t28 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t29) = VALUE abap_bool( ).
    IF t4 IS INITIAL.
      t29 = abap_true.
    ELSEIF t4->has = abap_false.
      t29 = abap_true.
    ENDIF.
    IF t29 = abap_true.
    ELSE.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE string.
      t33 = t4->value.
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
    DATA(t44) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t44->has = abap_true.
    t44->value = abap_true.
    t41 = t44.
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
      t1 = abap_false.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_allow_header_use.
    DATA(t4) = i_name.
    DATA(t5) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t5->has = abap_true.
    t5->value = t4.
    me->allow_header_use = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `allowHeaderUse`.
  ENDMETHOD.

  METHOD is_allow_header_use.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE string.
    DATA(t7) = strlen( t1 ).
    t5 = t1.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t8->has = abap_true.
    t8->value = t5.
    t3 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t11 = me->allow_header_use.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t14) = VALUE abap_bool( ).
    IF t11 IS INITIAL.
      t14 = abap_true.
    ELSEIF t11->has = abap_false.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
    ELSE.
      DATA t17 TYPE string.
      DATA t18 TYPE string.
      t18 = t11->value.
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
    CLEAR me->allow_header_use.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `allowHeaderUse`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3 = xsdbool( me->current IS INITIAL ).
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t11 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t14) = |something wrong, top scope popped|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = t15.
      t11 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t12 ).
      t10 = NEW #( ).
      t10->payload = t11.
      CLEAR t10->source_value.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
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
      RAISE EXCEPTION t10.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_iscope_identifier.
    t24 = me->current->identifier.
    t24->end = t1.
    DELETE t24->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t24->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t30 ).
    ENDIF.
    DATA(t31) = |end|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t24->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t24->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA(t35) = me->current.
    DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t37 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    t37 = me->current.
    t36 = t37->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    me->current = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `current`.
    DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope.
    t39 = NEW zcl_lnt_spaghetti_scope( i_top = t35 ).
    result = t39.

  ENDMETHOD.

  METHOD add_form_definitions_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    t3->load( ).
    APPEND t1 TO t3->items.
    t3->save( ).
    t2 = t3.
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
