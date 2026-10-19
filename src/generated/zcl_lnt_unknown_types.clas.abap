* TS: src/rules/unknown_types.ts:21:1 UnknownTypes
CLASS zcl_lnt_unknown_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unknown_types IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_unknown_types_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |unknown_types|.
    DATA t4 TYPE string.
    t4 = |Unknown types|.
    DATA t6 TYPE string.
    DATA(t7) = |Enables check for unknown data types, respects errorNamespac|.
    t7 = t7 && |e|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Syntax|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_unk_typ_ts_unk_typ.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD g_c_i_s_rl_un_ty_ts_un_ty_73fa.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_rl_un_ty_ts_un_ty_da3d.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t8 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t9 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t10) = me->reg.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA t13 TYPE REF TO object.
    t13 = t1.
    t11 ?= t13.
    t9 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t10 i_object_19cd = t11 ).
    t8 = t9->run( ).
    t7 = t8->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t16 = t7->get_top( ).
    t15 = me->traverse( i_node = t16 ).
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t18 = me->remove_duplicates( i_list = t15 ).
    result = t18.

  ENDMETHOD.

  METHOD remove_duplicates.
    DATA(t1) = i_list.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t5 TYPE REF TO zcl_lnt_issue.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      t10 = abap_false.
      DATA t13 TYPE REF TO zcl_lnt_issue.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA(t15) = VALUE i( ).
      DO.
        t2->load( ).
        IF t15 >= lines( t2->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t2->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          DATA t17 TYPE REF TO object.
          t17 = t16->as_ref( ).
          t13 ?= t17.
        ELSE.
          t13 ?= t14.
        ENDIF.
        DATA t18 TYPE abap_bool.
        DATA t19 TYPE REF TO zcl_lnt_position.
        DATA t22 TYPE REF TO zcl_lnt_position.
        DATA t23 TYPE REF TO zcl_lnt_iissue_data.
        t23 = t5->data_56cc.
        t22 = t23->start.
        t19 = t22.
        DATA t25 TYPE REF TO zcl_lnt_position.
        DATA t28 TYPE REF TO zcl_lnt_position.
        DATA t29 TYPE REF TO zcl_lnt_iissue_data.
        t29 = t13->data_56cc.
        t28 = t29->start.
        t25 = t28.
        t18 = t19->equals( i_p = t25 ).
        IF t18 = abap_true.
          t10 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t10 = abap_true ).
      IF t32 = abap_true.
        CONTINUE.
      ENDIF.
      t2->load( ).
      APPEND t5 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    DATA t5 TYPE REF TO zcl_lnt_iscope_data.
    t5 = t1->get_data( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t4->references.
    DATA t9 TYPE REF TO zcl_lnt_ireference.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t7->load( ).
      IF t11 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t7->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE string.
      t16 = t9->reference_type.
      DATA(t18) = |Object (Unknown)|.
      t15 = xsdbool( t16 = t18 ).
      t14 = t15.
      IF t15 = abap_true.
        DATA(t19) = VALUE abap_bool( ).
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t22 TYPE REF TO zcl_lnt_ireference_extras.
        t22 = t9->extra.
        t21 = t22.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA(t25) = xsdbool( t21 IS INITIAL ).
        IF t25 = abap_true.
          CLEAR t24.
        ELSE.
          DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t29 TYPE REF TO zcl_lnt_ireference_extras.
          t29 = t21.
          t28 = t29->oo_name.
          t24 = t28.
        ENDIF.
        t20 = t24.
        IF t20 IS BOUND.
          IF t20->has = abap_true.
            t19 = xsdbool( strlen( t20->value ) > 0 ).
          ENDIF.
        ENDIF.
        t14 = t19.
      ENDIF.
      IF t14 = abap_true.
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t35 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t36 TYPE REF TO zcl_lnt_ireference_extras.
        t36 = t9->extra.
        t35 = t36.
        t34 = t35->oo_name.
        t33 = t34->value.
        DATA(t38) = | unknown|.
        DATA(t39) = strlen( t33 ).
        t32 = |{ t33 }{ t38 }|.
        DATA t41 TYPE REF TO zcl_lnt_issue.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
        t42 = t9->position_7b94.
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t46.
        DATA t47 TYPE string.
        t47 = |unknown_types|.
        DATA t49 TYPE string.
        t49 = |Unknown types|.
        DATA t51 TYPE string.
        DATA(t52) = |Enables check for unknown data types, respects errorNamespac|.
        t52 = t52 && |e|.
        t51 = t52.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t53.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t58.
        t57 = t58.
        DATA(t60) = |Syntax|.
        t57->load( ).
        APPEND t60 TO t57->items.
        t57->save( ).
        t53 = t57.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t46 = NEW zcl_lnt_irule_metadata( i_key = t47 i_title = t49 i_short_description = t51 i_bad_example = t63 i_good_example = t65 i_extended_information = t67 i_tags = t53 i_pragma = t69 i_pseudo_comment = t71 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t73 ).
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t74 ).
        ENDIF.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t75 ).
        ENDIF.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t76 ).
        ENDIF.
        CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
        t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t77) = |key|.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
        DATA(t79) = |title|.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
        ENDIF.
        DATA(t81) = |shortDescription|.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
        ENDIF.
        DATA(t83) = |tags|.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
        ENDIF.
        t45 = t46->key.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t85 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t87 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t87.
        t41 = zcl_lnt_issue=>at_identifier( i_identifier = t42 i_message_26cb = t32 i_key = t45 i_severity = t85 i_fix = t87 ).
        t2->load( ).
        APPEND t41 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t88) = VALUE abap_bool( ).
      DATA t89 TYPE abap_bool.
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE string.
      t91 = t9->reference_type.
      DATA(t93) = |Type|.
      t90 = xsdbool( t91 = t93 ).
      t89 = t90.
      IF t90 = abap_true.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
        t95 = t9->resolved.
        t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_typed_identifier ).
        t89 = t94.
      ENDIF.
      t88 = t89.
      IF t89 = abap_true.
        DATA t97 TYPE abap_bool.
        DATA t98 TYPE REF TO zcl_lnt_abstract_type.
        DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
        t101 = t9->resolved.
        t100 ?= t101.
        DATA t103 TYPE REF TO zcl_lnt_abstract_type.
        t103 = t100->type_cba0.
        t98 = t103.
        t97 = xsdbool( t98 IS BOUND AND t98 IS INSTANCE OF zcl_lnt_unknown_type ).
        t88 = t97.
      ENDIF.
      IF t88 = abap_true.
        DATA t108 TYPE REF TO zcl_lnt_unknown_type.
        DATA t109 TYPE REF TO zcl_lnt_abstract_type.
        DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
        t112 = t9->resolved.
        t111 ?= t112.
        DATA t114 TYPE REF TO zcl_lnt_abstract_type.
        t114 = t111->type_cba0.
        t109 = t114.
        t108 ?= t109.
        DATA t116 TYPE string.
        t116 = t108->error.
        DATA t119 TYPE REF TO zcl_lnt_issue.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
        t120 = t9->position_7b94.
        DATA(t123) = VALUE string( ).
        DATA t124 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t124.
        DATA t125 TYPE string.
        t125 = |unknown_types|.
        DATA t127 TYPE string.
        t127 = |Unknown types|.
        DATA t129 TYPE string.
        DATA(t130) = |Enables check for unknown data types, respects errorNamespac|.
        t130 = t130 && |e|.
        t129 = t130.
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t131.
        DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t136.
        t135 = t136.
        DATA(t138) = |Syntax|.
        t135->load( ).
        APPEND t138 TO t135->items.
        t135->save( ).
        t131 = t135.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t124 = NEW zcl_lnt_irule_metadata( i_key = t125 i_title = t127 i_short_description = t129 i_bad_example = t141 i_good_example = t143 i_extended_information = t145 i_tags = t131 i_pragma = t147 i_pseudo_comment = t149 ).
        CREATE OBJECT t124->zlnt_view_ownkeys_b0e8086400eb.
        t124->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        t124->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t151 ).
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t124->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t124->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t124->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t124->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t124->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t124->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t154 ).
        ENDIF.
        CREATE OBJECT t124->zlnt_json_ownkeys_70e5fd461788.
        t124->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t155) = |key|.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        t124->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
        DATA(t157) = |title|.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t124->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t124->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
        ENDIF.
        DATA(t159) = |shortDescription|.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t124->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t124->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
        ENDIF.
        DATA(t161) = |tags|.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t124->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t124->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
        ENDIF.
        t123 = t124->key.
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t163 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t165.
        t119 = zcl_lnt_issue=>at_identifier( i_identifier = t120 i_message_26cb = t116 i_key = t123 i_severity = t163 i_fix = t165 ).
        t2->load( ).
        APPEND t119 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t166 TYPE abap_bool.
    DATA t167 TYPE string.
    DATA t168 TYPE REF TO zcl_lnt_iscope_identifier.
    t168 = t1->get_identifier( ).
    t167 = t168->stype.
    DATA(t170) = |class_implementation|.
    t166 = xsdbool( t167 <> t170 ).
    IF t166 = abap_true.
      DATA t171 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t172 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t172 = t4->vars.
      t171 = t172.
      DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t174 = t171->keys( ).
      DATA(t176) = VALUE string( ).
      t174->dense( ).
      DATA(t177) = VALUE i( ).
      DO.
        t174->load( ).
        IF t177 >= lines( t174->items ).
          EXIT.
        ENDIF.
        CLEAR t176.
        READ TABLE t174->items INDEX t177 + 1 INTO t176.
        IF t174->has( t177 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t177 = t177 + 1.
        DATA t178 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t179 TYPE REF TO zcl_lnt_typed_identifier.
        t179 = t171->get( p0 = t176 ).
        t178 = t179.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t184 TYPE REF TO zcl_lnt_abstract_type.
        DATA t188 TYPE REF TO zcl_lnt_abstract_type.
        t188 = t178->type_cba0.
        t184 = t188.
        t183 = me->contains_unknown( i_type_9913 = t184 ).
        t182 = t183.
        DATA(t190) = VALUE abap_bool( ).
        IF t182 IS BOUND.
          IF t182->has = abap_true.
            t190 = xsdbool( strlen( t182->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t190 = abap_true.
          DATA t193 TYPE string.
          DATA t194 TYPE string.
          DATA t195 TYPE string.
          DATA(t196) = |Variable "|.
          DATA(t198) = strlen( t196 ).
          t195 = |{ t196 }{ t176 }|.
          DATA(t199) = |" contains unknown: |.
          DATA(t200) = strlen( t195 ).
          t194 = |{ t195 }{ t199 }|.
          DATA t201 TYPE string.
          t201 = t182->value.
          DATA(t203) = strlen( t194 ).
          t193 = |{ t194 }{ t201 }|.
          DATA t205 TYPE REF TO zcl_lnt_issue.
          CLEAR t205.
          DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
          t206 = t178.
          DATA(t209) = VALUE string( ).
          DATA t210 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t210.
          DATA t211 TYPE string.
          t211 = |unknown_types|.
          DATA t213 TYPE string.
          t213 = |Unknown types|.
          DATA t215 TYPE string.
          DATA(t216) = |Enables check for unknown data types, respects errorNamespac|.
          t216 = t216 && |e|.
          t215 = t216.
          DATA t217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t217.
          DATA t221 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t222 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t222.
          t221 = t222.
          DATA(t224) = |Syntax|.
          t221->load( ).
          APPEND t224 TO t221->items.
          t221->save( ).
          t217 = t221.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t227.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t231.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t235.
          t210 = NEW zcl_lnt_irule_metadata( i_key = t211 i_title = t213 i_short_description = t215 i_bad_example = t227 i_good_example = t229 i_extended_information = t231 i_tags = t217 i_pragma = t233 i_pseudo_comment = t235 ).
          CREATE OBJECT t210->zlnt_view_ownkeys_b0e8086400eb.
          t210->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          t210->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t237 ).
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t238.
          IF t210->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t210->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t238 ).
          ENDIF.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t239.
          IF t210->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t210->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t239 ).
          ENDIF.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t240.
          IF t210->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t210->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t240 ).
          ENDIF.
          CREATE OBJECT t210->zlnt_json_ownkeys_70e5fd461788.
          t210->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t241) = |key|.
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t242.
          t210->zlnt_json_ownkeys_70e5fd461788->put( p0 = t241 p1 = t242 ).
          DATA(t243) = |title|.
          DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t244.
          IF t210->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t210->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
          ENDIF.
          DATA(t245) = |shortDescription|.
          DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t246.
          IF t210->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t210->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
          ENDIF.
          DATA(t247) = |tags|.
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          IF t210->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t210->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
          ENDIF.
          t209 = t210->key.
          DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t249 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t251.
          t205 = zcl_lnt_issue=>at_identifier( i_identifier = t206 i_message_26cb = t193 i_key = t209 i_severity = t249 i_fix = t251 ).
          t2->load( ).
          APPEND t205 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
      DATA t252 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t253 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t253 = t4->types.
      t252 = t253.
      DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t255 = t252->keys( ).
      DATA(t257) = VALUE string( ).
      t255->dense( ).
      DATA(t258) = VALUE i( ).
      DO.
        t255->load( ).
        IF t258 >= lines( t255->items ).
          EXIT.
        ENDIF.
        CLEAR t257.
        READ TABLE t255->items INDEX t258 + 1 INTO t257.
        IF t255->has( t258 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t258 = t258 + 1.
        DATA t259 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t260 TYPE REF TO zcl_lnt_typed_identifier.
        t260 = t252->get( p0 = t257 ).
        t259 = t260.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t265 TYPE REF TO zcl_lnt_abstract_type.
        DATA t269 TYPE REF TO zcl_lnt_abstract_type.
        t269 = t259->type_cba0.
        t265 = t269.
        t264 = me->contains_unknown( i_type_9913 = t265 ).
        t263 = t264.
        DATA(t271) = VALUE abap_bool( ).
        IF t263 IS BOUND.
          IF t263->has = abap_true.
            t271 = xsdbool( strlen( t263->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t271 = abap_true.
          DATA t274 TYPE string.
          DATA t275 TYPE string.
          DATA t276 TYPE string.
          DATA(t277) = |Type "|.
          DATA(t279) = strlen( t277 ).
          t276 = |{ t277 }{ t257 }|.
          DATA(t280) = |" contains unknown: |.
          DATA(t281) = strlen( t276 ).
          t275 = |{ t276 }{ t280 }|.
          DATA t282 TYPE string.
          t282 = t263->value.
          DATA(t284) = strlen( t275 ).
          t274 = |{ t275 }{ t282 }|.
          DATA t286 TYPE REF TO zcl_lnt_issue.
          CLEAR t286.
          DATA t287 TYPE REF TO zcl_lnt_typed_identifier.
          t287 = t259.
          DATA(t290) = VALUE string( ).
          DATA t291 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t291.
          DATA t292 TYPE string.
          t292 = |unknown_types|.
          DATA t294 TYPE string.
          t294 = |Unknown types|.
          DATA t296 TYPE string.
          DATA(t297) = |Enables check for unknown data types, respects errorNamespac|.
          t297 = t297 && |e|.
          t296 = t297.
          DATA t298 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t298.
          DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t303.
          t302 = t303.
          DATA(t305) = |Syntax|.
          t302->load( ).
          APPEND t305 TO t302->items.
          t302->save( ).
          t298 = t302.
          DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t308.
          DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t310.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t314.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          t291 = NEW zcl_lnt_irule_metadata( i_key = t292 i_title = t294 i_short_description = t296 i_bad_example = t308 i_good_example = t310 i_extended_information = t312 i_tags = t298 i_pragma = t314 i_pseudo_comment = t316 ).
          CREATE OBJECT t291->zlnt_view_ownkeys_b0e8086400eb.
          t291->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t318.
          t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t318 ).
          DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t319.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t319 ).
          ENDIF.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t320 ).
          ENDIF.
          DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t321.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t321 ).
          ENDIF.
          CREATE OBJECT t291->zlnt_json_ownkeys_70e5fd461788.
          t291->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t322) = |key|.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t323.
          t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
          DATA(t324) = |title|.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t324 p1 = t325 ).
          ENDIF.
          DATA(t326) = |shortDescription|.
          DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t327.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
          ENDIF.
          DATA(t328) = |tags|.
          DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t329.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
          ENDIF.
          t290 = t291->key.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t330 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t332 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t332.
          t286 = zcl_lnt_issue=>at_identifier( i_identifier = t287 i_message_26cb = t274 i_key = t290 i_severity = t330 i_fix = t332 ).
          t2->load( ).
          APPEND t286 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t334 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    t334 = t4->idefs.
    t333 = t334->keys( ).
    DATA(t336) = VALUE string( ).
    t333->dense( ).
    DATA(t337) = VALUE i( ).
    DO.
      t333->load( ).
      IF t337 >= lines( t333->items ).
        EXIT.
      ENDIF.
      CLEAR t336.
      READ TABLE t333->items INDEX t337 + 1 INTO t336.
      IF t333->has( t337 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t337 = t337 + 1.
      DATA t339 TYPE REF TO zif_lnt_interface_definition.
      DATA t340 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
      t340 = t4->idefs.
      t339 = t340->get( p0 = t336 ).
      DATA t343 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t344 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t345 TYPE REF TO zif_lnt_interface_definition.
      t345 = t339.
      t344 = me->check_parameters( i_idef = t345 ).
      t343 = t344.
      DATA t347 TYPE abap_bool.
      t347 = xsdbool( t343 IS BOUND ).
      IF t347 = abap_true.
        DATA t350 TYPE string.
        DATA(t351) = |Contains unknown, |.
        DATA t352 TYPE string.
        DATA t353 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        t353 = t343.
        t352 = t353->found.
        DATA(t355) = strlen( t351 ).
        t350 = |{ t351 }{ t352 }|.
        DATA t357 TYPE REF TO zcl_lnt_issue.
        CLEAR t357.
        DATA t358 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t359 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        t359 = t343.
        t358 = t359->id.
        DATA(t362) = VALUE string( ).
        DATA t363 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t363.
        DATA t364 TYPE string.
        t364 = |unknown_types|.
        DATA t366 TYPE string.
        t366 = |Unknown types|.
        DATA t368 TYPE string.
        DATA(t369) = |Enables check for unknown data types, respects errorNamespac|.
        t369 = t369 && |e|.
        t368 = t369.
        DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t370.
        DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t375 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t375.
        t374 = t375.
        DATA(t377) = |Syntax|.
        t374->load( ).
        APPEND t377 TO t374->items.
        t374->save( ).
        t370 = t374.
        DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t380.
        DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t382.
        DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t384.
        DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t386.
        DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t388.
        t363 = NEW zcl_lnt_irule_metadata( i_key = t364 i_title = t366 i_short_description = t368 i_bad_example = t380 i_good_example = t382 i_extended_information = t384 i_tags = t370 i_pragma = t386 i_pseudo_comment = t388 ).
        CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
        t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t390.
        t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t390 ).
        DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t391.
        IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t391 ).
        ENDIF.
        DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t392.
        IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t392 ).
        ENDIF.
        DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t393.
        IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t393 ).
        ENDIF.
        CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
        t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t394) = |key|.
        DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t395.
        t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
        DATA(t396) = |title|.
        DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t397.
        IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t396 p1 = t397 ).
        ENDIF.
        DATA(t398) = |shortDescription|.
        DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t399.
        IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t398 p1 = t399 ).
        ENDIF.
        DATA(t400) = |tags|.
        DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t401.
        IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t400 p1 = t401 ).
        ENDIF.
        t362 = t363->key.
        DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t402 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t404 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t404.
        t357 = zcl_lnt_issue=>at_identifier( i_identifier = t358 i_message_26cb = t350 i_key = t362 i_severity = t402 i_fix = t404 ).
        t2->load( ).
        APPEND t357 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t405 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t406 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    t406 = t4->cdefs.
    t405 = t406->keys( ).
    DATA(t408) = VALUE string( ).
    t405->dense( ).
    DATA(t409) = VALUE i( ).
    DO.
      t405->load( ).
      IF t409 >= lines( t405->items ).
        EXIT.
      ENDIF.
      CLEAR t408.
      READ TABLE t405->items INDEX t409 + 1 INTO t408.
      IF t405->has( t409 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t409 = t409 + 1.
      DATA t411 TYPE REF TO zif_lnt_class_definition.
      DATA t412 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
      t412 = t4->cdefs.
      t411 = t412->get( p0 = t408 ).
      DATA t415 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t416 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t417 TYPE REF TO zif_lnt_interface_definition.
      DATA t418 TYPE REF TO zif_lnt_class_definition.
      t418 = t411.
      t417 ?= t418.
      t416 = me->check_parameters( i_idef = t417 ).
      t415 = t416.
      DATA t420 TYPE abap_bool.
      t420 = xsdbool( t415 IS BOUND ).
      IF t420 = abap_true.
        DATA t423 TYPE string.
        DATA(t424) = |Contains unknown, |.
        DATA t425 TYPE string.
        DATA t426 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        t426 = t415.
        t425 = t426->found.
        DATA(t428) = strlen( t424 ).
        t423 = |{ t424 }{ t425 }|.
        DATA t430 TYPE REF TO zcl_lnt_issue.
        CLEAR t430.
        DATA t431 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t432 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        t432 = t415.
        t431 = t432->id.
        DATA(t435) = VALUE string( ).
        DATA t436 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t436.
        DATA t437 TYPE string.
        t437 = |unknown_types|.
        DATA t439 TYPE string.
        t439 = |Unknown types|.
        DATA t441 TYPE string.
        DATA(t442) = |Enables check for unknown data types, respects errorNamespac|.
        t442 = t442 && |e|.
        t441 = t442.
        DATA t443 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t443.
        DATA t447 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t448 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t448.
        t447 = t448.
        DATA(t450) = |Syntax|.
        t447->load( ).
        APPEND t450 TO t447->items.
        t447->save( ).
        t443 = t447.
        DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t453.
        DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t455.
        DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t457.
        DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t459.
        DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t461.
        t436 = NEW zcl_lnt_irule_metadata( i_key = t437 i_title = t439 i_short_description = t441 i_bad_example = t453 i_good_example = t455 i_extended_information = t457 i_tags = t443 i_pragma = t459 i_pseudo_comment = t461 ).
        CREATE OBJECT t436->zlnt_view_ownkeys_b0e8086400eb.
        t436->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t463.
        t436->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t463 ).
        DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t464.
        IF t436->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t436->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t464 ).
        ENDIF.
        DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t465.
        IF t436->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t436->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t465 ).
        ENDIF.
        DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t466.
        IF t436->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t436->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t466 ).
        ENDIF.
        CREATE OBJECT t436->zlnt_json_ownkeys_70e5fd461788.
        t436->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t467) = |key|.
        DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t468.
        t436->zlnt_json_ownkeys_70e5fd461788->put( p0 = t467 p1 = t468 ).
        DATA(t469) = |title|.
        DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t470.
        IF t436->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t436->zlnt_json_ownkeys_70e5fd461788->put( p0 = t469 p1 = t470 ).
        ENDIF.
        DATA(t471) = |shortDescription|.
        DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t472.
        IF t436->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t436->zlnt_json_ownkeys_70e5fd461788->put( p0 = t471 p1 = t472 ).
        ENDIF.
        DATA(t473) = |tags|.
        DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t474.
        IF t436->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t436->zlnt_json_ownkeys_70e5fd461788->put( p0 = t473 p1 = t474 ).
        ENDIF.
        t435 = t436->key.
        DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t475 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t477 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t477.
        t430 = zcl_lnt_issue=>at_identifier( i_identifier = t431 i_message_26cb = t423 i_key = t435 i_severity = t475 i_fix = t477 ).
        t2->load( ).
        APPEND t430 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t478 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t478 = t1->get_children( ).
    DATA t480 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t481 TYPE REF TO object.
    DATA(t482) = VALUE i( ).
    DO.
      t478->load( ).
      IF t482 >= lines( t478->items ).
        EXIT.
      ENDIF.
      CLEAR t481.
      READ TABLE t478->items INDEX t482 + 1 INTO t481.
      t482 = t482 + 1.
      DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t483.
      CLEAR t480.
      IF t481 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t483 ?= t481.
        DATA t484 TYPE REF TO object.
        t484 = t483->as_ref( ).
        t480 ?= t484.
      ELSE.
        t480 ?= t481.
      ENDIF.
      DATA(t485) = VALUE i( ).
      DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t486 = me->traverse( i_node = t480 ).
      DATA t488 TYPE REF TO zcl_lnt_issue.
      CLEAR t488.
      DATA t489 TYPE REF TO object.
      CLEAR t489.
      DATA(t490) = VALUE i( ).
      DO.
        t486->load( ).
        IF t490 >= lines( t486->items ).
          EXIT.
        ENDIF.
        CLEAR t489.
        READ TABLE t486->items INDEX t490 + 1 INTO t489.
        t490 = t490 + 1.
        DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t491.
        CLEAR t488.
        IF t489 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t491 ?= t489.
          DATA t492 TYPE REF TO object.
          t492 = t491->as_ref( ).
          t488 ?= t492.
        ELSE.
          t488 ?= t489.
        ENDIF.
        t2->load( ).
        APPEND t488 TO t2->items.
        t2->save( ).
      ENDDO.
      DATA t495 TYPE i.
      t2->load( ).
      t495 = lines( t2->items ).
      t485 = t495.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_parameters.
    DATA(t1) = i_idef.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA t4 TYPE REF TO zif_lnt_method_definitions.
    DATA t5 TYPE REF TO zif_lnt_method_definitions.
    t5 = t1->get_method_definitions( ).
    t4 = t5.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    DATA(t8) = xsdbool( t4 IS INITIAL ).
    IF t8 = abap_true.
    ELSE.
      DATA t11 TYPE REF TO zif_lnt_generator_0f59ca3c.
      t11 = t4->get_all( ).
      t7 = t11.
    ENDIF.
    t2 = t7.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = xsdbool( t2 IS INITIAL ).
    t13 = xsdbool( t14 = abap_false ).
    IF t13 = abap_true.
      DATA t16 TYPE REF TO zif_lnt_generator_0f59ca3c.
      DATA t17 TYPE REF TO zif_lnt_generator_0f59ca3c.
      DATA t18 TYPE REF TO zif_lnt_generator_0f59ca3c.
      t18 = t2.
      t17 = t18->iterate( ).
      t16 = t17.
      DO.
        DATA t21 TYPE REF TO zcl_lnt_generator_0f216880.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_generator_0f216880.
        CLEAR t22.
        t22 = t16->next( ).
        t21 = t22.
        DATA(t24) = VALUE abap_bool( ).
        t24 = t21->done.
        IF t24 = abap_true.
          EXIT.
        ENDIF.
        DATA t28 TYPE REF TO zif_lnt_method_definition.
        CLEAR t28.
        t28 = t21->value.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t31.
        DATA(t32) = VALUE abap_bool( ).
        t32 = abap_false.
        DATA t34 TYPE REF TO cx_root.
        CLEAR t34.
        TRY.
            DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t35.
            DATA t36 TYPE REF TO zif_lnt_method_parameters.
            CLEAR t36.
            t36 = t28->get_parameters( ).
            t35 = t36->get_all( ).
            t31 = t35.
            t32 = abap_true.
          CATCH cx_root INTO t34.
            DATA(t39) = VALUE abap_bool( ).
            t39 = xsdbool( t32 = abap_false ).
            IF t39 = abap_true.
              t16->close( ).
            ENDIF.
            RAISE EXCEPTION t34.
        ENDTRY.
        DATA(t42) = VALUE abap_bool( ).
        t42 = xsdbool( t32 = abap_false ).
        IF t42 = abap_true.
          t16->close( ).
        ENDIF.
        t30 = t31.
        DATA t46 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t46.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        DATA(t48) = VALUE i( ).
        DO.
          t30->load( ).
          IF t48 >= lines( t30->items ).
            EXIT.
          ENDIF.
          CLEAR t47.
          READ TABLE t30->items INDEX t48 + 1 INTO t47.
          t48 = t48 + 1.
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          CLEAR t46.
          IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t49 ?= t47.
            DATA t50 TYPE REF TO object.
            CLEAR t50.
            t50 = t49->as_ref( ).
            t46 ?= t50.
          ELSE.
            t46 ?= t47.
          ENDIF.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA(t54) = VALUE abap_bool( ).
          t54 = abap_false.
          DATA t56 TYPE REF TO cx_root.
          CLEAR t56.
          TRY.
              DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t57.
              DATA t58 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t58.
              DATA t61 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t61.
              t61 = t46->type_cba0.
              t58 = t61.
              t57 = me->contains_unknown( i_type_9913 = t58 ).
              t53 = t57.
              t54 = abap_true.
            CATCH cx_root INTO t56.
              DATA(t64) = VALUE abap_bool( ).
              t64 = xsdbool( t54 = abap_false ).
              IF t64 = abap_true.
                t16->close( ).
              ENDIF.
              RAISE EXCEPTION t56.
          ENDTRY.
          DATA(t67) = VALUE abap_bool( ).
          t67 = xsdbool( t54 = abap_false ).
          IF t67 = abap_true.
            t16->close( ).
          ENDIF.
          t51 = t53.
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = VALUE abap_bool( ).
          t73 = abap_false.
          DATA t75 TYPE REF TO cx_root.
          CLEAR t75.
          TRY.
              DATA(t76) = VALUE abap_bool( ).
              IF t51 IS BOUND.
                IF t51->has = abap_true.
                  t76 = xsdbool( strlen( t51->value ) > 0 ).
                ENDIF.
              ENDIF.
              t72 = t76.
              t73 = abap_true.
            CATCH cx_root INTO t75.
              DATA(t79) = VALUE abap_bool( ).
              t79 = xsdbool( t73 = abap_false ).
              IF t79 = abap_true.
                t16->close( ).
              ENDIF.
              RAISE EXCEPTION t75.
          ENDTRY.
          DATA(t82) = VALUE abap_bool( ).
          t82 = xsdbool( t73 = abap_false ).
          IF t82 = abap_true.
            t16->close( ).
          ENDIF.
          t71 = t72.
          IF t71 = abap_true.
            DATA t88 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            CLEAR t88.
            DATA(t89) = VALUE abap_bool( ).
            t89 = abap_false.
            DATA t91 TYPE REF TO cx_root.
            CLEAR t91.
            TRY.
                DATA t94 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
                CLEAR t94.
                DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
                CLEAR t95.
                t95 = t46.
                DATA(t97) = VALUE string( ).
                DATA(t98) = VALUE string( ).
                t98 = t51->value.
                t97 = t98.
                t94 = NEW zcl_lnt_shape_7ddeb4ab( i_id = t95 i_found = t97 ).
                CREATE OBJECT t94->zlnt_view_ownkeys_b0e8086400eb.
                t94->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t100.
                t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t100 ).
                DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t101.
                IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `found` p1 = t101 ).
                ENDIF.
                CREATE OBJECT t94->zlnt_json_ownkeys_70e5fd461788.
                t94->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t102) = |id|.
                DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t103.
                t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
                DATA(t104) = |found|.
                DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t105.
                IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
                ENDIF.
                t88 = t94.
                t89 = abap_true.
              CATCH cx_root INTO t91.
                DATA(t108) = VALUE abap_bool( ).
                t108 = xsdbool( t89 = abap_false ).
                IF t108 = abap_true.
                  t16->close( ).
                ENDIF.
                RAISE EXCEPTION t91.
            ENDTRY.
            DATA(t111) = VALUE abap_bool( ).
            t111 = xsdbool( t89 = abap_false ).
            IF t111 = abap_true.
              t16->close( ).
            ENDIF.
            t16->close( ).
            result = t88.
            RETURN.
          ENDIF.
        ENDDO.
      ENDDO.
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t119 = t1->get_events( ).
    t118 = t119.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t122) = VALUE abap_bool( ).
    t122 = xsdbool( t118 IS BOUND ).
    IF t122 = abap_true.
      t121 = t118.
    ELSE.
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t125.
      t121 = t125.
    ENDIF.
    t117 = t121.
    DATA t126 TYPE REF TO zif_lnt_event_definition.
    DATA t127 TYPE REF TO object.
    DATA(t128) = VALUE i( ).
    DO.
      t117->load( ).
      IF t128 >= lines( t117->items ).
        EXIT.
      ENDIF.
      CLEAR t127.
      READ TABLE t117->items INDEX t128 + 1 INTO t127.
      t128 = t128 + 1.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      CLEAR t126.
      IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t129 ?= t127.
        DATA t130 TYPE REF TO object.
        CLEAR t130.
        t130 = t129->as_ref( ).
        t126 ?= t130.
      ELSE.
        t126 ?= t127.
      ENDIF.
      DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t131.
      t131 = t126->get_parameters( ).
      DATA t133 TYPE REF TO zcl_lnt_typed_identifier.
      CLEAR t133.
      DATA t134 TYPE REF TO object.
      CLEAR t134.
      DATA(t135) = VALUE i( ).
      DO.
        t131->load( ).
        IF t135 >= lines( t131->items ).
          EXIT.
        ENDIF.
        CLEAR t134.
        READ TABLE t131->items INDEX t135 + 1 INTO t134.
        t135 = t135 + 1.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        CLEAR t133.
        IF t134 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t136 ?= t134.
          DATA t137 TYPE REF TO object.
          CLEAR t137.
          t137 = t136->as_ref( ).
          t133 ?= t137.
        ELSE.
          t133 ?= t134.
        ENDIF.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        DATA t140 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t140.
        DATA t143 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t143.
        t143 = t133->type_cba0.
        t140 = t143.
        t139 = me->contains_unknown( i_type_9913 = t140 ).
        t138 = t139.
        DATA(t145) = VALUE abap_bool( ).
        IF t138 IS BOUND.
          IF t138->has = abap_true.
            t145 = xsdbool( strlen( t138->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t145 = abap_true.
          DATA t149 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
          CLEAR t149.
          DATA t150 TYPE REF TO zcl_lnt_fi_identifier.
          CLEAR t150.
          t150 = t133.
          DATA(t152) = VALUE string( ).
          DATA(t153) = VALUE string( ).
          t153 = t138->value.
          t152 = t153.
          t149 = NEW zcl_lnt_shape_7ddeb4ab( i_id = t150 i_found = t152 ).
          CREATE OBJECT t149->zlnt_view_ownkeys_b0e8086400eb.
          t149->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t155 ).
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `found` p1 = t156 ).
          ENDIF.
          CREATE OBJECT t149->zlnt_json_ownkeys_70e5fd461788.
          t149->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t157) = |id|.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
          DATA(t159) = |found|.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
          ENDIF.
          result = t149.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD contains_unknown.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
    IF t2 = abap_true.
      DATA(t6) = VALUE string( ).
      DATA t8 TYPE REF TO zcl_lnt_unknown_type.
      t8 ?= t1.
      DATA(t10) = VALUE string( ).
      t10 = t8->error.
      t6 = t10.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t6.
      result = t12.
      RETURN.
    ELSE.
      DATA(t14) = VALUE abap_bool( ).
      t14 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t18 TYPE REF TO zcl_lnt_structure_type.
        t18 ?= t1.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t20 = t18->components.
        t16 = t20.
        DATA t22 TYPE REF TO zcl_lnt_istructure_component.
        DATA t23 TYPE REF TO object.
        DATA(t24) = VALUE i( ).
        DO.
          t16->load( ).
          IF t24 >= lines( t16->items ).
            EXIT.
          ENDIF.
          CLEAR t23.
          READ TABLE t16->items INDEX t24 + 1 INTO t23.
          t24 = t24 + 1.
          DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t25.
          CLEAR t22.
          IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t25 ?= t23.
            CLEAR t22.
            IF t25 IS BOUND.
              IF t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t22 ?= t25->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t22 IS NOT BOUND.
                IF t25->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t25->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t25->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t25->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t26.
                  IF t25->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t26 ?= t25->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t26->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA(t27) = VALUE string( ).
                DATA t28 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t28.
                DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t29.
                DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t30.
                t22 = NEW zcl_lnt_istructure_component( view_source = t25 i_name = t27 i_type_9913 = t28 i_as_include = t29 i_suffix = t30 ).
              ENDIF.
            ENDIF.
          ELSE.
            t22 ?= t23.
          ENDIF.
          DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t31.
          DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t32.
          DATA t33 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t33.
          DATA t34 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t34.
          t34 = t22->zlnt_view_read_sr_455340cd1e80( ).
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t36.
          t36 = t22->zlnt_view_read_sr_455340cd1e80( ).
          t33 = t36.
          t32 = me->contains_unknown( i_type_9913 = t33 ).
          t31 = t32.
          DATA(t38) = VALUE abap_bool( ).
          IF t31 IS BOUND.
            IF t31->has = abap_true.
              t38 = xsdbool( strlen( t31->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t38 = abap_true.
            DATA(t42) = VALUE string( ).
            t42 = t31->value.
            DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t44->has = abap_true.
            t44->value = t42.
            result = t44.
            RETURN.
          ENDIF.
        ENDDO.
      ELSE.
        DATA(t46) = VALUE abap_bool( ).
        t46 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t49 TYPE REF TO zcl_lnt_abstract_type.
          DATA t51 TYPE REF TO zcl_lnt_ty_table_type.
          t51 ?= t1.
          DATA t53 TYPE REF TO zcl_lnt_abstract_type.
          t53 = t51->row_type.
          t49 = t53.
          t48 = me->contains_unknown( i_type_9913 = t49 ).
          result = t48.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_unknown_types.
    DATA(t3) = i_reg_f149.
    t2 = me->in_in_sr_rl_unk_typ_ts_unk_typ( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unknown_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_73fa( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unknown_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_73fa( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unknown_types_conf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_unknown_types_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_rl_un_ty_ts_un_ty_da3d( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1740_677967e27e11.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
