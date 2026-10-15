* TS: src/rules/allowed_object_types.ts:15:1 AllowedObjectTypes
CLASS zcl_lnt_allowed_object_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_allwd_objct_typs_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_al_ob_ty_ts_al_ob_ty IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_allowed_object_types.
    METHODS get_description IMPORTING i_object_type TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_al_ob_ty_ts_al_ob_ty RETURNING VALUE(result) TYPE REF TO zcl_lnt_allwd_objct_typs_cnf.
    METHODS s_c_i_s_r_al_ob_ty_ts_al_ob_ty IMPORTING i_conf TYPE REF TO zcl_lnt_allwd_objct_typs_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_allowed_object_types IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_allwd_objct_typs_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |allowed_object_types|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check allowed object types|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Restricts the set of allowed object types.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |"allowed" is a list of 4 character R3TR object types, exampl|.
      t11 = t11 && |e: ["CLAS", "INTF"]|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_sr_rl_al_ob_ty_ts_al_ob_ty.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_object_type.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = |Object type |.
    DATA(t5) = t1.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ t5 }|.
    DATA(t7) = | not allowed|.
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t7 }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_al_ob_ty_ts_al_ob_ty.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_al_ob_ty_ts_al_ob_ty.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = CAST zcl_lnt_allwd_objct_typs_cnf( me->g_c_i_s_r_al_ob_ty_ts_al_ob_ty( ) ).
    t3 = t4->zlnt_view_read_sr_cb2b67c39f6d( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    t5 = t6.
    IF t6 = abap_false.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE i.
      DATA(t15) = t2.
      t15->load( ).
      t14 = lines( t15->items ).
      DATA(t16) = 0.
      t13 = xsdbool( t14 = t16 ).
      t5 = t13.
    ENDIF.
    IF t5 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE string.
    DATA t19 TYPE string.
    DATA(t20) = t1.
    t19 = t20->get_type( ).
    t18 = t19.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE i.
    DATA(t23) = t2.
    DATA(t24) = t18.
    t22 = t23->indexof( p0 = t24 ).
    DATA(t25) = 0.
    t21 = xsdbool( t22 < t25 ).
    IF t21 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA(t28) = CONV f( 1 ).
      DATA(t29) = CONV f( 1 ).
      DATA(t30) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = NEW zcl_lnt_position( i_row = t28 i_col = t30 ).
      t26 = t27.
      DATA t31 TYPE REF TO zcl_lnt_issue.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_issue.
      CLEAR t32.
      DATA t33 TYPE REF TO zif_lnt_file.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t35) = t1.
      t34 = t35->get_files( ).
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      t34->load( ).
      CLEAR t36.
      READ TABLE t34->items INDEX 1 INTO t36.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      CLEAR t33.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t37 ?= t36.
        DATA t38 TYPE REF TO object.
        t38 = t37->as_ref( ).
        t33 ?= t38.
      ELSE.
        t33 ?= t36.
      ENDIF.
      DATA(t39) = t26.
      DATA t40 TYPE string.
      DATA t41 TYPE string.
      DATA(t42) = t18.
      t41 = t42.
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA(t45) = |Object type |.
      DATA(t46) = t41.
      DATA(t47) = strlen( t45 ).
      t44 = |{ t45 }{ t46 }|.
      DATA(t48) = | not allowed|.
      DATA(t49) = strlen( t44 ).
      t43 = |{ t44 }{ t48 }|.
      t40 = t43.
      DATA(t50) = VALUE string( ).
      DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t51.
      DATA t52 TYPE string.
      DATA(t53) = |allowed_object_types|.
      t52 = t53.
      DATA t54 TYPE string.
      DATA(t55) = |Check allowed object types|.
      t54 = t55.
      DATA t56 TYPE string.
      DATA(t57) = |Restricts the set of allowed object types.|.
      t56 = t57.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t59.
      DATA(t60) = abap_true.
      IF t60 = abap_true.
        DATA(t61) = |"allowed" is a list of 4 character R3TR object types, exampl|.
        t61 = t61 && |e: ["CLAS", "INTF"]|.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t61.
        t59 = t62.
      ELSE.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        t59 = t63.
      ENDIF.
      t58 = t59.
      DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t64.
      DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t69.
        t68 = t69.
        DATA(t70) = t68.
        DATA(t71) = |SingleFile|.
        t70->load( ).
        APPEND t71 TO t70->items.
        t70->save( ).
        DATA(t72) = t68.
        t67 = t72.
        t65 = t67.
      ELSE.
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t73.
        t65 = t73.
      ENDIF.
      t64 = t65.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      t74 = t75.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t77.
      t76 = t77.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t79.
      t78 = t79.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t81.
      t80 = t81.
      t51 = NEW zcl_lnt_irule_metadata( i_key = t52 i_title = t54 i_short_description = t56 i_bad_example = t74 i_good_example = t76 i_extended_information = t58 i_tags = t64 i_pragma = t78 i_pseudo_comment = t80 ).
      CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
      t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t82 ).
      ENDIF.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t83 ).
      ENDIF.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t84 ).
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t85 ).
      ENDIF.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t86 ).
      ENDIF.
      CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
      t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t87) = |key|.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
      ENDIF.
      DATA(t89) = |title|.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
      ENDIF.
      DATA(t91) = |shortDescription|.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
      ENDIF.
      DATA(t93) = |extendedInformation|.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
      ENDIF.
      DATA(t95) = |tags|.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
      ENDIF.
      t50 = t51->key.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t98) = me->conf.
      t97 = t98->zlnt_view_read_sr_15c06369f827( ).
      DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t99.
      t32 = zcl_lnt_issue=>at_position( i_file = t33 i_start = t39 i_message_26cb = t40 i_key = t50 i_severity = t97 i_fix = t99 ).
      t31 = t32.
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t102.
      t101 = t102.
      DATA(t103) = t101.
      DATA(t104) = t31.
      t103->load( ).
      APPEND t104 TO t103->items.
      t103->save( ).
      DATA(t105) = t101.
      t100 = t105.
      result = t100.
      RETURN.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    result = t106.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_allowed_object_types.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_al_ob_ty_ts_al_ob_ty( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_allwd_objct_typs_cnf( me->g_c_i_s_r_al_ob_ty_ts_al_ob_ty( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_allwd_objct_typs_cnf( me->g_c_i_s_r_al_ob_ty_ts_al_ob_ty( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_allwd_objct_typs_cnf.
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
        t2 = NEW zcl_lnt_allwd_objct_typs_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_al_ob_ty_ts_al_ob_ty( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1402_99f6446aaf74.
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
