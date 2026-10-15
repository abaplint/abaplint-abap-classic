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
    DATA(t1) = NEW zcl_lnt_mdf_onl_own_db_tbl_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |modify_only_own_db_tables|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Modify only own DB tables|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Modify only own DB tables|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |DELETE FROM mara WHERE matnr = '123456'.|.
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |DELETE FROM yflight WHERE carrid = 'LH'.|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = t15.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |https://docs.abapopenchecks.org/checks/26/|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t31 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t31.
      t30 = t31.
      DATA(t32) = t30.
      DATA(t33) = |Security|.
      t32->load( ).
      APPEND t33 TO t32->items.
      t32->save( ).
      DATA(t34) = t30.
      t29 = t34.
      t27 = t29.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t35.
      t27 = t35.
    ENDIF.
    t26 = t27.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t14 i_extended_information = t20 i_tags = t26 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |badExample|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |goodExample|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_m_o_o_d_t_t_m_o_o_d.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_m_o_o_d_t_t_m_o_o_d.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_s_r_m_o_o_d_t_t_m_o_o_d_tb.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

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
    CLEAR t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    DATA t12 TYPE REF TO zcl_lnt_abap_object.
    DATA(t13) = t1.
    DATA t14 TYPE REF TO object.
    t14 = t13.
    t12 ?= t14.
    t11 = t12.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t11.
    t15 = t16->parsed.
    t10 = t15.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
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
      DATA t22 TYPE REF TO zcl_lnt_structure_node.
      DATA t23 TYPE REF TO zcl_lnt_structure_node.
      DATA t24 TYPE REF TO zcl_lnt_abap_file.
      DATA(t25) = t17.
      t24 = t25.
      DATA t26 TYPE REF TO zcl_lnt_structure_node.
      DATA(t27) = t24.
      t26 = t27->structure.
      t23 = t26.
      t22 = t23.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      DATA(t30) = t22.
      t29 = t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      t31 = t32.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = t29.
      IF t34 IS INITIAL.
        t33 = abap_true.
      ENDIF.
      t28 = t33.
      IF t28 = abap_true.
        DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t35.
        result = t35.
        RETURN.
      ENDIF.
      DATA t36 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t37.
      DATA t38 TYPE string.
      DATA(t39) = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).
      t38 = t39->zlnt_view_read_sr_51808c27f6e2( ).
      DATA(t40) = |i|.
      CREATE OBJECT t37 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t38 flags = t40.
      t36 = t37.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t42 TYPE REF TO zcl_lnt_abap_file.
      DATA(t43) = t17.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t45) = t42.
      t44 = t45->statements.
      t41 = t44.
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
        DATA t52 TYPE REF TO zif_lnt_statement.
        DATA(t53) = t46.
        t52 = t53->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t51 = t52.
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        DATA t56 TYPE abap_bool.
        DATA t57 TYPE abap_bool.
        DATA(t58) = t51.
        t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_st_delete_database ).
        t56 = t57.
        IF t57 = abap_false.
          DATA t59 TYPE abap_bool.
          DATA(t60) = t51.
          t59 = xsdbool( t60 IS BOUND AND t60 IS INSTANCE OF zcl_lnt_st_update_database ).
          t56 = t59.
        ENDIF.
        t55 = t56.
        IF t56 = abap_false.
          DATA t61 TYPE abap_bool.
          DATA(t62) = t51.
          t61 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_st_insert_database ).
          t55 = t61.
        ENDIF.
        t54 = t55.
        IF t55 = abap_false.
          DATA t63 TYPE abap_bool.
          DATA(t64) = t51.
          t63 = xsdbool( t64 IS BOUND AND t64 IS INSTANCE OF zcl_lnt_st_modify_database ).
          t54 = t63.
        ENDIF.
        IF t54 = abap_true.
          DATA t65 TYPE REF TO zcl_lnt_expression_node.
          DATA t66 TYPE REF TO zcl_lnt_expression_node.
          DATA(t67) = t46.
          DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
          t66 = t67->find_first_expression( i_type_9913 = t68 ).
          t65 = t66.
          DATA(t69) = VALUE abap_bool( ).
          DATA t70 TYPE REF TO zcl_lnt_expression_node.
          DATA(t71) = t65.
          t70 = t71.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t73.
          t72 = t73.
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = t70.
          IF t75 IS INITIAL.
            t74 = abap_true.
          ENDIF.
          t69 = t74.
          IF t69 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t76) = VALUE abap_bool( ).
          DATA t77 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t77.
          DATA t78 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t78.
          DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t79.
          DATA t80 TYPE REF TO zif_lnt_node.
          CLEAR t80.
          DATA t81 TYPE REF TO zcl_lnt_abstract_node.
          DATA t82 TYPE REF TO zcl_lnt_expression_node.
          DATA(t83) = t65.
          t82 = t83.
          t81 = t82.
          DATA t84 TYPE REF TO zif_lnt_node.
          CLEAR t84.
          DATA(t85) = abap_true.
          IF t85 = abap_true.
            DATA t86 TYPE REF TO zif_lnt_node.
            CLEAR t86.
            DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t88) = t81.
            t87 = t88->children.
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
            t84 = t86.
          ELSE.
            DATA t92 TYPE REF TO zif_lnt_node.
            CLEAR t92.
            t84 = t92.
          ENDIF.
          t80 = t84.
          t79 ?= t80.
          t78 = t79.
          DATA t93 TYPE REF TO zif_lnt_union_daf022d4.
          CLEAR t93.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = t78.
          IF t95 IS INITIAL.
            t94 = abap_true.
          ENDIF.
          IF t94 = abap_true.
            DATA t96 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t96.
            t93 = t96.
          ELSE.
            DATA t97 TYPE REF TO zif_lnt_union_daf022d4.
            DATA t98 TYPE REF TO object.
            DATA t99 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA(t100) = t78.
            t99 = t100.
            t98 = t99->get_db65( ).
            DATA t101 TYPE REF TO object.
            t101 = t98.
            t97 ?= t101.
            t93 = t97.
          ENDIF.
          t77 = t93.
          t76 = xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_st_dynamic ).
          IF t76 = abap_true.
            DATA t102 TYPE abap_bool.
            DATA t103 TYPE abap_bool.
            DATA(t104) = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).
            t103 = t104->zlnt_view_read_sr_8ae9d43d290d( ).
            DATA(t105) = abap_true.
            t102 = xsdbool( t103 = t105 ).
            IF t102 = abap_true.
              DATA(t106) = t8.
              DATA t107 TYPE REF TO zcl_lnt_issue.
              CLEAR t107.
              DATA(t108) = t17.
              DATA(t109) = t46.
              DATA(t110) = VALUE string( ).
              DATA t111 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t111.
              DATA t112 TYPE string.
              DATA(t113) = |modify_only_own_db_tables|.
              t112 = t113.
              DATA t114 TYPE string.
              DATA(t115) = |Modify only own DB tables|.
              t114 = t115.
              DATA t116 TYPE string.
              DATA(t117) = |Modify only own DB tables|.
              t116 = t117.
              DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t118.
              DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t119.
              DATA(t120) = abap_true.
              IF t120 = abap_true.
                DATA(t121) = |DELETE FROM mara WHERE matnr = '123456'.|.
                DATA(t122) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t122->has = abap_true.
                t122->value = t121.
                t119 = t122.
              ELSE.
                DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t123.
                t119 = t123.
              ENDIF.
              t118 = t119.
              DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t124.
              DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t125.
              DATA(t126) = abap_true.
              IF t126 = abap_true.
                DATA(t127) = |DELETE FROM yflight WHERE carrid = 'LH'.|.
                DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t128->has = abap_true.
                t128->value = t127.
                t125 = t128.
              ELSE.
                DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t129.
                t125 = t129.
              ENDIF.
              t124 = t125.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t130.
              DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t131.
              DATA(t132) = abap_true.
              IF t132 = abap_true.
                DATA(t133) = |https://docs.abapopenchecks.org/checks/26/|.
                DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t134->has = abap_true.
                t134->value = t133.
                t131 = t134.
              ELSE.
                DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t135.
                t131 = t135.
              ENDIF.
              t130 = t131.
              DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t136.
              DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t137.
              DATA(t138) = abap_true.
              IF t138 = abap_true.
                DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t141.
                t140 = t141.
                DATA(t142) = t140.
                DATA(t143) = |Security|.
                t142->load( ).
                APPEND t143 TO t142->items.
                t142->save( ).
                DATA(t144) = t140.
                t139 = t144.
                t137 = t139.
              ELSE.
                DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t145.
                t137 = t145.
              ENDIF.
              t136 = t137.
              DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t147.
              t146 = t147.
              DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t149.
              t148 = t149.
              t111 = NEW zcl_lnt_irule_metadata( i_key = t112 i_title = t114 i_short_description = t116 i_bad_example = t118 i_good_example = t124 i_extended_information = t130 i_tags = t136 i_pragma = t146 i_pseudo_comment = t148 ).
              CREATE OBJECT t111->zlnt_view_ownkeys_b0e8086400eb.
              t111->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t150.
              IF t111->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t150 ).
              ENDIF.
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
              DATA(t157) = |key|.
              DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t158.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
              ENDIF.
              DATA(t159) = |title|.
              DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t160.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
              ENDIF.
              DATA(t161) = |shortDescription|.
              DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t162.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
              ENDIF.
              DATA(t163) = |badExample|.
              DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t164.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
              ENDIF.
              DATA(t165) = |goodExample|.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t166.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
              ENDIF.
              DATA(t167) = |extendedInformation|.
              DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t168.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
              ENDIF.
              DATA(t169) = |tags|.
              DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t170.
              IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
              ENDIF.
              t110 = t111->title.
              DATA(t171) = VALUE string( ).
              DATA t172 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t172.
              DATA t173 TYPE string.
              DATA(t174) = |modify_only_own_db_tables|.
              t173 = t174.
              DATA t175 TYPE string.
              DATA(t176) = |Modify only own DB tables|.
              t175 = t176.
              DATA t177 TYPE string.
              DATA(t178) = |Modify only own DB tables|.
              t177 = t178.
              DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t179.
              DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t180.
              DATA(t181) = abap_true.
              IF t181 = abap_true.
                DATA(t182) = |DELETE FROM mara WHERE matnr = '123456'.|.
                DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t183->has = abap_true.
                t183->value = t182.
                t180 = t183.
              ELSE.
                DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t184.
                t180 = t184.
              ENDIF.
              t179 = t180.
              DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t185.
              DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t186.
              DATA(t187) = abap_true.
              IF t187 = abap_true.
                DATA(t188) = |DELETE FROM yflight WHERE carrid = 'LH'.|.
                DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t189->has = abap_true.
                t189->value = t188.
                t186 = t189.
              ELSE.
                DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t190.
                t186 = t190.
              ENDIF.
              t185 = t186.
              DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t191.
              DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t192.
              DATA(t193) = abap_true.
              IF t193 = abap_true.
                DATA(t194) = |https://docs.abapopenchecks.org/checks/26/|.
                DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t195->has = abap_true.
                t195->value = t194.
                t192 = t195.
              ELSE.
                DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t196.
                t192 = t196.
              ENDIF.
              t191 = t192.
              DATA t197 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t197.
              DATA t198 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t198.
              DATA(t199) = abap_true.
              IF t199 = abap_true.
                DATA t200 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t202.
                t201 = t202.
                DATA(t203) = t201.
                DATA(t204) = |Security|.
                t203->load( ).
                APPEND t204 TO t203->items.
                t203->save( ).
                DATA(t205) = t201.
                t200 = t205.
                t198 = t200.
              ELSE.
                DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t206.
                t198 = t206.
              ENDIF.
              t197 = t198.
              DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t208.
              t207 = t208.
              DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t210.
              t209 = t210.
              t172 = NEW zcl_lnt_irule_metadata( i_key = t173 i_title = t175 i_short_description = t177 i_bad_example = t179 i_good_example = t185 i_extended_information = t191 i_tags = t197 i_pragma = t207 i_pseudo_comment = t209 ).
              CREATE OBJECT t172->zlnt_view_ownkeys_b0e8086400eb.
              t172->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t211.
              IF t172->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t172->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t211 ).
              ENDIF.
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
              DATA(t218) = |key|.
              DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t219.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
              ENDIF.
              DATA(t220) = |title|.
              DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t221.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
              ENDIF.
              DATA(t222) = |shortDescription|.
              DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t223.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
              ENDIF.
              DATA(t224) = |badExample|.
              DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t225.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
              ENDIF.
              DATA(t226) = |goodExample|.
              DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t227.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
              ENDIF.
              DATA(t228) = |extendedInformation|.
              DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t229.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t228 p1 = t229 ).
              ENDIF.
              DATA(t230) = |tags|.
              DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t231.
              IF t172->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t172->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
              ENDIF.
              t171 = t172->key.
              DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t233) = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).
              t232 = t233->zlnt_view_read_sr_15c06369f827( ).
              DATA t234 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t234.
              DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t235.
              t107 = zcl_lnt_issue=>at_statement( i_file = t108 i_statement = t109 i_message_26cb = t110 i_key = t171 i_severity = t232 i_fix = t234 i_alternative_fixes = t235 ).
              t106->load( ).
              APPEND t107 TO t106->items.
              t106->save( ).
            ENDIF.
            CONTINUE.
          ENDIF.
          DATA(t236) = VALUE string( ).
          DATA t237 TYPE string.
          DATA t238 TYPE string.
          DATA t239 TYPE REF TO zcl_lnt_expression_node.
          DATA(t240) = t65.
          t239 = t240.
          t238 = t239->concat_tokens( ).
          DATA(t241) = strlen( t238 ).
          t237 = t238.
          IF t237 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t237 TO UPPER CASE.
          ELSE.
            t237 = zlnt_runtime_uppe_91169605024d=>full( t237 ).
          ENDIF.
          t236 = t237.
          DATA t242 TYPE abap_bool.
          DATA t243 TYPE abap_bool.
          DATA(t244) = t36.
          DATA(t245) = t236.
          t243 = t244->test( p0 = t245 ).
          DATA(t246) = abap_false.
          t242 = xsdbool( t243 = t246 ).
          IF t242 = abap_true.
            DATA(t247) = VALUE abap_bool( ).
            DATA t248 TYPE REF TO zif_lnt_spaghetti_scope.
            DATA(t249) = t6.
            t248 = t249.
            DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t251.
            t250 = t251.
            DATA(t252) = VALUE abap_bool( ).
            DATA(t253) = t248.
            IF t253 IS INITIAL.
              t252 = abap_true.
            ENDIF.
            t247 = t252.
            IF t247 = abap_true.
              DATA t254 TYPE REF TO zif_lnt_spaghetti_scope.
              CLEAR t254.
              DATA(t255) = abap_true.
              IF t255 = abap_true.
                DATA t256 TYPE REF TO zif_lnt_spaghetti_scope.
                DATA t257 TYPE REF TO zcl_lnt_isyntax_result.
                DATA t258 TYPE REF TO zcl_lnt_syntax_logic.
                DATA(t259) = me->reg.
                DATA t260 TYPE REF TO zcl_lnt_abap_object.
                DATA(t261) = t1.
                DATA t262 TYPE REF TO object.
                t262 = t261.
                t260 ?= t262.
                t258 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t259 i_object_19cd = t260 ).
                t257 = t258->run( ).
                t256 = t257->zlnt_view_read_sr_b6b1d9e0c93e( ).
                t254 = t256.
              ELSE.
                DATA t263 TYPE REF TO zif_lnt_spaghetti_scope.
                CLEAR t263.
                t254 = t263.
              ENDIF.
              t6 = t254.
            ENDIF.
            DATA t264 TYPE REF TO zcl_lnt_position.
            DATA t265 TYPE REF TO zcl_lnt_position.
            DATA t266 TYPE REF TO zcl_lnt_abstract_token.
            DATA t267 TYPE REF TO zcl_lnt_abstract_token.
            DATA t268 TYPE REF TO zcl_lnt_expression_node.
            DATA(t269) = t65.
            t268 = t269.
            t267 = t268->get_first_token( ).
            t266 = t267.
            DATA t270 TYPE REF TO zcl_lnt_position.
            DATA(t271) = t266.
            t270 = t271->start.
            t265 = t270.
            t264 = t265.
            DATA t272 TYPE REF TO zif_lnt_spaghetti_scope_node.
            CLEAR t272.
            DATA t273 TYPE REF TO zif_lnt_spaghetti_scope_node.
            CLEAR t273.
            DATA t274 TYPE REF TO zif_lnt_spaghetti_scope.
            DATA(t275) = t6.
            t274 = t275.
            DATA t276 TYPE REF TO zcl_lnt_position.
            CLEAR t276.
            DATA(t277) = abap_true.
            IF t277 = abap_true.
              DATA(t278) = t264.
              t276 = t278.
            ELSE.
              DATA t279 TYPE REF TO zcl_lnt_position.
              CLEAR t279.
              t276 = t279.
            ENDIF.
            DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t280.
            DATA(t281) = abap_true.
            IF t281 = abap_true.
              DATA t282 TYPE string.
              DATA t283 TYPE REF TO zcl_lnt_abstract_file.
              DATA(t284) = t17.
              t283 = t284.
              DATA t285 TYPE string.
              DATA(t286) = t283.
              t285 = t286->filename.
              t282 = t285.
              DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t287->has = abap_true.
              t287->value = t282.
              t280 = t287.
            ELSE.
              DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t288.
              t280 = t288.
            ENDIF.
            t273 = t274->lookup_position( i_p = t276 i_filename = t280 ).
            t272 = t273.
            DATA t289 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t289.
            DATA t290 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t290.
            DATA t291 TYPE REF TO zif_lnt_spaghetti_scope_node.
            DATA(t292) = t272.
            t291 = t292.
            DATA t293 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t293.
            DATA(t294) = VALUE abap_bool( ).
            DATA(t295) = t291.
            IF t295 IS INITIAL.
              t294 = abap_true.
            ENDIF.
            IF t294 = abap_true.
              DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t296.
              t293 = t296.
            ELSE.
              DATA t297 TYPE abap_bool.
              DATA t298 TYPE REF TO zif_lnt_spaghetti_scope_node.
              DATA(t299) = t291.
              t298 = t299.
              DATA(t300) = t264.
              t297 = t298->find_table_void_reference( i_pos = t300 ).
              DATA(t301) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t301->has = abap_true.
              t301->value = t297.
              t293 = t301.
            ENDIF.
            t290 = t293.
            t289 = t290.
            DATA(t302) = VALUE abap_bool( ).
            DATA(t303) = t289.
            IF t303 IS BOUND.
              IF t303->has = abap_true.
                t302 = xsdbool( t303->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
            IF t302 = abap_true.
              DATA(t304) = t8.
              DATA t305 TYPE REF TO zcl_lnt_issue.
              CLEAR t305.
              DATA(t306) = t17.
              DATA(t307) = t46.
              DATA(t308) = VALUE string( ).
              DATA t309 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t309.
              DATA t310 TYPE string.
              DATA(t311) = |modify_only_own_db_tables|.
              t310 = t311.
              DATA t312 TYPE string.
              DATA(t313) = |Modify only own DB tables|.
              t312 = t313.
              DATA t314 TYPE string.
              DATA(t315) = |Modify only own DB tables|.
              t314 = t315.
              DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t316.
              DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t317.
              DATA(t318) = abap_true.
              IF t318 = abap_true.
                DATA(t319) = |DELETE FROM mara WHERE matnr = '123456'.|.
                DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t320->has = abap_true.
                t320->value = t319.
                t317 = t320.
              ELSE.
                DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t321.
                t317 = t321.
              ENDIF.
              t316 = t317.
              DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t322.
              DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t323.
              DATA(t324) = abap_true.
              IF t324 = abap_true.
                DATA(t325) = |DELETE FROM yflight WHERE carrid = 'LH'.|.
                DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t326->has = abap_true.
                t326->value = t325.
                t323 = t326.
              ELSE.
                DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t327.
                t323 = t327.
              ENDIF.
              t322 = t323.
              DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t328.
              DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t329.
              DATA(t330) = abap_true.
              IF t330 = abap_true.
                DATA(t331) = |https://docs.abapopenchecks.org/checks/26/|.
                DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t332->has = abap_true.
                t332->value = t331.
                t329 = t332.
              ELSE.
                DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t333.
                t329 = t333.
              ENDIF.
              t328 = t329.
              DATA t334 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t334.
              DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t335.
              DATA(t336) = abap_true.
              IF t336 = abap_true.
                DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t339.
                t338 = t339.
                DATA(t340) = t338.
                DATA(t341) = |Security|.
                t340->load( ).
                APPEND t341 TO t340->items.
                t340->save( ).
                DATA(t342) = t338.
                t337 = t342.
                t335 = t337.
              ELSE.
                DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t343.
                t335 = t343.
              ENDIF.
              t334 = t335.
              DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t345.
              t344 = t345.
              DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t347.
              t346 = t347.
              t309 = NEW zcl_lnt_irule_metadata( i_key = t310 i_title = t312 i_short_description = t314 i_bad_example = t316 i_good_example = t322 i_extended_information = t328 i_tags = t334 i_pragma = t344 i_pseudo_comment = t346 ).
              CREATE OBJECT t309->zlnt_view_ownkeys_b0e8086400eb.
              t309->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t348.
              IF t309->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t309->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t348 ).
              ENDIF.
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
              DATA(t355) = |key|.
              DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t356.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
              ENDIF.
              DATA(t357) = |title|.
              DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t358.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
              ENDIF.
              DATA(t359) = |shortDescription|.
              DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t360.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
              ENDIF.
              DATA(t361) = |badExample|.
              DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t362.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
              ENDIF.
              DATA(t363) = |goodExample|.
              DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t364.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t363 p1 = t364 ).
              ENDIF.
              DATA(t365) = |extendedInformation|.
              DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t366.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t365 p1 = t366 ).
              ENDIF.
              DATA(t367) = |tags|.
              DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t368.
              IF t309->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t309->zlnt_json_ownkeys_70e5fd461788->put( p0 = t367 p1 = t368 ).
              ENDIF.
              t308 = t309->title.
              DATA(t369) = VALUE string( ).
              DATA t370 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t370.
              DATA t371 TYPE string.
              DATA(t372) = |modify_only_own_db_tables|.
              t371 = t372.
              DATA t373 TYPE string.
              DATA(t374) = |Modify only own DB tables|.
              t373 = t374.
              DATA t375 TYPE string.
              DATA(t376) = |Modify only own DB tables|.
              t375 = t376.
              DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t377.
              DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t378.
              DATA(t379) = abap_true.
              IF t379 = abap_true.
                DATA(t380) = |DELETE FROM mara WHERE matnr = '123456'.|.
                DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t381->has = abap_true.
                t381->value = t380.
                t378 = t381.
              ELSE.
                DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t382.
                t378 = t382.
              ENDIF.
              t377 = t378.
              DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t383.
              DATA t384 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t384.
              DATA(t385) = abap_true.
              IF t385 = abap_true.
                DATA(t386) = |DELETE FROM yflight WHERE carrid = 'LH'.|.
                DATA(t387) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t387->has = abap_true.
                t387->value = t386.
                t384 = t387.
              ELSE.
                DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t388.
                t384 = t388.
              ENDIF.
              t383 = t384.
              DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t389.
              DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t390.
              DATA(t391) = abap_true.
              IF t391 = abap_true.
                DATA(t392) = |https://docs.abapopenchecks.org/checks/26/|.
                DATA(t393) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t393->has = abap_true.
                t393->value = t392.
                t390 = t393.
              ELSE.
                DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t394.
                t390 = t394.
              ENDIF.
              t389 = t390.
              DATA t395 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t395.
              DATA t396 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t396.
              DATA(t397) = abap_true.
              IF t397 = abap_true.
                DATA t398 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t400 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t400.
                t399 = t400.
                DATA(t401) = t399.
                DATA(t402) = |Security|.
                t401->load( ).
                APPEND t402 TO t401->items.
                t401->save( ).
                DATA(t403) = t399.
                t398 = t403.
                t396 = t398.
              ELSE.
                DATA t404 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t404.
                t396 = t404.
              ENDIF.
              t395 = t396.
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t406.
              t405 = t406.
              DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t408.
              t407 = t408.
              t370 = NEW zcl_lnt_irule_metadata( i_key = t371 i_title = t373 i_short_description = t375 i_bad_example = t377 i_good_example = t383 i_extended_information = t389 i_tags = t395 i_pragma = t405 i_pseudo_comment = t407 ).
              CREATE OBJECT t370->zlnt_view_ownkeys_b0e8086400eb.
              t370->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t409.
              IF t370->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t370->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t409 ).
              ENDIF.
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
              DATA(t416) = |key|.
              DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t417.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t416 p1 = t417 ).
              ENDIF.
              DATA(t418) = |title|.
              DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t419.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t418 p1 = t419 ).
              ENDIF.
              DATA(t420) = |shortDescription|.
              DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t421.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t420 p1 = t421 ).
              ENDIF.
              DATA(t422) = |badExample|.
              DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t423.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t422 p1 = t423 ).
              ENDIF.
              DATA(t424) = |goodExample|.
              DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t425.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t424 p1 = t425 ).
              ENDIF.
              DATA(t426) = |extendedInformation|.
              DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t427.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t426 p1 = t427 ).
              ENDIF.
              DATA(t428) = |tags|.
              DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t429.
              IF t370->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t370->zlnt_json_ownkeys_70e5fd461788->put( p0 = t428 p1 = t429 ).
              ENDIF.
              t369 = t370->key.
              DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t431) = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).
              t430 = t431->zlnt_view_read_sr_15c06369f827( ).
              DATA t432 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t432.
              DATA t433 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t433.
              t305 = zcl_lnt_issue=>at_statement( i_file = t306 i_statement = t307 i_message_26cb = t308 i_key = t369 i_severity = t430 i_fix = t432 i_alternative_fixes = t433 ).
              t304->load( ).
              APPEND t305 TO t304->items.
              t304->save( ).
            ENDIF.
            DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t434.
            DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t435.
            DATA t436 TYPE REF TO zif_lnt_spaghetti_scope_node.
            DATA(t437) = t272.
            t436 = t437.
            DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t438.
            DATA(t439) = VALUE abap_bool( ).
            DATA(t440) = t436.
            IF t440 IS INITIAL.
              t439 = abap_true.
            ENDIF.
            IF t439 = abap_true.
              DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t441.
              t438 = t441.
            ELSE.
              DATA t442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t443 TYPE REF TO zif_lnt_spaghetti_scope_node.
              DATA(t444) = t436.
              t443 = t444.
              DATA(t445) = t264.
              t442 = t443->find_table_reference( i_pos = t445 ).
              t438 = t442.
            ENDIF.
            t435 = t438.
            t434 = t435.
            DATA(t446) = VALUE abap_bool( ).
            DATA(t447) = t434.
            IF t447 IS BOUND.
              IF t447->has = abap_true.
                t446 = xsdbool( strlen( t447->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t446 = abap_true.
              DATA(t448) = t8.
              DATA t449 TYPE REF TO zcl_lnt_issue.
              CLEAR t449.
              DATA(t450) = t17.
              DATA(t451) = t46.
              DATA(t452) = VALUE string( ).
              DATA t453 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t453.
              DATA t454 TYPE string.
              DATA(t455) = |modify_only_own_db_tables|.
              t454 = t455.
              DATA t456 TYPE string.
              DATA(t457) = |Modify only own DB tables|.
              t456 = t457.
              DATA t458 TYPE string.
              DATA(t459) = |Modify only own DB tables|.
              t458 = t459.
              DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t460.
              DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t461.
              DATA(t462) = abap_true.
              IF t462 = abap_true.
                DATA(t463) = |DELETE FROM mara WHERE matnr = '123456'.|.
                DATA(t464) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t464->has = abap_true.
                t464->value = t463.
                t461 = t464.
              ELSE.
                DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t465.
                t461 = t465.
              ENDIF.
              t460 = t461.
              DATA t466 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t466.
              DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t467.
              DATA(t468) = abap_true.
              IF t468 = abap_true.
                DATA(t469) = |DELETE FROM yflight WHERE carrid = 'LH'.|.
                DATA(t470) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t470->has = abap_true.
                t470->value = t469.
                t467 = t470.
              ELSE.
                DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t471.
                t467 = t471.
              ENDIF.
              t466 = t467.
              DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t472.
              DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t473.
              DATA(t474) = abap_true.
              IF t474 = abap_true.
                DATA(t475) = |https://docs.abapopenchecks.org/checks/26/|.
                DATA(t476) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t476->has = abap_true.
                t476->value = t475.
                t473 = t476.
              ELSE.
                DATA t477 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t477.
                t473 = t477.
              ENDIF.
              t472 = t473.
              DATA t478 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t478.
              DATA t479 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t479.
              DATA(t480) = abap_true.
              IF t480 = abap_true.
                DATA t481 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t482 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t483 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t483.
                t482 = t483.
                DATA(t484) = t482.
                DATA(t485) = |Security|.
                t484->load( ).
                APPEND t485 TO t484->items.
                t484->save( ).
                DATA(t486) = t482.
                t481 = t486.
                t479 = t481.
              ELSE.
                DATA t487 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t487.
                t479 = t487.
              ENDIF.
              t478 = t479.
              DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t489.
              t488 = t489.
              DATA t490 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t491.
              t490 = t491.
              t453 = NEW zcl_lnt_irule_metadata( i_key = t454 i_title = t456 i_short_description = t458 i_bad_example = t460 i_good_example = t466 i_extended_information = t472 i_tags = t478 i_pragma = t488 i_pseudo_comment = t490 ).
              CREATE OBJECT t453->zlnt_view_ownkeys_b0e8086400eb.
              t453->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t492.
              IF t453->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t492 ).
              ENDIF.
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
              DATA(t499) = |key|.
              DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t500.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t499 p1 = t500 ).
              ENDIF.
              DATA(t501) = |title|.
              DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t502.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t501 p1 = t502 ).
              ENDIF.
              DATA(t503) = |shortDescription|.
              DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t504.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t503 p1 = t504 ).
              ENDIF.
              DATA(t505) = |badExample|.
              DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t506.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t505 p1 = t506 ).
              ENDIF.
              DATA(t507) = |goodExample|.
              DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t508.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t507 p1 = t508 ).
              ENDIF.
              DATA(t509) = |extendedInformation|.
              DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t510.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
              ENDIF.
              DATA(t511) = |tags|.
              DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t512.
              IF t453->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t453->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
              ENDIF.
              t452 = t453->title.
              DATA(t513) = VALUE string( ).
              DATA t514 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t514.
              DATA t515 TYPE string.
              DATA(t516) = |modify_only_own_db_tables|.
              t515 = t516.
              DATA t517 TYPE string.
              DATA(t518) = |Modify only own DB tables|.
              t517 = t518.
              DATA t519 TYPE string.
              DATA(t520) = |Modify only own DB tables|.
              t519 = t520.
              DATA t521 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t521.
              DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t522.
              DATA(t523) = abap_true.
              IF t523 = abap_true.
                DATA(t524) = |DELETE FROM mara WHERE matnr = '123456'.|.
                DATA(t525) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t525->has = abap_true.
                t525->value = t524.
                t522 = t525.
              ELSE.
                DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t526.
                t522 = t526.
              ENDIF.
              t521 = t522.
              DATA t527 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t527.
              DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t528.
              DATA(t529) = abap_true.
              IF t529 = abap_true.
                DATA(t530) = |DELETE FROM yflight WHERE carrid = 'LH'.|.
                DATA(t531) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t531->has = abap_true.
                t531->value = t530.
                t528 = t531.
              ELSE.
                DATA t532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t532.
                t528 = t532.
              ENDIF.
              t527 = t528.
              DATA t533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t533.
              DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t534.
              DATA(t535) = abap_true.
              IF t535 = abap_true.
                DATA(t536) = |https://docs.abapopenchecks.org/checks/26/|.
                DATA(t537) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t537->has = abap_true.
                t537->value = t536.
                t534 = t537.
              ELSE.
                DATA t538 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t538.
                t534 = t538.
              ENDIF.
              t533 = t534.
              DATA t539 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t539.
              DATA t540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t540.
              DATA(t541) = abap_true.
              IF t541 = abap_true.
                DATA t542 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t543 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t544 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t544.
                t543 = t544.
                DATA(t545) = t543.
                DATA(t546) = |Security|.
                t545->load( ).
                APPEND t546 TO t545->items.
                t545->save( ).
                DATA(t547) = t543.
                t542 = t547.
                t540 = t542.
              ELSE.
                DATA t548 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t548.
                t540 = t548.
              ENDIF.
              t539 = t540.
              DATA t549 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t550 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t550.
              t549 = t550.
              DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t552.
              t551 = t552.
              t514 = NEW zcl_lnt_irule_metadata( i_key = t515 i_title = t517 i_short_description = t519 i_bad_example = t521 i_good_example = t527 i_extended_information = t533 i_tags = t539 i_pragma = t549 i_pseudo_comment = t551 ).
              CREATE OBJECT t514->zlnt_view_ownkeys_b0e8086400eb.
              t514->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t553.
              IF t514->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t553 ).
              ENDIF.
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
              DATA(t560) = |key|.
              DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t561.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t560 p1 = t561 ).
              ENDIF.
              DATA(t562) = |title|.
              DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t563.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t562 p1 = t563 ).
              ENDIF.
              DATA(t564) = |shortDescription|.
              DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t565.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t564 p1 = t565 ).
              ENDIF.
              DATA(t566) = |badExample|.
              DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t567.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t566 p1 = t567 ).
              ENDIF.
              DATA(t568) = |goodExample|.
              DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t569.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t568 p1 = t569 ).
              ENDIF.
              DATA(t570) = |extendedInformation|.
              DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t571.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t570 p1 = t571 ).
              ENDIF.
              DATA(t572) = |tags|.
              DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t573.
              IF t514->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = t572 p1 = t573 ).
              ENDIF.
              t513 = t514->key.
              DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t575) = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).
              t574 = t575->zlnt_view_read_sr_15c06369f827( ).
              DATA t576 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t576.
              DATA t577 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t577.
              t449 = zcl_lnt_issue=>at_statement( i_file = t450 i_statement = t451 i_message_26cb = t452 i_key = t513 i_severity = t574 i_fix = t576 i_alternative_fixes = t577 ).
              t448->load( ).
              APPEND t449 TO t448->items.
              t448->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t578) = t8.
    result = t578.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mdf_onl_own_db_tbl_cnf( me->g_c_i_s_r_m_o_o_d_t_t_m_o_o_d( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_mdf_onl_own_db_tbl_cnf.
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
        t2 = NEW zcl_lnt_mdf_onl_own_db_tbl_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_m_o_o_d_t_t_m_o_o_d( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_mdfy_only_own_db_tbls.
    DATA(t3) = t1.
    t2 = me->i_i_s_r_m_o_o_d_t_t_m_o_o_d_tb( i_reg_f149 = t3 ).
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
