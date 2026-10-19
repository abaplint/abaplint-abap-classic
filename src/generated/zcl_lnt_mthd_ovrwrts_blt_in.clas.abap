* TS: src/rules/method_overwrites_builtin.ts:12:1 MethodOverwritesBuiltIn
CLASS zcl_lnt_mthd_ovrwrts_blt_in DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mthd_ovrwrt_blt_in_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_m_o_b_ts_mt_ov_bl_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_mthd_ovrwrt_blt_in_cnf.
    METHODS s_c_i_s_r_m_o_b_ts_mt_ov_bl_in IMPORTING i_conf TYPE REF TO zcl_lnt_mthd_ovrwrt_blt_in_cnf.
    METHODS r_p_i_s_r_m_o_b_ts_mt_ov_bl_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mthd_ovrwrts_blt_in IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_mthd_ovrwrt_blt_in_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
    t11 = t11 && |-us/abenbuilt_in_functions_overview.html\n\nhttps://github.com|.
    t11 = t11 && |/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#avoid-obs|.
    t11 = t11 && |curing-built-in-functions\n\nInterface method names are ignore|.
    t11 = t11 && |d|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Naming| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA(t31) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS matches.|.
    t31 = t31 && |\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD matches.\n  EN|.
    t31 = t31 && |DMETHOD.\nENDCLASS.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |method_overwrites_builtin| i_title = |Method name overwrites builtin function| i_short_description = |Checks Method names that overwrite builtin SAP functions| i_bad_example = t32 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t55 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_m_o_b_ts_mt_ov_bl_in.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_m_o_b_ts_mt_ov_bl_in.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_m_o_b_ts_mt_ov_bl_in.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->info->list_class_definitions( ).
    DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t19 = t12->methods.
      t4 = t4->concat( p0 = t19 ).
    ENDDO.
    DATA t22 TYPE REF TO zcl_lnt_info_method_definition.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t4->load( ).
      IF t24 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t4->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t28 TYPE REF TO zif_lnt_method_definition.
      CLEAR t28.
      DATA t31 TYPE string.
      DATA t32 TYPE string.
      t32 = t22->name.
      DATA(t34) = strlen( t32 ).
      t31 = t32.
      IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t31 TO UPPER CASE.
      ELSE.
        t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
      ENDIF.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t31.
      t28 = zcl_lnt_built_in=>search_builtin( i_name = t35 ).
      IF xsdbool( t28 IS BOUND ) = abap_true.
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA(t40) = |Method name "|.
        DATA t41 TYPE string.
        t41 = t22->name.
        DATA(t43) = strlen( t40 ).
        t39 = |{ t40 }{ t41 }|.
        DATA(t45) = strlen( t39 ).
        t38 = |{ t39 }{ |" overwrites built-in SAP function name| }|.
        DATA t47 TYPE REF TO zcl_lnt_issue.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
        t48 = t22->identifier.
        DATA(t51) = VALUE string( ).
        DATA t52 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t52.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA(t62) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
        t62 = t62 && |-us/abenbuilt_in_functions_overview.html\n\nhttps://github.com|.
        t62 = t62 && |/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#avoid-obs|.
        t62 = t62 && |curing-built-in-functions\n\nInterface method names are ignore|.
        t62 = t62 && |d|.
        DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t63->has = abap_true.
        t63->value = t62.
        t59 = t63.
        DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t65.
        DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t69.
        t69->load( ).
        APPEND |Naming| TO t69->items.
        t69->save( ).
        t69->load( ).
        APPEND |SingleFile| TO t69->items.
        t69->save( ).
        t69->load( ).
        APPEND |Styleguide| TO t69->items.
        t69->save( ).
        t65 = t69.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA(t82) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS matches.|.
        t82 = t82 && |\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD matches.\n  EN|.
        t82 = t82 && |DMETHOD.\nENDCLASS.|.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t82.
        t79 = t83.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        t52 = NEW zcl_lnt_irule_metadata( i_key = |method_overwrites_builtin| i_title = |Method name overwrites builtin function| i_short_description = |Checks Method names that overwrite builtin SAP functions| i_bad_example = t79 i_good_example = t85 i_extended_information = t59 i_tags = t65 i_pragma = t87 i_pseudo_comment = t89 ).
        CREATE OBJECT t52->zlnt_view_ownkeys_b0e8086400eb.
        t52->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t91 ).
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t93 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t94 ).
        ENDIF.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t95 ).
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t96 ).
        ENDIF.
        CREATE OBJECT t52->zlnt_json_ownkeys_70e5fd461788.
        t52->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t98 ).
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t100 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t102 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t104 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t106 ).
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t108 ).
        ENDIF.
        t51 = t52->key.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t110.
        t47 = zcl_lnt_issue=>at_identifier( i_identifier = t48 i_message_26cb = t38 i_key = t51 i_severity = t109 i_fix = t110 ).
        t2->load( ).
        APPEND t47 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_mthd_ovrwrt_blt_in_cnf( me->g_c_i_s_r_m_o_b_ts_mt_ov_bl_in( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_mthd_ovrwrt_blt_in_cnf( me->g_c_i_s_r_m_o_b_ts_mt_ov_bl_in( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mthd_ovrwrt_blt_in_cnf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_mthd_ovrwrt_blt_in_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_m_o_b_ts_mt_ov_bl_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_m_o_b_ts_mt_ov_bl_in( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1589_0e25c77401f3.
  ENDMETHOD.
ENDCLASS.
