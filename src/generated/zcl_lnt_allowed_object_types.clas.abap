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
    me->conf = NEW zcl_lnt_allwd_objct_typs_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |"allowed" is a list of 4 character R3TR object types, exampl|.
    t11 = t11 && |e: ["CLAS", "INTF"]|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |allowed_object_types| i_title = |Check allowed object types| i_short_description = |Restricts the set of allowed object types.| i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_sr_rl_al_ob_ty_ts_al_ob_ty.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD get_description.
    DATA t3 TYPE string.
    DATA(t4) = |Object type |.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ i_object_type }|.
    DATA(t8) = strlen( t3 ).
    result = |{ t3 }{ | not allowed| }|.

  ENDMETHOD.

  METHOD g_c_i_s_r_al_ob_ty_ts_al_ob_ty.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_al_ob_ty_ts_al_ob_ty.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t2 = CAST zcl_lnt_allwd_objct_typs_cnf( me->g_c_i_s_r_al_ob_ty_ts_al_ob_ty( ) )->zlnt_view_read_sr_cb2b67c39f6d( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6 = xsdbool( t2 IS INITIAL ).
    t5 = t6.
    IF t6 = abap_false.
      t2->load( ).
      t5 = xsdbool( lines( t2->items ) = 0 ).
    ENDIF.
    IF t5 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t18 TYPE string.
    t18 = t1->get_type( ).
    IF xsdbool( t2->indexof( p0 = t18 ) < 0 ) = abap_true.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA(t30) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t30->has = abap_true.
      t30->value = CONV f( 1 ).
      t27 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t30 ).
      DATA t32 TYPE REF TO zcl_lnt_issue.
      DATA t33 TYPE REF TO zif_lnt_file.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t34 = t1->get_files( ).
      DATA t36 TYPE REF TO object.
      t34->load( ).
      READ TABLE t34->items INDEX 1 INTO t36.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t37 ?= t36.
        DATA t38 TYPE REF TO object.
        t38 = t37->as_ref( ).
        t33 ?= t38.
      ELSE.
        t33 ?= t36.
      ENDIF.
      DATA t40 TYPE string.
      DATA t44 TYPE string.
      DATA(t45) = |Object type |.
      DATA(t47) = strlen( t45 ).
      t44 = |{ t45 }{ t18 }|.
      DATA(t49) = strlen( t44 ).
      t40 = |{ t44 }{ | not allowed| }|.
      DATA(t50) = VALUE string( ).
      DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t61) = |"allowed" is a list of 4 character R3TR object types, exampl|.
      t61 = t61 && |e: ["CLAS", "INTF"]|.
      DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t62->has = abap_true.
      t62->value = t61.
      t58 = t62.
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t68.
      t68->load( ).
      APPEND |SingleFile| TO t68->items.
      t68->save( ).
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t51 = NEW zcl_lnt_irule_metadata( i_key = |allowed_object_types| i_title = |Check allowed object types| i_short_description = |Restricts the set of allowed object types.| i_bad_example = t74 i_good_example = t76 i_extended_information = t58 i_tags = t68 i_pragma = t78 i_pseudo_comment = t80 ).
      CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
      t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t82 ).
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t83 ).
      ENDIF.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t84 ).
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t85 ).
      ENDIF.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t86 ).
      ENDIF.
      CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
      t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t88 ).
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t90 ).
      ENDIF.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t92 ).
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t94 ).
      ENDIF.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t96 ).
      ENDIF.
      t50 = t51->key.
      DATA t99 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t32 = zcl_lnt_issue=>at_position( i_file = t33 i_start = t27 i_message_26cb = t40 i_key = t50 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t99 ).
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t101.
      t101->load( ).
      APPEND t32 TO t101->items.
      t101->save( ).
      result = t101.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_al_ob_ty_ts_al_ob_ty( i_reg_d009 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_allwd_objct_typs_cnf( me->g_c_i_s_r_al_ob_ty_ts_al_ob_ty( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_allwd_objct_typs_cnf( me->g_c_i_s_r_al_ob_ty_ts_al_ob_ty( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_allwd_objct_typs_cnf.
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
        t2 = NEW zcl_lnt_allwd_objct_typs_cnf( view_source = t1 ).
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
