* TS: src/rules/modify_only_own_db_tables.ts:18:1 ModifyOnlyOwnDBTables
CLASS zcl_lnt_mdfy_only_own_db_tbls DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_mdf_onl_own_db_tbl_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_m_o_o_d_t_t_m_o_o_d RETURNING VALUE(result) TYPE REF TO zcl_lnt_mdf_onl_own_db_tbl_cnf.
    METHODS s_c_i_s_r_m_o_o_d_t_t_m_o_o_d IMPORTING i_conf TYPE REF TO zcl_lnt_mdf_onl_own_db_tbl_cnf.
    METHODS i_i_s_r_m_o_o_d_t_t_m_o_o_d_tb IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_mdfy_only_own_db_tbls.
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
CLASS zcl_lnt_mdfy_only_own_db_tbls IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_mdf_onl_own_db_tbl_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |DELETE FROM mara WHERE matnr = '123456'.|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = |DELETE FROM yflight WHERE carrid = 'LH'.|.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |https://docs.abapopenchecks.org/checks/26/|.
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t30.
    t30->load( ).
    APPEND |Security| TO t30->items.
    t30->save( ).
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |modify_only_own_db_tables| i_title = |Modify only own DB tables| i_short_description = |Modify only own DB tables| i_bad_example = t8 i_good_example = t14 i_extended_information = t20 i_tags = t30 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_m_o_o_d_t_t_m_o_o_d.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_m_o_o_d_t_t_m_o_o_d.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_s_r_m_o_o_d_t_t_m_o_o_d_tb.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abap_object.
    t12 ?= t1.
    t10 = t12->parsed.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    DATA t18 TYPE REF TO object.
    DATA(t19) = VALUE i( ).
    DO.
      t10->load( ).
      IF t19 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t10->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA t26 TYPE REF TO zcl_lnt_structure_node.
      t26 = t17->structure.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF xsdbool( t26 IS INITIAL ) = abap_true.
        CREATE OBJECT result.
        RETURN.
      ENDIF.
      DATA t36 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t36 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) )->zlnt_view_read_sr_51808c27f6e2( ) flags = |i|.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t41 = t17->statements.
      DATA t46 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t46.
      DATA t47 TYPE REF TO object.
      CLEAR t47.
      DATA(t48) = VALUE i( ).
      DO.
        t41->load( ).
        IF t48 >= lines( t41->items ).
          EXIT.
        ENDIF.
        CLEAR t47.
        READ TABLE t41->items INDEX t48 + 1 INTO t47.
        t48 = t48 + 1.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        CLEAR t46.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t49 ?= t47.
          DATA t50 TYPE REF TO object.
          t50 = t49->as_ref( ).
          t46 ?= t50.
        ELSE.
          t46 ?= t47.
        ENDIF.
        DATA t51 TYPE REF TO zif_lnt_statement.
        t51 = t46->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        DATA t56 TYPE abap_bool.
        DATA t57 TYPE abap_bool.
        t57 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_delete_database ).
        t56 = t57.
        IF t57 = abap_false.
          t56 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_update_database ).
        ENDIF.
        t55 = t56.
        IF t56 = abap_false.
          t55 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_insert_database ).
        ENDIF.
        t54 = t55.
        IF t55 = abap_false.
          t54 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_st_modify_database ).
        ENDIF.
        IF t54 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_expression_node.
          DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
          t65 = t46->find_first_expression( i_type_9913 = t68 ).
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          IF xsdbool( t65 IS INITIAL ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t77 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t77.
          DATA t78 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t78.
          DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t79.
          DATA t80 TYPE REF TO zif_lnt_node.
          CLEAR t80.
          DATA t81 TYPE REF TO zcl_lnt_abstract_node.
          t81 = t65.
          DATA t86 TYPE REF TO zif_lnt_node.
          CLEAR t86.
          DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t87 = t81->children.
          DATA t89 TYPE REF TO object.
          CLEAR t89.
          t87->load( ).
          CLEAR t89.
          READ TABLE t87->items INDEX 1 INTO t89.
          DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t90.
          CLEAR t86.
          IF t89 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t90 ?= t89.
            DATA t91 TYPE REF TO object.
            t91 = t90->as_ref( ).
            t86 ?= t91.
          ELSE.
            t86 ?= t89.
          ENDIF.
          t80 = t86.
          t79 ?= t80.
          t78 = t79.
          DATA t93 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t93.
          IF xsdbool( t78 IS INITIAL ) = abap_true.
            CLEAR t93.
          ELSE.
            DATA t97 TYPE REF TO zif_lnt_union_daf022d4.
            DATA t101 TYPE REF TO object.
            t101 = t78->get_db65( ).
            t97 ?= t101.
            t93 = t97.
          ENDIF.
          t77 = t93.
          IF xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_st_dynamic ) = abap_true.
            DATA t103 TYPE abap_bool.
            t103 = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) )->zlnt_view_read_sr_8ae9d43d290d( ).
            IF xsdbool( t103 = abap_true ) = abap_true.
              DATA t107 TYPE REF TO zcl_lnt_issue.
              CLEAR t107.
              DATA(t110) = VALUE string( ).
              DATA t111 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t118.
              DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t122->has = abap_true.
              t122->value = |DELETE FROM mara WHERE matnr = '123456'.|.
              t118 = t122.
              DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t124.
              DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t128->has = abap_true.
              t128->value = |DELETE FROM yflight WHERE carrid = 'LH'.|.
              t124 = t128.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t130.
              DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t134->has = abap_true.
              t134->value = |https://docs.abapopenchecks.org/checks/26/|.
              t130 = t134.
              DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t136.
              DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t140.
              t140->load( ).
              APPEND |Security| TO t140->items.
              t140->save( ).
              t136 = t140.
              DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t146.
              DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t148.
              t111 = NEW zcl_lnt_irule_metadata( i_key = |modify_only_own_db_tables| i_title = |Modify only own DB tables| i_short_description = |Modify only own DB tables| i_bad_example = t118 i_good_example = t124 i_extended_information = t130 i_tags = t136 i_pragma = t146 i_pseudo_comment = t148 ).
              CREATE OBJECT t111->zlnt_view_ownkeys_b0e8086400eb.
              t111->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t150.
              t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t150 ).
              DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t151.
              IF t111->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t151 ).
              ENDIF.
              DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t152.
              IF t111->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t152 ).
              ENDIF.
              DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t153.
              IF t111->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t153 ).
              ENDIF.
              DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t154.
              IF t111->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t154 ).
              ENDIF.
              DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t155.
              IF t111->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t155 ).
              ENDIF.
              DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t156.
              IF t111->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t156 ).
              ENDIF.
              CREATE OBJECT t111->zlnt_json_ownkeys_70e5fd461788.
              t111->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t158.
              t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t158 ).
              DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t160.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t160 ).
              ENDIF.
              DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t162.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t162 ).
              ENDIF.
              DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t164.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t164 ).
              ENDIF.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t166.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t166 ).
              ENDIF.
              DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t168.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t168 ).
              ENDIF.
              DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t170.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t170 ).
              ENDIF.
              t110 = t111->title.
              DATA(t171) = VALUE string( ).
              DATA t172 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t179.
              DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t183->has = abap_true.
              t183->value = |DELETE FROM mara WHERE matnr = '123456'.|.
              t179 = t183.
              DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t185.
              DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t189->has = abap_true.
              t189->value = |DELETE FROM yflight WHERE carrid = 'LH'.|.
              t185 = t189.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t195->has = abap_true.
              t195->value = |https://docs.abapopenchecks.org/checks/26/|.
              t191 = t195.
              DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t197.
              DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t201.
              t201->load( ).
              APPEND |Security| TO t201->items.
              t201->save( ).
              t197 = t201.
              DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t207.
              DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t209.
              t172 = NEW zcl_lnt_irule_metadata( i_key = |modify_only_own_db_tables| i_title = |Modify only own DB tables| i_short_description = |Modify only own DB tables| i_bad_example = t179 i_good_example = t185 i_extended_information = t191 i_tags = t197 i_pragma = t207 i_pseudo_comment = t209 ).
              CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
              t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t211.
              t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t211 ).
              DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t212.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t212 ).
              ENDIF.
              DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t213.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t213 ).
              ENDIF.
              DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t214.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t214 ).
              ENDIF.
              DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t215.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t215 ).
              ENDIF.
              DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t216.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t216 ).
              ENDIF.
              DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t217.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t217 ).
              ENDIF.
              CREATE OBJECT t172->zlnt_json_ownkeys_70e5fd461788.
              t172->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t219.
              t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t219 ).
              DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t221.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t221 ).
              ENDIF.
              DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t223.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t223 ).
              ENDIF.
              DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t225.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t225 ).
              ENDIF.
              DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t227.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t227 ).
              ENDIF.
              DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t229.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t229 ).
              ENDIF.
              DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t231.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t231 ).
              ENDIF.
              t171 = t172->key.
              DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t232 = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) )->zlnt_view_read_sr_15c06369f827( ).
              DATA t234 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t234.
              DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t235.
              t107 = zcl_lnt_issue=>at_statement( i_file = t17 i_statement = t46 i_message_26cb = t110 i_key = t171 i_severity = t232 i_fix = t234 i_alternative_fixes = t235 ).
              t8->load( ).
              APPEND t107 TO t8->items.
              t8->save( ).
            ENDIF.
            CONTINUE.
          ENDIF.
          DATA t237 TYPE string.
          DATA t238 TYPE string.
          t238 = t65->concat_tokens( ).
          DATA(t241) = strlen( t238 ).
          t237 = t238.
          IF t237 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t237 TO UPPER CASE.
          ELSE.
            t237 = zlnt_runtime_uppe_91169605024d=>full( t237 ).
          ENDIF.
          IF xsdbool( t36->test( p0 = t237 ) = abap_false ) = abap_true.
            DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t250.
            IF xsdbool( t6 IS INITIAL ) = abap_true.
              DATA(t259) = me->reg.
              DATA t260 TYPE REF TO zcl_lnt_abap_object.
              t260 ?= t1.
              t6 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t259 i_object_19cd = t260 )->run( )->zlnt_view_read_sr_b6b1d9e0c93e( ).
            ENDIF.
            DATA t264 TYPE REF TO zcl_lnt_position.
            t264 = t65->get_first_token( )->start.
            DATA t272 TYPE REF TO zif_lnt_spaghetti_scope_node.
            DATA t274 TYPE REF TO zif_lnt_spaghetti_scope.
            t274 = t6.
            DATA t276 TYPE REF TO zcl_lnt_position.
            CLEAR t276.
            t276 = t264.
            DATA t283 TYPE REF TO zcl_lnt_abstract_file.
            t283 = t17.
            DATA t285 TYPE string.
            t285 = t283->filename.
            DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t287->has = abap_true.
            t287->value = t285.
            t272 = t274->lookup_position( i_p = t276 i_filename = t287 ).
            DATA t289 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t289.
            DATA t291 TYPE REF TO zif_lnt_spaghetti_scope_node.
            t291 = t272.
            DATA t293 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t293.
            IF xsdbool( t291 IS INITIAL ) = abap_true.
              CLEAR t293.
            ELSE.
              DATA t297 TYPE abap_bool.
              t297 = t291->find_table_void_reference( i_pos = t264 ).
              DATA(t301) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t301->has = abap_true.
              t301->value = t297.
              t293 = t301.
            ENDIF.
            t289 = t293.
            DATA(t302) = VALUE abap_bool( ).
            IF t289 IS BOUND.
              IF t289->has = abap_true.
                t302 = xsdbool( t289->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
            IF t302 = abap_true.
              DATA t305 TYPE REF TO zcl_lnt_issue.
              CLEAR t305.
              DATA(t308) = VALUE string( ).
              DATA t309 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t316.
              DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t320->has = abap_true.
              t320->value = |DELETE FROM mara WHERE matnr = '123456'.|.
              t316 = t320.
              DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t322.
              DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t326->has = abap_true.
              t326->value = |DELETE FROM yflight WHERE carrid = 'LH'.|.
              t322 = t326.
              DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t328.
              DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t332->has = abap_true.
              t332->value = |https://docs.abapopenchecks.org/checks/26/|.
              t328 = t332.
              DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t334.
              DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t338.
              t338->load( ).
              APPEND |Security| TO t338->items.
              t338->save( ).
              t334 = t338.
              DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t344.
              DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t346.
              t309 = NEW zcl_lnt_irule_metadata( i_key = |modify_only_own_db_tables| i_title = |Modify only own DB tables| i_short_description = |Modify only own DB tables| i_bad_example = t316 i_good_example = t322 i_extended_information = t328 i_tags = t334 i_pragma = t344 i_pseudo_comment = t346 ).
              CREATE OBJECT t309->zlnt_view_ownkeys_b0e8086400eb.
              t309->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t348.
              t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t348 ).
              DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t349.
              IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t349 ).
              ENDIF.
              DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t350.
              IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t350 ).
              ENDIF.
              DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t351.
              IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t351 ).
              ENDIF.
              DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t352.
              IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t352 ).
              ENDIF.
              DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t353.
              IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t353 ).
              ENDIF.
              DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t354.
              IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t354 ).
              ENDIF.
              CREATE OBJECT t309->zlnt_json_ownkeys_70e5fd461788.
              t309->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t356.
              t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t356 ).
              DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t358.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t358 ).
              ENDIF.
              DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t360.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t360 ).
              ENDIF.
              DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t362.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t362 ).
              ENDIF.
              DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t364.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t364 ).
              ENDIF.
              DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t366.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t366 ).
              ENDIF.
              DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t368.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t368 ).
              ENDIF.
              t308 = t309->title.
              DATA(t369) = VALUE string( ).
              DATA t370 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t377.
              DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t381->has = abap_true.
              t381->value = |DELETE FROM mara WHERE matnr = '123456'.|.
              t377 = t381.
              DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t383.
              DATA(t387) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t387->has = abap_true.
              t387->value = |DELETE FROM yflight WHERE carrid = 'LH'.|.
              t383 = t387.
              DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t389.
              DATA(t393) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t393->has = abap_true.
              t393->value = |https://docs.abapopenchecks.org/checks/26/|.
              t389 = t393.
              DATA t395 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t395.
              DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t399.
              t399->load( ).
              APPEND |Security| TO t399->items.
              t399->save( ).
              t395 = t399.
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t405.
              DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t407.
              t370 = NEW zcl_lnt_irule_metadata( i_key = |modify_only_own_db_tables| i_title = |Modify only own DB tables| i_short_description = |Modify only own DB tables| i_bad_example = t377 i_good_example = t383 i_extended_information = t389 i_tags = t395 i_pragma = t405 i_pseudo_comment = t407 ).
              CREATE OBJECT t370->zlnt_view_ownkeys_b0e8086400eb.
              t370->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t409.
              t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t409 ).
              DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t410.
              IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t410 ).
              ENDIF.
              DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t411.
              IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t411 ).
              ENDIF.
              DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t412.
              IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t412 ).
              ENDIF.
              DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t413.
              IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t413 ).
              ENDIF.
              DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t414.
              IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t414 ).
              ENDIF.
              DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t415.
              IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t415 ).
              ENDIF.
              CREATE OBJECT t370->zlnt_json_ownkeys_70e5fd461788.
              t370->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t417.
              t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t417 ).
              DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t419.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t419 ).
              ENDIF.
              DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t421.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t421 ).
              ENDIF.
              DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t423.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t423 ).
              ENDIF.
              DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t425.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t425 ).
              ENDIF.
              DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t427.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t427 ).
              ENDIF.
              DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t429.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t429 ).
              ENDIF.
              t369 = t370->key.
              DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t430 = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) )->zlnt_view_read_sr_15c06369f827( ).
              DATA t432 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t432.
              DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t433.
              t305 = zcl_lnt_issue=>at_statement( i_file = t17 i_statement = t46 i_message_26cb = t308 i_key = t369 i_severity = t430 i_fix = t432 i_alternative_fixes = t433 ).
              t8->load( ).
              APPEND t305 TO t8->items.
              t8->save( ).
            ENDIF.
            DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t434.
            DATA t436 TYPE REF TO zif_lnt_spaghetti_scope_node.
            t436 = t272.
            DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t438.
            IF xsdbool( t436 IS INITIAL ) = abap_true.
              CLEAR t438.
            ELSE.
              t438 = t436->find_table_reference( i_pos = t264 ).
            ENDIF.
            t434 = t438.
            DATA(t446) = VALUE abap_bool( ).
            IF t434 IS BOUND.
              IF t434->has = abap_true.
                t446 = xsdbool( strlen( t434->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t446 = abap_true.
              DATA t449 TYPE REF TO zcl_lnt_issue.
              CLEAR t449.
              DATA(t452) = VALUE string( ).
              DATA t453 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t460.
              DATA(t464) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t464->has = abap_true.
              t464->value = |DELETE FROM mara WHERE matnr = '123456'.|.
              t460 = t464.
              DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t466.
              DATA(t470) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t470->has = abap_true.
              t470->value = |DELETE FROM yflight WHERE carrid = 'LH'.|.
              t466 = t470.
              DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t472.
              DATA(t476) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t476->has = abap_true.
              t476->value = |https://docs.abapopenchecks.org/checks/26/|.
              t472 = t476.
              DATA t478 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t478.
              DATA t482 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t482.
              t482->load( ).
              APPEND |Security| TO t482->items.
              t482->save( ).
              t478 = t482.
              DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t488.
              DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t490.
              t453 = NEW zcl_lnt_irule_metadata( i_key = |modify_only_own_db_tables| i_title = |Modify only own DB tables| i_short_description = |Modify only own DB tables| i_bad_example = t460 i_good_example = t466 i_extended_information = t472 i_tags = t478 i_pragma = t488 i_pseudo_comment = t490 ).
              CREATE OBJECT t453->zlnt_view_ownkeys_b0e8086400eb.
              t453->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t492.
              t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t492 ).
              DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t493.
              IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t493 ).
              ENDIF.
              DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t494.
              IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t494 ).
              ENDIF.
              DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t495.
              IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t495 ).
              ENDIF.
              DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t496.
              IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t496 ).
              ENDIF.
              DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t497.
              IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t497 ).
              ENDIF.
              DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t498.
              IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t498 ).
              ENDIF.
              CREATE OBJECT t453->zlnt_json_ownkeys_70e5fd461788.
              t453->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t500.
              t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t500 ).
              DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t502.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t502 ).
              ENDIF.
              DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t504.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t504 ).
              ENDIF.
              DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t506.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t506 ).
              ENDIF.
              DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t508.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t508 ).
              ENDIF.
              DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t510.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t510 ).
              ENDIF.
              DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t512.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t512 ).
              ENDIF.
              t452 = t453->title.
              DATA(t513) = VALUE string( ).
              DATA t514 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t521.
              DATA(t525) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t525->has = abap_true.
              t525->value = |DELETE FROM mara WHERE matnr = '123456'.|.
              t521 = t525.
              DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t527.
              DATA(t531) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t531->has = abap_true.
              t531->value = |DELETE FROM yflight WHERE carrid = 'LH'.|.
              t527 = t531.
              DATA t533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t533.
              DATA(t537) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t537->has = abap_true.
              t537->value = |https://docs.abapopenchecks.org/checks/26/|.
              t533 = t537.
              DATA t539 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t539.
              DATA t543 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t543.
              t543->load( ).
              APPEND |Security| TO t543->items.
              t543->save( ).
              t539 = t543.
              DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t549.
              DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t551.
              t514 = NEW zcl_lnt_irule_metadata( i_key = |modify_only_own_db_tables| i_title = |Modify only own DB tables| i_short_description = |Modify only own DB tables| i_bad_example = t521 i_good_example = t527 i_extended_information = t533 i_tags = t539 i_pragma = t549 i_pseudo_comment = t551 ).
              CREATE OBJECT t514->zlnt_view_ownkeys_b0e8086400eb.
              t514->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t553.
              t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t553 ).
              DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t554.
              IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t554 ).
              ENDIF.
              DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t555.
              IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t555 ).
              ENDIF.
              DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t556.
              IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t556 ).
              ENDIF.
              DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t557.
              IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t557 ).
              ENDIF.
              DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t558.
              IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t558 ).
              ENDIF.
              DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t559.
              IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t559 ).
              ENDIF.
              CREATE OBJECT t514->zlnt_json_ownkeys_70e5fd461788.
              t514->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t561.
              t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t561 ).
              DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t563.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t563 ).
              ENDIF.
              DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t565.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t565 ).
              ENDIF.
              DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t567.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t567 ).
              ENDIF.
              DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t569.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t569 ).
              ENDIF.
              DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t571.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t571 ).
              ENDIF.
              DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t573.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t573 ).
              ENDIF.
              t513 = t514->key.
              DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t574 = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) )->zlnt_view_read_sr_15c06369f827( ).
              DATA t576 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t576.
              DATA t577 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t577.
              t449 = zcl_lnt_issue=>at_statement( i_file = t17 i_statement = t46 i_message_26cb = t452 i_key = t513 i_severity = t574 i_fix = t576 i_alternative_fixes = t577 ).
              t8->load( ).
              APPEND t449 TO t8->items.
              t8->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t8.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_mdf_onl_own_db_tbl_cnf.
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
        t2 = NEW zcl_lnt_mdf_onl_own_db_tbl_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_m_o_o_d_t_t_m_o_o_d( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_s_r_m_o_o_d_t_t_m_o_o_d_tb( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1595_2dc53c6ae51d.
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
