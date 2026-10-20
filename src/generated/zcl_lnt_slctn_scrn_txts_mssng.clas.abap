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
    me->conf = NEW zcl_lnt_slc_scrn_txts_mssn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that selection screen parameters and select-options h|.
    t7 = t7 && |ave selection texts|.
    t6 = t7.
    DATA(t11) = |Excludes parameters and select-options that:\n* are inside a |.
    t11 = t11 && |"SELECTION-SCREEN BEGIN OF LINE" block\n* have the addition "|.
    t11 = t11 && |NO-DISPLAY"|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |selection_screen_texts_missing| i_title = |Selection screen texts missing| i_short_description = t6 i_bad_example = t14 i_good_example = t16 i_extended_information = t12 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t29 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t31 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t33 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_s_s_t_m_t_s_sc_tx_ms.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_s_r_s_s_t_m_ts_sl_sc_tx_ms.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zcl_lnt_ob_program.
    DATA t8 TYPE REF TO zcl_lnt_ob_program.
    DATA t10 TYPE REF TO object.
    t10 = t1.
    t8 ?= t10.
    t7 = t8.
    t7->parse_xml( ).
    IF t7->parsed_xml->is_include = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_ob_program.
    DATA t21 TYPE REF TO zcl_lnt_ob_program.
    DATA t23 TYPE REF TO object.
    t23 = t1.
    t21 ?= t23.
    t20 = t21.
    t20->parse_xml( ).
    DATA t26 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    t26 = t20->parsed_xml->selection_texts.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    DATA(t33) = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t35 TYPE REF TO zcl_lnt_ob_program.
    DATA t37 TYPE REF TO object.
    t37 = t1.
    t35 ?= t37.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    me->check_file( i_file = t35->get_main_abap_file( ) i_sel_texts = t26 i_output = t30 i_checked = t33 i_main_prog_name = t41 ).
    result = t30.

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
      CLEAR t5.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA(t18) = VALUE string( ).
    DATA t19 TYPE REF TO zcl_lnt_abstract_file.
    t19 = t1.
    t18 = t19->filename.
    IF t4->has( p0 = t18 ) = abap_true.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA t27 TYPE REF TO zcl_lnt_abstract_file.
    t27 = t1.
    DATA(t30) = VALUE string( ).
    t30 = t27->filename.
    t24 = t4->add( p0 = t30 ).
    DATA(t32) = VALUE abap_bool( ).
    t32 = abap_false.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t34 = t1->statements.
    DATA t40 TYPE REF TO zcl_lnt_statement_node.
    DATA t41 TYPE REF TO object.
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
        t44 = t43->as_ref( ).
        t40 ?= t44.
      ELSE.
        t40 ?= t41.
      ENDIF.
      DATA t45 TYPE REF TO zif_lnt_statement.
      t45 = t40->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_st_selection_screen ) = abap_true.
        DATA(t50) = VALUE string( ).
        DATA(t51) = VALUE string( ).
        DATA(t52) = VALUE string( ).
        t52 = t40->concat_tokens( ).
        DATA(t54) = strlen( t52 ).
        t51 = t52.
        IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t51 TO UPPER CASE.
        ELSE.
          t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
        ENDIF.
        t50 = t51.
        DATA(t56) = VALUE i( ).
        DATA(t58) = |BEGIN OF LINE|.
        DATA(t59) = strlen( t50 ).
        IF t58 IS INITIAL.
          t56 = 0.
        ELSE.
          FIND t58 IN t50 MATCH OFFSET t56.
          IF sy-subrc <> 0.
            t56 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t56 >= 0 ) = abap_true.
          t32 = abap_true.
        ELSE.
          DATA(t63) = VALUE i( ).
          DATA(t65) = |END OF LINE|.
          DATA(t66) = strlen( t50 ).
          IF t65 IS INITIAL.
            t63 = 0.
          ELSE.
            FIND t65 IN t50 MATCH OFFSET t63.
            IF sy-subrc <> 0.
              t63 = -1.
            ENDIF.
          ENDIF.
          IF xsdbool( t63 >= 0 ) = abap_true.
            t32 = abap_false.
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      IF xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_include ) = abap_true.
        DATA t71 TYPE REF TO zcl_lnt_expression_node.
        DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
        t71 = t40->find_first_expression( i_type_9913 = t74 ).
        IF xsdbool( t71 IS BOUND ) = abap_true.
          DATA(t78) = VALUE string( ).
          DATA(t79) = VALUE string( ).
          t79 = t71->get_first_token( )->str.
          DATA(t86) = strlen( t79 ).
          t78 = t79.
          IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t78 TO UPPER CASE.
          ELSE.
            t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
          ENDIF.
          DATA t87 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t87.
          DATA t88 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t88.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          DATA t90 TYPE REF TO zif_lnt_object.
          DATA(t92) = me->reg.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t96->has = abap_true.
          t96->value = |PROG|.
          t93 = t96.
          DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t101->has = abap_true.
          t101->value = t78.
          t90 = t92->get_object( i_type_9913 = t93 i_name = t101 ).
          CLEAR t89.
          IF t90 IS BOUND.
            DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t103.
            DATA t104 TYPE REF TO object.
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
          IF xsdbool( t87 IS BOUND ) = abap_true.
            DATA t107 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t107.
            t107 = t87->get_main_abap_file( ).
            DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t116 = t5.
            DATA(t118) = VALUE string( ).
            DATA(t119) = VALUE abap_bool( ).
            IF t116 IS INITIAL.
              t119 = abap_true.
            ELSEIF t116->has = abap_false.
              t119 = abap_true.
            ENDIF.
            IF t119 = abap_true.
              DATA t122 TYPE REF TO zcl_lnt_abstract_file.
              t122 = t1.
              t118 = t122->filename.
            ELSE.
              t118 = t116->value.
            ENDIF.
            DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t129->has = abap_true.
            t129->value = t118.
            me->check_file( i_file = t107 i_sel_texts = t2 i_output = t3 i_checked = t4 i_main_prog_name = t129 ).
          ENDIF.
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA(t131) = VALUE abap_bool( ).
      t131 = t32.
      IF t32 = abap_false.
        DATA(t134) = VALUE abap_bool( ).
        DATA(t135) = VALUE abap_bool( ).
        t135 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_st_parameter ).
        t134 = t135.
        IF t135 = abap_false.
          t134 = xsdbool( t45 IS BOUND AND t45 IS INSTANCE OF zcl_lnt_st_select_option ).
        ENDIF.
        t131 = xsdbool( t134 = abap_false ).
      ENDIF.
      IF t131 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t140) = VALUE i( ).
      DATA(t141) = VALUE string( ).
      DATA(t142) = VALUE string( ).
      t142 = t40->concat_tokens( ).
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
      IF xsdbool( t140 >= 0 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t148 TYPE REF TO zcl_lnt_expression_node.
      DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
      t148 = t40->find_first_expression( i_type_9913 = t151 ).
      IF xsdbool( t148 IS BOUND ) = abap_true.
        DATA(t154) = VALUE string( ).
        DATA(t155) = VALUE string( ).
        DATA(t156) = VALUE string( ).
        t156 = t148->get_first_token( )->str.
        DATA(t163) = strlen( t156 ).
        t155 = t156.
        IF t155 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t155 TO UPPER CASE.
        ELSE.
          t155 = zlnt_runtime_uppe_91169605024d=>full( t155 ).
        ENDIF.
        t154 = t155.
        DATA t166 TYPE REF TO zcl_lnt_shape_015c050b.
        t166 = t2->get( p0 = t154 ).
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        CLEAR t169.
        IF xsdbool( t166 IS INITIAL ) = abap_true.
          DATA(t173) = VALUE string( ).
          DATA(t174) = VALUE string( ).
          DATA(t175) = VALUE abap_bool( ).
          IF t5 IS BOUND.
            IF t5->has = abap_true.
              t175 = xsdbool( strlen( t5->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t175 = abap_true.
            DATA(t178) = VALUE string( ).
            DATA(t179) = |, |.
            DATA(t180) = VALUE string( ).
            t180 = t5->value.
            DATA(t182) = strlen( t179 ).
            t178 = |{ t179 }{ t180 }|.
            DATA(t184) = strlen( t178 ).
            t174 = |{ t178 }{ || }|.
          ELSE.
            t174 = ||.
          ENDIF.
          t173 = t174.
          DATA t187 TYPE REF TO zcl_lnt_issue.
          CLEAR t187.
          DATA t188 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t188.
          t188 = t1.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t190.
          t190 = t148->get_first_token( ).
          DATA(t193) = VALUE string( ).
          DATA(t194) = VALUE string( ).
          DATA(t195) = VALUE string( ).
          DATA(t196) = VALUE string( ).
          DATA(t197) = |Selection text missing for "|.
          DATA(t199) = strlen( t197 ).
          t196 = |{ t197 }{ t154 }|.
          DATA(t201) = strlen( t196 ).
          t195 = |{ t196 }{ |"| }|.
          DATA(t203) = strlen( t195 ).
          t194 = |{ t195 }{ t173 }|.
          DATA(t205) = strlen( t194 ).
          t193 = |{ t194 }{ || }|.
          DATA(t206) = VALUE string( ).
          DATA t207 TYPE REF TO zcl_lnt_irule_metadata.
          DATA(t212) = VALUE string( ).
          DATA(t213) = |Checks that selection screen parameters and select-options h|.
          t213 = t213 && |ave selection texts|.
          t212 = t213.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          DATA(t217) = |Excludes parameters and select-options that:\n* are inside a |.
          t217 = t217 && |"SELECTION-SCREEN BEGIN OF LINE" block\n* have the addition "|.
          t217 = t217 && |NO-DISPLAY"|.
          DATA(t218) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t218->has = abap_true.
          t218->value = t217.
          t214 = t218.
          DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t220.
          CLEAR t220.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          CLEAR t222.
          DATA t224 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t224.
          CLEAR t224.
          DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t226.
          CLEAR t226.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          CLEAR t228.
          t207 = NEW zcl_lnt_irule_metadata( i_key = |selection_screen_texts_missing| i_title = |Selection screen texts missing| i_short_description = t212 i_bad_example = t220 i_good_example = t222 i_extended_information = t214 i_tags = t224 i_pragma = t226 i_pseudo_comment = t228 ).
          CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
          t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t230.
          t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t230 ).
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
          DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t235.
          t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t235 ).
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t237 ).
          ENDIF.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t239.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t239 ).
          ENDIF.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t241 ).
          ENDIF.
          t206 = t207->key.
          DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t242.
          t242 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t244 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t244.
          t187 = zcl_lnt_issue=>at_token( i_file = t188 i_token = t190 i_message_26cb = t193 i_key = t206 i_severity = t242 i_fix = t244 ).
          t3->load( ).
          APPEND t187 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_slc_scrn_txts_mssn_cnf( me->g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slc_scrn_txts_mssn_cnf( me->g_c_i_s_r_s_s_t_m_t_s_sc_tx_ms( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slc_scrn_txts_mssn_cnf.
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
        t2 = NEW zcl_lnt_slc_scrn_txts_mssn_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_s_s_t_m_t_s_sc_tx_ms( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_s_r_s_s_t_m_ts_sl_sc_tx_ms( i_reg_f149 = t3 ).

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
