* TS: src/rules/selection_screen_texts_missing.ts:15:1 SelectionScreenTextsMissing
CLASS zcl_lnt_slctn_scrn_txts_mssng DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_slc_scrn_txts_mssn_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms RETURNING VALUE(result) TYPE REF TO zcl_lnt_slc_scrn_txts_mssn_cnf.
    METHODS s_c_i_s_r_s_s_t_m_t_s_sc_tx_ms IMPORTING i_conf TYPE REF TO zcl_lnt_slc_scrn_txts_mssn_cnf.
    METHODS i_i_s_r_s_s_t_m_ts_sl_sc_tx_ms IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_slctn_scrn_txts_mssng.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_file IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_sel_texts TYPE REF TO zlnt_runtime_map__5a3c0ec03a13 i_output TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_checked TYPE REF TO zlnt_runtime_set__1827558fd4c7
    i_main_prog_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
CLASS zcl_lnt_slctn_scrn_txts_mssng IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_slc_scrn_txts_mssn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |selection_screen_texts_missing|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Selection screen texts missing|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that selection screen parameters and select-options h|.
    t7 = t7 && |ave selection texts|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Excludes parameters and select-options that:\n* are inside a |.
      t11 = t11 && |"SELECTION-SCREEN BEGIN OF LINE" block\n* have the addition "|.
      t11 = t11 && |NO-DISPLAY"|.
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
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t16 i_extended_information = t8 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |key|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |title|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = |shortDescription|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |extendedInformation|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_s_s_t_m_t_s_sc_tx_ms.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_s_r_s_s_t_m_ts_sl_sc_tx_ms.
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
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_ob_program ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE REF TO zcl_lnt_ob_program.
    DATA t8 TYPE REF TO zcl_lnt_ob_program.
    DATA(t9) = t1.
    DATA t10 TYPE REF TO object.
    t10 = t9.
    t8 ?= t10.
    t7 = t8.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t7.
    t12->parse_xml( ).
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA t15 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t16) = t7.
    t15 = t16->parsed_xml.
    t14 = t15.
    t13 = t14->is_include.
    t11 = t13.
    t6 = t11.
    IF t6 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t19 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t20 TYPE REF TO zcl_lnt_ob_program.
    DATA t21 TYPE REF TO zcl_lnt_ob_program.
    DATA(t22) = t1.
    DATA t23 TYPE REF TO object.
    t23 = t22.
    t21 ?= t23.
    t20 = t21.
    DATA t24 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA(t25) = t20.
    t25->parse_xml( ).
    DATA t26 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t27 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA t28 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t29) = t20.
    t28 = t29->parsed_xml.
    t27 = t28.
    t26 = t27->selection_texts.
    t24 = t26.
    t19 = t24.
    t18 = t19.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t33) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t32 = t33.
    DATA t34 TYPE REF TO zcl_lnt_abap_file.
    DATA t35 TYPE REF TO zcl_lnt_ob_program.
    DATA(t36) = t1.
    DATA t37 TYPE REF TO object.
    t37 = t36.
    t35 ?= t37.
    t34 = t35->get_main_abap_file( ).
    DATA(t38) = t18.
    DATA(t39) = t30.
    DATA(t40) = t32.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    me->check_file( i_file = t34 i_sel_texts = t38 i_output = t39 i_checked = t40 i_main_prog_name = t41 ).
    DATA(t42) = t30.
    result = t42.

  ENDMETHOD.

  METHOD check_file.
    DATA(t1) = i_file.
    DATA(t2) = i_sel_texts.
    DATA(t3) = i_output.
    DATA(t4) = i_checked.
    DATA(t5) = i_main_prog_name.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t5.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ELSEIF t7->has = abap_false.
      t6 = abap_true.
    ENDIF.
    IF t6 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      t5 = t8.
    ENDIF.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t10.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    t12 = t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t10.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    t9 = t14.
    IF t9 = abap_true.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t4.
    DATA(t18) = VALUE string( ).
    DATA t19 TYPE REF TO zcl_lnt_abstract_file.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t20.
    DATA(t21) = t1.
    t20 = t21.
    t19 = t20.
    DATA(t22) = VALUE string( ).
    DATA(t23) = t19.
    t22 = t23->filename.
    t18 = t22.
    t16 = t17->has( p0 = t18 ).
    IF t16 = abap_true.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t24.
    DATA(t25) = t4.
    DATA(t26) = VALUE string( ).
    DATA t27 TYPE REF TO zcl_lnt_abstract_file.
    CLEAR t27.
    DATA t28 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t28.
    DATA(t29) = t1.
    t28 = t29.
    t27 = t28.
    DATA(t30) = VALUE string( ).
    DATA(t31) = t27.
    t30 = t31->filename.
    t26 = t30.
    t24 = t25->add( p0 = t26 ).
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = abap_false.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t36.
    DATA(t37) = t1.
    t36 = t37.
    t35 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA(t39) = t35.
    t38 = t39->statements.
    t34 = t38.
    DATA t40 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t40.
    DATA t41 TYPE REF TO object.
    CLEAR t41.
    DATA(t42) = VALUE i( ).
    DO.
      t34->load( ).
      IF t42 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t41.
      READ TABLE t34->items INDEX t42 + 1 INTO t41.
      t42 = t42 + 1.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      CLEAR t40.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t43 ?= t41.
        DATA t44 TYPE REF TO object.
        CLEAR t44.
        t44 = t43->as_ref( ).
        t40 ?= t44.
      ELSE.
        t40 ?= t41.
      ENDIF.
      DATA t45 TYPE REF TO zif_lnt_statement.
      CLEAR t45.
      DATA t46 TYPE REF TO zif_lnt_statement.
      CLEAR t46.
      DATA(t47) = t40.
      t46 = t47->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t45 = t46.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t45.
      t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_st_selection_screen ).
      IF t48 = abap_true.
        DATA(t50) = VALUE string( ).
        DATA(t51) = VALUE string( ).
        DATA(t52) = VALUE string( ).
        DATA(t53) = t40.
        t52 = t53->concat_tokens( ).
        DATA(t54) = strlen( t52 ).
        t51 = t52.
        IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t51 TO UPPER CASE.
        ELSE.
          t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
        ENDIF.
        t50 = t51.
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = VALUE i( ).
        DATA(t57) = t50.
        DATA(t58) = |BEGIN OF LINE|.
        DATA(t59) = strlen( t57 ).
        IF t58 IS INITIAL.
          t56 = 0.
        ELSE.
          FIND t58 IN t57 MATCH OFFSET t56.
          IF sy-subrc <> 0.
            t56 = -1.
          ENDIF.
        ENDIF.
        DATA(t60) = 0.
        t55 = xsdbool( t56 >= t60 ).
        IF t55 = abap_true.
          DATA(t61) = abap_true.
          t32 = t61.
        ELSE.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE i( ).
          DATA(t64) = t50.
          DATA(t65) = |END OF LINE|.
          DATA(t66) = strlen( t64 ).
          IF t65 IS INITIAL.
            t63 = 0.
          ELSE.
            FIND t65 IN t64 MATCH OFFSET t63.
            IF sy-subrc <> 0.
              t63 = -1.
            ENDIF.
          ENDIF.
          DATA(t67) = 0.
          t62 = xsdbool( t63 >= t67 ).
          IF t62 = abap_true.
            DATA(t68) = abap_false.
            t32 = t68.
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = t45.
      t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_include ).
      IF t69 = abap_true.
        DATA t71 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t71.
        DATA t72 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t72.
        DATA(t73) = t40.
        DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
        t72 = t73->find_first_expression( i_type_9913 = t74 ).
        t71 = t72.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = t71.
        t75 = xsdbool( t76 IS BOUND ).
        IF t75 = abap_true.
          DATA(t77) = VALUE string( ).
          DATA(t78) = VALUE string( ).
          DATA(t79) = VALUE string( ).
          DATA t80 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t80.
          DATA t81 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t81.
          DATA t82 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t82.
          DATA(t83) = t71.
          t82 = t83.
          t81 = t82->get_first_token( ).
          t80 = t81.
          DATA(t84) = VALUE string( ).
          DATA(t85) = t80.
          t84 = t85->str.
          t79 = t84.
          DATA(t86) = strlen( t79 ).
          t78 = t79.
          IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t78 TO UPPER CASE.
          ELSE.
            t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
          ENDIF.
          t77 = t78.
          DATA t87 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t87.
          DATA t88 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t88.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          DATA t90 TYPE REF TO zif_lnt_object.
          CLEAR t90.
          DATA t91 TYPE REF TO zif_lnt_object.
          CLEAR t91.
          DATA(t92) = me->reg.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA(t94) = abap_true.
          IF t94 = abap_true.
            DATA(t95) = |PROG|.
            DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t96->has = abap_true.
            t96->value = t95.
            t93 = t96.
          ELSE.
            DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t97.
            t93 = t97.
          ENDIF.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          DATA(t99) = abap_true.
          IF t99 = abap_true.
            DATA(t100) = t77.
            DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t101->has = abap_true.
            t101->value = t100.
            t98 = t101.
          ELSE.
            DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t102.
            t98 = t102.
          ENDIF.
          t91 = t92->get_object( i_type_9913 = t93 i_name = t98 ).
          t90 = t91.
          CLEAR t89.
          IF t90 IS BOUND.
            DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t103.
            DATA t104 TYPE REF TO object.
            CLEAR t104.
            CLEAR t103.
            t104 = t90.
            TRY.
                t89 ?= t104.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t89 IS NOT BOUND.
              TRY.
                  t103 ?= t90.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t103 IS BOUND.
                t89 = t103->source( ).
              ENDIF.
              IF t89 IS NOT BOUND.
                CREATE OBJECT t89.
                t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t89->oval = t90.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t88.
          IF t89 IS BOUND.
            IF t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t88 ?= t89->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t88 IS NOT BOUND.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
            ENDIF.
          ENDIF.
          t87 = t88.
          DATA(t105) = VALUE abap_bool( ).
          DATA(t106) = t87.
          t105 = xsdbool( t106 IS BOUND ).
          IF t105 = abap_true.
            DATA t107 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t107.
            DATA t108 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t108.
            DATA(t109) = t87.
            t108 = t109.
            t107 = t108->get_main_abap_file( ).
            DATA(t110) = t2.
            DATA(t111) = t3.
            DATA(t112) = t4.
            DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t113.
            DATA(t114) = abap_true.
            IF t114 = abap_true.
              DATA(t115) = VALUE string( ).
              DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t116.
              DATA(t117) = t5.
              t116 = t117.
              DATA(t118) = VALUE string( ).
              DATA(t119) = VALUE abap_bool( ).
              DATA(t120) = t116.
              IF t120 IS INITIAL.
                t119 = abap_true.
              ELSEIF t120->has = abap_false.
                t119 = abap_true.
              ENDIF.
              IF t119 = abap_true.
                DATA(t121) = VALUE string( ).
                DATA t122 TYPE REF TO zcl_lnt_abstract_file.
                CLEAR t122.
                DATA t123 TYPE REF TO zcl_lnt_abap_file.
                CLEAR t123.
                DATA(t124) = t1.
                t123 = t124.
                t122 = t123.
                DATA(t125) = VALUE string( ).
                DATA(t126) = t122.
                t125 = t126->filename.
                t121 = t125.
                t118 = t121.
              ELSE.
                DATA(t127) = VALUE string( ).
                DATA(t128) = t116.
                t127 = t128->value.
                t118 = t127.
              ENDIF.
              t115 = t118.
              DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t129->has = abap_true.
              t129->value = t115.
              t113 = t129.
            ELSE.
              DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t130.
              t113 = t130.
            ENDIF.
            me->check_file( i_file = t107 i_sel_texts = t110 i_output = t111 i_checked = t112 i_main_prog_name = t113 ).
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = t32.
      t131 = t132.
      IF t132 = abap_false.
        DATA(t133) = VALUE abap_bool( ).
        DATA(t134) = VALUE abap_bool( ).
        DATA(t135) = VALUE abap_bool( ).
        DATA(t136) = t45.
        t135 = xsdbool( t136 IS BOUND AND t136 IS INSTANCE OF zcl_lnt_st_parameter ).
        t134 = t135.
        IF t135 = abap_false.
          DATA(t137) = VALUE abap_bool( ).
          DATA(t138) = t45.
          t137 = xsdbool( t138 IS BOUND AND t138 IS INSTANCE OF zcl_lnt_st_select_option ).
          t134 = t137.
        ENDIF.
        t133 = xsdbool( t134 = abap_false ).
        t131 = t133.
      ENDIF.
      IF t131 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = VALUE i( ).
      DATA(t141) = VALUE string( ).
      DATA(t142) = VALUE string( ).
      DATA(t143) = t40.
      t142 = t143->concat_tokens( ).
      DATA(t144) = strlen( t142 ).
      t141 = t142.
      IF t141 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t141 TO UPPER CASE.
      ELSE.
        t141 = zlnt_runtime_uppe_91169605024d=>full( t141 ).
      ENDIF.
      DATA(t145) = |NO-DISPLAY|.
      DATA(t146) = strlen( t141 ).
      IF t145 IS INITIAL.
        t140 = 0.
      ELSE.
        FIND t145 IN t141 MATCH OFFSET t140.
        IF sy-subrc <> 0.
          t140 = -1.
        ENDIF.
      ENDIF.
      DATA(t147) = 0.
      t139 = xsdbool( t140 >= t147 ).
      IF t139 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t148 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t148.
      DATA t149 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t149.
      DATA(t150) = t40.
      DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
      t149 = t150->find_first_expression( i_type_9913 = t151 ).
      t148 = t149.
      DATA(t152) = VALUE abap_bool( ).
      DATA(t153) = t148.
      t152 = xsdbool( t153 IS BOUND ).
      IF t152 = abap_true.
        DATA(t154) = VALUE string( ).
        DATA(t155) = VALUE string( ).
        DATA(t156) = VALUE string( ).
        DATA t157 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t157.
        DATA t158 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t158.
        DATA t159 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t159.
        DATA(t160) = t148.
        t159 = t160.
        t158 = t159->get_first_token( ).
        t157 = t158.
        DATA(t161) = VALUE string( ).
        DATA(t162) = t157.
        t161 = t162->str.
        t156 = t161.
        DATA(t163) = strlen( t156 ).
        t155 = t156.
        IF t155 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t155 TO UPPER CASE.
        ELSE.
          t155 = zlnt_runtime_uppe_91169605024d=>full( t155 ).
        ENDIF.
        t154 = t155.
        DATA(t164) = VALUE abap_bool( ).
        DATA t165 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t165.
        DATA t166 TYPE REF TO zcl_lnt_shape_015c050b.
        CLEAR t166.
        DATA(t167) = t2.
        DATA(t168) = t154.
        t166 = t167->get( p0 = t168 ).
        t165 = t166.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        t169 = t170.
        DATA(t171) = VALUE abap_bool( ).
        DATA(t172) = t165.
        IF t172 IS INITIAL.
          t171 = abap_true.
        ENDIF.
        t164 = t171.
        IF t164 = abap_true.
          DATA(t173) = VALUE string( ).
          DATA(t174) = VALUE string( ).
          DATA(t175) = VALUE abap_bool( ).
          DATA(t176) = t5.
          IF t176 IS BOUND.
            IF t176->has = abap_true.
              t175 = xsdbool( strlen( t176->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t175 = abap_true.
            DATA(t177) = VALUE string( ).
            DATA(t178) = VALUE string( ).
            DATA(t179) = |, |.
            DATA(t180) = VALUE string( ).
            DATA(t181) = t5.
            t180 = t181->value.
            DATA(t182) = strlen( t179 ).
            t178 = |{ t179 }{ t180 }|.
            DATA(t183) = ||.
            DATA(t184) = strlen( t178 ).
            t177 = |{ t178 }{ t183 }|.
            t174 = t177.
          ELSE.
            DATA(t185) = ||.
            t174 = t185.
          ENDIF.
          t173 = t174.
          DATA(t186) = t3.
          DATA t187 TYPE REF TO zcl_lnt_issue.
          CLEAR t187.
          DATA t188 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t188.
          DATA(t189) = t1.
          t188 = t189.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t190.
          DATA t191 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t191.
          DATA(t192) = t148.
          t191 = t192.
          t190 = t191->get_first_token( ).
          DATA(t193) = VALUE string( ).
          DATA(t194) = VALUE string( ).
          DATA(t195) = VALUE string( ).
          DATA(t196) = VALUE string( ).
          DATA(t197) = |Selection text missing for "|.
          DATA(t198) = t154.
          DATA(t199) = strlen( t197 ).
          t196 = |{ t197 }{ t198 }|.
          DATA(t200) = |"|.
          DATA(t201) = strlen( t196 ).
          t195 = |{ t196 }{ t200 }|.
          DATA(t202) = t173.
          DATA(t203) = strlen( t195 ).
          t194 = |{ t195 }{ t202 }|.
          DATA(t204) = ||.
          DATA(t205) = strlen( t194 ).
          t193 = |{ t194 }{ t204 }|.
          DATA(t206) = VALUE string( ).
          DATA t207 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t207.
          DATA(t208) = VALUE string( ).
          DATA(t209) = |selection_screen_texts_missing|.
          t208 = t209.
          DATA(t210) = VALUE string( ).
          DATA(t211) = |Selection screen texts missing|.
          t210 = t211.
          DATA(t212) = VALUE string( ).
          DATA(t213) = |Checks that selection screen parameters and select-options h|.
          t213 = t213 && |ave selection texts|.
          t212 = t213.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          DATA(t216) = abap_true.
          IF t216 = abap_true.
            DATA(t217) = |Excludes parameters and select-options that:\n* are inside a |.
            t217 = t217 && |"SELECTION-SCREEN BEGIN OF LINE" block\n* have the addition "|.
            t217 = t217 && |NO-DISPLAY"|.
            DATA(t218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t218->has = abap_true.
            t218->value = t217.
            t215 = t218.
          ELSE.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t219.
            t215 = t219.
          ENDIF.
          t214 = t215.
          DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t220.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t221.
          t220 = t221.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t223.
          t222 = t223.
          DATA t224 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t224.
          DATA t225 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t225.
          t224 = t225.
          DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t226.
          DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t227.
          t226 = t227.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          t228 = t229.
          t207 = NEW zcl_lnt_irule_metadata( i_key = t208 i_title = t210 i_short_description = t212 i_bad_example = t220 i_good_example = t222 i_extended_information = t214 i_tags = t224 i_pragma = t226 i_pseudo_comment = t228 ).
          CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
          t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t230.
          IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t230 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t231 ).
          ENDIF.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t232.
          IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t232 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t233 ).
          ENDIF.
          CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
          t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t234) = |key|.
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
          ENDIF.
          DATA(t236) = |title|.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
          ENDIF.
          DATA(t238) = |shortDescription|.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t239.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
          ENDIF.
          DATA(t240) = |extendedInformation|.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t240 p1 = t241 ).
          ENDIF.
          t206 = t207->key.
          DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t242.
          DATA(t243) = me->conf.
          t242 = t243->zlnt_view_read_sr_15c06369f827( ).
          DATA t244 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t244.
          t187 = zcl_lnt_issue=>at_token( i_file = t188 i_token = t190 i_message_26cb = t193 i_key = t206 i_severity = t242 i_fix = t244 ).
          t186->load( ).
          APPEND t187 TO t186->items.
          t186->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_slc_scrn_txts_mssn_cnf( me->g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slc_scrn_txts_mssn_cnf( me->g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slc_scrn_txts_mssn_cnf.
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
        t2 = NEW zcl_lnt_slc_scrn_txts_mssn_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_s_s_t_m_t_s_sc_tx_ms( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_slctn_scrn_txts_mssng.
    DATA(t3) = t1.
    t2 = me->i_i_s_r_s_s_t_m_ts_sl_sc_tx_ms( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1694_16812c852e2c.
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
