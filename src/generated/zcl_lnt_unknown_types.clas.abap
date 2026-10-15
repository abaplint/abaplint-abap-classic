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
    DATA(t1) = NEW zcl_lnt_unknown_types_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unknown_types|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unknown types|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Enables check for unknown data types, respects errorNamespac|.
    t7 = t7 && |e|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Syntax|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_unk_typ_ts_unk_typ.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_rl_un_ty_ts_un_ty_73fa.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_rl_un_ty_ts_un_ty_da3d.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
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
    DATA(t10) = me->reg.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA(t12) = t1.
    DATA t13 TYPE REF TO object.
    t13 = t12.
    t11 ?= t13.
    t9 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t10 i_object_19cd = t11 ).
    t8 = t9->run( ).
    t7 = t8->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t6 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t17) = t6.
    t16 = t17->get_top( ).
    t15 = me->traverse( i_node = t16 ).
    t14 = t15.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = t14.
    t18 = me->remove_duplicates( i_list = t19 ).
    result = t18.

  ENDMETHOD.

  METHOD remove_duplicates.
    DATA(t1) = i_list.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_issue.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
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
      DATA(t11) = abap_false.
      t10 = t11.
      DATA(t12) = t2.
      DATA t13 TYPE REF TO zcl_lnt_issue.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA(t15) = VALUE i( ).
      DO.
        t12->load( ).
        IF t15 >= lines( t12->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t12->items INDEX t15 + 1 INTO t14.
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
        DATA t20 TYPE REF TO zcl_lnt_issue.
        DATA(t21) = t5.
        t20 = t21.
        DATA t22 TYPE REF TO zcl_lnt_position.
        DATA t23 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t24) = t20.
        t23 = t24->data_56cc.
        t22 = t23->start.
        t19 = t22.
        DATA t25 TYPE REF TO zcl_lnt_position.
        DATA t26 TYPE REF TO zcl_lnt_issue.
        DATA(t27) = t13.
        t26 = t27.
        DATA t28 TYPE REF TO zcl_lnt_position.
        DATA t29 TYPE REF TO zcl_lnt_iissue_data.
        DATA(t30) = t26.
        t29 = t30->data_56cc.
        t28 = t29->start.
        t25 = t28.
        t18 = t19->equals( i_p = t25 ).
        IF t18 = abap_true.
          DATA(t31) = abap_true.
          t10 = t31.
          EXIT.
        ENDIF.
      ENDDO.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t10.
      DATA(t34) = abap_true.
      t32 = xsdbool( t33 = t34 ).
      IF t32 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t35) = t2.
      DATA(t36) = t5.
      t35->load( ).
      APPEND t36 TO t35->items.
      t35->save( ).
    ENDDO.
    DATA(t37) = t2.
    result = t37.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    DATA t5 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t6) = t1.
    t5 = t6->get_data( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t4.
    t7 = t8->references.
    DATA t9 TYPE REF TO zcl_lnt_ireference.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
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
      DATA(t17) = t9.
      t16 = t17->reference_type.
      DATA(t18) = |Object (Unknown)|.
      t15 = xsdbool( t16 = t18 ).
      t14 = t15.
      IF t15 = abap_true.
        DATA(t19) = VALUE abap_bool( ).
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t22 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t23) = t9.
        t22 = t23->extra.
        t21 = t22.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA(t25) = VALUE abap_bool( ).
        DATA(t26) = t21.
        IF t26 IS INITIAL.
          t25 = abap_true.
        ENDIF.
        IF t25 = abap_true.
          DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t27.
          t24 = t27.
        ELSE.
          DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t29 TYPE REF TO zcl_lnt_ireference_extras.
          DATA(t30) = t21.
          t29 = t30.
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
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA t33 TYPE string.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t35 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t36 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t37) = t9.
        t36 = t37->extra.
        t35 = t36.
        t34 = t35->oo_name.
        t33 = t34->value.
        DATA(t38) = | unknown|.
        DATA(t39) = strlen( t33 ).
        t32 = |{ t33 }{ t38 }|.
        t31 = t32.
        DATA(t40) = t2.
        DATA t41 TYPE REF TO zcl_lnt_issue.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t43) = t9.
        t42 = t43->position_7b94.
        DATA(t44) = t31.
        DATA(t45) = VALUE string( ).
        DATA t46 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t46.
        DATA t47 TYPE string.
        DATA(t48) = |unknown_types|.
        t47 = t48.
        DATA t49 TYPE string.
        DATA(t50) = |Unknown types|.
        t49 = t50.
        DATA t51 TYPE string.
        DATA(t52) = |Enables check for unknown data types, respects errorNamespac|.
        t52 = t52 && |e|.
        t51 = t52.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t54.
        DATA(t55) = abap_true.
        IF t55 = abap_true.
          DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t58.
          t57 = t58.
          DATA(t59) = t57.
          DATA(t60) = |Syntax|.
          t59->load( ).
          APPEND t60 TO t59->items.
          t59->save( ).
          DATA(t61) = t57.
          t56 = t61.
          t54 = t56.
        ELSE.
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t62.
          t54 = t62.
        ENDIF.
        t53 = t54.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        t63 = t64.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t65 = t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t71 = t72.
        t46 = NEW zcl_lnt_irule_metadata( i_key = t47 i_title = t49 i_short_description = t51 i_bad_example = t63 i_good_example = t65 i_extended_information = t67 i_tags = t53 i_pragma = t69 i_pseudo_comment = t71 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t73 ).
        ENDIF.
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
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
        ENDIF.
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
        DATA(t86) = me->conf.
        t85 = t86->zlnt_view_read_sr_15c06369f827( ).
        DATA t87 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t87.
        t41 = zcl_lnt_issue=>at_identifier( i_identifier = t42 i_message_26cb = t44 i_key = t45 i_severity = t85 i_fix = t87 ).
        t40->load( ).
        APPEND t41 TO t40->items.
        t40->save( ).
      ENDIF.
      DATA(t88) = VALUE abap_bool( ).
      DATA t89 TYPE abap_bool.
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE string.
      DATA(t92) = t9.
      t91 = t92->reference_type.
      DATA(t93) = |Type|.
      t90 = xsdbool( t91 = t93 ).
      t89 = t90.
      IF t90 = abap_true.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t96) = t9.
        t95 = t96->resolved.
        t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_typed_identifier ).
        t89 = t94.
      ENDIF.
      t88 = t89.
      IF t89 = abap_true.
        DATA t97 TYPE abap_bool.
        DATA t98 TYPE REF TO zcl_lnt_abstract_type.
        DATA t99 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t100 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t101 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t102) = t9.
        t101 = t102->resolved.
        t100 ?= t101.
        t99 = t100.
        DATA t103 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t104) = t99.
        t103 = t104->type_cba0.
        t98 = t103.
        t97 = xsdbool( t98 IS BOUND AND t98 IS INSTANCE OF zcl_lnt_unknown_type ).
        t88 = t97.
      ENDIF.
      IF t88 = abap_true.
        DATA t105 TYPE string.
        DATA t106 TYPE string.
        DATA t107 TYPE REF TO zcl_lnt_unknown_type.
        DATA t108 TYPE REF TO zcl_lnt_unknown_type.
        DATA t109 TYPE REF TO zcl_lnt_abstract_type.
        DATA t110 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t111 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t113) = t9.
        t112 = t113->resolved.
        t111 ?= t112.
        t110 = t111.
        DATA t114 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t115) = t110.
        t114 = t115->type_cba0.
        t109 = t114.
        t108 ?= t109.
        t107 = t108.
        DATA t116 TYPE string.
        DATA(t117) = t107.
        t116 = t117->error.
        t106 = t116.
        t105 = t106.
        DATA(t118) = t2.
        DATA t119 TYPE REF TO zcl_lnt_issue.
        CLEAR t119.
        DATA t120 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t121) = t9.
        t120 = t121->position_7b94.
        DATA(t122) = t105.
        DATA(t123) = VALUE string( ).
        DATA t124 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t124.
        DATA t125 TYPE string.
        DATA(t126) = |unknown_types|.
        t125 = t126.
        DATA t127 TYPE string.
        DATA(t128) = |Unknown types|.
        t127 = t128.
        DATA t129 TYPE string.
        DATA(t130) = |Enables check for unknown data types, respects errorNamespac|.
        t130 = t130 && |e|.
        t129 = t130.
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t132.
        DATA(t133) = abap_true.
        IF t133 = abap_true.
          DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t136.
          t135 = t136.
          DATA(t137) = t135.
          DATA(t138) = |Syntax|.
          t137->load( ).
          APPEND t138 TO t137->items.
          t137->save( ).
          DATA(t139) = t135.
          t134 = t139.
          t132 = t134.
        ELSE.
          DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t140.
          t132 = t140.
        ENDIF.
        t131 = t132.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        t141 = t142.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        t143 = t144.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        t145 = t146.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t147 = t148.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        t149 = t150.
        t124 = NEW zcl_lnt_irule_metadata( i_key = t125 i_title = t127 i_short_description = t129 i_bad_example = t141 i_good_example = t143 i_extended_information = t145 i_tags = t131 i_pragma = t147 i_pseudo_comment = t149 ).
        CREATE OBJECT t124->zlnt_view_ownkeys_b0e8086400eb.
        t124->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t124->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t124->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t151 ).
        ENDIF.
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
        IF t124->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t124->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
        ENDIF.
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
        DATA(t164) = me->conf.
        t163 = t164->zlnt_view_read_sr_15c06369f827( ).
        DATA t165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t165.
        t119 = zcl_lnt_issue=>at_identifier( i_identifier = t120 i_message_26cb = t122 i_key = t123 i_severity = t163 i_fix = t165 ).
        t118->load( ).
        APPEND t119 TO t118->items.
        t118->save( ).
      ENDIF.
    ENDDO.
    DATA t166 TYPE abap_bool.
    DATA t167 TYPE string.
    DATA t168 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t169) = t1.
    t168 = t169->get_identifier( ).
    t167 = t168->stype.
    DATA(t170) = |class_implementation|.
    t166 = xsdbool( t167 <> t170 ).
    IF t166 = abap_true.
      DATA t171 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t172 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t173) = t4.
      t172 = t173->vars.
      t171 = t172.
      DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t175) = t171.
      t174 = t175->keys( ).
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
        DATA(t180) = t171.
        DATA(t181) = t176.
        t179 = t180->get( p0 = t181 ).
        t178 = t179.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t184 TYPE REF TO zcl_lnt_abstract_type.
        DATA t185 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t186 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t187) = t178.
        t186 = t187.
        t185 = t186.
        DATA t188 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t189) = t185.
        t188 = t189->type_cba0.
        t184 = t188.
        t183 = me->contains_unknown( i_type_9913 = t184 ).
        t182 = t183.
        DATA(t190) = VALUE abap_bool( ).
        DATA(t191) = t182.
        IF t191 IS BOUND.
          IF t191->has = abap_true.
            t190 = xsdbool( strlen( t191->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t190 = abap_true.
          DATA t192 TYPE string.
          DATA t193 TYPE string.
          DATA t194 TYPE string.
          DATA t195 TYPE string.
          DATA(t196) = |Variable "|.
          DATA(t197) = t176.
          DATA(t198) = strlen( t196 ).
          t195 = |{ t196 }{ t197 }|.
          DATA(t199) = |" contains unknown: |.
          DATA(t200) = strlen( t195 ).
          t194 = |{ t195 }{ t199 }|.
          DATA t201 TYPE string.
          DATA(t202) = t182.
          t201 = t202->value.
          DATA(t203) = strlen( t194 ).
          t193 = |{ t194 }{ t201 }|.
          t192 = t193.
          DATA(t204) = t2.
          DATA t205 TYPE REF TO zcl_lnt_issue.
          CLEAR t205.
          DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t207) = t178.
          t206 = t207.
          DATA(t208) = t192.
          DATA(t209) = VALUE string( ).
          DATA t210 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t210.
          DATA t211 TYPE string.
          DATA(t212) = |unknown_types|.
          t211 = t212.
          DATA t213 TYPE string.
          DATA(t214) = |Unknown types|.
          t213 = t214.
          DATA t215 TYPE string.
          DATA(t216) = |Enables check for unknown data types, respects errorNamespac|.
          t216 = t216 && |e|.
          t215 = t216.
          DATA t217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t217.
          DATA t218 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t218.
          DATA(t219) = abap_true.
          IF t219 = abap_true.
            DATA t220 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t221 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t222 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t222.
            t221 = t222.
            DATA(t223) = t221.
            DATA(t224) = |Syntax|.
            t223->load( ).
            APPEND t224 TO t223->items.
            t223->save( ).
            DATA(t225) = t221.
            t220 = t225.
            t218 = t220.
          ELSE.
            DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t226.
            t218 = t226.
          ENDIF.
          t217 = t218.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          t227 = t228.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t230.
          t229 = t230.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t232.
          t231 = t232.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          t233 = t234.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t236.
          t235 = t236.
          t210 = NEW zcl_lnt_irule_metadata( i_key = t211 i_title = t213 i_short_description = t215 i_bad_example = t227 i_good_example = t229 i_extended_information = t231 i_tags = t217 i_pragma = t233 i_pseudo_comment = t235 ).
          CREATE OBJECT t210->zlnt_view_ownkeys_b0e8086400eb.
          t210->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t210->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t210->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t237 ).
          ENDIF.
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
          IF t210->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t210->zlnt_json_ownkeys_70e5fd461788->put( p0 = t241 p1 = t242 ).
          ENDIF.
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
          DATA(t250) = me->conf.
          t249 = t250->zlnt_view_read_sr_15c06369f827( ).
          DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t251.
          t205 = zcl_lnt_issue=>at_identifier( i_identifier = t206 i_message_26cb = t208 i_key = t209 i_severity = t249 i_fix = t251 ).
          t204->load( ).
          APPEND t205 TO t204->items.
          t204->save( ).
        ENDIF.
      ENDDO.
      DATA t252 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t253 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA(t254) = t4.
      t253 = t254->types.
      t252 = t253.
      DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t256) = t252.
      t255 = t256->keys( ).
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
        DATA(t261) = t252.
        DATA(t262) = t257.
        t260 = t261->get( p0 = t262 ).
        t259 = t260.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t265 TYPE REF TO zcl_lnt_abstract_type.
        DATA t266 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t267 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t268) = t259.
        t267 = t268.
        t266 = t267.
        DATA t269 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t270) = t266.
        t269 = t270->type_cba0.
        t265 = t269.
        t264 = me->contains_unknown( i_type_9913 = t265 ).
        t263 = t264.
        DATA(t271) = VALUE abap_bool( ).
        DATA(t272) = t263.
        IF t272 IS BOUND.
          IF t272->has = abap_true.
            t271 = xsdbool( strlen( t272->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t271 = abap_true.
          DATA t273 TYPE string.
          DATA t274 TYPE string.
          DATA t275 TYPE string.
          DATA t276 TYPE string.
          DATA(t277) = |Type "|.
          DATA(t278) = t257.
          DATA(t279) = strlen( t277 ).
          t276 = |{ t277 }{ t278 }|.
          DATA(t280) = |" contains unknown: |.
          DATA(t281) = strlen( t276 ).
          t275 = |{ t276 }{ t280 }|.
          DATA t282 TYPE string.
          DATA(t283) = t263.
          t282 = t283->value.
          DATA(t284) = strlen( t275 ).
          t274 = |{ t275 }{ t282 }|.
          t273 = t274.
          DATA(t285) = t2.
          DATA t286 TYPE REF TO zcl_lnt_issue.
          CLEAR t286.
          DATA t287 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t288) = t259.
          t287 = t288.
          DATA(t289) = t273.
          DATA(t290) = VALUE string( ).
          DATA t291 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t291.
          DATA t292 TYPE string.
          DATA(t293) = |unknown_types|.
          t292 = t293.
          DATA t294 TYPE string.
          DATA(t295) = |Unknown types|.
          t294 = t295.
          DATA t296 TYPE string.
          DATA(t297) = |Enables check for unknown data types, respects errorNamespac|.
          t297 = t297 && |e|.
          t296 = t297.
          DATA t298 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t298.
          DATA t299 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t299.
          DATA(t300) = abap_true.
          IF t300 = abap_true.
            DATA t301 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t303.
            t302 = t303.
            DATA(t304) = t302.
            DATA(t305) = |Syntax|.
            t304->load( ).
            APPEND t305 TO t304->items.
            t304->save( ).
            DATA(t306) = t302.
            t301 = t306.
            t299 = t301.
          ELSE.
            DATA t307 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t307.
            t299 = t307.
          ENDIF.
          t298 = t299.
          DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t309.
          t308 = t309.
          DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t311.
          t310 = t311.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          t312 = t313.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t315.
          t314 = t315.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t317.
          t316 = t317.
          t291 = NEW zcl_lnt_irule_metadata( i_key = t292 i_title = t294 i_short_description = t296 i_bad_example = t308 i_good_example = t310 i_extended_information = t312 i_tags = t298 i_pragma = t314 i_pseudo_comment = t316 ).
          CREATE OBJECT t291->zlnt_view_ownkeys_b0e8086400eb.
          t291->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t318.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t318 ).
          ENDIF.
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
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
          ENDIF.
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
          DATA(t331) = me->conf.
          t330 = t331->zlnt_view_read_sr_15c06369f827( ).
          DATA t332 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t332.
          t286 = zcl_lnt_issue=>at_identifier( i_identifier = t287 i_message_26cb = t289 i_key = t290 i_severity = t330 i_fix = t332 ).
          t285->load( ).
          APPEND t286 TO t285->items.
          t285->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t334 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA(t335) = t4.
    t334 = t335->idefs.
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
      DATA t338 TYPE REF TO zif_lnt_interface_definition.
      DATA t339 TYPE REF TO zif_lnt_interface_definition.
      DATA t340 TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
      DATA(t341) = t4.
      t340 = t341->idefs.
      DATA(t342) = t336.
      t339 = t340->get( p0 = t342 ).
      t338 = t339.
      DATA t343 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t344 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t345 TYPE REF TO zif_lnt_interface_definition.
      DATA(t346) = t338.
      t345 = t346.
      t344 = me->check_parameters( i_idef = t345 ).
      t343 = t344.
      DATA t347 TYPE abap_bool.
      DATA(t348) = t343.
      t347 = xsdbool( t348 IS BOUND ).
      IF t347 = abap_true.
        DATA t349 TYPE string.
        DATA t350 TYPE string.
        DATA(t351) = |Contains unknown, |.
        DATA t352 TYPE string.
        DATA t353 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        DATA(t354) = t343.
        t353 = t354.
        t352 = t353->found.
        DATA(t355) = strlen( t351 ).
        t350 = |{ t351 }{ t352 }|.
        t349 = t350.
        DATA(t356) = t2.
        DATA t357 TYPE REF TO zcl_lnt_issue.
        CLEAR t357.
        DATA t358 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t359 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        DATA(t360) = t343.
        t359 = t360.
        t358 = t359->id.
        DATA(t361) = t349.
        DATA(t362) = VALUE string( ).
        DATA t363 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t363.
        DATA t364 TYPE string.
        DATA(t365) = |unknown_types|.
        t364 = t365.
        DATA t366 TYPE string.
        DATA(t367) = |Unknown types|.
        t366 = t367.
        DATA t368 TYPE string.
        DATA(t369) = |Enables check for unknown data types, respects errorNamespac|.
        t369 = t369 && |e|.
        t368 = t369.
        DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t370.
        DATA t371 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t371.
        DATA(t372) = abap_true.
        IF t372 = abap_true.
          DATA t373 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t375 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t375.
          t374 = t375.
          DATA(t376) = t374.
          DATA(t377) = |Syntax|.
          t376->load( ).
          APPEND t377 TO t376->items.
          t376->save( ).
          DATA(t378) = t374.
          t373 = t378.
          t371 = t373.
        ELSE.
          DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t379.
          t371 = t379.
        ENDIF.
        t370 = t371.
        DATA t380 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t381.
        t380 = t381.
        DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t383.
        t382 = t383.
        DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t385.
        t384 = t385.
        DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t387.
        t386 = t387.
        DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t389.
        t388 = t389.
        t363 = NEW zcl_lnt_irule_metadata( i_key = t364 i_title = t366 i_short_description = t368 i_bad_example = t380 i_good_example = t382 i_extended_information = t384 i_tags = t370 i_pragma = t386 i_pseudo_comment = t388 ).
        CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
        t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t390.
        IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t390 ).
        ENDIF.
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
        IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
        ENDIF.
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
        DATA(t403) = me->conf.
        t402 = t403->zlnt_view_read_sr_15c06369f827( ).
        DATA t404 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t404.
        t357 = zcl_lnt_issue=>at_identifier( i_identifier = t358 i_message_26cb = t361 i_key = t362 i_severity = t402 i_fix = t404 ).
        t356->load( ).
        APPEND t357 TO t356->items.
        t356->save( ).
      ENDIF.
    ENDDO.
    DATA t405 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t406 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA(t407) = t4.
    t406 = t407->cdefs.
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
      DATA t410 TYPE REF TO zif_lnt_class_definition.
      DATA t411 TYPE REF TO zif_lnt_class_definition.
      DATA t412 TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
      DATA(t413) = t4.
      t412 = t413->cdefs.
      DATA(t414) = t408.
      t411 = t412->get( p0 = t414 ).
      t410 = t411.
      DATA t415 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t416 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
      DATA t417 TYPE REF TO zif_lnt_interface_definition.
      DATA t418 TYPE REF TO zif_lnt_class_definition.
      DATA(t419) = t410.
      t418 = t419.
      t417 ?= t418.
      t416 = me->check_parameters( i_idef = t417 ).
      t415 = t416.
      DATA t420 TYPE abap_bool.
      DATA(t421) = t415.
      t420 = xsdbool( t421 IS BOUND ).
      IF t420 = abap_true.
        DATA t422 TYPE string.
        DATA t423 TYPE string.
        DATA(t424) = |Contains unknown, |.
        DATA t425 TYPE string.
        DATA t426 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        DATA(t427) = t415.
        t426 = t427.
        t425 = t426->found.
        DATA(t428) = strlen( t424 ).
        t423 = |{ t424 }{ t425 }|.
        t422 = t423.
        DATA(t429) = t2.
        DATA t430 TYPE REF TO zcl_lnt_issue.
        CLEAR t430.
        DATA t431 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t432 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
        DATA(t433) = t415.
        t432 = t433.
        t431 = t432->id.
        DATA(t434) = t422.
        DATA(t435) = VALUE string( ).
        DATA t436 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t436.
        DATA t437 TYPE string.
        DATA(t438) = |unknown_types|.
        t437 = t438.
        DATA t439 TYPE string.
        DATA(t440) = |Unknown types|.
        t439 = t440.
        DATA t441 TYPE string.
        DATA(t442) = |Enables check for unknown data types, respects errorNamespac|.
        t442 = t442 && |e|.
        t441 = t442.
        DATA t443 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t443.
        DATA t444 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t444.
        DATA(t445) = abap_true.
        IF t445 = abap_true.
          DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t447 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t448 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t448.
          t447 = t448.
          DATA(t449) = t447.
          DATA(t450) = |Syntax|.
          t449->load( ).
          APPEND t450 TO t449->items.
          t449->save( ).
          DATA(t451) = t447.
          t446 = t451.
          t444 = t446.
        ELSE.
          DATA t452 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t452.
          t444 = t452.
        ENDIF.
        t443 = t444.
        DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t454.
        t453 = t454.
        DATA t455 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t456.
        t455 = t456.
        DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t458.
        t457 = t458.
        DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t460.
        t459 = t460.
        DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t462.
        t461 = t462.
        t436 = NEW zcl_lnt_irule_metadata( i_key = t437 i_title = t439 i_short_description = t441 i_bad_example = t453 i_good_example = t455 i_extended_information = t457 i_tags = t443 i_pragma = t459 i_pseudo_comment = t461 ).
        CREATE OBJECT t436->zlnt_view_ownkeys_b0e8086400eb.
        t436->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t463.
        IF t436->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t436->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t463 ).
        ENDIF.
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
        IF t436->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t436->zlnt_json_ownkeys_70e5fd461788->put( p0 = t467 p1 = t468 ).
        ENDIF.
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
        DATA(t476) = me->conf.
        t475 = t476->zlnt_view_read_sr_15c06369f827( ).
        DATA t477 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t477.
        t430 = zcl_lnt_issue=>at_identifier( i_identifier = t431 i_message_26cb = t434 i_key = t435 i_severity = t475 i_fix = t477 ).
        t429->load( ).
        APPEND t430 TO t429->items.
        t429->save( ).
      ENDIF.
    ENDDO.
    DATA t478 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t479) = t1.
    t478 = t479->get_children( ).
    DATA t480 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t480.
    DATA t481 TYPE REF TO object.
    CLEAR t481.
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
      DATA(t487) = t480.
      t486 = me->traverse( i_node = t487 ).
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
        DATA(t493) = t2.
        DATA(t494) = t488.
        t493->load( ).
        APPEND t494 TO t493->items.
        t493->save( ).
      ENDDO.
      DATA t495 TYPE i.
      DATA(t496) = t2.
      t496->load( ).
      t495 = lines( t496->items ).
      t485 = t495.
    ENDDO.
    DATA(t497) = t2.
    result = t497.

  ENDMETHOD.

  METHOD check_parameters.
    DATA(t1) = i_idef.
    DATA t2 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_method_definitions.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_method_definitions.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6->get_method_definitions( ).
    t4 = t5.
    DATA t7 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t10.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t11.
      DATA(t12) = t4.
      t11 = t12->get_all( ).
      t7 = t11.
    ENDIF.
    t3 = t7.
    t2 = t3.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t2.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t13 = xsdbool( t14 = abap_false ).
    IF t13 = abap_true.
      DATA t16 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_generator_0f59ca3c.
      CLEAR t18.
      DATA(t19) = t2.
      t18 = t19.
      t17 = t18->iterate( ).
      t16 = t17.
      DO.
        DATA(t20) = abap_true.
        IF t20 = abap_false.
          EXIT.
        ENDIF.
        DATA t21 TYPE REF TO zcl_lnt_generator_0f216880.
        CLEAR t21.
        DATA t22 TYPE REF TO zcl_lnt_generator_0f216880.
        CLEAR t22.
        DATA(t23) = t16.
        t22 = t23->next( ).
        t21 = t22.
        DATA(t24) = VALUE abap_bool( ).
        DATA(t25) = t21.
        t24 = t25->done.
        IF t24 = abap_true.
          EXIT.
        ENDIF.
        DATA t26 TYPE REF TO zif_lnt_method_definition.
        CLEAR t26.
        DATA t27 TYPE REF TO zif_lnt_method_definition.
        CLEAR t27.
        DATA t28 TYPE REF TO zif_lnt_method_definition.
        CLEAR t28.
        DATA(t29) = t21.
        t28 = t29->value.
        t27 = t28.
        t26 = t27.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t31.
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = abap_false.
        t32 = t33.
        DATA t34 TYPE REF TO cx_root.
        CLEAR t34.
        TRY.
            DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t35.
            DATA t36 TYPE REF TO zif_lnt_method_parameters.
            CLEAR t36.
            DATA(t37) = t26.
            t36 = t37->get_parameters( ).
            t35 = t36->get_all( ).
            t31 = t35.
            DATA(t38) = abap_true.
            t32 = t38.
          CATCH cx_root INTO t34.
            DATA(t39) = VALUE abap_bool( ).
            DATA(t40) = t32.
            t39 = xsdbool( t40 = abap_false ).
            IF t39 = abap_true.
              DATA(t41) = t16.
              t41->close( ).
            ENDIF.
            RAISE EXCEPTION t34.
        ENDTRY.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = t32.
        t42 = xsdbool( t43 = abap_false ).
        IF t42 = abap_true.
          DATA(t44) = t16.
          t44->close( ).
        ENDIF.
        DATA(t45) = t31.
        t30 = t45.
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
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = abap_false.
          t54 = t55.
          DATA t56 TYPE REF TO cx_root.
          CLEAR t56.
          TRY.
              DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t57.
              DATA t58 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t58.
              DATA t59 TYPE REF TO zcl_lnt_typed_identifier.
              CLEAR t59.
              DATA(t60) = t46.
              t59 = t60.
              DATA t61 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t61.
              DATA(t62) = t59.
              t61 = t62->type_cba0.
              t58 = t61.
              t57 = me->contains_unknown( i_type_9913 = t58 ).
              t53 = t57.
              DATA(t63) = abap_true.
              t54 = t63.
            CATCH cx_root INTO t56.
              DATA(t64) = VALUE abap_bool( ).
              DATA(t65) = t54.
              t64 = xsdbool( t65 = abap_false ).
              IF t64 = abap_true.
                DATA(t66) = t16.
                t66->close( ).
              ENDIF.
              RAISE EXCEPTION t56.
          ENDTRY.
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = t54.
          t67 = xsdbool( t68 = abap_false ).
          IF t67 = abap_true.
            DATA(t69) = t16.
            t69->close( ).
          ENDIF.
          DATA(t70) = t53.
          t52 = t70.
          t51 = t52.
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = VALUE abap_bool( ).
          DATA(t74) = abap_false.
          t73 = t74.
          DATA t75 TYPE REF TO cx_root.
          CLEAR t75.
          TRY.
              DATA(t76) = VALUE abap_bool( ).
              DATA(t77) = t51.
              IF t77 IS BOUND.
                IF t77->has = abap_true.
                  t76 = xsdbool( strlen( t77->value ) > 0 ).
                ENDIF.
              ENDIF.
              t72 = t76.
              DATA(t78) = abap_true.
              t73 = t78.
            CATCH cx_root INTO t75.
              DATA(t79) = VALUE abap_bool( ).
              DATA(t80) = t73.
              t79 = xsdbool( t80 = abap_false ).
              IF t79 = abap_true.
                DATA(t81) = t16.
                t81->close( ).
              ENDIF.
              RAISE EXCEPTION t75.
          ENDTRY.
          DATA(t82) = VALUE abap_bool( ).
          DATA(t83) = t73.
          t82 = xsdbool( t83 = abap_false ).
          IF t82 = abap_true.
            DATA(t84) = t16.
            t84->close( ).
          ENDIF.
          DATA(t85) = t72.
          t71 = t85.
          IF t71 = abap_true.
            DATA t86 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            CLEAR t86.
            DATA t87 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            CLEAR t87.
            DATA t88 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            CLEAR t88.
            DATA(t89) = VALUE abap_bool( ).
            DATA(t90) = abap_false.
            t89 = t90.
            DATA t91 TYPE REF TO cx_root.
            CLEAR t91.
            TRY.
                DATA t92 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
                CLEAR t92.
                DATA(t93) = abap_true.
                IF t93 = abap_true.
                  DATA t94 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
                  CLEAR t94.
                  DATA t95 TYPE REF TO zcl_lnt_fi_identifier.
                  CLEAR t95.
                  DATA(t96) = t46.
                  t95 = t96.
                  DATA(t97) = VALUE string( ).
                  DATA(t98) = VALUE string( ).
                  DATA(t99) = t51.
                  t98 = t99->value.
                  t97 = t98.
                  t94 = NEW zcl_lnt_shape_7ddeb4ab( i_id = t95 i_found = t97 ).
                  CREATE OBJECT t94->zlnt_view_ownkeys_b0e8086400eb.
                  t94->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t100.
                  IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t100 ).
                  ENDIF.
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
                  IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
                  ENDIF.
                  DATA(t104) = |found|.
                  DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t105.
                  IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
                  ENDIF.
                  t92 = t94.
                ELSE.
                  DATA t106 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
                  CLEAR t106.
                  t92 = t106.
                ENDIF.
                t88 = t92.
                DATA(t107) = abap_true.
                t89 = t107.
              CATCH cx_root INTO t91.
                DATA(t108) = VALUE abap_bool( ).
                DATA(t109) = t89.
                t108 = xsdbool( t109 = abap_false ).
                IF t108 = abap_true.
                  DATA(t110) = t16.
                  t110->close( ).
                ENDIF.
                RAISE EXCEPTION t91.
            ENDTRY.
            DATA(t111) = VALUE abap_bool( ).
            DATA(t112) = t89.
            t111 = xsdbool( t112 = abap_false ).
            IF t111 = abap_true.
              DATA(t113) = t16.
              t113->close( ).
            ENDIF.
            DATA(t114) = t88.
            t87 = t114.
            t86 = t87.
            DATA(t115) = t16.
            t115->close( ).
            DATA(t116) = t86.
            result = t116.
            RETURN.
          ENDIF.
        ENDDO.
      ENDDO.
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t119.
    DATA(t120) = t1.
    t119 = t120->get_events( ).
    t118 = t119.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    DATA(t122) = VALUE abap_bool( ).
    DATA(t123) = t118.
    t122 = xsdbool( t123 IS BOUND ).
    IF t122 = abap_true.
      DATA(t124) = t118.
      t121 = t124.
    ELSE.
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t125.
      CREATE OBJECT t125.
      t121 = t125.
    ENDIF.
    t117 = t121.
    DATA t126 TYPE REF TO zif_lnt_event_definition.
    CLEAR t126.
    DATA t127 TYPE REF TO object.
    CLEAR t127.
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
      DATA(t132) = t126.
      t131 = t132->get_parameters( ).
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
        DATA t141 TYPE REF TO zcl_lnt_typed_identifier.
        CLEAR t141.
        DATA(t142) = t133.
        t141 = t142.
        DATA t143 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t143.
        DATA(t144) = t141.
        t143 = t144->type_cba0.
        t140 = t143.
        t139 = me->contains_unknown( i_type_9913 = t140 ).
        t138 = t139.
        DATA(t145) = VALUE abap_bool( ).
        DATA(t146) = t138.
        IF t146 IS BOUND.
          IF t146->has = abap_true.
            t145 = xsdbool( strlen( t146->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t145 = abap_true.
          DATA t147 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
          CLEAR t147.
          DATA(t148) = abap_true.
          IF t148 = abap_true.
            DATA t149 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            CLEAR t149.
            DATA t150 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t150.
            DATA(t151) = t133.
            t150 = t151.
            DATA(t152) = VALUE string( ).
            DATA(t153) = VALUE string( ).
            DATA(t154) = t138.
            t153 = t154->value.
            t152 = t153.
            t149 = NEW zcl_lnt_shape_7ddeb4ab( i_id = t150 i_found = t152 ).
            CREATE OBJECT t149->zlnt_view_ownkeys_b0e8086400eb.
            t149->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t155.
            IF t149->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t149->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t155 ).
            ENDIF.
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
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
            ENDIF.
            DATA(t159) = |found|.
            DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t160.
            IF t149->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t149->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
            ENDIF.
            t147 = t149.
          ELSE.
            DATA t161 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
            CLEAR t161.
            t147 = t161.
          ENDIF.
          result = t147.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t162 TYPE REF TO zcl_lnt_shape_7ddeb4ab.
    CLEAR t162.
    result = t162.

  ENDMETHOD.

  METHOD contains_unknown.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = t1.
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_unknown_type ).
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA(t6) = VALUE string( ).
        DATA t7 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t7.
        DATA t8 TYPE REF TO zcl_lnt_unknown_type.
        CLEAR t8.
        DATA(t9) = t1.
        t8 ?= t9.
        t7 = t8.
        DATA(t10) = VALUE string( ).
        DATA(t11) = t7.
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
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t1.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t18.
        DATA(t19) = t1.
        t18 ?= t19.
        t17 = t18.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t20.
        DATA(t21) = t17.
        t20 = t21->components.
        t16 = t20.
        DATA t22 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t22.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
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
          DATA(t35) = t22.
          t34 = t35->zlnt_view_read_sr_455340cd1e80( ).
          DATA t36 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t36.
          DATA(t37) = t22.
          t36 = t37->zlnt_view_read_sr_455340cd1e80( ).
          t33 = t36.
          t32 = me->contains_unknown( i_type_9913 = t33 ).
          t31 = t32.
          DATA(t38) = VALUE abap_bool( ).
          DATA(t39) = t31.
          IF t39 IS BOUND.
            IF t39->has = abap_true.
              t38 = xsdbool( strlen( t39->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t38 = abap_true.
            DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t40.
            DATA(t41) = abap_true.
            IF t41 = abap_true.
              DATA(t42) = VALUE string( ).
              DATA(t43) = t31.
              t42 = t43->value.
              DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t44->has = abap_true.
              t44->value = t42.
              t40 = t44.
            ELSE.
              DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t45.
              t40 = t45.
            ENDIF.
            result = t40.
            RETURN.
          ENDIF.
        ENDDO.
      ELSE.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t1.
        t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          DATA t49 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t49.
          DATA t50 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t50.
          DATA t51 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t51.
          DATA(t52) = t1.
          t51 ?= t52.
          t50 = t51.
          DATA t53 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t53.
          DATA(t54) = t50.
          t53 = t54->row_type.
          t49 = t53.
          t48 = me->contains_unknown( i_type_9913 = t49 ).
          result = t48.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t55.
    result = t55.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_unknown_types.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_unk_typ_ts_unk_typ( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unknown_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_73fa( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unknown_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_73fa( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unknown_types_conf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_unknown_types_conf( view_source = t3 ).
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
