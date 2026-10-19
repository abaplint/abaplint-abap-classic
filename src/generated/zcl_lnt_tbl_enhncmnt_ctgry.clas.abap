* TS: src/rules/tabl_enhancement_category.ts:12:1 TABLEnhancementCategory
CLASS zcl_lnt_tbl_enhncmnt_ctgry DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_tbl_enhncmnt_ctgry_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_tb_en_ct_ts_tb_en_ct RETURNING VALUE(result) TYPE REF TO zcl_lnt_tbl_enhncmnt_ctgry_cnf.
    METHODS s_c_i_s_r_tb_en_ct_ts_tb_en_ct IMPORTING i_conf TYPE REF TO zcl_lnt_tbl_enhncmnt_ctgry_cnf.
    METHODS i_i_sr_rl_tb_en_ct_ts_tb_en_ct IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_tbl_enhncmnt_ctgry.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tbl_enhncmnt_ctgry IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_tbl_enhncmnt_ctgry_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |tabl_enhancement_category|.
    DATA t4 TYPE string.
    t4 = |TABL enhancement category must be set|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that tables do not have the enhancement category 'not|.
    t7 = t7 && | classified'.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |SAP note 3063227 changes the default to 'Cannot be enhanced'|.
    t11 = t11 && |.\n\nYou may use standard report RS_DDIC_CLASSIFICATION_FINAL |.
    t11 = t11 && |for adjustment.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t17.
    t14 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t19 i_good_example = t21 i_extended_information = t8 i_tags = t14 i_pragma = t23 i_pseudo_comment = t25 ).
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
    DATA(t38) = |extendedInformation|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA(t3) = |TABL enhancement category not classified in |.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ i_name }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_tb_en_ct_ts_tb_en_ct.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_tb_en_ct_ts_tb_en_ct.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_tb_en_ct_ts_tb_en_ct.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_table ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zcl_lnt_table.
    DATA t9 TYPE REF TO zcl_lnt_table.
    DATA t11 TYPE REF TO object.
    t11 = t1.
    t9 ?= t11.
    t8 = t9.
    DATA(t12) = VALUE string( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t15 = t8->parsed_data.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t13 = xsdbool( t15 IS INITIAL ).
    IF t13 = abap_true.
      t8->parse_xml( ).
    ENDIF.
    DATA(t22) = VALUE string( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    DATA t27 TYPE REF TO zcl_lnt_shape_b90fc0d5.
    t27 = t8->parsed_data.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = xsdbool( t26 IS INITIAL ).
    IF t30 = abap_true.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t34 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t34 = t26.
      t33 = t34->enhancement_category.
      t29 = t33.
    ENDIF.
    t24 = t29.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = VALUE abap_bool( ).
    IF t24 IS INITIAL.
      t38 = abap_true.
    ELSEIF t24->has = abap_false.
      t38 = abap_true.
    ENDIF.
    t23 = t38.
    IF t23 = abap_true.
      t22 = |0|.
    ELSE.
      DATA t41 TYPE string.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t43 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      DATA t44 TYPE REF TO zcl_lnt_shape_b90fc0d5.
      t44 = t8->parsed_data.
      t43 = t44.
      t42 = t43->enhancement_category.
      t41 = t42->value.
      t22 = t41.
    ENDIF.
    t12 = t22.
    t7 = t12.
    DATA(t46) = |0|.
    t6 = xsdbool( t7 = t46 ).
    IF t6 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_position.
      DATA(t49) = CONV f( 1 ).
      DATA(t50) = CONV f( 1 ).
      DATA(t51) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t51->has = abap_true.
      t51->value = t50.
      t48 = NEW zcl_lnt_position( i_row = t49 i_col = t51 ).
      DATA t53 TYPE REF TO zcl_lnt_issue.
      DATA t54 TYPE REF TO zif_lnt_file.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE REF TO zcl_lnt_abstract_object.
      DATA t57 TYPE REF TO zcl_lnt_table.
      DATA t59 TYPE REF TO object.
      t59 = t1.
      t57 ?= t59.
      t56 = t57.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t60 = t56->files.
      t55 = t60.
      DATA t62 TYPE REF TO object.
      t55->load( ).
      READ TABLE t55->items INDEX 1 INTO t62.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t63 ?= t62.
        DATA t64 TYPE REF TO object.
        t64 = t63->as_ref( ).
        t54 ?= t64.
      ELSE.
        t54 ?= t62.
      ENDIF.
      DATA t66 TYPE string.
      DATA t69 TYPE REF TO zcl_lnt_abstract_object.
      DATA t70 TYPE REF TO zcl_lnt_table.
      DATA t72 TYPE REF TO object.
      t72 = t1.
      t70 ?= t72.
      t69 = t70.
      DATA t73 TYPE string.
      t73 = t69->name.
      DATA t75 TYPE string.
      DATA(t76) = |TABL enhancement category not classified in |.
      DATA(t78) = strlen( t76 ).
      t75 = |{ t76 }{ t73 }|.
      t66 = t75.
      DATA(t79) = VALUE string( ).
      DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t81 TYPE string.
      t81 = |tabl_enhancement_category|.
      DATA t83 TYPE string.
      t83 = |TABL enhancement category must be set|.
      DATA t85 TYPE string.
      DATA(t86) = |Checks that tables do not have the enhancement category 'not|.
      t86 = t86 && | classified'.|.
      t85 = t86.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t90) = |SAP note 3063227 changes the default to 'Cannot be enhanced'|.
      t90 = t90 && |.\n\nYou may use standard report RS_DDIC_CLASSIFICATION_FINAL |.
      t90 = t90 && |for adjustment.|.
      DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t91->has = abap_true.
      t91->value = t90.
      t87 = t91.
      DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t96.
      t93 = t96.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t80 = NEW zcl_lnt_irule_metadata( i_key = t81 i_title = t83 i_short_description = t85 i_bad_example = t98 i_good_example = t100 i_extended_information = t87 i_tags = t93 i_pragma = t102 i_pseudo_comment = t104 ).
      CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
      t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t106 ).
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t107 ).
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t108 ).
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t109 ).
      ENDIF.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t110 ).
      ENDIF.
      CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
      t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t111) = |key|.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
      DATA(t113) = |title|.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
      ENDIF.
      DATA(t115) = |shortDescription|.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
      ENDIF.
      DATA(t117) = |extendedInformation|.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
      ENDIF.
      DATA(t119) = |tags|.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
      ENDIF.
      t79 = t80->key.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t121 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t123 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t53 = zcl_lnt_issue=>at_position( i_file = t54 i_start = t48 i_message_26cb = t66 i_key = t79 i_severity = t121 i_fix = t123 ).
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t126.
      t125 = t126.
      t125->load( ).
      APPEND t53 TO t125->items.
      t125->save( ).
      result = t125.
      RETURN.
    ENDIF.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t130.
    result = t130.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_tbl_enhncmnt_ctgry_cnf( me->g_c_i_s_r_tb_en_ct_ts_tb_en_ct( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_tbl_enhncmnt_ctgry_cnf( me->g_c_i_s_r_tb_en_ct_ts_tb_en_ct( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_tbl_enhncmnt_ctgry_cnf.
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
        t2 = NEW zcl_lnt_tbl_enhncmnt_ctgry_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_tb_en_ct_ts_tb_en_ct( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_tbl_enhncmnt_ctgry.
    DATA(t3) = i_reg_f149.
    t2 = me->i_i_sr_rl_tb_en_ct_ts_tb_en_ct( i_reg_d009 = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1728_920c1ac79cd3.
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
