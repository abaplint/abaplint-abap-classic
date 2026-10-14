* TS: src/abap/5_syntax/_current_scope.ts:28:1 CurrentScope
CLASS zcl_lnt_current_scope DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_current_scope IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t3) = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    me->local_friends = t3.
    DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    CLEAR t4.
    me->current = t4.
    DATA(t5) = CAST zif_lnt_object( t2 ).
    me->parent_obj = t5.
    DATA(t6) = CAST zif_lnt_registry( t1 ).
    me->reg = t6.
  ENDMETHOD.

  METHOD build_default.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t3 TYPE REF TO zcl_lnt_current_scope.
    DATA t4 TYPE REF TO zcl_lnt_current_scope.
    DATA(t5) = CAST zif_lnt_registry( t1 ).
    DATA(t6) = CAST zif_lnt_object( t2 ).
    t4 = NEW zcl_lnt_current_scope( i_reg_f149 = t5 i_obj_1ed0 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_current_scope.
    DATA(t8) = CAST zcl_lnt_current_scope( t3 ).
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t11) = CONV int8( 1 ).
    DATA(t12) = CONV int8( 1 ).
    t10 = NEW zcl_lnt_position( i_row = t11 i_col = t12 ).
    t9 = t10.
    DATA t13 TYPE string.
    DATA(t14) = CONV string( zcl_lnt_built_in=>filename ).
    t13 = t14.
    DATA t15 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t16 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t17) = |_builtin|.
    DATA(t18) = |_builtin|.
    DATA(t19) = t13.
    DATA(t20) = CAST zcl_lnt_position( t9 ).
    DATA t21 TYPE REF TO zcl_lnt_position.
    CLEAR t21.
    t16 = NEW zcl_lnt_iscope_identifier( i_stype = t17 i_sname = t18 i_filename = t19 i_start = t20 i_end = t21 ).
    t15 = t16.
    DATA(t22) = VALUE abap_bool( ).
    DATA t23 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t25) = CAST zcl_lnt_current_scope( t7 ).
    t24 = t25->current.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    t26 = t27.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = CAST zcl_lnt_spaghetti_scope_node( t23 ).
    IF t29 IS INITIAL.
      t28 = abap_true.
    ENDIF.
    t22 = t28.
    IF t22 = abap_true.
      DATA(t30) = CAST zcl_lnt_current_scope( t7 ).
      DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA t33 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t34) = CAST zcl_lnt_iscope_identifier( t15 ).
        DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t35.
        t33 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t34 i_parent = t35 ).
        t31 = t33.
      ELSE.
        DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t36.
        t31 = t36.
      ENDIF.
      t30->current = t31.
    ELSE.
      DATA t37 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t39 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t40) = CAST zcl_lnt_current_scope( t7 ).
      t39 = t40->current.
      t38 = t39.
      t37 = t38.
      DATA(t41) = CAST zcl_lnt_current_scope( t7 ).
      DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t44.
        DATA(t45) = CAST zcl_lnt_iscope_identifier( t15 ).
        DATA t46 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t46.
        DATA(t47) = abap_true.
        IF t47 = abap_true.
          DATA(t48) = CAST zcl_lnt_spaghetti_scope_node( t37 ).
          t46 = t48.
        ELSE.
          DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t49.
          t46 = t49.
        ENDIF.
        t44 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t45 i_parent = t46 ).
        t42 = t44.
      ELSE.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t50.
        t42 = t50.
      ENDIF.
      t41->current = t42.
      DATA(t51) = CAST zcl_lnt_spaghetti_scope_node( t37 ).
      DATA t52 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t53 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t54) = CAST zcl_lnt_current_scope( t7 ).
      t53 = t54->current.
      t52 = t53.
      t51->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t52 ).
    ENDIF.
    DATA(t55) = CAST zcl_lnt_current_scope( t3 ).
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t58 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA t59 TYPE REF TO zif_lnt_configuration.
    DATA(t60) = CAST zif_lnt_registry( t1 ).
    t59 = t60->get_config( ).
    t58 = t59->get_syntax_setttings( ).
    t57 = t58->global_constants.
    t56 = t57.
    zcl_lnt_current_scope=>add_built_in( i_s = t55 i_extras = t56 ).
    DATA t61 TYPE string.
    DATA(t62) = |_global|.
    t61 = t62.
    DATA t63 TYPE abap_bool.
    DATA(t64) = CAST zif_lnt_object( t2 ).
    t63 = xsdbool( t64 IS BOUND ).
    IF t63 = abap_true.
      DATA t65 TYPE string.
      DATA t66 TYPE string.
      DATA(t67) = t61.
      DATA(t68) = |_|.
      DATA(t69) = strlen( t67 ).
      t66 = |{ t67 }{ t68 }|.
      DATA t70 TYPE string.
      DATA(t71) = CAST zif_lnt_object( t2 ).
      t70 = t71->get_name( ).
      DATA(t72) = strlen( t66 ).
      t65 = |{ t66 }{ t70 }|.
      t61 = t65.
    ENDIF.
    DATA t73 TYPE REF TO zcl_lnt_current_scope.
    DATA(t74) = CAST zcl_lnt_current_scope( t3 ).
    t73 = t74.
    DATA t75 TYPE string.
    DATA(t76) = t61.
    t75 = t76.
    DATA t77 TYPE REF TO zcl_lnt_position.
    DATA t78 TYPE REF TO zcl_lnt_position.
    DATA(t79) = CONV int8( 1 ).
    DATA(t80) = CONV int8( 1 ).
    t78 = NEW zcl_lnt_position( i_row = t79 i_col = t80 ).
    t77 = t78.
    DATA t81 TYPE string.
    DATA(t82) = t61.
    t81 = t82.
    DATA t83 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t84 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t85) = |_global|.
    DATA(t86) = t75.
    DATA(t87) = t81.
    DATA(t88) = CAST zcl_lnt_position( t77 ).
    DATA t89 TYPE REF TO zcl_lnt_position.
    CLEAR t89.
    t84 = NEW zcl_lnt_iscope_identifier( i_stype = t85 i_sname = t86 i_filename = t87 i_start = t88 i_end = t89 ).
    t83 = t84.
    DATA(t90) = VALUE abap_bool( ).
    DATA t91 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t92 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t93) = CAST zcl_lnt_current_scope( t73 ).
    t92 = t93->current.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    t94 = t95.
    DATA(t96) = VALUE abap_bool( ).
    DATA(t97) = CAST zcl_lnt_spaghetti_scope_node( t91 ).
    IF t97 IS INITIAL.
      t96 = abap_true.
    ENDIF.
    t90 = t96.
    IF t90 = abap_true.
      DATA(t98) = CAST zcl_lnt_current_scope( t73 ).
      DATA t99 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t99.
      DATA(t100) = abap_true.
      IF t100 = abap_true.
        DATA t101 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t102) = CAST zcl_lnt_iscope_identifier( t83 ).
        DATA t103 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t103.
        t101 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t102 i_parent = t103 ).
        t99 = t101.
      ELSE.
        DATA t104 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t104.
        t99 = t104.
      ENDIF.
      t98->current = t99.
    ELSE.
      DATA t105 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t106 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t107 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t108) = CAST zcl_lnt_current_scope( t73 ).
      t107 = t108->current.
      t106 = t107.
      t105 = t106.
      DATA(t109) = CAST zcl_lnt_current_scope( t73 ).
      DATA t110 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t110.
      DATA(t111) = abap_true.
      IF t111 = abap_true.
        DATA t112 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t112.
        DATA(t113) = CAST zcl_lnt_iscope_identifier( t83 ).
        DATA t114 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t114.
        DATA(t115) = abap_true.
        IF t115 = abap_true.
          DATA(t116) = CAST zcl_lnt_spaghetti_scope_node( t105 ).
          t114 = t116.
        ELSE.
          DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t117.
          t114 = t117.
        ENDIF.
        t112 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t113 i_parent = t114 ).
        t110 = t112.
      ELSE.
        DATA t118 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t118.
        t110 = t118.
      ENDIF.
      t109->current = t110.
      DATA(t119) = CAST zcl_lnt_spaghetti_scope_node( t105 ).
      DATA t120 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t121 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t122) = CAST zcl_lnt_current_scope( t73 ).
      t121 = t122->current.
      t120 = t121.
      t119->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t120 ).
    ENDIF.
    DATA(t123) = CAST zcl_lnt_current_scope( t3 ).
    result = t123.

  ENDMETHOD.

  METHOD add_built_in.
    DATA(t1) = CAST zcl_lnt_current_scope( i_s ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_extras ).
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
    DATA(t7) = CAST zcl_lnt_built_in( t3 ).
    DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t6 = t7->get_db65( i_extras = t8 ).
    t5 = t6.
    DATA(t9) = CAST zcl_lnt_current_scope( t1 ).
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    t9->add_list( i_identifiers = t10 ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_built_in.
    DATA(t13) = CAST zcl_lnt_built_in( t3 ).
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
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    t15 = t20.
    IF t15 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = CAST zcl_lnt_built_in( t12 ).
      t23 = t24->build_sy( ).
      t22 = t23.
      DATA t25 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t26 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA(t28) = CONV int8( 1 ).
      DATA(t29) = CONV int8( 1 ).
      t27 = NEW zcl_lnt_position( i_row = t28 i_col = t29 ).
      DATA(t30) = |abap_bool|.
      t26 = NEW zcl_lnt_lx_identifier( i_start = t27 i_str = t30 ).
      t25 = t26.
      DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
      DATA t32 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t32.
      DATA(t33) = CAST zcl_lnt_lx_identifier( t25 ).
      DATA(t34) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t35 TYPE REF TO zcl_lnt_character_type.
      CLEAR t35.
      DATA(t36) = CONV int8( 1 ).
      DATA t37 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t37.
      DATA(t38) = abap_true.
      IF t38 = abap_true.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        DATA(t41) = abap_true.
        IF t41 = abap_true.
          DATA(t42) = |ABAP_BOOL|.
          DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t43->has = abap_true.
          t43->value = t42.
          t40 = t43.
        ELSE.
          DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t44.
          t40 = t44.
        ENDIF.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = |ABAP_BOOL|.
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t49.
          t47 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t47 = t51.
        ENDIF.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        t39 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t40 i_conversion_exit = t45 i_derived_from_constant = t46 i_ddic_name = t47 i_rtti_name = t52 i_description = t53 ).
        t37 = t39.
      ELSE.
        DATA t54 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t54.
        t37 = t54.
      ENDIF.
      t35 = NEW zcl_lnt_character_type( i_length = t36 i_extra = t37 ).
      DATA t55 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      t32 = NEW zcl_lnt_typed_identifier( i_token = t33 i_filename = t34 i_type_9913 = t35 i_meta = t55 i_value = t56 ).
      APPEND t32 TO t31->items.
      DATA t57 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t58 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA(t60) = CONV int8( 1 ).
      DATA(t61) = CONV int8( 1 ).
      t59 = NEW zcl_lnt_position( i_row = t60 i_col = t61 ).
      DATA(t62) = |cursor|.
      t58 = NEW zcl_lnt_lx_identifier( i_start = t59 i_str = t62 ).
      t57 = t58.
      DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
      DATA t64 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t64.
      DATA(t65) = CAST zcl_lnt_lx_identifier( t57 ).
      DATA(t66) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t67 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t68.
      DATA(t69) = abap_true.
      IF t69 = abap_true.
        DATA t70 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA(t72) = abap_true.
        IF t72 = abap_true.
          DATA(t73) = |CURSOR|.
          DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t74->has = abap_true.
          t74->value = t73.
          t71 = t74.
        ELSE.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t71 = t75.
        ENDIF.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA(t80) = |CURSOR|.
          DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t81->has = abap_true.
          t81->value = t80.
          t78 = t81.
        ELSE.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          t78 = t82.
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t70 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t71 i_conversion_exit = t76 i_derived_from_constant = t77 i_ddic_name = t78 i_rtti_name = t83 i_description = t84 ).
        t68 = t70.
      ELSE.
        DATA t85 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t85.
        t68 = t85.
      ENDIF.
      t67 = zcl_lnt_integer_type=>get_db65( i_input_967e = t68 ).
      DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      t64 = NEW zcl_lnt_typed_identifier( i_token = t65 i_filename = t66 i_type_9913 = t67 i_meta = t86 i_value = t87 ).
      APPEND t64 TO t63->items.
      IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
        zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t88.
      DATA(t89) = abap_true.
      IF t89 = abap_true.
        DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
        t88 = t90.
      ELSE.
        DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t91.
        t88 = t91.
      ENDIF.
      zcl_lnt_built_in=>types_cache = t88.
    ENDIF.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    IF zcl_lnt_built_in=>zlnt_builtin_init_d2c53bdf259f = abap_false.
      zcl_lnt_built_in=>zlnt_builtin_init_97ac0787fc72( ).
    ENDIF.
    t93 = zcl_lnt_built_in=>types_cache.
    t92 = t93.
    t14 = t92.
    t11 = t14.
    DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t94.
    DATA t95 TYPE REF TO object.
    CLEAR t95.
    LOOP AT t11->items INTO t95.
      t94 ?= t95.
      DATA t96 TYPE REF TO zcl_lnt_current_scope.
      DATA(t97) = CAST zcl_lnt_current_scope( t1 ).
      t96 = t97.
      DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t98.
      DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t99.
      DATA(t100) = abap_true.
      IF t100 = abap_true.
        DATA(t101) = CAST zcl_lnt_typed_identifier( t94 ).
        t99 = t101.
      ELSE.
        DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t102.
        t99 = t102.
      ENDIF.
      t98 = t99.
      DATA(t103) = VALUE abap_bool( ).
      DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t105) = CAST zcl_lnt_typed_identifier( t98 ).
      t104 = t105.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      t106 = t107.
      DATA(t108) = VALUE abap_bool( ).
      DATA(t109) = CAST zcl_lnt_typed_identifier( t104 ).
      IF t109 IS INITIAL.
        t108 = abap_true.
      ENDIF.
      t103 = t108.
      IF t103 = abap_true.
      ELSE.
        DATA(t110) = CAST zcl_lnt_current_scope( t96 ).
        DATA(t111) = VALUE string( ).
        DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t113 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t114) = CAST zcl_lnt_typed_identifier( t98 ).
        t113 = t114.
        t112 = t113.
        DATA(t115) = VALUE string( ).
        DATA t116 TYPE string.
        DATA t117 TYPE string.
        DATA t118 TYPE REF TO zcl_lnt_abstract_token.
        DATA t119 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t120) = CAST zcl_lnt_fi_identifier( t112 ).
        t119 = t120->token.
        t118 = t119.
        DATA t121 TYPE string.
        DATA(t122) = CAST zcl_lnt_abstract_token( t118 ).
        t121 = t122->str.
        t117 = t121.
        t116 = t117.
        DATA(t123) = VALUE abap_bool( ).
        DATA(t124) = VALUE string( ).
        DATA(t125) = t116.
        DATA(t126) = 0.
        DATA(t127) = 1.
        DATA(t128) = strlen( t125 ).
        IF t126 < 0.
          t126 = t126 + t128.
          IF t126 < 0.
            t126 = 0.
          ENDIF.
        ENDIF.
        IF t126 > t128 OR t127 <= 0.
          CLEAR t124.
        ELSE.
          IF t127 > t128 - t126.
            t127 = t128 - t126.
          ENDIF.
          t124 = t125+t126(t127).
        ENDIF.
        DATA(t129) = |!|.
        t123 = xsdbool( t124 = t129 ).
        IF t123 = abap_true.
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE string.
          DATA(t132) = t116.
          t131 = t132.
          DATA(t133) = VALUE string( ).
          DATA(t134) = t131.
          DATA(t135) = 1.
          DATA t136 TYPE i.
          DATA(t137) = t131.
          DATA(t138) = strlen( t137 ).
          t136 = t138.
          DATA(t139) = strlen( t134 ).
          IF t135 < 0.
            t135 = t135 + t139.
            IF t135 < 0.
              t135 = 0.
            ENDIF.
          ENDIF.
          IF t135 > t139 OR t136 <= 0.
            CLEAR t133.
          ELSE.
            IF t136 > t139 - t135.
              t136 = t139 - t135.
            ENDIF.
            t133 = t134+t135(t136).
          ENDIF.
          t130 = t133.
          t116 = t130.
        ENDIF.
        DATA(t140) = t116.
        t115 = t140.
        t111 = t115.
        DATA t141 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t141.
        DATA(t142) = abap_true.
        IF t142 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t144) = CAST zcl_lnt_typed_identifier( t98 ).
          t143 = t144.
          t141 = t143.
        ELSE.
          DATA t145 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t145.
          t141 = t145.
        ENDIF.
        t110->add_type_named( i_name = t111 i_type_9913 = t141 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD get_release.
    DATA t1 TYPE REF TO zcl_lnt_abap_release.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = CAST zif_lnt_registry( me->reg ).
    t2 = t3->get_config( ).
    t1 = t2->get_release( ).
    result = t1.

  ENDMETHOD.

  METHOD get_version.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_current_scope.ts:72|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_language_version.
    DATA t1 TYPE string.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = CAST zif_lnt_registry( me->reg ).
    t2 = t3->get_config( ).
    t1 = t2->get_language_version( ).
    result = t1.

  ENDMETHOD.

  METHOD get_open_abap.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE REF TO zif_lnt_configuration.
    DATA(t3) = CAST zif_lnt_registry( me->reg ).
    t2 = t3->get_config( ).
    t1 = t2->is_open_abap( ).
    result = t1.

  ENDMETHOD.

  METHOD get_registry.
    DATA(t1) = CAST zif_lnt_registry( me->reg ).
    result = t1.

  ENDMETHOD.

  METHOD add_type.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = CAST zcl_lnt_typed_identifier( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_typed_identifier( t3 ).
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
    DATA(t12) = CAST zcl_lnt_typed_identifier( t1 ).
    t11 = t12.
    t10 = t11.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = CAST zcl_lnt_fi_identifier( t10 ).
    t17 = t18->token.
    t16 = t17.
    DATA t19 TYPE string.
    DATA(t20) = CAST zcl_lnt_abstract_token( t16 ).
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
      DATA(t42) = CAST zcl_lnt_typed_identifier( t1 ).
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
    DATA(t2) = CAST zcl_lnt_typed_identifier( i_type_9913 ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t5) = CAST zcl_lnt_typed_identifier( t2 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_typed_identifier( t4 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t12) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t11 ).
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      RETURN.
    ENDIF.
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE string.
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
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t24 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t25 TYPE REF TO zcl_lnt_iscope_data.
    DATA t26 TYPE REF TO zcl_lnt_scope_data.
    DATA t27 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t28) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t27 = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t30) = CAST zcl_lnt_scope_data( t26 ).
    t29 = t30->data_56cc.
    t25 = t29.
    t24 = t25->types.
    DATA(t31) = t17.
    t23 = t24->get( p0 = t31 ).
    t22 = t23.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = CAST zcl_lnt_typed_identifier( t22 ).
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
        DATA t41 TYPE string.
        DATA t42 TYPE string.
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
      RAISE EXCEPTION t37.
    ELSE.
      DATA t50 TYPE abap_bool.
      DATA(t51) = CONV abap_bool( me->is_oo( ) ).
      t50 = t51.
      IF t51 = abap_true.
        DATA(t52) = VALUE abap_bool( ).
        DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t54 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t55 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA t56 TYPE REF TO zcl_lnt_iscope_data.
        DATA t57 TYPE REF TO zcl_lnt_scope_data.
        DATA t58 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t59) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
        t58 = t59.
        t57 = t58.
        DATA t60 TYPE REF TO zcl_lnt_iscope_data.
        DATA(t61) = CAST zcl_lnt_scope_data( t57 ).
        t60 = t61->data_56cc.
        t56 = t60.
        t55 = t56->vars.
        DATA(t62) = t17.
        t54 = t55->get( p0 = t62 ).
        t53 = t54.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        t63 = t64.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = CAST zcl_lnt_typed_identifier( t53 ).
        IF t67 IS INITIAL.
          t66 = abap_true.
        ENDIF.
        t65 = xsdbool( t66 = abap_false ).
        t52 = t65.
        t50 = t52.
      ENDIF.
      IF t50 = abap_true.
        DATA t68 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t68.
        DATA t69 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA(t71) = abap_true.
        IF t71 = abap_true.
          DATA t72 TYPE string.
          DATA t73 TYPE string.
          DATA(t74) = |"|.
          DATA(t75) = t1.
          DATA(t76) = strlen( t74 ).
          t73 = |{ t74 }{ t75 }|.
          DATA(t77) = |" already defined|.
          DATA(t78) = strlen( t73 ).
          t72 = |{ t73 }{ t77 }|.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t72.
          t70 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t70 = t80.
        ENDIF.
        t69 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t70 ).
        t68 = NEW #( ).
        t68->payload = t69.
        RAISE EXCEPTION t68.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t82 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t83 TYPE REF TO zcl_lnt_iscope_data.
    DATA t84 TYPE REF TO zcl_lnt_scope_data.
    DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t86) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t85 = t86.
    t84 = t85.
    DATA t87 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t88) = CAST zcl_lnt_scope_data( t84 ).
    t87 = t88->data_56cc.
    t83 = t87.
    t82 = t83->types.
    DATA(t89) = t17.
    DATA t90 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t91) = CAST zcl_lnt_typed_identifier( t2 ).
    t90 = t91.
    t81 = t82->set( p0 = t89 p1 = t90 ).
  ENDMETHOD.

  METHOD add_extra_like_type.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = CAST zcl_lnt_typed_identifier( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_typed_identifier( t3 ).
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
    DATA(t12) = CAST zcl_lnt_typed_identifier( t1 ).
    t11 = t12.
    t10 = t11.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = CAST zcl_lnt_fi_identifier( t10 ).
    t17 = t18->token.
    t16 = t17.
    DATA t19 TYPE string.
    DATA(t20) = CAST zcl_lnt_abstract_token( t16 ).
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
      DATA(t42) = CAST zcl_lnt_typed_identifier( t1 ).
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
    DATA(t2) = CAST zcl_lnt_typed_identifier( i_type_9913 ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t5) = CAST zcl_lnt_typed_identifier( t2 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_typed_identifier( t4 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t12) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t11 ).
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      RETURN.
    ENDIF.
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE string.
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
    DATA t23 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t24 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t25 TYPE REF TO zcl_lnt_iscope_data.
    DATA t26 TYPE REF TO zcl_lnt_scope_data.
    DATA t27 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t28) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t27 = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t30) = CAST zcl_lnt_scope_data( t26 ).
    t29 = t30->data_56cc.
    t25 = t29.
    t24 = t25->extra_like_types.
    DATA(t31) = t17.
    t23 = t24->get( p0 = t31 ).
    t22 = t23.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = CAST zcl_lnt_typed_identifier( t22 ).
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
        DATA t41 TYPE string.
        DATA t42 TYPE string.
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
      RAISE EXCEPTION t37.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t51 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t52 TYPE REF TO zcl_lnt_iscope_data.
    DATA t53 TYPE REF TO zcl_lnt_scope_data.
    DATA t54 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t55) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t54 = t55.
    t53 = t54.
    DATA t56 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t57) = CAST zcl_lnt_scope_data( t53 ).
    t56 = t57->data_56cc.
    t52 = t56.
    t51 = t52->extra_like_types.
    DATA(t58) = t17.
    DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t60) = CAST zcl_lnt_typed_identifier( t2 ).
    t59 = t60.
    t50 = t51->set( p0 = t58 p1 = t59 ).
  ENDMETHOD.

  METHOD add_class_definition.
    DATA(t1) = CAST zif_lnt_class_definition( i_c ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t4) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_spaghetti_scope_node( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    DATA(t12) = CAST zif_lnt_class_definition( t1 ).
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
    DATA t16 TYPE REF TO zif_lnt_class_definition.
    DATA t17 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t21) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t23) = CAST zcl_lnt_scope_data( t19 ).
    t22 = t23->data_56cc.
    t18 = t22.
    t17 = t18->cdefs.
    DATA(t24) = t9.
    t16 = t17->get( p0 = t24 ).
    t15 = t16.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = CAST zif_lnt_class_definition( t15 ).
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
        DATA t34 TYPE string.
        DATA t35 TYPE string.
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
      RAISE EXCEPTION t30.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t44 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t45 TYPE REF TO zcl_lnt_iscope_data.
    DATA t46 TYPE REF TO zcl_lnt_scope_data.
    DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t48) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t47 = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t50) = CAST zcl_lnt_scope_data( t46 ).
    t49 = t50->data_56cc.
    t45 = t49.
    t44 = t45->cdefs.
    DATA(t51) = t9.
    DATA(t52) = CAST zif_lnt_class_definition( t1 ).
    t43 = t44->set( p0 = t51 p1 = t52 ).
  ENDMETHOD.

  METHOD add_form_definitions.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_f ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t4) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_spaghetti_scope_node( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE i( ).
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t11 TYPE REF TO zif_lnt_form_definition.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    LOOP AT t10->items INTO t12.
      t11 ?= t12.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zcl_lnt_iscope_data.
      DATA t15 TYPE REF TO zcl_lnt_scope_data.
      DATA t16 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t17) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
      t16 = t17.
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t19) = CAST zcl_lnt_scope_data( t15 ).
      t18 = t19->data_56cc.
      t14 = t18.
      t13 = t14->forms.
      DATA(t20) = CAST zif_lnt_form_definition( t11 ).
      APPEND t20 TO t13->items.
    ENDLOOP.
    DATA t21 TYPE i.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_iscope_data.
    DATA t24 TYPE REF TO zcl_lnt_scope_data.
    DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t26) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t25 = t26.
    t24 = t25.
    DATA t27 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t28) = CAST zcl_lnt_scope_data( t24 ).
    t27 = t28->data_56cc.
    t23 = t27.
    t22 = t23->forms.
    t21 = lines( t22->items ).
    t9 = t21.
  ENDMETHOD.

  METHOD update_form_definition.
    DATA(t1) = CAST zif_lnt_form_definition( i_f ).
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t3) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t2 = t3.
    DO.
      DATA(t4) = VALUE abap_bool( ).
      DATA t5 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t6) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t5 = t6.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      t7 = t8.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = CAST zcl_lnt_spaghetti_scope_node( t5 ).
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
      DATA(t17) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t16 = t17.
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t19) = CAST zcl_lnt_scope_data( t15 ).
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
        DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
        t24 = lines( t25->items ).
        t22 = xsdbool( t23 < t24 ).
        IF t22 = abap_false.
          EXIT.
        ENDIF.
        DATA t26 TYPE abap_bool.
        DATA t27 TYPE REF TO zif_lnt_form_definition.
        DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
        DATA(t29) = t20.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        READ TABLE t28->items INDEX t29 INTO t30.
        t27 ?= t30.
        DATA t31 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t32) = CAST zif_lnt_form_definition( t1 ).
        t31 ?= t32.
        t26 = t27->equals( i_id = t31 ).
        IF t26 = abap_true.
          DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
          DATA(t34) = t20.
          DATA(t35) = CAST zif_lnt_form_definition( t1 ).
          t34 = t34 + 1.
          DATA t36 TYPE REF TO object.
          CLEAR t36.
          CLEAR t36.
          WHILE lines( t33->items ) < t34.
            APPEND t36 TO t33->items.
          ENDWHILE.
          MODIFY t33->items FROM t35 INDEX t34.
          RETURN.
        ENDIF.
        DATA t37 TYPE i.
        DATA(t38) = t20.
        DATA(t39) = 1.
        t37 = t38 + t39.
        t20 = t37.
      ENDDO.
      DATA t40 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t41 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t42) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
      t41 = t42.
      t40 = t41->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t2 = t40.
    ENDDO.
  ENDMETHOD.

  METHOD add_interface_definition.
    DATA(t1) = CAST zif_lnt_interface_definition( i_i ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t4) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_spaghetti_scope_node( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA(t9) = VALUE string( ).
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    DATA(t12) = CAST zif_lnt_interface_definition( t1 ).
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
    DATA t16 TYPE REF TO zif_lnt_class_definition.
    DATA t17 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t21) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t23) = CAST zcl_lnt_scope_data( t19 ).
    t22 = t23->data_56cc.
    t18 = t22.
    t17 = t18->cdefs.
    DATA(t24) = t9.
    t16 = t17->get( p0 = t24 ).
    t15 = t16.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = CAST zif_lnt_class_definition( t15 ).
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
        DATA t34 TYPE string.
        DATA t35 TYPE string.
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
      RAISE EXCEPTION t30.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA t44 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA t45 TYPE REF TO zcl_lnt_iscope_data.
    DATA t46 TYPE REF TO zcl_lnt_scope_data.
    DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t48) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t47 = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t50) = CAST zcl_lnt_scope_data( t46 ).
    t49 = t50->data_56cc.
    t45 = t49.
    t44 = t45->idefs.
    DATA(t51) = t9.
    DATA(t52) = CAST zif_lnt_interface_definition( t1 ).
    t43 = t44->set( p0 = t51 p1 = t52 ).
  ENDMETHOD.

  METHOD add_named_identifier.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_typed_identifier( i_identifier ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_spaghetti_scope_node( t4 ).
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE string( ).
    DATA t11 TYPE string.
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
    DATA t16 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t17 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t18 TYPE REF TO zcl_lnt_iscope_data.
    DATA t19 TYPE REF TO zcl_lnt_scope_data.
    DATA t20 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t21) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t20 = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t23) = CAST zcl_lnt_scope_data( t19 ).
    t22 = t23->data_56cc.
    t18 = t22.
    t17 = t18->vars.
    DATA(t24) = t10.
    t16 = t17->get( p0 = t24 ).
    t15 = t16.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = CAST zcl_lnt_typed_identifier( t15 ).
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
        DATA t34 TYPE string.
        DATA t35 TYPE string.
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
      RAISE EXCEPTION t30.
    ELSE.
      DATA t43 TYPE abap_bool.
      DATA(t44) = CONV abap_bool( me->is_oo( ) ).
      t43 = t44.
      IF t44 = abap_true.
        DATA(t45) = VALUE abap_bool( ).
        DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t48 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
        DATA t49 TYPE REF TO zcl_lnt_iscope_data.
        DATA t50 TYPE REF TO zcl_lnt_scope_data.
        DATA t51 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t52) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
        t51 = t52.
        t50 = t51.
        DATA t53 TYPE REF TO zcl_lnt_iscope_data.
        DATA(t54) = CAST zcl_lnt_scope_data( t50 ).
        t53 = t54->data_56cc.
        t49 = t53.
        t48 = t49->types.
        DATA(t55) = t10.
        t47 = t48->get( p0 = t55 ).
        t46 = t47.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        t56 = t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = CAST zcl_lnt_typed_identifier( t46 ).
        IF t60 IS INITIAL.
          t59 = abap_true.
        ENDIF.
        t58 = xsdbool( t59 = abap_false ).
        t45 = t58.
        t43 = t45.
      ENDIF.
      IF t43 = abap_true.
        DATA t61 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t61.
        DATA t62 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA t65 TYPE string.
          DATA t66 TYPE string.
          DATA(t67) = |"|.
          DATA(t68) = t1.
          DATA(t69) = strlen( t67 ).
          t66 = |{ t67 }{ t68 }|.
          DATA(t70) = |" already defined|.
          DATA(t71) = strlen( t66 ).
          t65 = |{ t66 }{ t70 }|.
          DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t72->has = abap_true.
          t72->value = t65.
          t63 = t72.
        ELSE.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          t63 = t73.
        ENDIF.
        t62 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t63 ).
        t61 = NEW #( ).
        t61->payload = t62.
        RAISE EXCEPTION t61.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t75 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA t76 TYPE REF TO zcl_lnt_iscope_data.
    DATA t77 TYPE REF TO zcl_lnt_scope_data.
    DATA t78 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t79) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t78 = t79.
    t77 = t78.
    DATA t80 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t81) = CAST zcl_lnt_scope_data( t77 ).
    t80 = t81->data_56cc.
    t76 = t80.
    t75 = t76->vars.
    DATA(t82) = t10.
    DATA(t83) = CAST zcl_lnt_typed_identifier( t2 ).
    t74 = t75->set( p0 = t82 p1 = t83 ).
  ENDMETHOD.

  METHOD add_named_identifier_to_parent.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_typed_identifier( i_identifier ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/_current_scope.ts:191|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD add_identifier.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_identifier ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    DATA(t4) = CAST zcl_lnt_typed_identifier( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_typed_identifier( t3 ).
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
    DATA(t12) = CAST zcl_lnt_typed_identifier( t1 ).
    t11 = t12.
    t10 = t11.
    DATA(t13) = VALUE string( ).
    DATA t14 TYPE string.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t18) = CAST zcl_lnt_fi_identifier( t10 ).
    t17 = t18->token.
    t16 = t17.
    DATA t19 TYPE string.
    DATA(t20) = CAST zcl_lnt_abstract_token( t16 ).
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
    DATA(t40) = CAST zcl_lnt_typed_identifier( t1 ).
    t39 = t40.
    me->add_named_identifier( i_name = t9 i_identifier = t39 ).
  ENDMETHOD.

  METHOD add_deferred.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t2) = i_type_9913.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t5) = CAST zcl_lnt_abstract_token( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_abstract_token( t4 ).
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
    DATA(t15) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t14 = t15.
    t13 = t14.
    DATA t16 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t17) = CAST zcl_lnt_scope_data( t13 ).
    t16 = t17->data_56cc.
    t12 = t16.
    t11 = t12->deferred.
    DATA t18 TYPE string.
    DATA t19 TYPE string.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t22) = CAST zcl_lnt_abstract_token( t1 ).
    t21 = t22.
    t20 = t21.
    DATA t23 TYPE string.
    DATA(t24) = CAST zcl_lnt_abstract_token( t20 ).
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
    DATA(t28) = CAST zcl_lnt_abstract_token( t1 ).
    t27 = t28.
    DATA(t29) = t2.
    t26 = NEW zcl_lnt_deferred_information( i_token = t27 i_oo_type = t29 ).
    t10 = t11->set( p0 = t18 p1 = t26 ).
  ENDMETHOD.

  METHOD add_list_prefix.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_identifiers ).
    DATA(t2) = i_prefix.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t4 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
    LOOP AT t3->items INTO t5.
      t4 ?= t5.
      DATA(t6) = VALUE string( ).
      DATA(t7) = t2.
      DATA(t8) = VALUE string( ).
      DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t10) = CAST zcl_lnt_typed_identifier( t4 ).
      t9 = t10.
      DATA(t11) = VALUE string( ).
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t16) = CAST zcl_lnt_fi_identifier( t9 ).
      t15 = t16->token.
      t14 = t15.
      DATA t17 TYPE string.
      DATA(t18) = CAST zcl_lnt_abstract_token( t14 ).
      t17 = t18->str.
      t13 = t17.
      t12 = t13.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE string( ).
      DATA(t21) = t12.
      DATA(t22) = 0.
      DATA(t23) = 1.
      DATA(t24) = strlen( t21 ).
      IF t22 < 0.
        t22 = t22 + t24.
        IF t22 < 0.
          t22 = 0.
        ENDIF.
      ENDIF.
      IF t22 > t24 OR t23 <= 0.
        CLEAR t20.
      ELSE.
        IF t23 > t24 - t22.
          t23 = t24 - t22.
        ENDIF.
        t20 = t21+t22(t23).
      ENDIF.
      DATA(t25) = |!|.
      t19 = xsdbool( t20 = t25 ).
      IF t19 = abap_true.
        DATA(t26) = VALUE string( ).
        DATA t27 TYPE string.
        DATA(t28) = t12.
        t27 = t28.
        DATA(t29) = VALUE string( ).
        DATA(t30) = t27.
        DATA(t31) = 1.
        DATA t32 TYPE i.
        DATA(t33) = t27.
        DATA(t34) = strlen( t33 ).
        t32 = t34.
        DATA(t35) = strlen( t30 ).
        IF t31 < 0.
          t31 = t31 + t35.
          IF t31 < 0.
            t31 = 0.
          ENDIF.
        ENDIF.
        IF t31 > t35 OR t32 <= 0.
          CLEAR t29.
        ELSE.
          IF t32 > t35 - t31.
            t32 = t35 - t31.
          ENDIF.
          t29 = t30+t31(t32).
        ENDIF.
        t26 = t29.
        t12 = t26.
      ENDIF.
      DATA(t36) = t12.
      t11 = t36.
      t8 = t11.
      DATA(t37) = strlen( t7 ).
      t6 = |{ t7 }{ t8 }|.
      DATA(t38) = CAST zcl_lnt_typed_identifier( t4 ).
      me->add_named_identifier( i_name = t6 i_identifier = t38 ).
    ENDLOOP.
  ENDMETHOD.

  METHOD add_list.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_identifiers ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t3 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    LOOP AT t2->items INTO t4.
      t3 ?= t4.
      DATA t5 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t5.
      DATA t6 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = CAST zcl_lnt_typed_identifier( t3 ).
        t6 = t8.
      ELSE.
        DATA t9 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t9.
        t6 = t9.
      ENDIF.
      t5 = t6.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zcl_lnt_typed_identifier.
      DATA(t12) = CAST zcl_lnt_typed_identifier( t5 ).
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = CAST zcl_lnt_typed_identifier( t11 ).
      IF t16 IS INITIAL.
        t15 = abap_true.
      ENDIF.
      t10 = t15.
      IF t10 = abap_true.
      ELSE.
        DATA(t17) = VALUE string( ).
        DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t19 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t20) = CAST zcl_lnt_typed_identifier( t5 ).
        t19 = t20.
        t18 = t19.
        DATA(t21) = VALUE string( ).
        DATA t22 TYPE string.
        DATA t23 TYPE string.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t26) = CAST zcl_lnt_fi_identifier( t18 ).
        t25 = t26->token.
        t24 = t25.
        DATA t27 TYPE string.
        DATA(t28) = CAST zcl_lnt_abstract_token( t24 ).
        t27 = t28->str.
        t23 = t27.
        t22 = t23.
        DATA(t29) = VALUE abap_bool( ).
        DATA(t30) = VALUE string( ).
        DATA(t31) = t22.
        DATA(t32) = 0.
        DATA(t33) = 1.
        DATA(t34) = strlen( t31 ).
        IF t32 < 0.
          t32 = t32 + t34.
          IF t32 < 0.
            t32 = 0.
          ENDIF.
        ENDIF.
        IF t32 > t34 OR t33 <= 0.
          CLEAR t30.
        ELSE.
          IF t33 > t34 - t32.
            t33 = t34 - t32.
          ENDIF.
          t30 = t31+t32(t33).
        ENDIF.
        DATA(t35) = |!|.
        t29 = xsdbool( t30 = t35 ).
        IF t29 = abap_true.
          DATA(t36) = VALUE string( ).
          DATA t37 TYPE string.
          DATA(t38) = t22.
          t37 = t38.
          DATA(t39) = VALUE string( ).
          DATA(t40) = t37.
          DATA(t41) = 1.
          DATA t42 TYPE i.
          DATA(t43) = t37.
          DATA(t44) = strlen( t43 ).
          t42 = t44.
          DATA(t45) = strlen( t40 ).
          IF t41 < 0.
            t41 = t41 + t45.
            IF t41 < 0.
              t41 = 0.
            ENDIF.
          ENDIF.
          IF t41 > t45 OR t42 <= 0.
            CLEAR t39.
          ELSE.
            IF t42 > t45 - t41.
              t42 = t45 - t41.
            ENDIF.
            t39 = t40+t41(t42).
          ENDIF.
          t36 = t39.
          t22 = t36.
        ENDIF.
        DATA(t46) = t22.
        t21 = t46.
        t17 = t21.
        DATA t47 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t48) = CAST zcl_lnt_typed_identifier( t5 ).
        t47 = t48.
        me->add_named_identifier( i_name = t17 i_identifier = t47 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD add_reference.
    DATA(t1) = CAST zcl_lnt_abstract_token( i_usage ).
    DATA(t2) = CAST zcl_lnt_fi_identifier( i_referencing ).
    DATA(t3) = CAST zlnt_runtime_dyna_a429568d5be8( i_type_9913 ).
    DATA(t4) = i_filename.
    DATA(t5) = CAST zcl_lnt_ireference_extras( i_extra ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t9) = CAST zcl_lnt_abstract_token( t1 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    t10 = t11.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = CAST zcl_lnt_abstract_token( t8 ).
    IF t13 IS INITIAL.
      t12 = abap_true.
    ENDIF.
    t7 = t12.
    t6 = t7.
    IF t7 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
      t15 = t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
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
    DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t24) = CAST zcl_lnt_abstract_token( t1 ).
    t23 = t24.
    DATA(t25) = t4.
    t22 = NEW zcl_lnt_fi_identifier( i_token = t23 i_filename = t25 ).
    t21 = t22.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE string( ).
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    IF t28 IS BOUND.
      t27 = t28->type_of( ).
    ELSE.
      t27 = `undefined`.
    ENDIF.
    DATA(t29) = |object|.
    t26 = xsdbool( t27 = t29 ).
    IF t26 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
      DATA t32 TYPE REF TO object.
      t32 = t31->as_ref( ).
      t30 ?= t32.
      DATA(t33) = VALUE string( ).
      LOOP AT t30->items INTO t33.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
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
        DATA(t40) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
        t39 = t40.
        DATA t41 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t41.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = CAST zcl_lnt_spaghetti_scope_node( t39 ).
        IF t43 IS INITIAL.
          t42 = abap_true.
        ENDIF.
        IF t42 = abap_true.
          DATA t44 TYPE REF TO zcl_lnt_iscope_data.
          CLEAR t44.
          t41 = t44.
        ELSE.
          DATA t45 TYPE REF TO zcl_lnt_iscope_data.
          DATA t46 TYPE REF TO zcl_lnt_scope_data.
          DATA t47 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t48) = CAST zcl_lnt_spaghetti_scope_node( t39 ).
          t47 = t48.
          t46 = t47.
          DATA t49 TYPE REF TO zcl_lnt_iscope_data.
          DATA(t50) = CAST zcl_lnt_scope_data( t46 ).
          t49 = t50->data_56cc.
          t45 = t49.
          t41 = t45.
        ENDIF.
        t38 = t41.
        t37 = t38.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t51.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = CAST zcl_lnt_iscope_data( t37 ).
        IF t53 IS INITIAL.
          t52 = abap_true.
        ENDIF.
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t54.
          t51 = t54.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t56 TYPE REF TO zcl_lnt_iscope_data.
          DATA(t57) = CAST zcl_lnt_iscope_data( t37 ).
          t56 = t57.
          t55 = t56->references.
          t51 = t55.
        ENDIF.
        t36 = t51.
        t35 = t36.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t58.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
        IF t60 IS INITIAL.
          t59 = abap_true.
        ENDIF.
        IF t59 = abap_true.
          DATA t61 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
          CLEAR t61.
          t58 = t61.
        ELSE.
          DATA t62 TYPE int8.
          DATA t63 TYPE i.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
          t64 = t65.
          DATA t66 TYPE REF TO zcl_lnt_ireference.
          DATA(t67) = CAST zcl_lnt_fi_identifier( t21 ).
          DATA(t68) = CAST zcl_lnt_fi_identifier( t2 ).
          DATA(t69) = t33.
          DATA(t70) = CAST zcl_lnt_ireference_extras( t5 ).
          t66 = NEW zcl_lnt_ireference( i_position_a3fd = t67 i_resolved = t68 i_reference_type = t69 i_extra = t70 ).
          APPEND t66 TO t64->items.
          t63 = lines( t64->items ).
          t62 = t63.
          DATA(t71) = NEW zlnt_runtime_opti_4a236cd5714d( ).
          t71->has = abap_true.
          t71->value = t62.
          t58 = t71.
        ENDIF.
        t34 = t58.
      ENDLOOP.
    ELSE.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t72.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t73.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t74.
      DATA t75 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t75.
      DATA t76 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t78) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
      t77 = t78.
      DATA t79 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t79.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = CAST zcl_lnt_spaghetti_scope_node( t77 ).
      IF t81 IS INITIAL.
        t80 = abap_true.
      ENDIF.
      IF t80 = abap_true.
        DATA t82 TYPE REF TO zcl_lnt_iscope_data.
        CLEAR t82.
        t79 = t82.
      ELSE.
        DATA t83 TYPE REF TO zcl_lnt_iscope_data.
        DATA t84 TYPE REF TO zcl_lnt_scope_data.
        DATA t85 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t86) = CAST zcl_lnt_spaghetti_scope_node( t77 ).
        t85 = t86.
        t84 = t85.
        DATA t87 TYPE REF TO zcl_lnt_iscope_data.
        DATA(t88) = CAST zcl_lnt_scope_data( t84 ).
        t87 = t88->data_56cc.
        t83 = t87.
        t79 = t83.
      ENDIF.
      t76 = t79.
      t75 = t76.
      DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t89.
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = CAST zcl_lnt_iscope_data( t75 ).
      IF t91 IS INITIAL.
        t90 = abap_true.
      ENDIF.
      IF t90 = abap_true.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t92.
        t89 = t92.
      ELSE.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t94 TYPE REF TO zcl_lnt_iscope_data.
        DATA(t95) = CAST zcl_lnt_iscope_data( t75 ).
        t94 = t95.
        t93 = t94->references.
        t89 = t93.
      ENDIF.
      t74 = t89.
      t73 = t74.
      DATA t96 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t96.
      DATA(t97) = VALUE abap_bool( ).
      DATA(t98) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
      IF t98 IS INITIAL.
        t97 = abap_true.
      ENDIF.
      IF t97 = abap_true.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t99.
        t96 = t99.
      ELSE.
        DATA t100 TYPE int8.
        DATA t101 TYPE i.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
        t102 = t103.
        DATA t104 TYPE REF TO zcl_lnt_ireference.
        DATA(t105) = CAST zcl_lnt_fi_identifier( t21 ).
        DATA(t106) = CAST zcl_lnt_fi_identifier( t2 ).
        DATA t107 TYPE string.
        DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
        t107 = t108->as_string( ).
        DATA(t109) = CAST zcl_lnt_ireference_extras( t5 ).
        t104 = NEW zcl_lnt_ireference( i_position_a3fd = t105 i_resolved = t106 i_reference_type = t107 i_extra = t109 ).
        APPEND t104 TO t102->items.
        t101 = lines( t102->items ).
        t100 = t101.
        DATA(t110) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t110->has = abap_true.
        t110->value = t100.
        t96 = t110.
      ENDIF.
      t72 = t96.
    ENDIF.
  ENDMETHOD.

  METHOD add_sql_conversion.
    DATA(t1) = i_field_name.
    DATA(t2) = i_message_26cb.
    DATA(t3) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/abap/5_syntax/_current_scope.ts:257|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD find_function_module.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_current_scope.ts:263|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_object_definition.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
      DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
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
    DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = CAST zlnt_runtime_opti_4ba3bdccd169( t21 ).
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
      DATA(t32) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
      t31 = t32.
      DATA t33 TYPE REF TO zif_lnt_class_definition.
      CLEAR t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = CAST zcl_lnt_spaghetti_scope_node( t31 ).
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
        DATA(t39) = CAST zcl_lnt_spaghetti_scope_node( t31 ).
        t38 = t39.
        DATA t40 TYPE string.
        DATA(t41) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
        t40 = t41->value.
        t37 = t38->find_class_definition( i_name = t40 ).
        t33 = t37.
      ENDIF.
      t30 = t33.
      t29 = t30.
      DATA t42 TYPE REF TO zif_lnt_class_definition.
      CLEAR t42.
      DATA t43 TYPE abap_bool.
      DATA(t44) = CAST zif_lnt_class_definition( t29 ).
      t43 = xsdbool( t44 IS BOUND ).
      IF t43 = abap_true.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        DATA(t46) = abap_true.
        IF t46 = abap_true.
          DATA t47 TYPE REF TO zif_lnt_class_definition.
          DATA(t48) = CAST zif_lnt_class_definition( t29 ).
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
        DATA(t54) = CAST zif_lnt_registry( me->reg ).
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
          DATA(t63) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
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
        DATA(t69) = CAST zcl_lnt_class( t51 ).
        t68 = xsdbool( t69 IS BOUND ).
        IF t68 = abap_true.
          DATA t70 TYPE REF TO zif_lnt_class_definition.
          DATA t71 TYPE REF TO zcl_lnt_class.
          DATA(t72) = CAST zcl_lnt_class( t51 ).
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
    DATA(t75) = CAST zif_lnt_class_definition( t10 ).
    t74 = xsdbool( t75 IS BOUND ).
    IF t74 = abap_true.
      DATA t76 TYPE REF TO zif_lnt_interface_definition.
      DATA t77 TYPE REF TO zif_lnt_class_definition.
      DATA(t78) = CAST zif_lnt_class_definition( t10 ).
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
      DATA(t85) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
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
    DATA(t91) = CAST zlnt_runtime_opti_4ba3bdccd169( t81 ).
    t90 = t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    t92 = t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = CAST zlnt_runtime_opti_4ba3bdccd169( t90 ).
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
      DATA(t101) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
      t100 = t101.
      DATA t102 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t102.
      DATA(t103) = VALUE abap_bool( ).
      DATA(t104) = CAST zcl_lnt_spaghetti_scope_node( t100 ).
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
        DATA(t108) = CAST zcl_lnt_spaghetti_scope_node( t100 ).
        t107 = t108.
        DATA t109 TYPE string.
        DATA(t110) = CAST zlnt_runtime_opti_4ba3bdccd169( t81 ).
        t109 = t110->value.
        t106 = t107->find_interface_definition( i_name = t109 ).
        t102 = t106.
      ENDIF.
      t99 = t102.
      t98 = t99.
      DATA t111 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t111.
      DATA t112 TYPE abap_bool.
      DATA(t113) = CAST zif_lnt_interface_definition( t98 ).
      t112 = xsdbool( t113 IS BOUND ).
      IF t112 = abap_true.
        DATA t114 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t114.
        DATA(t115) = abap_true.
        IF t115 = abap_true.
          DATA t116 TYPE REF TO zif_lnt_interface_definition.
          DATA(t117) = CAST zif_lnt_interface_definition( t98 ).
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
        DATA(t123) = CAST zif_lnt_registry( me->reg ).
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
          DATA(t132) = CAST zlnt_runtime_opti_4ba3bdccd169( t81 ).
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
        DATA(t138) = CAST zcl_lnt_ob_interface( t120 ).
        t137 = xsdbool( t138 IS BOUND ).
        IF t137 = abap_true.
          DATA t139 TYPE REF TO zif_lnt_interface_definition.
          DATA t140 TYPE REF TO zcl_lnt_ob_interface.
          DATA t141 TYPE REF TO zcl_lnt_ob_interface.
          DATA(t142) = CAST zcl_lnt_ob_interface( t120 ).
          t141 = t142.
          t140 = t141.
          DATA t143 TYPE REF TO zif_lnt_interface_definition.
          DATA(t144) = CAST zcl_lnt_ob_interface( t140 ).
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
    DATA(t147) = CAST zif_lnt_interface_definition( t79 ).
    t146 = xsdbool( t147 IS BOUND ).
    IF t146 = abap_true.
      DATA t148 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t148.
      DATA(t149) = abap_true.
      IF t149 = abap_true.
        DATA t150 TYPE REF TO zif_lnt_interface_definition.
        DATA(t151) = CAST zif_lnt_interface_definition( t79 ).
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
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_current_scope.ts:292|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is_badi_def.
    DATA(t1) = i_name.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_current_scope.ts:303|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD exists_object.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
    DATA(t14) = CAST zif_lnt_object( me->parent_obj ).
    t13 = t14->get_type( ).
    DATA(t15) = |PROG|.
    t12 = xsdbool( t13 = t15 ).
    IF t12 = abap_true.
      DATA t16 TYPE string.
      DATA(t17) = `\PROGRAM=`.
      DATA t18 TYPE string.
      DATA(t19) = CAST zif_lnt_object( me->parent_obj ).
      t18 = t19->get_name( ).
      DATA(t20) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      t10 = t16.
    ELSE.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE string.
      DATA(t23) = CAST zif_lnt_object( me->parent_obj ).
      t22 = t23->get_type( ).
      DATA(t24) = |CLAS|.
      t21 = xsdbool( t22 = t24 ).
      IF t21 = abap_true.
        DATA t25 TYPE string.
        DATA(t26) = `\CLASS-POOL=`.
        DATA t27 TYPE string.
        DATA(t28) = CAST zif_lnt_object( me->parent_obj ).
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
    DATA(t33) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_class_definition.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = CAST zcl_lnt_spaghetti_scope_node( t32 ).
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
      DATA(t40) = CAST zcl_lnt_spaghetti_scope_node( t32 ).
      t39 = t40.
      DATA t41 TYPE string.
      DATA(t42) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t41 = t42->value.
      t38 = t39->find_class_definition( i_name = t41 ).
      t34 = t38.
    ENDIF.
    t31 = t34.
    t30 = t31.
    DATA t43 TYPE abap_bool.
    DATA(t44) = CAST zif_lnt_class_definition( t30 ).
    t43 = xsdbool( t44 IS BOUND ).
    IF t43 = abap_true.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE REF TO zif_lnt_class_definition.
      DATA(t48) = CAST zif_lnt_class_definition( t30 ).
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
        DATA(t55) = abap_true.
        IF t55 = abap_true.
          DATA t56 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t57 TYPE REF TO zif_lnt_class_definition.
          DATA(t58) = CAST zif_lnt_class_definition( t30 ).
          t57 = t58.
          t56 ?= t57.
          t54 = t56.
        ELSE.
          DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t59.
          t54 = t59.
        ENDIF.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA(t62) = |CLAS|.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t62.
          t60 = t63.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t60 = t64.
        ENDIF.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA(t66) = abap_true.
        IF t66 = abap_true.
          DATA t67 TYPE string.
          DATA t68 TYPE string.
          DATA(t69) = t10.
          DATA(t70) = `\CLASS=`.
          DATA(t71) = strlen( t69 ).
          t68 = |{ t69 }{ t70 }|.
          DATA t72 TYPE string.
          DATA t73 TYPE REF TO zif_lnt_class_definition.
          DATA(t74) = CAST zif_lnt_class_definition( t30 ).
          t73 = t74.
          t72 = t73->get_name( ).
          DATA(t75) = strlen( t68 ).
          t67 = |{ t68 }{ t72 }|.
          DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t76->has = abap_true.
          t76->value = t67.
          t65 = t76.
        ELSE.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          t65 = t77.
        ENDIF.
        t53 = NEW zcl_lnt_shape_59e28496( i_id = t54 i_oo_type = t60 i_rtti_name = t65 ).
        t51 = t53.
      ELSE.
        DATA t78 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t78.
        t51 = t78.
      ENDIF.
      result = t51.
      RETURN.
    ENDIF.
    DATA t79 TYPE REF TO zif_lnt_object.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_object.
    CLEAR t80.
    DATA(t81) = CAST zif_lnt_registry( me->reg ).
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    DATA(t83) = abap_true.
    IF t83 = abap_true.
      DATA(t84) = |CLAS|.
      DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t85->has = abap_true.
      t85->value = t84.
      t82 = t85.
    ELSE.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      t82 = t86.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t87.
    DATA(t88) = abap_true.
    IF t88 = abap_true.
      DATA t89 TYPE string.
      DATA(t90) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t89 = t90->value.
      DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t91->has = abap_true.
      t91->value = t89.
      t87 = t91.
    ELSE.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      t87 = t92.
    ENDIF.
    t80 = t81->get_object( i_type_9913 = t82 i_name = t87 ).
    t79 = t80.
    DATA t93 TYPE abap_bool.
    DATA(t94) = CAST zif_lnt_object( t79 ).
    t93 = xsdbool( t94 IS BOUND ).
    IF t93 = abap_true.
      DATA t95 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t95.
      DATA(t96) = abap_true.
      IF t96 = abap_true.
        DATA t97 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t97.
        DATA t98 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t99 TYPE REF TO zif_lnt_object.
        DATA(t100) = CAST zif_lnt_object( t79 ).
        t99 = t100.
        t98 = t99->get_identifier( ).
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA(t102) = abap_true.
        IF t102 = abap_true.
          DATA(t103) = |CLAS|.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t103.
          t101 = t104.
        ELSE.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          t101 = t105.
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA t108 TYPE string.
          DATA(t109) = `\CLASS=`.
          DATA t110 TYPE string.
          DATA t111 TYPE REF TO zif_lnt_object.
          DATA(t112) = CAST zif_lnt_object( t79 ).
          t111 = t112.
          t110 = t111->get_name( ).
          DATA(t113) = strlen( t109 ).
          t108 = |{ t109 }{ t110 }|.
          DATA(t114) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t114->has = abap_true.
          t114->value = t108.
          t106 = t114.
        ELSE.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          t106 = t115.
        ENDIF.
        t97 = NEW zcl_lnt_shape_59e28496( i_id = t98 i_oo_type = t101 i_rtti_name = t106 ).
        t95 = t97.
      ELSE.
        DATA t116 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t116.
        t95 = t116.
      ENDIF.
      result = t95.
      RETURN.
    ENDIF.
    DATA t117 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t117.
    DATA t118 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t118.
    DATA t119 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t120) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t119 = t120.
    DATA t121 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t121.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = CAST zcl_lnt_spaghetti_scope_node( t119 ).
    IF t123 IS INITIAL.
      t122 = abap_true.
    ENDIF.
    IF t122 = abap_true.
      DATA t124 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t124.
      t121 = t124.
    ELSE.
      DATA t125 TYPE REF TO zif_lnt_interface_definition.
      DATA t126 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t127) = CAST zcl_lnt_spaghetti_scope_node( t119 ).
      t126 = t127.
      DATA t128 TYPE string.
      DATA(t129) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t128 = t129->value.
      t125 = t126->find_interface_definition( i_name = t128 ).
      t121 = t125.
    ENDIF.
    t118 = t121.
    t117 = t118.
    DATA t130 TYPE abap_bool.
    DATA(t131) = CAST zif_lnt_interface_definition( t117 ).
    t130 = xsdbool( t131 IS BOUND ).
    IF t130 = abap_true.
      DATA t132 TYPE abap_bool.
      DATA t133 TYPE abap_bool.
      DATA t134 TYPE REF TO zif_lnt_interface_definition.
      DATA(t135) = CAST zif_lnt_interface_definition( t117 ).
      t134 = t135.
      t133 = t134->is_global( ).
      DATA(t136) = abap_true.
      t132 = xsdbool( t133 = t136 ).
      IF t132 = abap_true.
        DATA(t137) = ||.
        t10 = t137.
      ENDIF.
      DATA t138 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t138.
      DATA(t139) = abap_true.
      IF t139 = abap_true.
        DATA t140 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t140.
        DATA t141 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t141.
        DATA(t142) = abap_true.
        IF t142 = abap_true.
          DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t144 TYPE REF TO zif_lnt_interface_definition.
          DATA(t145) = CAST zif_lnt_interface_definition( t117 ).
          t144 = t145.
          t143 ?= t144.
          t141 = t143.
        ELSE.
          DATA t146 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t146.
          t141 = t146.
        ENDIF.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA(t148) = abap_true.
        IF t148 = abap_true.
          DATA(t149) = |INTF|.
          DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t150->has = abap_true.
          t150->value = t149.
          t147 = t150.
        ELSE.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          t147 = t151.
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t152.
        DATA(t153) = abap_true.
        IF t153 = abap_true.
          DATA t154 TYPE string.
          DATA t155 TYPE string.
          DATA(t156) = t10.
          DATA(t157) = `\INTERFACE=`.
          DATA(t158) = strlen( t156 ).
          t155 = |{ t156 }{ t157 }|.
          DATA t159 TYPE string.
          DATA t160 TYPE REF TO zif_lnt_interface_definition.
          DATA(t161) = CAST zif_lnt_interface_definition( t117 ).
          t160 = t161.
          t159 = t160->get_name( ).
          DATA(t162) = strlen( t155 ).
          t154 = |{ t155 }{ t159 }|.
          DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t163->has = abap_true.
          t163->value = t154.
          t152 = t163.
        ELSE.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          t152 = t164.
        ENDIF.
        t140 = NEW zcl_lnt_shape_59e28496( i_id = t141 i_oo_type = t147 i_rtti_name = t152 ).
        t138 = t140.
      ELSE.
        DATA t165 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t165.
        t138 = t165.
      ENDIF.
      result = t138.
      RETURN.
    ENDIF.
    DATA t166 TYPE REF TO zif_lnt_object.
    CLEAR t166.
    DATA t167 TYPE REF TO zif_lnt_object.
    CLEAR t167.
    DATA(t168) = CAST zif_lnt_registry( me->reg ).
    DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t169.
    DATA(t170) = abap_true.
    IF t170 = abap_true.
      DATA(t171) = |INTF|.
      DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t172->has = abap_true.
      t172->value = t171.
      t169 = t172.
    ELSE.
      DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t173.
      t169 = t173.
    ENDIF.
    DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t174.
    DATA(t175) = abap_true.
    IF t175 = abap_true.
      DATA t176 TYPE string.
      DATA(t177) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t176 = t177->value.
      DATA(t178) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t178->has = abap_true.
      t178->value = t176.
      t174 = t178.
    ELSE.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t179.
      t174 = t179.
    ENDIF.
    t167 = t168->get_object( i_type_9913 = t169 i_name = t174 ).
    t166 = t167.
    DATA t180 TYPE abap_bool.
    DATA(t181) = CAST zif_lnt_object( t166 ).
    t180 = xsdbool( t181 IS BOUND ).
    IF t180 = abap_true.
      DATA t182 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t182.
      DATA(t183) = abap_true.
      IF t183 = abap_true.
        DATA t184 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t184.
        DATA t185 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t186 TYPE REF TO zif_lnt_object.
        DATA(t187) = CAST zif_lnt_object( t166 ).
        t186 = t187.
        t185 = t186->get_identifier( ).
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        DATA(t189) = abap_true.
        IF t189 = abap_true.
          DATA(t190) = |INTF|.
          DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t191->has = abap_true.
          t191->value = t190.
          t188 = t191.
        ELSE.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t192.
          t188 = t192.
        ENDIF.
        DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t193.
        DATA(t194) = abap_true.
        IF t194 = abap_true.
          DATA t195 TYPE string.
          DATA(t196) = `\INTERFACE=`.
          DATA t197 TYPE string.
          DATA t198 TYPE REF TO zif_lnt_object.
          DATA(t199) = CAST zif_lnt_object( t166 ).
          t198 = t199.
          t197 = t198->get_name( ).
          DATA(t200) = strlen( t196 ).
          t195 = |{ t196 }{ t197 }|.
          DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t201->has = abap_true.
          t201->value = t195.
          t193 = t201.
        ELSE.
          DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t202.
          t193 = t202.
        ENDIF.
        t184 = NEW zcl_lnt_shape_59e28496( i_id = t185 i_oo_type = t188 i_rtti_name = t193 ).
        t182 = t184.
      ELSE.
        DATA t203 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t203.
        t182 = t203.
      ENDIF.
      result = t182.
      RETURN.
    ENDIF.
    DATA t204 TYPE REF TO zcl_lnt_shape_ca978742.
    CLEAR t204.
    DATA t205 TYPE REF TO zcl_lnt_shape_ca978742.
    CLEAR t205.
    DATA t206 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t207) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t206 = t207.
    DATA t208 TYPE REF TO zcl_lnt_shape_ca978742.
    CLEAR t208.
    DATA(t209) = VALUE abap_bool( ).
    DATA(t210) = CAST zcl_lnt_spaghetti_scope_node( t206 ).
    IF t210 IS INITIAL.
      t209 = abap_true.
    ENDIF.
    IF t209 = abap_true.
      DATA t211 TYPE REF TO zcl_lnt_shape_ca978742.
      CLEAR t211.
      t208 = t211.
    ELSE.
      DATA t212 TYPE REF TO zcl_lnt_shape_ca978742.
      DATA t213 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t214) = CAST zcl_lnt_spaghetti_scope_node( t206 ).
      t213 = t214.
      DATA t215 TYPE string.
      DATA(t216) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t215 = t216->value.
      t212 = t213->find_deferred( i_name = t215 ).
      t208 = t212.
    ENDIF.
    t205 = t208.
    t204 = t205.
    DATA(t217) = VALUE abap_bool( ).
    DATA t218 TYPE REF TO zcl_lnt_shape_ca978742.
    DATA(t219) = CAST zcl_lnt_shape_ca978742( t204 ).
    t218 = t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    t220 = t221.
    DATA(t222) = VALUE abap_bool( ).
    DATA(t223) = VALUE abap_bool( ).
    DATA(t224) = CAST zcl_lnt_shape_ca978742( t218 ).
    IF t224 IS INITIAL.
      t223 = abap_true.
    ENDIF.
    t222 = xsdbool( t223 = abap_false ).
    t217 = t222.
    IF t217 = abap_true.
      DATA t225 TYPE string.
      DATA(t226) = t10.
      t225 = t226.
      DATA t227 TYPE string.
      DATA t228 TYPE string.
      DATA t229 TYPE REF TO zcl_lnt_shape_ca978742.
      DATA(t230) = CAST zcl_lnt_shape_ca978742( t204 ).
      t229 = t230.
      t228 = t229->oo_type.
      t227 = t228.
      DATA t231 TYPE abap_bool.
      DATA(t232) = t227.
      DATA(t233) = |INTF|.
      t231 = xsdbool( t232 = t233 ).
      IF t231 = abap_true.
        DATA t234 TYPE string.
        DATA t235 TYPE string.
        DATA(t236) = t225.
        DATA(t237) = `\INTERFACE=`.
        DATA(t238) = strlen( t236 ).
        t235 = |{ t236 }{ t237 }|.
        DATA t239 TYPE string.
        DATA(t240) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
        t239 = t240->value.
        DATA(t241) = strlen( t235 ).
        t234 = |{ t235 }{ t239 }|.
        t225 = t234.
      ELSE.
        DATA t242 TYPE string.
        DATA t243 TYPE string.
        DATA(t244) = t225.
        DATA(t245) = `\CLASS=`.
        DATA(t246) = strlen( t244 ).
        t243 = |{ t244 }{ t245 }|.
        DATA t247 TYPE string.
        DATA(t248) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
        t247 = t248->value.
        DATA(t249) = strlen( t243 ).
        t242 = |{ t243 }{ t247 }|.
        t225 = t242.
      ENDIF.
      DATA t250 TYPE REF TO zcl_lnt_shape_59e28496.
      CLEAR t250.
      DATA(t251) = abap_true.
      IF t251 = abap_true.
        DATA t252 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t252.
        DATA t253 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t254 TYPE REF TO zcl_lnt_shape_ca978742.
        DATA(t255) = CAST zcl_lnt_shape_ca978742( t204 ).
        t254 = t255.
        t253 = t254->id.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        DATA(t257) = abap_true.
        IF t257 = abap_true.
          DATA t258 TYPE string.
          DATA t259 TYPE REF TO zcl_lnt_shape_ca978742.
          DATA(t260) = CAST zcl_lnt_shape_ca978742( t204 ).
          t259 = t260.
          t258 = t259->oo_type.
          DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t261->has = abap_true.
          t261->value = t258.
          t256 = t261.
        ELSE.
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t262.
          t256 = t262.
        ENDIF.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t263.
        DATA(t264) = abap_true.
        IF t264 = abap_true.
          DATA(t265) = t225.
          DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t266->has = abap_true.
          t266->value = t265.
          t263 = t266.
        ELSE.
          DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t267.
          t263 = t267.
        ENDIF.
        t252 = NEW zcl_lnt_shape_59e28496( i_id = t253 i_oo_type = t256 i_rtti_name = t263 ).
        t250 = t252.
      ELSE.
        DATA t268 TYPE REF TO zcl_lnt_shape_59e28496.
        CLEAR t268.
        t250 = t268.
      ENDIF.
      result = t250.
      RETURN.
    ENDIF.
    DATA t269 TYPE REF TO zcl_lnt_shape_59e28496.
    CLEAR t269.
    result = t269.

  ENDMETHOD.

  METHOD find_class_definition.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
    DATA(t13) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_class_definition.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
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
      DATA(t20) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
      t19 = t20.
      DATA t21 TYPE string.
      DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t21 = t22->value.
      t18 = t19->find_class_definition( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zif_lnt_class_definition( t10 ).
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_class_definition.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zif_lnt_class_definition.
        DATA(t28) = CAST zif_lnt_class_definition( t10 ).
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
    DATA(t33) = CAST zif_lnt_registry( me->reg ).
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
      DATA(t42) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
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
    DATA(t47) = CAST zcl_lnt_class( t30 ).
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zif_lnt_class_definition.
      DATA t49 TYPE REF TO zcl_lnt_class.
      DATA(t50) = CAST zcl_lnt_class( t30 ).
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
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
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
      DATA t13 TYPE string.
      DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
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
    DATA t23 TYPE string.
    DATA(t24) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t23 = t24->value.
    DATA(t25) = |_|.
    DATA(t26) = strlen( t23 ).
    DATA t27 TYPE i.
    DATA(t28) = VALUE i( ).
    DATA(t29) = VALUE i( ).
    DATA t30 TYPE i.
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
    READ TABLE t22->items INDEX 1 INTO t21.
    t20 = t21.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE i.
    DATA(t35) = t20.
    DATA(t36) = strlen( t35 ).
    t34 = t36.
    DATA(t37) = 1.
    t33 = xsdbool( t34 <= t37 ).
    t32 = t33.
    IF t33 = abap_false.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE i.
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
    DATA t44 TYPE abap_bool.
    DATA t45 TYPE abap_bool.
    DATA t46 TYPE string.
    DATA(t47) = CAST zif_lnt_object( me->parent_obj ).
    t46 = t47->get_type( ).
    DATA(t48) = |TYPE|.
    t45 = xsdbool( t46 = t48 ).
    t44 = t45.
    IF t45 = abap_true.
      DATA(t49) = VALUE abap_bool( ).
      DATA t50 TYPE string.
      DATA t51 TYPE string.
      DATA(t52) = CAST zif_lnt_object( me->parent_obj ).
      t51 = t52->get_name( ).
      DATA(t53) = strlen( t51 ).
      t50 = t51.
      IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t50 TO UPPER CASE.
      ELSE.
        t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
      ENDIF.
      DATA t54 TYPE string.
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
    DATA t58 TYPE REF TO zcl_lnt_ob_type_pool.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_ob_type_pool.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_object.
    CLEAR t60.
    DATA(t61) = CAST zif_lnt_registry( me->reg ).
    DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t62.
    DATA(t63) = abap_true.
    IF t63 = abap_true.
      DATA(t64) = |TYPE|.
      DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t65->has = abap_true.
      t65->value = t64.
      t62 = t65.
    ELSE.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      t62 = t66.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t67.
    DATA(t68) = abap_true.
    IF t68 = abap_true.
      DATA(t69) = t20.
      DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t70->has = abap_true.
      t70->value = t69.
      t67 = t70.
    ELSE.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      t67 = t71.
    ENDIF.
    t60 = t61->get_object( i_type_9913 = t62 i_name = t67 ).
    DATA t72 TYPE REF TO object.
    t72 = t60.
    t59 ?= t72.
    t58 = t59.
    DATA(t73) = VALUE abap_bool( ).
    DATA t74 TYPE REF TO zcl_lnt_ob_type_pool.
    DATA(t75) = CAST zcl_lnt_ob_type_pool( t58 ).
    t74 = t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    t76 = t77.
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = CAST zcl_lnt_ob_type_pool( t74 ).
    IF t79 IS INITIAL.
      t78 = abap_true.
    ENDIF.
    t73 = t78.
    IF t73 = abap_true.
      DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t80.
      result = t80.
      RETURN.
    ENDIF.
    DATA t81 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t84 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t85 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t86 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t87 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t88) = CAST zif_lnt_registry( me->reg ).
    DATA t89 TYPE REF TO zcl_lnt_ob_type_pool.
    DATA(t90) = CAST zcl_lnt_ob_type_pool( t58 ).
    t89 = t90.
    t87 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t88 i_object_19cd = t89 ).
    t86 = t87->run( ).
    t85 = t86->spaghetti.
    t84 = t85->get_first_child( ).
    t83 = t84.
    DATA t91 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t91.
    DATA(t92) = VALUE abap_bool( ).
    DATA(t93) = CAST zif_lnt_spaghetti_scope_node( t83 ).
    IF t93 IS INITIAL.
      t92 = abap_true.
    ENDIF.
    IF t92 = abap_true.
      DATA t94 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t94.
      t91 = t94.
    ELSE.
      DATA t95 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t96 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t97) = CAST zif_lnt_spaghetti_scope_node( t83 ).
      t96 = t97.
      t95 = t96->get_first_child( ).
      t91 = t95.
    ENDIF.
    t82 = t91.
    t81 = t82.
    DATA t98 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t98.
    DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t101) = CAST zif_lnt_spaghetti_scope_node( t81 ).
    t100 = t101.
    DATA t102 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t102.
    DATA(t103) = VALUE abap_bool( ).
    DATA(t104) = CAST zif_lnt_spaghetti_scope_node( t100 ).
    IF t104 IS INITIAL.
      t103 = abap_true.
    ENDIF.
    IF t103 = abap_true.
      DATA t105 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t105.
      t102 = t105.
    ELSE.
      DATA t106 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t107 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t108) = CAST zif_lnt_spaghetti_scope_node( t100 ).
      t107 = t108.
      DATA t109 TYPE string.
      DATA(t110) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t109 = t110->value.
      t106 = t107->find_variable( i_name = t109 ).
      t102 = t106.
    ENDIF.
    t99 = t102.
    t98 = t99.
    DATA(t111) = CAST zcl_lnt_typed_identifier( t98 ).
    result = t111.

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
    DATA(t14) = t1.
    DATA(t15) = |_|.
    DATA(t16) = strlen( t14 ).
    DATA t17 TYPE i.
    DATA(t18) = VALUE i( ).
    DATA(t19) = VALUE i( ).
    DATA t20 TYPE i.
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
    READ TABLE t13->items INDEX 1 INTO t12.
    t11 = t12.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE abap_bool.
    DATA t24 TYPE i.
    DATA(t25) = t11.
    DATA(t26) = strlen( t25 ).
    t24 = t26.
    DATA(t27) = 2.
    t23 = xsdbool( t24 <= t27 ).
    t22 = t23.
    IF t23 = abap_false.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE i.
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
    DATA t34 TYPE abap_bool.
    DATA t35 TYPE abap_bool.
    DATA t36 TYPE string.
    DATA(t37) = CAST zif_lnt_object( me->parent_obj ).
    t36 = t37->get_type( ).
    DATA(t38) = |TYPE|.
    t35 = xsdbool( t36 = t38 ).
    t34 = t35.
    IF t35 = abap_true.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE string.
      DATA t41 TYPE string.
      DATA(t42) = CAST zif_lnt_object( me->parent_obj ).
      t41 = t42->get_name( ).
      DATA(t43) = strlen( t41 ).
      t40 = t41.
      IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t40 TO UPPER CASE.
      ELSE.
        t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
      ENDIF.
      DATA t44 TYPE string.
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
    DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t51 TYPE REF TO zcl_lnt_ddic.
    DATA(t52) = CAST zif_lnt_registry( me->reg ).
    t51 = NEW zcl_lnt_ddic( i_reg_f149 = t52 ).
    DATA(t53) = t1.
    t50 = t51->lookup_no_void( i_name = t53 ).
    t49 = t50.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    t54 = t55.
    DATA(t56) = VALUE abap_bool( ).
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = CAST zcl_lnt_ilookup_result( t49 ).
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
    DATA t60 TYPE REF TO zcl_lnt_ob_type_pool.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_ob_type_pool.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_object.
    CLEAR t62.
    DATA(t63) = CAST zif_lnt_registry( me->reg ).
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
      DATA(t71) = t11.
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
    DATA t74 TYPE REF TO object.
    t74 = t62.
    t61 ?= t74.
    t60 = t61.
    DATA(t75) = VALUE abap_bool( ).
    DATA t76 TYPE REF TO zcl_lnt_ob_type_pool.
    DATA(t77) = CAST zcl_lnt_ob_type_pool( t60 ).
    t76 = t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    t78 = t79.
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = CAST zcl_lnt_ob_type_pool( t76 ).
    IF t81 IS INITIAL.
      t80 = abap_true.
    ENDIF.
    t75 = t80.
    IF t75 = abap_true.
      DATA t82 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t82.
      result = t82.
      RETURN.
    ENDIF.
    DATA t83 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t83.
    DATA t84 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t86 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t87 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t88 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t89 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t90) = CAST zif_lnt_registry( me->reg ).
    DATA t91 TYPE REF TO zcl_lnt_ob_type_pool.
    DATA(t92) = CAST zcl_lnt_ob_type_pool( t60 ).
    t91 = t92.
    t89 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t90 i_object_19cd = t91 ).
    t88 = t89->run( ).
    t87 = t88->spaghetti.
    t86 = t87->get_first_child( ).
    t85 = t86.
    DATA t93 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = CAST zif_lnt_spaghetti_scope_node( t85 ).
    IF t95 IS INITIAL.
      t94 = abap_true.
    ENDIF.
    IF t94 = abap_true.
      DATA t96 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t96.
      t93 = t96.
    ELSE.
      DATA t97 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA t98 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t99) = CAST zif_lnt_spaghetti_scope_node( t85 ).
      t98 = t99.
      t97 = t98->get_first_child( ).
      t93 = t97.
    ENDIF.
    t84 = t93.
    t83 = t84.
    DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t100.
    DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t103) = CAST zif_lnt_spaghetti_scope_node( t83 ).
    t102 = t103.
    DATA t104 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t104.
    DATA(t105) = VALUE abap_bool( ).
    DATA(t106) = CAST zif_lnt_spaghetti_scope_node( t102 ).
    IF t106 IS INITIAL.
      t105 = abap_true.
    ENDIF.
    IF t105 = abap_true.
      DATA t107 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t107.
      t104 = t107.
    ELSE.
      DATA t108 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t109 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t110) = CAST zif_lnt_spaghetti_scope_node( t102 ).
      t109 = t110.
      DATA(t111) = t1.
      t108 = t109->find_type( i_name = t111 ).
      t104 = t108.
    ENDIF.
    t101 = t104.
    t100 = t101.
    DATA(t112) = CAST zcl_lnt_typed_identifier( t100 ).
    result = t112.

  ENDMETHOD.

  METHOD find_interface_definition.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
    DATA(t13) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_interface_definition.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
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
      DATA(t20) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
      t19 = t20.
      DATA t21 TYPE string.
      DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t21 = t22->value.
      t18 = t19->find_interface_definition( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zif_lnt_interface_definition( t10 ).
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zif_lnt_interface_definition.
        DATA(t28) = CAST zif_lnt_interface_definition( t10 ).
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
    DATA(t33) = CAST zif_lnt_registry( me->reg ).
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
      DATA(t42) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
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
    DATA(t47) = CAST zcl_lnt_ob_interface( t30 ).
    t46 = xsdbool( t47 IS BOUND ).
    IF t46 = abap_true.
      DATA t48 TYPE REF TO zif_lnt_interface_definition.
      DATA t49 TYPE REF TO zcl_lnt_ob_interface.
      DATA t50 TYPE REF TO zcl_lnt_ob_interface.
      DATA(t51) = CAST zcl_lnt_ob_interface( t30 ).
      t50 = t51.
      t49 = t50.
      DATA t52 TYPE REF TO zif_lnt_interface_definition.
      DATA(t53) = CAST zcl_lnt_ob_interface( t49 ).
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
    DATA(t4) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t3 = t4.
    DATA t5 TYPE REF TO zif_lnt_form_definition.
    CLEAR t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zcl_lnt_spaghetti_scope_node( t3 ).
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
      DATA(t11) = CAST zcl_lnt_spaghetti_scope_node( t3 ).
      t10 = t11.
      DATA(t12) = t1.
      t9 = t10->find_form_definition( i_name = t12 ).
      t5 = t9.
    ENDIF.
    t2 = t5.
    result = t2.

  ENDMETHOD.

  METHOD find_type.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
    DATA(t12) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = CAST zcl_lnt_spaghetti_scope_node( t11 ).
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
      DATA(t19) = CAST zcl_lnt_spaghetti_scope_node( t11 ).
      t18 = t19.
      DATA t20 TYPE string.
      DATA(t21) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t20 = t21->value.
      t17 = t18->find_type( i_name = t20 ).
      t13 = t17.
    ENDIF.
    t10 = t13.
    result = t10.

  ENDMETHOD.

  METHOD find_extra_like_type.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_current_scope.ts:482|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_variable.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
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
    DATA(t13) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_typed_identifier.
    CLEAR t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
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
      DATA(t20) = CAST zcl_lnt_spaghetti_scope_node( t12 ).
      t19 = t20.
      DATA t21 TYPE string.
      DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
      t21 = t22->value.
      t18 = t19->find_variable( i_name = t21 ).
      t14 = t18.
    ENDIF.
    t11 = t14.
    t10 = t11.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zcl_lnt_typed_identifier( t10 ).
    t23 = xsdbool( t24 IS BOUND ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t28) = CAST zcl_lnt_typed_identifier( t10 ).
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
      DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
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
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_current_scope.ts:500|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_ddic.
    DATA t1 TYPE REF TO zcl_lnt_ddic.
    DATA(t2) = CAST zif_lnt_registry( me->reg ).
    t1 = NEW zcl_lnt_ddic( i_reg_f149 = t2 ).
    result = t1.

  ENDMETHOD.

  METHOD get_ddic_references.
    DATA t1 TYPE REF TO zif_lnt_ddic_references.
    DATA(t2) = CAST zif_lnt_registry( me->reg ).
    t1 = t2->get_ddic_references( ).
    result = t1.

  ENDMETHOD.

  METHOD get_msag_references.
    DATA t1 TYPE REF TO zif_lnt_msag_references.
    DATA(t2) = CAST zif_lnt_registry( me->reg ).
    t1 = t2->get_msag_references( ).
    result = t1.

  ENDMETHOD.

  METHOD get_parent_obj.
    DATA(t1) = CAST zif_lnt_object( me->parent_obj ).
    result = t1.

  ENDMETHOD.

  METHOD get_name.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t3) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
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
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t17 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t18 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t19) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t18 = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t21) = CAST zcl_lnt_spaghetti_scope_node( t17 ).
    t20 = t21->identifier.
    t16 = t20.
    t15 = t16->sname.
    result = t15.

  ENDMETHOD.

  METHOD get_type.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t3) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zcl_lnt_spaghetti_scope_node( t2 ).
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
      RAISE EXCEPTION t8.
    ENDIF.
    DATA t15 TYPE string.
    DATA t16 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t17 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t18 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t19) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t18 = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t21) = CAST zcl_lnt_spaghetti_scope_node( t17 ).
    t20 = t21->identifier.
    t16 = t20.
    t15 = t16->stype.
    result = t15.

  ENDMETHOD.

  METHOD push.
    DATA(t1) = i_stype.
    DATA(t2) = i_sname.
    DATA(t3) = CAST zcl_lnt_position( i_start ).
    DATA(t4) = i_filename.
    DATA t5 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA t6 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t7) = t1.
    DATA(t8) = t2.
    DATA(t9) = t4.
    DATA(t10) = CAST zcl_lnt_position( t3 ).
    DATA t11 TYPE REF TO zcl_lnt_position.
    CLEAR t11.
    t6 = NEW zcl_lnt_iscope_identifier( i_stype = t7 i_sname = t8 i_filename = t9 i_start = t10 i_end = t11 ).
    t5 = t6.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t14) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    t15 = t16.
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t13 ).
    IF t18 IS INITIAL.
      t17 = abap_true.
    ENDIF.
    t12 = t17.
    IF t12 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA t21 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t22) = CAST zcl_lnt_iscope_identifier( t5 ).
        DATA t23 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t23.
        t21 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t22 i_parent = t23 ).
        t19 = t21.
      ELSE.
        DATA t24 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t24.
        t19 = t24.
      ENDIF.
      me->current = t19.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA t26 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t27) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
      t26 = t27.
      t25 = t26.
      DATA t28 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      CLEAR t28.
      DATA(t29) = abap_true.
      IF t29 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t30.
        DATA(t31) = CAST zcl_lnt_iscope_identifier( t5 ).
        DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA(t34) = CAST zcl_lnt_spaghetti_scope_node( t25 ).
          t32 = t34.
        ELSE.
          DATA t35 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          CLEAR t35.
          t32 = t35.
        ENDIF.
        t30 = NEW zcl_lnt_spaghetti_scope_node( i_identifier = t31 i_parent = t32 ).
        t28 = t30.
      ELSE.
        DATA t36 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        CLEAR t36.
        t28 = t36.
      ENDIF.
      me->current = t28.
      DATA(t37) = CAST zcl_lnt_spaghetti_scope_node( t25 ).
      DATA t38 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t39) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
      t38 = t39.
      t37->a_c_i_s_a_5_s_s_sc_ts_sp_sc_nd( i_node = t38 ).
    ENDIF.
  ENDMETHOD.

  METHOD is_oo.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t2) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t1 = t2.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t4 = t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t6 = t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = CAST zcl_lnt_spaghetti_scope_node( t4 ).
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
      DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t14 ).
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
      DATA(t29) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t28 = t29.
      t27 = t28->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t27.
    ENDDO.
    DATA(t30) = abap_false.
    result = t30.

  ENDMETHOD.

  METHOD is_any_oo.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t2) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t1 = t2.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t4 = t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t6 = t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = CAST zcl_lnt_spaghetti_scope_node( t4 ).
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
      DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t14 ).
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
      DATA(t33) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t32 = t33.
      t31 = t32->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t31.
    ENDDO.
    DATA(t34) = abap_false.
    result = t34.

  ENDMETHOD.

  METHOD is_in_static_method.
    DATA t1 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t2) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t1 = t2.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t4 = t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t6 = t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = CAST zcl_lnt_spaghetti_scope_node( t4 ).
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
      DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t14 ).
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
      DATA(t29) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
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
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/_current_scope.ts:600|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
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
    DATA(t7) = CAST zlnt_runtime_map__9f51cbbe9de8( me->local_friends ).
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
    DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t5 ).
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
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t5 ).
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
    DATA(t2) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t1 = t2.
    DO.
      DATA(t3) = VALUE abap_bool( ).
      DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t4 = t5.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      t6 = t7.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = CAST zcl_lnt_spaghetti_scope_node( t4 ).
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
      DATA(t16) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t18) = CAST zcl_lnt_spaghetti_scope_node( t14 ).
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
          DATA(t26) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
          t25 = t26.
          t24 = t25.
          DATA t27 TYPE REF TO zcl_lnt_iscope_identifier.
          DATA(t28) = CAST zcl_lnt_spaghetti_scope_node( t24 ).
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
      DATA(t33) = CAST zcl_lnt_spaghetti_scope_node( t1 ).
      t32 = t33.
      t31 = t32->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
      t1 = t31.
    ENDDO.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    result = t34.

  ENDMETHOD.

  METHOD is_global_oo.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/5_syntax/_current_scope.ts:622|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
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
    DATA(t9) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_iscope_identifier.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zcl_lnt_spaghetti_scope_node( t8 ).
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
      DATA(t17) = CAST zcl_lnt_spaghetti_scope_node( t8 ).
      t16 = t17.
      t15 = t16.
      DATA t18 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t19) = CAST zcl_lnt_spaghetti_scope_node( t15 ).
      t18 = t19->identifier.
      t14 = t18.
      t10 = t14.
    ENDIF.
    t7 = t10.
    t6 = t7.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = CAST zcl_lnt_iscope_identifier( t6 ).
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
      DATA(t26) = CAST zcl_lnt_iscope_identifier( t6 ).
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
    DATA(t30) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
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
      DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
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
    DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( me->allow_header_use ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t11 ).
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
      DATA(t19) = CAST zlnt_runtime_opti_4ba3bdccd169( t11 ).
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
    DATA(t1) = CAST zcl_lnt_position( i_end ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    me->allow_header_use = t2.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t5) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = CAST zcl_lnt_spaghetti_scope_node( t4 ).
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
      RAISE EXCEPTION t10.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t18 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t19) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t18 = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zcl_lnt_position.
    DATA(t21) = CAST zcl_lnt_position( t1 ).
    t20 = t21.
    DATA t22 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t23) = CAST zcl_lnt_spaghetti_scope_node( t17 ).
    t22 = t23->identifier.
    DATA t24 TYPE REF TO zcl_lnt_position.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA(t26) = CAST zcl_lnt_position( t20 ).
      t24 = t26.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_position.
      CLEAR t27.
      t24 = t27.
    ENDIF.
    t22->end = t24.
    DATA t28 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t29 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t30) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t29 = t30.
    t28 = t29.
    DATA t31 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
    DATA(t33) = CAST zcl_lnt_spaghetti_scope_node( me->current ).
    t32 = t33.
    t31 = t32->g_p_i_s_a_5_s_s_sc_ts_sp_sc_nd( ).
    me->current = t31.
    DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope.
    DATA(t35) = CAST zcl_lnt_spaghetti_scope_node( t28 ).
    t34 = NEW zcl_lnt_spaghetti_scope( i_top = t35 ).
    result = t34.

  ENDMETHOD.

  METHOD add_form_definitions_one.
    DATA(t1) = CAST zif_lnt_form_definition( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA(t6) = CAST zif_lnt_form_definition( t1 ).
    APPEND t6 TO t5->items.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    t2 = t7.
    me->add_form_definitions( i_f = t2 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d750_2d45c5b37c94.
  ENDMETHOD.
ENDCLASS.
