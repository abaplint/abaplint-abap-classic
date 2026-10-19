* TS: src/rules/cds_parser_error.ts:11:1 CDSParserError
CLASS zcl_lnt_cds_parser_error DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_parser_error_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_pr_er_ts_cd_pr_er RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_parser_error_conf.
    METHODS s_c_i_s_r_cd_pr_er_ts_cd_pr_er IMPORTING i_conf TYPE REF TO zcl_lnt_cds_parser_error_conf.
    METHODS i_i_sr_rl_cd_pr_er_ts_cd_pr_er IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_pr_er_ts_cd_pr_er IMPORTING i_object_19cd TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_parser_error IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_cds_parser_error_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |Parses CDS and issues parser errors|.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Syntax| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |cds_parser_error| i_title = |CDS Parser Error| i_short_description = |CDS parsing| i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t18 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t40 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t46 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cd_pr_er_ts_cd_pr_er.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_pr_er_ts_cd_pr_er.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_cd_pr_er_ts_cd_pr_er.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD r_i_sr_rl_cd_pr_er_ts_cd_pr_er.
    DATA(t1) = i_object_19cd.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    t6 = xsdbool( t1->get_type( ) = |DDLS| ).
    t5 = t6.
    IF t6 = abap_true.
      t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_data_definition ).
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      t13 = xsdbool( t1->get_type( ) = |DDLX| ).
      t12 = t13.
      IF t13 = abap_true.
        t12 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_cds_metadata_extension ).
      ENDIF.
      t4 = t12.
    ENDIF.
    IF t4 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t21 TYPE REF TO zif_lnt_union_ce65ceec.
      t21 ?= t1.
      t19 = t21->has_parser_error( ).
      DATA t23 TYPE REF TO zif_lnt_file.
      DATA t25 TYPE REF TO zif_lnt_union_ce65ceec.
      t25 ?= t1.
      t23 = t25->find_source_file( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t33) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t33->has = abap_true.
      t33->value = abap_true.
      t30 = t33.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      IF t19 IS BOUND.
        t35 = t19->has.
      ENDIF.
      IF t30 IS BOUND.
        t36 = t30->has.
      ENDIF.
      IF t35 = t36.
        IF t35 = abap_false.
          t28 = abap_true.
        ELSEIF t19->value = t30->value.
          t28 = abap_true.
        ENDIF.
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        t27 = xsdbool( t23 IS BOUND ).
      ENDIF.
      IF t27 = abap_true.
        DATA(t39) = VALUE string( ).
        DATA(t40) = VALUE string( ).
        IF xsdbool( strlen( t23->get_raw( ) ) = 0 ) = abap_true.
          t40 = |, empty file|.
        ELSE.
          t40 = ||.
        ENDIF.
        t39 = t40.
        DATA t51 TYPE string.
        DATA(t52) = |CDS Parser error|.
        DATA(t54) = strlen( t52 ).
        t51 = |{ t52 }{ t39 }|.
        DATA t56 TYPE REF TO zcl_lnt_issue.
        DATA t57 TYPE REF TO zif_lnt_file.
        t57 = t23.
        DATA(t61) = VALUE string( ).
        DATA t62 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t73->has = abap_true.
        t73->value = |Parses CDS and issues parser errors|.
        t69 = t73.
        DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t79.
        t79->load( ).
        APPEND |Syntax| TO t79->items.
        t79->save( ).
        t79->load( ).
        APPEND |SingleFile| TO t79->items.
        t79->save( ).
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t62 = NEW zcl_lnt_irule_metadata( i_key = |cds_parser_error| i_title = |CDS Parser Error| i_short_description = |CDS parsing| i_bad_example = t87 i_good_example = t89 i_extended_information = t69 i_tags = t79 i_pragma = t91 i_pseudo_comment = t93 ).
        CREATE OBJECT t62->zlnt_view_ownkeys_b0e8086400eb.
        t62->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t95 ).
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t96 ).
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t97 ).
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t98 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t99 ).
        ENDIF.
        CREATE OBJECT t62->zlnt_json_ownkeys_70e5fd461788.
        t62->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t101 ).
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t103 ).
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t105 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t107 ).
        ENDIF.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t109 ).
        ENDIF.
        t61 = t62->key.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t110 = CAST zcl_lnt_cds_parser_error_conf( me->g_c_i_s_r_cd_pr_er_ts_cd_pr_er( ) )->zlnt_view_read_sr_15c06369f827( ).
        t56 = zcl_lnt_issue=>at_row( i_file = t57 i_row = CONV f( 1 ) i_message_26cb = t51 i_key = t61 i_severity = t110 ).
        t2->load( ).
        APPEND t56 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cds_parser_error_conf( me->g_c_i_s_r_cd_pr_er_ts_cd_pr_er( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_parser_error_conf( me->g_c_i_s_r_cd_pr_er_ts_cd_pr_er( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_parser_error_conf.
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
        t2 = NEW zcl_lnt_cds_parser_error_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_pr_er_ts_cd_pr_er( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_cd_pr_er_ts_cd_pr_er( i_reg_d009 = t3 ).

  ENDMETHOD.

  METHOD run.
    DATA(t3) = i_obj_1ed0.
    result = me->r_i_sr_rl_cd_pr_er_ts_cd_pr_er( i_object_19cd = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1428_d470d509fb8d.
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
