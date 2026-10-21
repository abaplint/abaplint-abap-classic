* TS: src/rules/unused_ddic.ts:11:1 UnusedDDIC
CLASS zcl_lnt_unused_ddic DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_unused_ddic_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_uns_ddc_ts_uns_ddc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_ddic.
    METHODS gt_cn_in_sr_rl_un_dd_ts_un_ddc RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_ddic_conf.
    METHODS st_cn_in_sr_rl_un_dd_ts_un_ddc IMPORTING i_conf TYPE REF TO zcl_lnt_unused_ddic_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_unused_ddic IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_unused_ddic_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |Objects checked: DOMA + DTEL + TABL + TTYP + VIEW|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t14.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |unused_ddic| i_title = |Unused DDIC| i_short_description = |Checks the usage of DDIC objects| i_bad_example = t19 i_good_example = t21 i_extended_information = t8 i_tags = t14 i_pragma = t23 i_pseudo_comment = t25 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t27 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t33 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t35 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_uns_ddc_ts_uns_ddc.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_dd_ts_un_ddc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_dd_ts_un_ddc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_domain ).
    t5 = t6.
    IF t6 = abap_false.
      t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_table_type ).
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_view ).
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_table ).
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_element ).
    ENDIF.
    IF t2 = abap_true.
      DATA t17 TYPE REF TO zif_lnt_object.
      DATA t18 TYPE REF TO zif_lnt_object.
      DATA t19 TYPE REF TO zif_lnt_union_864794cc.
      t19 ?= t1.
      t18 ?= t19.
      t17 = t18.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      t22 = t17->get_identifier( ).
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t28 = me->reg->get_ddic_references( )->list_where_used( i_obj_1ed0 = t17 ).
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      t34 = xsdbool( t22 IS BOUND ).
      t33 = t34.
      IF t34 = abap_true.
        t28->load( ).
        t33 = xsdbool( lines( t28->items ) = 0 ).
      ENDIF.
      IF t33 = abap_true.
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        t45 = t17->get_type( ).
        DATA(t48) = strlen( t45 ).
        t44 = |{ t45 }{ | | }|.
        DATA t49 TYPE string.
        t49 = t17->get_name( ).
        DATA(t51) = strlen( t44 ).
        t43 = |{ t44 }{ t49 }|.
        DATA(t53) = strlen( t43 ).
        t42 = |{ t43 }{ | not statically referenced| }|.
        DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t55.
        DATA t58 TYPE REF TO zcl_lnt_issue.
        DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
        t59 = t22.
        DATA(t62) = VALUE string( ).
        DATA t63 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t74->has = abap_true.
        t74->value = |Objects checked: DOMA + DTEL + TABL + TTYP + VIEW|.
        t70 = t74.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t76.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t63 = NEW zcl_lnt_irule_metadata( i_key = |unused_ddic| i_title = |Unused DDIC| i_short_description = |Checks the usage of DDIC objects| i_bad_example = t81 i_good_example = t83 i_extended_information = t70 i_tags = t76 i_pragma = t85 i_pseudo_comment = t87 ).
        CREATE OBJECT t63->zlnt_view_ownkeys_b0e8086400eb.
        t63->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t89 ).
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t63->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t63->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t93 ).
        ENDIF.
        CREATE OBJECT t63->zlnt_json_ownkeys_70e5fd461788.
        t63->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t95 ).
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t97 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t99 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t101 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t63->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t63->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t103 ).
        ENDIF.
        t62 = t63->key.
        DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t58 = zcl_lnt_issue=>at_identifier( i_identifier = t59 i_message_26cb = t42 i_key = t62 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t106 ).
        t55->load( ).
        APPEND t58 TO t55->items.
        t55->save( ).
        t32 = t55.
      ELSE.
        CREATE OBJECT t32.
      ENDIF.
      result = t32.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_fi_identifier.
    t2 = t1->get_identifier( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = me->reg->get_ddic_references( )->list_where_used( i_obj_1ed0 = t1 ).
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    t13 = xsdbool( t2 IS BOUND ).
    t12 = t13.
    IF t13 = abap_true.
      t8->load( ).
      t12 = xsdbool( lines( t8->items ) = 0 ).
    ENDIF.
    IF t12 = abap_true.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      DATA t22 TYPE string.
      DATA t23 TYPE string.
      t23 = t1->get_type( ).
      DATA(t26) = strlen( t23 ).
      t22 = |{ t23 }{ | | }|.
      DATA t27 TYPE string.
      t27 = t1->get_name( ).
      DATA(t29) = strlen( t22 ).
      t21 = |{ t22 }{ t27 }|.
      DATA(t31) = strlen( t21 ).
      t20 = |{ t21 }{ | not statically referenced| }|.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      DATA t36 TYPE REF TO zcl_lnt_issue.
      DATA t37 TYPE REF TO zcl_lnt_fi_identifier.
      t37 = t2.
      DATA(t40) = VALUE string( ).
      DATA t41 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t52->has = abap_true.
      t52->value = |Objects checked: DOMA + DTEL + TABL + TTYP + VIEW|.
      t48 = t52.
      DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t54.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t41 = NEW zcl_lnt_irule_metadata( i_key = |unused_ddic| i_title = |Unused DDIC| i_short_description = |Checks the usage of DDIC objects| i_bad_example = t59 i_good_example = t61 i_extended_information = t48 i_tags = t54 i_pragma = t63 i_pseudo_comment = t65 ).
      CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
      t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t67 ).
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t68 ).
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t69 ).
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t70 ).
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t71 ).
      ENDIF.
      CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
      t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t73 ).
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t75 ).
      ENDIF.
      DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t77 ).
      ENDIF.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t79 ).
      ENDIF.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t81 ).
      ENDIF.
      t40 = t41->key.
      DATA t84 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t36 = zcl_lnt_issue=>at_identifier( i_identifier = t37 i_message_26cb = t20 i_key = t40 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t84 ).
      t33->load( ).
      APPEND t36 TO t33->items.
      t33->save( ).
      result = t33.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_uns_ddc_ts_uns_ddc( i_reg_f149 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unused_ddic_conf( me->gt_cn_in_sr_rl_un_dd_ts_un_ddc( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_ddic_conf( me->gt_cn_in_sr_rl_un_dd_ts_un_ddc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_ddic_conf.
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
        t2 = NEW zcl_lnt_unused_ddic_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_dd_ts_un_ddc( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1752_0bcde0f0a53e.
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
