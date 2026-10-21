* TS: src/rules/tables_declared_locally.ts:12:1 TablesDeclaredLocally
CLASS zcl_lnt_tbls_dclrd_lclly DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_tbls_dclrd_lclly_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_tb_dc_lc_ts_tb_dc_lc RETURNING VALUE(result) TYPE REF TO zcl_lnt_tbls_dclrd_lclly_cnf.
    METHODS s_c_i_s_r_tb_dc_lc_ts_tb_dc_lc IMPORTING i_conf TYPE REF TO zcl_lnt_tbls_dclrd_lclly_cnf.
    METHODS r_p_i_s_r_tb_dc_lc_ts_tb_dc_lc IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tbls_dclrd_lclly IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_tbls_dclrd_lclly_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
    t11 = t11 && |-us/abaptables.html|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |FORM foo.\n  TABLES t100.\nENDFORM.|.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |TABLES t000.|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |tables_declared_locally| i_title = |Check for locally declared TABLES| i_short_description = |TABLES are always global, so declare them globally| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_tb_dc_lc_ts_tb_dc_lc.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_tb_dc_lc_ts_tb_dc_lc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_tb_dc_lc_ts_tb_dc_lc.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t4.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
    t23->load( ).
    APPEND t28 TO t23->items.
    t23->save( ).
    t18 = t20->find_all_structures_multi( i_type_9913 = t23 ).
    DATA t31 TYPE REF TO zcl_lnt_structure_node.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t18->load( ).
      IF t33 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t18->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_statement_node.
      DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d654_e863c0d09c0d.
      t36 = t31->find_first_statement( i_type_9913 = t39 ).
      IF xsdbool( t36 IS BOUND ) = abap_true.
        DATA t45 TYPE REF TO zcl_lnt_issue.
        CLEAR t45.
        DATA t47 TYPE REF TO zcl_lnt_statement_node.
        t47 = t36.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA(t61) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
        t61 = t61 && |-us/abaptables.html|.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t61.
        t58 = t62.
        DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t64.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t68.
        t68->load( ).
        APPEND |SingleFile| TO t68->items.
        t68->save( ).
        t64 = t68.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t78->has = abap_true.
        t78->value = |FORM foo.\n  TABLES t100.\nENDFORM.|.
        t74 = t78.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t84->has = abap_true.
        t84->value = |TABLES t000.|.
        t80 = t84.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t51 = NEW zcl_lnt_irule_metadata( i_key = |tables_declared_locally| i_title = |Check for locally declared TABLES| i_short_description = |TABLES are always global, so declare them globally| i_bad_example = t74 i_good_example = t80 i_extended_information = t58 i_tags = t64 i_pragma = t86 i_pseudo_comment = t88 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t90 ).
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t93 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t94 ).
        ENDIF.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t95 ).
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t96 ).
        ENDIF.
        CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
        t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t98 ).
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t100 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t102 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t104 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t106 ).
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t108 ).
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t110 ).
        ENDIF.
        t50 = t51->key.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t111 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t113 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t113.
        DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t114.
        t45 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t47 i_message_26cb = |Declare TABLES globaly| i_key = t50 i_severity = t111 i_fix = t113 i_alternative_fixes = t114 ).
        t2->load( ).
        APPEND t45 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_tbls_dclrd_lclly_cnf( me->g_c_i_s_r_tb_dc_lc_ts_tb_dc_lc( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_tbls_dclrd_lclly_cnf( me->g_c_i_s_r_tb_dc_lc_ts_tb_dc_lc( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_tbls_dclrd_lclly_cnf.
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
        t1 = NEW zcl_lnt_tbls_dclrd_lclly_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_tb_dc_lc_ts_tb_dc_lc( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_tb_dc_lc_ts_tb_dc_lc( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1730_8bf43f061f56.
  ENDMETHOD.
ENDCLASS.
