* TS: src/rules/unknown_types.ts:21:1 UnknownTypes
CLASS zcl_lnt_unknown_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_unknown_types_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_unk_typ_ts_unk_typ IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unknown_types.
    METHODS g_c_i_s_rl_un_ty_ts_un_ty_73fa RETURNING VALUE(result) TYPE REF TO zcl_lnt_unknown_types_conf.
    METHODS s_c_i_s_rl_un_ty_ts_un_ty_da3d IMPORTING i_conf TYPE REF TO zcl_lnt_unknown_types_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS remove_duplicates IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_parameters IMPORTING i_idef TYPE REF TO zif_lnt_interface_definition RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_7ddeb4ab.
    METHODS contains_unknown IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unknown_types IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_unknown_types_conf(  ).
    me->conf = t1.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |unknown_types|.
    DATA(t3) = |Unknown types|.
    DATA(t4) = |Enables check for unknown data types, respects errorNamespac|.
    t4 = t4 && |e|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11 = t12.
      DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t14) = |Syntax|.
      APPEND t14 TO t13->items.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      t10 = t15.
      t8 = t10.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t16.
      t8 = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t8 i_pragma = t17 i_pseudo_comment = t18 ).
    result = t1.

  ENDMETHOD.
  METHOD in_in_sr_rl_unk_typ_ts_unk_typ.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
    DATA(t3) = CAST zcl_lnt_unknown_types( me ).
    result = t3.

  ENDMETHOD.
  METHOD g_c_i_s_rl_un_ty_ts_un_ty_73fa.
    DATA(t1) = CAST zcl_lnt_unknown_types_conf( me->conf ).
    result = t1.

  ENDMETHOD.
  METHOD s_c_i_s_rl_un_ty_ts_un_ty_da3d.
    DATA(t1) = CAST zcl_lnt_unknown_types_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unknown_types.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CAST zif_lnt_object( t1 ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t7 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t8 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t9 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t10) = CAST zif_lnt_registry( me->reg ).
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA(t12) = CAST zif_lnt_object( t1 ).
    DATA t13 TYPE REF TO object.
    t13 = t12.
    t11 ?= t13.
    t9 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t10 i_object_19cd = t11 ).
    t8 = t9->run(  ).
    t7 = t8->spaghetti.
    t6 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t17) = CAST zif_lnt_spaghetti_scope( t6 ).
    t16 = t17->get_top(  ).
    t15 = me->traverse( i_node = t16 ).
    t14 = t15.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    t18 = me->remove_duplicates( i_list = t19 ).
    result = t18.

  ENDMETHOD.
  METHOD remove_duplicates.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_list ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t5 TYPE REF TO zcl_lnt_issue.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA t7 TYPE abap_bool.
      DATA(t8) = abap_false.
      t7 = t8.
      DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA t10 TYPE REF TO zcl_lnt_issue.
      CLEAR t10.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      LOOP AT t9->items INTO t11.
        t10 ?= t11.
        DATA t12 TYPE abap_bool.
        DATA t13 TYPE REF TO zcl_lnt_position.
        DATA t14 TYPE REF TO zcl_lnt_issue.
        DATA(t15) = CAST zcl_lnt_issue( t5 ).
        t14 = t15.
        DATA t16 TYPE REF TO zcl_lnt_position.
        DATA t17 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t18) = CAST zcl_lnt_issue( t14 ).
        t17 = t18->data_56cc.
        t16 = t17->start.
        t13 = t16.
        DATA t19 TYPE REF TO zcl_lnt_position.
        DATA t20 TYPE REF TO zcl_lnt_issue.
        DATA(t21) = CAST zcl_lnt_issue( t10 ).
        t20 = t21.
        DATA t22 TYPE REF TO zcl_lnt_position.
        DATA t23 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t24) = CAST zcl_lnt_issue( t20 ).
        t23 = t24->data_56cc.
        t22 = t23->start.
        t19 = t22.
        t12 = t13->equals( i_p = t19 ).
        IF t12 = abap_true.
          DATA(t25) = abap_true.
          t7 = t25.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t7.
      DATA(t28) = abap_true.
      t26 = xsdbool( t27 = t28 ).
      IF t26 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t30) = CAST zcl_lnt_issue( t5 ).
      APPEND t30 TO t29->items.
    ENDLOOP.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t31.

  ENDMETHOD.
  METHOD traverse.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_node ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    DATA t5 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t6) = CAST zif_lnt_spaghetti_scope_node( t1 ).
    t5 = t6->get_data(  ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = CAST zcl_lnt_iscope_data( t4 ).
    t7 = t8->references.
    DATA t9 TYPE REF TO zcl_lnt_ireference.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    LOOP AT t7->items INTO t10.
      t9 ?= t10.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE string.
      DATA(t14) = CAST zcl_lnt_ireference( t9 ).
      t13 = t14->reference_type.
      DATA(t15) = |Object (Unknown)|.
      t12 = xsdbool( t13 = t15 ).
      t11 = t12.
      IF t12 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t19 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t20) = CAST zcl_lnt_ireference( t9 ).
        t19 = t20->extra.
        t18 = t19.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = CAST zcl_lnt_ireference_extras( t18 ).
        IF t23 IS INITIAL.
          t22 = abap_true.
        ENDIF.
        IF t22 = abap_true.
          DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t24.
          t21 = t24.
        ELSE.
          DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t26 TYPE REF TO zcl_lnt_ireference_extras.
          DATA(t27) = CAST zcl_lnt_ireference_extras( t18 ).
          t26 = t27.
          t25 = t26->oo_name.
          t21 = t25.
        ENDIF.
        t17 = t21.
        IF t17 IS BOUND.
          IF t17->has = abap_true.
            t16 = xsdbool( strlen( t17->value ) > 0 ).
          ENDIF.
        ENDIF.
        t11 = t16.
      ENDIF.
      IF t11 = abap_true.
        DATA t28 TYPE string.
        DATA t29 TYPE string.
        DATA t30 TYPE string.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t32 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t33 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t34) = CAST zcl_lnt_ireference( t9 ).
        t33 = t34->extra.
        t32 = t33.
        t31 = t32->oo_name.
        t30 = t31->value.
        DATA(t35) = | unknown|.
        DATA(t36) = strlen( t30 ).
        t29 = |{ t30 }{ t35 }|.
        t28 = t29.
        DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t38 TYPE REF TO zcl_lnt_issue.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t40) = CAST zcl_lnt_ireference( t9 ).
        t39 = t40->position_7b94.
        DATA(t41) = t28.
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t43.
        DATA(t44) = |unknown_types|.
        DATA(t45) = |Unknown types|.
        DATA(t46) = |Enables check for unknown data types, respects errorNamespac|.
        t46 = t46 && |e|.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t50.
        DATA(t51) = abap_true.
        IF t51 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t54.
          t53 = t54.
          DATA(t55) = CAST zlnt_runtime_arra_8ecd6afe19e0( t53 ).
          DATA(t56) = |Syntax|.
          APPEND t56 TO t55->items.
          DATA(t57) = CAST zlnt_runtime_arra_8ecd6afe19e0( t53 ).
          t52 = t57.
          t50 = t52.
        ELSE.
          DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t58.
          t50 = t58.
        ENDIF.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t43 = NEW zcl_lnt_irule_metadata( i_key = t44 i_title = t45 i_short_description = t46 i_bad_example = t47 i_good_example = t48 i_extended_information = t49 i_tags = t50 i_pragma = t59 i_pseudo_comment = t60 ).
        t42 = t43->key.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t62) = CAST zcl_lnt_unknown_types_conf( me->conf ).
        t61 = t62->severity.
        DATA t63 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t63.
        t38 = zcl_lnt_issue=>at_identifier( i_identifier = t39 i_message_26cb = t41 i_key = t42 i_severity = t61 i_fix = t63 ).
        APPEND t38 TO t37->items.
      ENDIF.
      DATA(t64) = VALUE abap_bool( ).
      DATA t65 TYPE abap_bool.
      DATA t66 TYPE abap_bool.
      DATA t67 TYPE string.
      DATA(t68) = CAST zcl_lnt_ireference( t9 ).
      t67 = t68->reference_type.
      DATA(t69) = |Type|.
      t66 = xsdbool( t67 = t69 ).
      t65 = t66.
      IF t66 = abap_true.
        DATA t70 TYPE abap_bool.
        DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t72) = CAST zcl_lnt_ireference( t9 ).
        t71 = t72->resolved.
        t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_typed_identifier ).
        t65 = t70.
      ENDIF.
      t64 = t65.
      IF t65 = abap_true.
        DATA t73 TYPE abap_bool.
        DATA t74 TYPE REF TO zcl_lnt_abstract_type.
        DATA t75 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t76 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t77 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t78) = CAST zcl_lnt_ireference( t9 ).
        t77 = t78->resolved.
        t76 ?= t77.
        t75 = t76.
        DATA t79 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t80) = CAST zcl_lnt_typed_identifier( t75 ).
        t79 = t80->type_cba0.
        t74 = t79.
        t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_unknown_type ).
        t64 = t73.
      ENDIF.
      IF t64 = abap_true.
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        DATA t83 TYPE REF TO zcl_lnt_unknown_type.
        DATA t84 TYPE REF TO zcl_lnt_unknown_type.
        DATA t85 TYPE REF TO zcl_lnt_abstract_type.
        DATA t86 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t87 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t88 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t89) = CAST zcl_lnt_ireference( t9 ).
        t88 = t89->resolved.
        t87 ?= t88.
        t86 = t87.
        DATA t90 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t91) = CAST zcl_lnt_typed_identifier( t86 ).
        t90 = t91->type_cba0.
        t85 = t90.
        t84 ?= t85.
        t83 = t84.
        DATA t92 TYPE string.
        DATA(t93) = CAST zcl_lnt_unknown_type( t83 ).
        t92 = t93->error.
        t82 = t92.
        t81 = t82.
        DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t95 TYPE REF TO zcl_lnt_issue.
        CLEAR t95.
        DATA t96 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t97) = CAST zcl_lnt_ireference( t9 ).
        t96 = t97->position_7b94.
        DATA(t98) = t81.
        DATA(t99) = VALUE string( ).
        DATA t100 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t100.
        DATA(t101) = |unknown_types|.
        DATA(t102) = |Unknown types|.
        DATA(t103) = |Enables check for unknown data types, respects errorNamespac|.
        t103 = t103 && |e|.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t107.
        DATA(t108) = abap_true.
        IF t108 = abap_true.
          DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t111.
          t110 = t111.
          DATA(t112) = CAST zlnt_runtime_arra_8ecd6afe19e0( t110 ).
          DATA(t113) = |Syntax|.
          APPEND t113 TO t112->items.
          DATA(t114) = CAST zlnt_runtime_arra_8ecd6afe19e0( t110 ).
          t109 = t114.
          t107 = t109.
        ELSE.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t115.
          t107 = t115.
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        t100 = NEW zcl_lnt_irule_metadata( i_key = t101 i_title = t102 i_short_description = t103 i_bad_example = t104 i_good_example = t105 i_extended_information = t106 i_tags = t107 i_pragma = t116 i_pseudo_comment = t117 ).
        t99 = t100->key.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t119) = CAST zcl_lnt_unknown_types_conf( me->conf ).
        t118 = t119->severity.
        DATA t120 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t120.
        t95 = zcl_lnt_issue=>at_identifier( i_identifier = t96 i_message_26cb = t98 i_key = t99 i_severity = t118 i_fix = t120 ).
        APPEND t95 TO t94->items.
      ENDIF.
    ENDLOOP.
    DATA t121 TYPE abap_bool.
    DATA t122 TYPE string.
    DATA t123 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t124) = CAST zif_lnt_spaghetti_scope_node( t1 ).
    t123 = t124->get_identifier(  ).
    t122 = t123->stype.
    DATA(t125) = |class_implementation|.
    t121 = xsdbool( t122 <> t125 ).
    IF t121 = abap_true.
      DATA t126 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t127 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t128) = CAST zcl_lnt_iscope_data( t4 ).
      t127 = t128->vars.
      t126 = t127.
      DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t130) = CAST zlnt_runtime_map__126b79e3f8a9( t126 ).
      t129 = t130->keys(  ).
      DATA(t131) = VALUE string( ).
      LOOP AT t129->items INTO t131.
        DATA t132 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t133 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t134) = CAST zlnt_runtime_map__126b79e3f8a9( t126 ).
        DATA(t135) = t131.
        t133 = t134->get( p0 = t135 ).
        t132 = t133.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t138 TYPE REF TO zcl_lnt_abstract_type.
        DATA t139 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t140 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t141) = CAST zcl_lnt_typed_identifier( t132 ).
        t140 = t141.
        t139 = t140.
        DATA t142 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t143) = CAST zcl_lnt_typed_identifier( t139 ).
        t142 = t143->type_cba0.
        t138 = t142.
        t137 = me->contains_unknown( i_type_9913 = t138 ).
        t136 = t137.
        DATA(t144) = VALUE abap_bool( ).
        DATA(t145) = CAST zlnt_runtime_opti_4ba3bdccd169( t136 ).
        IF t145 IS BOUND.
          IF t145->has = abap_true.
            t144 = xsdbool( strlen( t145->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t144 = abap_true.
          DATA t146 TYPE string.
          DATA t147 TYPE string.
          DATA t148 TYPE string.
          DATA t149 TYPE string.
          DATA(t150) = |Variable "|.
          DATA(t151) = t131.
          DATA(t152) = strlen( t150 ).
          t149 = |{ t150 }{ t151 }|.
          DATA(t153) = |" contains unknown: |.
          DATA(t154) = strlen( t149 ).
          t148 = |{ t149 }{ t153 }|.
          DATA t155 TYPE string.
          DATA(t156) = CAST zlnt_runtime_opti_4ba3bdccd169( t136 ).
          t155 = t156->value.
          DATA(t157) = strlen( t148 ).
          t147 = |{ t148 }{ t155 }|.
          t146 = t147.
          DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t159 TYPE REF TO zcl_lnt_issue.
          CLEAR t159.
          DATA t160 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t161) = CAST zcl_lnt_typed_identifier( t132 ).
          t160 = t161.
          DATA(t162) = t146.
          DATA(t163) = VALUE string( ).
          DATA t164 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t164.
          DATA(t165) = |unknown_types|.
          DATA(t166) = |Unknown types|.
          DATA(t167) = |Enables check for unknown data types, respects errorNamespac|.
          t167 = t167 && |e|.
          DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t168.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t169.
          DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t170.
          DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t171.
          DATA(t172) = abap_true.
          IF t172 = abap_true.
            DATA t173 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t175.
            t174 = t175.
            DATA(t176) = CAST zlnt_runtime_arra_8ecd6afe19e0( t174 ).
            DATA(t177) = |Syntax|.
            APPEND t177 TO t176->items.
            DATA(t178) = CAST zlnt_runtime_arra_8ecd6afe19e0( t174 ).
            t173 = t178.
            t171 = t173.
          ELSE.
            DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t179.
            t171 = t179.
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          t164 = NEW zcl_lnt_irule_metadata( i_key = t165 i_title = t166 i_short_description = t167 i_bad_example = t168 i_good_example = t169 i_extended_information = t170 i_tags = t171 i_pragma = t180 i_pseudo_comment = t181 ).
          t163 = t164->key.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t183) = CAST zcl_lnt_unknown_types_conf( me->conf ).
          t182 = t183->severity.
          DATA t184 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t184.
          t159 = zcl_lnt_issue=>at_identifier( i_identifier = t160 i_message_26cb = t162 i_key = t163 i_severity = t182 i_fix = t184 ).
          APPEND t159 TO t158->items.
        ENDIF.
      ENDLOOP.
      DATA t185 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t186 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t187) = CAST zcl_lnt_iscope_data( t4 ).
      t186 = t187->types.
      t185 = t186.
      DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t189) = CAST zlnt_runtime_map__126b79e3f8a9( t185 ).
      t188 = t189->keys(  ).
      DATA(t190) = VALUE string( ).
      LOOP AT t188->items INTO t190.
        DATA t191 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t192 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t193) = CAST zlnt_runtime_map__126b79e3f8a9( t185 ).
        DATA(t194) = t190.
        t192 = t193->get( p0 = t194 ).
        t191 = t192.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t197 TYPE REF TO zcl_lnt_abstract_type.
        DATA t198 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t199 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t200) = CAST zcl_lnt_typed_identifier( t191 ).
        t199 = t200.
        t198 = t199.
        DATA t201 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t202) = CAST zcl_lnt_typed_identifier( t198 ).
        t201 = t202->type_cba0.
        t197 = t201.
        t196 = me->contains_unknown( i_type_9913 = t197 ).
        t195 = t196.
        DATA(t203) = VALUE abap_bool( ).
        DATA(t204) = CAST zlnt_runtime_opti_4ba3bdccd169( t195 ).
        IF t204 IS BOUND.
          IF t204->has = abap_true.
            t203 = xsdbool( strlen( t204->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t203 = abap_true.
          DATA t205 TYPE string.
          DATA t206 TYPE string.
          DATA t207 TYPE string.
          DATA t208 TYPE string.
          DATA(t209) = |Type "|.
          DATA(t210) = t190.
          DATA(t211) = strlen( t209 ).
          t208 = |{ t209 }{ t210 }|.
          DATA(t212) = |" contains unknown: |.
          DATA(t213) = strlen( t208 ).
          t207 = |{ t208 }{ t212 }|.
          DATA t214 TYPE string.
          DATA(t215) = CAST zlnt_runtime_opti_4ba3bdccd169( t195 ).
          t214 = t215->value.
          DATA(t216) = strlen( t207 ).
          t206 = |{ t207 }{ t214 }|.
          t205 = t206.
          DATA(t217) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t218 TYPE REF TO zcl_lnt_issue.
          CLEAR t218.
          DATA t219 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t220) = CAST zcl_lnt_typed_identifier( t191 ).
          t219 = t220.
          DATA(t221) = t205.
          DATA(t222) = VALUE string( ).
          DATA t223 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t223.
          DATA(t224) = |unknown_types|.
          DATA(t225) = |Unknown types|.
          DATA(t226) = |Enables check for unknown data types, respects errorNamespac|.
          t226 = t226 && |e|.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t227.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t230.
          DATA(t231) = abap_true.
          IF t231 = abap_true.
            DATA t232 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t234.
            t233 = t234.
            DATA(t235) = CAST zlnt_runtime_arra_8ecd6afe19e0( t233 ).
            DATA(t236) = |Syntax|.
            APPEND t236 TO t235->items.
            DATA(t237) = CAST zlnt_runtime_arra_8ecd6afe19e0( t233 ).
            t232 = t237.
            t230 = t232.
          ELSE.
            DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t238.
            t230 = t238.
          ENDIF.
          DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t239.
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t240.
          t223 = NEW zcl_lnt_irule_metadata( i_key = t224 i_title = t225 i_short_description = t226 i_bad_example = t227 i_good_example = t228 i_extended_information = t229 i_tags = t230 i_pragma = t239 i_pseudo_comment = t240 ).
          t222 = t223->key.
          DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t242) = CAST zcl_lnt_unknown_types_conf( me->conf ).
          t241 = t242->severity.
          DATA t243 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t243.
          t218 = zcl_lnt_issue=>at_identifier( i_identifier = t219 i_message_26cb = t221 i_key = t222 i_severity = t241 i_fix = t243 ).
          APPEND t218 TO t217->items.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t245 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA(t246) = CAST zcl_lnt_iscope_data( t4 ).
    t245 = t246->idefs.
    t244 = t245->keys(  ).
    DATA(t247) = VALUE string( ).
    LOOP AT t244->items INTO t247.
      DATA t248 TYPE REF TO zif_lnt_interface_definition.
      DATA t249 TYPE REF TO zif_lnt_interface_definition.
      DATA t250 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
      DATA(t251) = CAST zcl_lnt_iscope_data( t4 ).
      t250 = t251->idefs.
      DATA(t252) = t247.
      t249 = t250->get( p0 = t252 ).
      t248 = t249.
      DATA t253 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t254 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t255 TYPE REF TO zif_lnt_interface_definition.
      DATA(t256) = CAST zif_lnt_interface_definition( t248 ).
      t255 = t256.
      t254 = me->check_parameters( i_idef = t255 ).
      t253 = t254.
      DATA t257 TYPE abap_bool.
      DATA(t258) = CAST zcl_lnt_shape_7ddeb4ab( t253 ).
      t257 = xsdbool( t258 IS BOUND ).
      IF t257 = abap_true.
        DATA t259 TYPE string.
        DATA t260 TYPE string.
        DATA(t261) = |Contains unknown, |.
        DATA t262 TYPE string.
        DATA t263 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        DATA(t264) = CAST zcl_lnt_shape_7ddeb4ab( t253 ).
        t263 = t264.
        t262 = t263->found.
        DATA(t265) = strlen( t261 ).
        t260 = |{ t261 }{ t262 }|.
        t259 = t260.
        DATA(t266) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t267 TYPE REF TO zcl_lnt_issue.
        CLEAR t267.
        DATA t268 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t269 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        DATA(t270) = CAST zcl_lnt_shape_7ddeb4ab( t253 ).
        t269 = t270.
        t268 = t269->id.
        DATA(t271) = t259.
        DATA(t272) = VALUE string( ).
        DATA t273 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t273.
        DATA(t274) = |unknown_types|.
        DATA(t275) = |Unknown types|.
        DATA(t276) = |Enables check for unknown data types, respects errorNamespac|.
        t276 = t276 && |e|.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t278.
        DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t279.
        DATA t280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t280.
        DATA(t281) = abap_true.
        IF t281 = abap_true.
          DATA t282 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t283 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t284 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t284.
          t283 = t284.
          DATA(t285) = CAST zlnt_runtime_arra_8ecd6afe19e0( t283 ).
          DATA(t286) = |Syntax|.
          APPEND t286 TO t285->items.
          DATA(t287) = CAST zlnt_runtime_arra_8ecd6afe19e0( t283 ).
          t282 = t287.
          t280 = t282.
        ELSE.
          DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t288.
          t280 = t288.
        ENDIF.
        DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t289.
        DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t290.
        t273 = NEW zcl_lnt_irule_metadata( i_key = t274 i_title = t275 i_short_description = t276 i_bad_example = t277 i_good_example = t278 i_extended_information = t279 i_tags = t280 i_pragma = t289 i_pseudo_comment = t290 ).
        t272 = t273->key.
        DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t292) = CAST zcl_lnt_unknown_types_conf( me->conf ).
        t291 = t292->severity.
        DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t293.
        t267 = zcl_lnt_issue=>at_identifier( i_identifier = t268 i_message_26cb = t271 i_key = t272 i_severity = t291 i_fix = t293 ).
        APPEND t267 TO t266->items.
      ENDIF.
    ENDLOOP.
    DATA t294 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t295 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA(t296) = CAST zcl_lnt_iscope_data( t4 ).
    t295 = t296->cdefs.
    t294 = t295->keys(  ).
    DATA(t297) = VALUE string( ).
    LOOP AT t294->items INTO t297.
      DATA t298 TYPE REF TO zif_lnt_class_definition.
      DATA t299 TYPE REF TO zif_lnt_class_definition.
      DATA t300 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
      DATA(t301) = CAST zcl_lnt_iscope_data( t4 ).
      t300 = t301->cdefs.
      DATA(t302) = t297.
      t299 = t300->get( p0 = t302 ).
      t298 = t299.
      DATA t303 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t304 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t305 TYPE REF TO zif_lnt_interface_definition.
      DATA t306 TYPE REF TO zif_lnt_class_definition.
      DATA(t307) = CAST zif_lnt_class_definition( t298 ).
      t306 = t307.
      t305 ?= t306.
      t304 = me->check_parameters( i_idef = t305 ).
      t303 = t304.
      DATA t308 TYPE abap_bool.
      DATA(t309) = CAST zcl_lnt_shape_7ddeb4ab( t303 ).
      t308 = xsdbool( t309 IS BOUND ).
      IF t308 = abap_true.
        DATA t310 TYPE string.
        DATA t311 TYPE string.
        DATA(t312) = |Contains unknown, |.
        DATA t313 TYPE string.
        DATA t314 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        DATA(t315) = CAST zcl_lnt_shape_7ddeb4ab( t303 ).
        t314 = t315.
        t313 = t314->found.
        DATA(t316) = strlen( t312 ).
        t311 = |{ t312 }{ t313 }|.
        t310 = t311.
        DATA(t317) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t318 TYPE REF TO zcl_lnt_issue.
        CLEAR t318.
        DATA t319 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t320 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        DATA(t321) = CAST zcl_lnt_shape_7ddeb4ab( t303 ).
        t320 = t321.
        t319 = t320->id.
        DATA(t322) = t310.
        DATA(t323) = VALUE string( ).
        DATA t324 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t324.
        DATA(t325) = |unknown_types|.
        DATA(t326) = |Unknown types|.
        DATA(t327) = |Enables check for unknown data types, respects errorNamespac|.
        t327 = t327 && |e|.
        DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t328.
        DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t329.
        DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t330.
        DATA t331 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t331.
        DATA(t332) = abap_true.
        IF t332 = abap_true.
          DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t335.
          t334 = t335.
          DATA(t336) = CAST zlnt_runtime_arra_8ecd6afe19e0( t334 ).
          DATA(t337) = |Syntax|.
          APPEND t337 TO t336->items.
          DATA(t338) = CAST zlnt_runtime_arra_8ecd6afe19e0( t334 ).
          t333 = t338.
          t331 = t333.
        ELSE.
          DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t339.
          t331 = t339.
        ENDIF.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t341.
        t324 = NEW zcl_lnt_irule_metadata( i_key = t325 i_title = t326 i_short_description = t327 i_bad_example = t328 i_good_example = t329 i_extended_information = t330 i_tags = t331 i_pragma = t340 i_pseudo_comment = t341 ).
        t323 = t324->key.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t343) = CAST zcl_lnt_unknown_types_conf( me->conf ).
        t342 = t343->severity.
        DATA t344 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t344.
        t318 = zcl_lnt_issue=>at_identifier( i_identifier = t319 i_message_26cb = t322 i_key = t323 i_severity = t342 i_fix = t344 ).
        APPEND t318 TO t317->items.
      ENDIF.
    ENDLOOP.
    DATA t345 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t346) = CAST zif_lnt_spaghetti_scope_node( t1 ).
    t345 = t346->get_children(  ).
    DATA t347 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t347.
    DATA t348 TYPE REF TO object.
    CLEAR t348.
    LOOP AT t345->items INTO t348.
      t347 ?= t348.
      DATA(t349) = VALUE i( ).
      DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t351) = CAST zif_lnt_spaghetti_scope_node( t347 ).
      t350 = me->traverse( i_node = t351 ).
      DATA t352 TYPE REF TO zcl_lnt_issue.
      CLEAR t352.
      DATA t353 TYPE REF TO object.
      CLEAR t353.
      LOOP AT t350->items INTO t353.
        t352 ?= t353.
        DATA(t354) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t355) = CAST zcl_lnt_issue( t352 ).
        APPEND t355 TO t354->items.
      ENDLOOP.
      DATA t356 TYPE i.
      DATA(t357) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t356 = lines( t357->items ).
      t349 = t356.
    ENDLOOP.
    DATA(t358) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t358.

  ENDMETHOD.
  METHOD check_parameters.
    DATA(t1) = CAST zif_lnt_interface_definition( i_idef ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_method_definitions.
    DATA t6 TYPE REF TO zif_lnt_method_definitions.
    DATA(t7) = CAST zif_lnt_interface_definition( t1 ).
    t6 = t7->get_method_definitions(  ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zif_lnt_method_definitions( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t13) = CAST zif_lnt_method_definitions( t5 ).
      t12 = t13->get_all(  ).
      t8 = t12.
    ENDIF.
    t4 = t8.
    t3 = t4.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE abap_bool.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    t15 = xsdbool( t16 IS BOUND ).
    IF t15 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t17 = t18.
      t14 = t17.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      t14 = t19.
    ENDIF.
    t2 = t14.
    DATA t20 TYPE REF TO zif_lnt_method_definition.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t2->items INTO t21.
      t20 ?= t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zif_lnt_method_parameters.
      DATA(t24) = CAST zif_lnt_method_definition( t20 ).
      t23 = t24->get_parameters(  ).
      t22 = t23->get_all(  ).
      DATA t25 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      LOOP AT t22->items INTO t26.
        t25 ?= t26.
        DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t29 TYPE REF TO zcl_lnt_abstract_type.
        DATA t30 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t31) = CAST zcl_lnt_typed_identifier( t25 ).
        t30 = t31.
        DATA t32 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t33) = CAST zcl_lnt_typed_identifier( t30 ).
        t32 = t33->type_cba0.
        t29 = t32.
        t28 = me->contains_unknown( i_type_9913 = t29 ).
        t27 = t28.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = CAST zlnt_runtime_opti_4ba3bdccd169( t27 ).
        IF t35 IS BOUND.
          IF t35->has = abap_true.
            t34 = xsdbool( strlen( t35->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t34 = abap_true.
          DATA t36 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
          CLEAR t36.
          DATA(t37) = abap_true.
          IF t37 = abap_true.
            DATA t38 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            DATA(t39) = CAST zcl_lnt_typed_identifier( t25 ).
            DATA t40 TYPE string.
            DATA(t41) = CAST zlnt_runtime_opti_4ba3bdccd169( t27 ).
            t40 = t41->value.
            t38 = NEW zcl_lnt_shape_7ddeb4ab( i_id = t39 i_found = t40 ).
            t36 = t38.
          ELSE.
            DATA t42 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            CLEAR t42.
            t36 = t42.
          ENDIF.
          result = t36.
          RETURN.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t46) = CAST zif_lnt_interface_definition( t1 ).
    t45 = t46->get_events(  ).
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE abap_bool.
    DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
    t48 = xsdbool( t49 IS BOUND ).
    IF t48 = abap_true.
      DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t44 ).
      t47 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t51.
      t47 = t51.
    ENDIF.
    t43 = t47.
    DATA t52 TYPE REF TO zif_lnt_event_definition.
    CLEAR t52.
    DATA t53 TYPE REF TO object.
    CLEAR t53.
    LOOP AT t43->items INTO t53.
      t52 ?= t53.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = CAST zif_lnt_event_definition( t52 ).
      t54 = t55->get_parameters(  ).
      DATA t56 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      LOOP AT t54->items INTO t57.
        t56 ?= t57.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t60 TYPE REF TO zcl_lnt_abstract_type.
        DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t62) = CAST zcl_lnt_typed_identifier( t56 ).
        t61 = t62.
        DATA t63 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t64) = CAST zcl_lnt_typed_identifier( t61 ).
        t63 = t64->type_cba0.
        t60 = t63.
        t59 = me->contains_unknown( i_type_9913 = t60 ).
        t58 = t59.
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
        IF t66 IS BOUND.
          IF t66->has = abap_true.
            t65 = xsdbool( strlen( t66->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t65 = abap_true.
          DATA t67 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA t69 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            DATA(t70) = CAST zcl_lnt_typed_identifier( t56 ).
            DATA t71 TYPE string.
            DATA(t72) = CAST zlnt_runtime_opti_4ba3bdccd169( t58 ).
            t71 = t72->value.
            t69 = NEW zcl_lnt_shape_7ddeb4ab( i_id = t70 i_found = t71 ).
            t67 = t69.
          ELSE.
            DATA t73 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            CLEAR t73.
            t67 = t73.
          ENDIF.
          result = t67.
          RETURN.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA t74 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
    CLEAR t74.
    result = t74.

  ENDMETHOD.
  METHOD contains_unknown.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA t2 TYPE abap_bool.
    DATA(t3) = CAST zcl_lnt_abstract_type( t1 ).
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_unknown_type ).
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA t6 TYPE string.
        DATA t7 TYPE REF TO zcl_lnt_unknown_type.
        DATA t8 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t9) = CAST zcl_lnt_abstract_type( t1 ).
        t8 ?= t9.
        t7 = t8.
        DATA t10 TYPE string.
        DATA(t11) = CAST zcl_lnt_unknown_type( t7 ).
        t10 = t11->error.
        t6 = t10.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t6.
        t4 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t4 = t13.
      ENDIF.
      result = t4.
      RETURN.
    ELSE.
      DATA t14 TYPE abap_bool.
      DATA(t15) = CAST zcl_lnt_abstract_type( t1 ).
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t17 TYPE REF TO zcl_lnt_structure_type.
        DATA t18 TYPE REF TO zcl_lnt_structure_type.
        DATA(t19) = CAST zcl_lnt_abstract_type( t1 ).
        t18 ?= t19.
        t17 = t18.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t21) = CAST zcl_lnt_structure_type( t17 ).
        t20 = t21->components.
        t16 = t20.
        DATA t22 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t22.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        LOOP AT t16->items INTO t23.
          t22 ?= t23.
          DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t26 TYPE REF TO zcl_lnt_abstract_type.
          DATA t27 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t28) = CAST zcl_lnt_istructure_component( t22 ).
          t27 = t28->type_cba0.
          DATA t29 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t30) = CAST zcl_lnt_istructure_component( t22 ).
          t29 = t30->type_cba0.
          t26 = t29.
          t25 = me->contains_unknown( i_type_9913 = t26 ).
          t24 = t25.
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
          IF t32 IS BOUND.
            IF t32->has = abap_true.
              t31 = xsdbool( strlen( t32->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t31 = abap_true.
            DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t33.
            DATA(t34) = abap_true.
            IF t34 = abap_true.
              DATA t35 TYPE string.
              DATA(t36) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
              t35 = t36->value.
              DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t37->has = abap_true.
              t37->value = t35.
              t33 = t37.
            ELSE.
              DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t38.
              t33 = t38.
            ENDIF.
            result = t33.
            RETURN.
          ENDIF.
        ENDLOOP.
      ELSE.
        DATA t39 TYPE abap_bool.
        DATA(t40) = CAST zcl_lnt_abstract_type( t1 ).
        t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t39 = abap_true.
          DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t42 TYPE REF TO zcl_lnt_abstract_type.
          DATA t43 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t44 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t45) = CAST zcl_lnt_abstract_type( t1 ).
          t44 ?= t45.
          t43 = t44.
          DATA t46 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t47) = CAST zcl_lnt_ty_table_type( t43 ).
          t46 = t47->row_type.
          t42 = t46.
          t41 = me->contains_unknown( i_type_9913 = t42 ).
          result = t41.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    result = t48.

  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA t2 TYPE REF TO zcl_lnt_unknown_types.
    DATA(t3) = CAST zif_lnt_registry( t1 ).
    t2 = me->in_in_sr_rl_unk_typ_ts_unk_typ( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unknown_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_73fa(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unknown_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_73fa(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/unknown_types.ts:43|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1641_3230ed7ae965.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config(  i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize(  i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value(  ).
  ENDMETHOD.
ENDCLASS.
