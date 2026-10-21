* TS: src/rules/select_single_full_key.ts:22:1 SelectSingleFullKey
CLASS zcl_lnt_select_single_full_key DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_s_r_s_s_f_k_ts_sl_sn_fl_ky IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_select_single_full_key.
    METHODS g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky RETURNING VALUE(result) TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
    METHODS s_c_i_s_r_s_s_f_k_t_s_sn_fl_ky IMPORTING i_conf TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_fix.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_reference IMPORTING i_position_a3fd TYPE REF TO zcl_lnt_position i_spaghetti TYPE REF TO zif_lnt_spaghetti_scope i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
CLASS zcl_lnt_select_single_full_key IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_slct_sngl_fll_ky_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Table definitions must be known, ie. inside the errorNamespa|.
    t11 = t11 && |ce\n\nIf the statement contains a JOIN it is not checked|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = |EC CI_NOORDER|.
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t24.
    t24->load( ).
    APPEND |Quickfix| TO t24->items.
    t24->save( ).
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |select_single_full_key| i_title = |Detect SELECT SINGLE which are possibily not unique| i_short_description = |Detect SELECT SINGLE which are possibily not unique| i_bad_example = t30 i_good_example = t32 i_extended_information = t8 i_tags = t24 i_pragma = t34 i_pseudo_comment = t14 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t43 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t45 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD i_i_s_r_s_s_f_k_ts_sl_sn_fl_ky.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->conf IS INITIAL ) = abap_true.
      me->conf = NEW zcl_lnt_slct_sngl_fll_ky_cnf( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t10 = me->conf->zlnt_view_read_sr_fcd7d4ea2872( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = VALUE abap_bool( ).
    IF t10 IS INITIAL.
      t15 = abap_true.
    ELSEIF t10->has = abap_false.
      t15 = abap_true.
    ENDIF.
    IF t15 = abap_true.
      DATA(t17) = me->conf.
      DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t21->has = abap_true.
      t21->value = abap_true.
      t17->zlnt_view_write_s_068e17972032( p0 = t21 ).
    ENDIF.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_s_s_f_k_t_s_sn_fl_ky.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD build_fix.
    DATA t3 TYPE REF TO zcl_lnt_fix.
    DATA(t8) = i_file.
    DATA t9 TYPE REF TO zcl_lnt_position.
    t9 = i_statement->get_last_token( )->start.
    t3 = NEW zcl_lnt_fix( i_description = |Add "#EC CI_NOORDER| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t8 i_pos = t9 i_text = | "#EC CI_NOORDER| ) ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t16 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t17 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t19 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t21 ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zcl_lnt_isyntax_result.
    DATA(t9) = me->reg.
    DATA t10 TYPE REF TO zcl_lnt_abap_object.
    t10 ?= t1.
    t6 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t9 i_object_19cd = t10 )->run( ).
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t6->zlnt_view_read_sr_bd188c319c03( ).
    t15->load( ).
    IF xsdbool( lines( t15->items ) > 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_abap_object.
    t25 ?= t1.
    t23 = t25->parsed.
    DATA t30 TYPE REF TO zcl_lnt_abap_file.
    DATA t31 TYPE REF TO object.
    DATA(t32) = VALUE i( ).
    DO.
      t23->load( ).
      IF t32 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t23->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t35 = t30->statements.
      DATA t41 TYPE i.
      t41 = 0.
      DO.
        t35->load( ).
        IF xsdbool( t41 < lines( t35->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t47 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t48.
        DATA(t50) = t41.
        t50 = t50 + 1.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        t35->load( ).
        CLEAR t51.
        READ TABLE t35->items INDEX t50 INTO t51.
        DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t52.
        CLEAR t48.
        IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t52 ?= t51.
          DATA t53 TYPE REF TO object.
          t53 = t52->as_ref( ).
          t48 ?= t53.
        ELSE.
          t48 ?= t51.
        ENDIF.
        t47 = t48.
        DATA t56 TYPE REF TO zif_lnt_statement.
        t56 = t47->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_st_statem_select ) = abap_false ) = abap_true.
          DATA(t60) = 1.
          t41 = t41 + t60.
          CONTINUE.
        ENDIF.
        DATA t62 TYPE REF TO zcl_lnt_expression_node.
        DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d320_7be18f722ddf.
        t62 = t47->find_first_expression( i_type_9913 = t64 ).
        IF xsdbool( t62 IS BOUND ) = abap_true.
          DATA(t67) = 1.
          t41 = t41 + t67.
          CONTINUE.
        ENDIF.
        DATA t70 TYPE REF TO zcl_lnt_position.
        t70 = t47->find_token_sequence_position( i_first = |SELECT| i_second = |SINGLE| ).
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF xsdbool( t70 IS INITIAL ) = abap_true.
          DATA(t80) = 1.
          t41 = t41 + t80.
          CONTINUE.
        ENDIF.


        DATA t81 TYPE REF TO zcl_lnt_expression_node.
        DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
        t81 = t47->find_first_expression( i_type_9913 = t84 ).
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF xsdbool( t81 IS INITIAL ) = abap_true.
          DATA(t94) = 1.
          t41 = t41 + t94.
          CONTINUE.
        ENDIF.
        DATA t95 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t95.
        DATA t96 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t96.
        DATA t98 TYPE i.
        DATA(t100) = 1.
        t98 = t41 + t100.
        t98 = t98 + 1.
        DATA t101 TYPE REF TO object.
        CLEAR t101.
        t35->load( ).
        CLEAR t101.
        READ TABLE t35->items INDEX t98 INTO t101.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        CLEAR t96.
        IF t101 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t102 ?= t101.
          DATA t103 TYPE REF TO object.
          t103 = t102->as_ref( ).
          t96 ?= t103.
        ELSE.
          t96 ?= t101.
        ENDIF.
        t95 = t96.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE abap_bool( ).
        DATA t106 TYPE REF TO zif_lnt_statement.
        CLEAR t106.
        DATA t107 TYPE REF TO zcl_lnt_statement_node.
        t107 = t95.
        DATA t109 TYPE REF TO zif_lnt_statement.
        CLEAR t109.
        IF xsdbool( t107 IS INITIAL ) = abap_true.
          CLEAR t109.
        ELSE.
          t109 = t107->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        ENDIF.
        t106 = t109.
        t105 = xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_st_comment ).
        t104 = t105.
        IF t105 = abap_true.
          DATA(t116) = VALUE i( ).
          DATA t117 TYPE string.
          t117 = t95->concat_tokens( ).
          DATA(t119) = VALUE string( ).
          DATA(t120) = VALUE string( ).
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          DATA t123 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t133) = |Table definitions must be known, ie. inside the errorNamespa|.
          t133 = t133 && |ce\n\nIf the statement contains a JOIN it is not checked|.
          DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t134->has = abap_true.
          t134->value = t133.
          t130 = t134.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t140->has = abap_true.
          t140->value = |EC CI_NOORDER|.
          t136 = t140.
          DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t142.
          DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t146.
          t146->load( ).
          APPEND |Quickfix| TO t146->items.
          t146->save( ).
          t142 = t146.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          t123 = NEW zcl_lnt_irule_metadata( i_key = |select_single_full_key| i_title = |Detect SELECT SINGLE which are possibily not unique| i_short_description = |Detect SELECT SINGLE which are possibily not unique| i_bad_example = t152 i_good_example = t154 i_extended_information = t130 i_tags = t142 i_pragma = t156 i_pseudo_comment = t136 ).
          CREATE OBJECT t123->zlnt_view_ownkeys_b0e8086400eb.
          t123->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t158 ).
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t159 ).
          ENDIF.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t160 ).
          ENDIF.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t161 ).
          ENDIF.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t162 ).
          ENDIF.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t123->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t123->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t163 ).
          ENDIF.
          CREATE OBJECT t123->zlnt_json_ownkeys_70e5fd461788.
          t123->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t165 ).
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t167 ).
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t169 ).
          ENDIF.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t171 ).
          ENDIF.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t173 ).
          ENDIF.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          IF t123->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t123->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t175 ).
          ENDIF.
          t121 = t123->pseudo_comment.
          DATA(t176) = VALUE string( ).
          DATA(t177) = VALUE abap_bool( ).
          IF t121 IS INITIAL.
            t177 = abap_true.
          ELSEIF t121->has = abap_false.
            t177 = abap_true.
          ENDIF.
          IF t177 = abap_true.
            t176 = |undefined|.
          ELSE.
            t176 = t121->value.
          ENDIF.
          t120 = t176.
          DATA(t183) = strlen( t120 ).
          t119 = |{ t120 }{ || }|.
          DATA(t184) = strlen( t117 ).
          IF t119 IS INITIAL.
            t116 = 0.
          ELSE.
            FIND t119 IN t117 MATCH OFFSET t116.
            IF sy-subrc <> 0.
              t116 = -1.
            ENDIF.
          ENDIF.
          t104 = xsdbool( t116 >= 0 ).
        ENDIF.
        IF t104 = abap_true.
          DATA(t186) = VALUE abap_bool( ).
          DATA t187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t187 = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) )->zlnt_view_read_sr_fcd7d4ea2872( ).
          DATA t189 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t192) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t192->has = abap_true.
          t192->value = abap_true.
          t189 = t192.
          DATA(t194) = VALUE abap_bool( ).
          DATA(t195) = VALUE abap_bool( ).
          IF t187 IS BOUND.
            t194 = t187->has.
          ENDIF.
          IF t189 IS BOUND.
            t195 = t189->has.
          ENDIF.
          IF t194 = t195.
            IF t194 = abap_false.
              t186 = abap_true.
            ELSEIF t187->value = t189->value.
              t186 = abap_true.
            ENDIF.
          ENDIF.
          IF t186 = abap_true.
            t186 = abap_false.
          ELSE.
            t186 = abap_true.
          ENDIF.
          IF t186 = abap_true.
            DATA t197 TYPE REF TO zcl_lnt_issue.
            CLEAR t197.
            DATA(t201) = VALUE string( ).
            DATA t202 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t209.
            DATA(t212) = |Table definitions must be known, ie. inside the errorNamespa|.
            t212 = t212 && |ce\n\nIf the statement contains a JOIN it is not checked|.
            DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t213->has = abap_true.
            t213->value = t212.
            t209 = t213.
            DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t215.
            DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t219->has = abap_true.
            t219->value = |EC CI_NOORDER|.
            t215 = t219.
            DATA t221 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t221.
            DATA t225 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t225.
            t225->load( ).
            APPEND |Quickfix| TO t225->items.
            t225->save( ).
            t221 = t225.
            DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t231.
            DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t233.
            DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t235.
            t202 = NEW zcl_lnt_irule_metadata( i_key = |select_single_full_key| i_title = |Detect SELECT SINGLE which are possibily not unique| i_short_description = |Detect SELECT SINGLE which are possibily not unique| i_bad_example = t231 i_good_example = t233 i_extended_information = t209 i_tags = t221 i_pragma = t235 i_pseudo_comment = t215 ).
            CREATE OBJECT t202->zlnt_view_ownkeys_b0e8086400eb.
            t202->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t237.
            t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t237 ).
            DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t238.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t238 ).
            ENDIF.
            DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t239.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t239 ).
            ENDIF.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t240 ).
            ENDIF.
            DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t241.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t241 ).
            ENDIF.
            DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t242.
            IF t202->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t202->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t242 ).
            ENDIF.
            CREATE OBJECT t202->zlnt_json_ownkeys_70e5fd461788.
            t202->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t244.
            t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t244 ).
            DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t246.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t246 ).
            ENDIF.
            DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t248.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t248 ).
            ENDIF.
            DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t250.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t250 ).
            ENDIF.
            DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t252.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t252 ).
            ENDIF.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            IF t202->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t202->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t254 ).
            ENDIF.
            t201 = t202->key.
            DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t255 = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) )->zlnt_view_read_sr_15c06369f827( ).
            DATA t257 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t257.
            DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t258.
            t197 = zcl_lnt_issue=>at_statement( i_file = t30 i_statement = t47 i_message_26cb = |Pseudo comment not allowed| i_key = t201 i_severity = t255 i_fix = t257 i_alternative_fixes = t258 ).
            t19->load( ).
            APPEND t197 TO t19->items.
            t19->save( ).
          ENDIF.
          DATA(t261) = 1.
          t41 = t41 + t261.
          CONTINUE.
        ENDIF.
        DATA t264 TYPE REF TO zcl_lnt_position.
        t264 = t81->get_first_token( )->start.
        DATA t273 TYPE REF TO zif_lnt_spaghetti_scope.
        t273 = t6->zlnt_view_read_sr_b6b1d9e0c93e( ).
        DATA t281 TYPE REF TO zcl_lnt_position.
        CLEAR t281.
        t281 = t264.
        DATA t288 TYPE REF TO zcl_lnt_abstract_file.
        t288 = t30.
        DATA t290 TYPE string.
        t290 = t288->filename.
        DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t292->has = abap_true.
        t292->value = t290.
        DATA t295 TYPE REF TO zif_lnt_spaghetti_scope_node.
        t295 = t273->lookup_position( i_p = t281 i_filename = t292 ).
        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t297.
        IF xsdbool( t295 IS INITIAL ) = abap_true.
          CLEAR t297.
        ELSE.
          t297 = t295->find_table_reference( i_pos = t264 ).
        ENDIF.
        DATA t305 TYPE REF TO zcl_lnt_table.
        DATA t306 TYPE REF TO zcl_lnt_table.
        CLEAR t306.
        DATA(t308) = me->reg.
        DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t312->has = abap_true.
        t312->value = |TABL|.
        DATA t315 TYPE REF TO object.
        t315 = t308->get_object( i_type_9913 = t312 i_name = t297 ).
        t306 ?= t315.
        t305 = t306.
        DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t319.
        IF xsdbool( t305 IS INITIAL ) = abap_true.
          DATA(t325) = 1.
          t41 = t41 + t325.
          CONTINUE.
        ENDIF.
        DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t328 TYPE REF TO zcl_lnt_table.
        t328 = t305.
        DATA(t330) = me->reg.
        t326 = t328->list_keys( i_reg_f149 = t330 ).
        DATA t332 TYPE REF TO zcl_lnt_expression_node.
        DATA(t334) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
        t332 = t47->find_first_expression( i_type_9913 = t334 ).
        DATA t335 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        t335 = NEW zlnt_runtime_set__1827558fd4c7( ).
        DATA(t338) = VALUE string( ).
        t326->dense( ).
        DATA(t339) = VALUE i( ).
        DO.
          t326->load( ).
          IF t339 >= lines( t326->items ).
            EXIT.
          ENDIF.
          CLEAR t338.
          READ TABLE t326->items INDEX t339 + 1 INTO t338.
          IF t326->has( t339 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t339 = t339 + 1.
          IF xsdbool( t338 = |MANDT| ) = abap_true.
            CONTINUE.
          ENDIF.
          DATA t343 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          t343 = t335->add( p0 = t338 ).
        ENDDO.
        DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t346.
        DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t347.
        DATA t349 TYPE REF TO zcl_lnt_expression_node.
        t349 = t332.
        DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t351.
        IF xsdbool( t349 IS INITIAL ) = abap_true.
          CLEAR t351.
        ELSE.
          DATA t356 TYPE REF TO zcl_lnt_expression_node.
          t356 = t349.
          DATA(t358) = zlnt_runtime_desc_78196487750d=>zlnt_member_d301_61c04e5b3781.
          t351 = t356->find_all_expressions_recursive( i_type_9913 = t358 ).
        ENDIF.
        t347 = t351.
        DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t359.
        IF xsdbool( t347 IS BOUND ) = abap_true.
          t359 = t347.
        ELSE.
          CREATE OBJECT t359.
        ENDIF.
        t346 = t359.
        DATA t365 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t365.
        DATA t366 TYPE REF TO object.
        CLEAR t366.
        DATA(t367) = VALUE i( ).
        DO.
          t346->load( ).
          IF t367 >= lines( t346->items ).
            EXIT.
          ENDIF.
          CLEAR t366.
          READ TABLE t346->items INDEX t367 + 1 INTO t366.
          t367 = t367 + 1.
          DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t368.
          CLEAR t365.
          IF t366 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t368 ?= t366.
            DATA t369 TYPE REF TO object.
            t369 = t368->as_ref( ).
            t365 ?= t369.
          ELSE.
            t365 ?= t366.
          ENDIF.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA t372 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t372.
          DATA t374 TYPE REF TO zcl_lnt_expression_node.
          DATA(t377) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
          t374 = t365->find_direct_expression( i_type_9913 = t377 ).
          DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t378.
          IF xsdbool( t374 IS INITIAL ) = abap_true.
            CLEAR t378.
          ELSE.
            DATA t382 TYPE string.
            t382 = t374->concat_tokens( ).
            DATA(t385) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t385->has = abap_true.
            t385->value = t382.
            t378 = t385.
          ENDIF.
          t372 = t378.
          DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t386.
          DATA(t387) = VALUE abap_bool( ).
          IF t372 IS INITIAL.
            t387 = abap_true.
          ELSEIF t372->has = abap_false.
            t387 = abap_true.
          ENDIF.
          IF t387 = abap_true.
            CLEAR t386.
          ELSE.
            DATA t390 TYPE string.
            DATA t391 TYPE string.
            t391 = t372->value.
            DATA(t393) = strlen( t391 ).
            t390 = t391.
            IF t390 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t390 TO UPPER CASE.
            ELSE.
              t390 = zlnt_runtime_uppe_91169605024d=>full( t390 ).
            ENDIF.
            DATA(t394) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t394->has = abap_true.
            t394->value = t390.
            t386 = t394.
          ENDIF.
          t370 = t386.
          DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t395.
          DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t397.
          DATA t399 TYPE REF TO zcl_lnt_expression_node.
          DATA(t402) = zlnt_runtime_desc_78196487750d=>zlnt_member_d298_782c2da798c9.
          t399 = t365->find_direct_expression( i_type_9913 = t402 ).
          DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t403.
          IF xsdbool( t399 IS INITIAL ) = abap_true.
            CLEAR t403.
          ELSE.
            DATA t407 TYPE string.
            t407 = t399->concat_tokens( ).
            DATA(t410) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t410->has = abap_true.
            t410->value = t407.
            t403 = t410.
          ENDIF.
          t397 = t403.
          DATA t411 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t411.
          DATA(t412) = VALUE abap_bool( ).
          IF t397 IS INITIAL.
            t412 = abap_true.
          ELSEIF t397->has = abap_false.
            t412 = abap_true.
          ENDIF.
          IF t412 = abap_true.
            CLEAR t411.
          ELSE.
            DATA t415 TYPE string.
            DATA t416 TYPE string.
            t416 = t397->value.
            DATA(t418) = strlen( t416 ).
            t415 = t416.
            IF t415 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t415 TO UPPER CASE.
            ELSE.
              t415 = zlnt_runtime_uppe_91169605024d=>full( t415 ).
            ENDIF.
            DATA(t419) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t419->has = abap_true.
            t419->value = t415.
            t411 = t419.
          ENDIF.
          t395 = t411.
          DATA(t420) = VALUE abap_bool( ).
          DATA(t421) = VALUE abap_bool( ).
          IF t370 IS BOUND.
            IF t370->has = abap_true.
              t421 = xsdbool( strlen( t370->value ) > 0 ).
            ENDIF.
          ENDIF.
          t420 = t421.
          IF t421 = abap_true.
            DATA(t423) = VALUE abap_bool( ).
            DATA(t424) = VALUE abap_bool( ).
            DATA t426 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t429) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t429->has = abap_true.
            t429->value = |=|.
            t426 = t429.
            DATA(t431) = VALUE abap_bool( ).
            DATA(t432) = VALUE abap_bool( ).
            IF t395 IS BOUND.
              t431 = t395->has.
            ENDIF.
            IF t426 IS BOUND.
              t432 = t426->has.
            ENDIF.
            IF t431 = t432.
              IF t431 = abap_false.
                t424 = abap_true.
              ELSEIF t395->value = t426->value.
                t424 = abap_true.
              ENDIF.
            ENDIF.
            t423 = t424.
            IF t424 = abap_false.
              DATA(t433) = VALUE abap_bool( ).
              DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t438) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t438->has = abap_true.
              t438->value = |EQ|.
              t435 = t438.
              DATA(t440) = VALUE abap_bool( ).
              DATA(t441) = VALUE abap_bool( ).
              IF t395 IS BOUND.
                t440 = t395->has.
              ENDIF.
              IF t435 IS BOUND.
                t441 = t435->has.
              ENDIF.
              IF t440 = t441.
                IF t440 = abap_false.
                  t433 = abap_true.
                ELSEIF t395->value = t435->value.
                  t433 = abap_true.
                ENDIF.
              ENDIF.
              t423 = t433.
            ENDIF.
            t420 = t423.
          ENDIF.
          IF t420 = abap_true.
            DATA t442 TYPE abap_bool.
            DATA t444 TYPE string.
            t444 = t370->value.
            t442 = t335->delete( p0 = t444 ).
          ENDIF.
        ENDDO.
        IF xsdbool( t335->size( ) > 0 ) = abap_true.
          DATA t456 TYPE REF TO zcl_lnt_fix.
          DATA t462 TYPE REF TO zcl_lnt_position.
          t462 = t47->get_last_token( )->start.
          t456 = NEW zcl_lnt_fix( i_description = |Add "#EC CI_NOORDER| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t30 i_pos = t462 i_text = | "#EC CI_NOORDER| ) ).
          CREATE OBJECT t456->zlnt_view_ownkeys_b0e8086400eb.
          t456->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t469.
          t456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t469 ).
          DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t470.
          IF t456->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t456->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t470 ).
          ENDIF.
          CREATE OBJECT t456->zlnt_json_ownkeys_70e5fd461788.
          t456->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t472.
          t456->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t472 ).
          DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t474.
          IF t456->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t456->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t474 ).
          ENDIF.
          DATA t476 TYPE REF TO zcl_lnt_issue.
          CLEAR t476.
          DATA(t480) = VALUE string( ).
          DATA t481 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t488.
          DATA(t491) = |Table definitions must be known, ie. inside the errorNamespa|.
          t491 = t491 && |ce\n\nIf the statement contains a JOIN it is not checked|.
          DATA(t492) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t492->has = abap_true.
          t492->value = t491.
          t488 = t492.
          DATA t494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t494.
          DATA(t498) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t498->has = abap_true.
          t498->value = |EC CI_NOORDER|.
          t494 = t498.
          DATA t500 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t500.
          DATA t504 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t504.
          t504->load( ).
          APPEND |Quickfix| TO t504->items.
          t504->save( ).
          t500 = t504.
          DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t510.
          DATA t512 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t512.
          DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t514.
          t481 = NEW zcl_lnt_irule_metadata( i_key = |select_single_full_key| i_title = |Detect SELECT SINGLE which are possibily not unique| i_short_description = |Detect SELECT SINGLE which are possibily not unique| i_bad_example = t510 i_good_example = t512 i_extended_information = t488 i_tags = t500 i_pragma = t514 i_pseudo_comment = t494 ).
          CREATE OBJECT t481->zlnt_view_ownkeys_b0e8086400eb.
          t481->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t516.
          t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t516 ).
          DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t517.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t517 ).
          ENDIF.
          DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t518.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t518 ).
          ENDIF.
          DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t519.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t519 ).
          ENDIF.
          DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t520.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t520 ).
          ENDIF.
          DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t521.
          IF t481->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t481->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t521 ).
          ENDIF.
          CREATE OBJECT t481->zlnt_json_ownkeys_70e5fd461788.
          t481->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t523.
          t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t523 ).
          DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t525.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t525 ).
          ENDIF.
          DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t527.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t527 ).
          ENDIF.
          DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t529.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t529 ).
          ENDIF.
          DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t531.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t531 ).
          ENDIF.
          DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t533.
          IF t481->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t481->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t533 ).
          ENDIF.
          t480 = t481->key.
          DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t534 = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) )->zlnt_view_read_sr_15c06369f827( ).
          DATA t536 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t536.
          DATA t540 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t540.
          t540->load( ).
          APPEND t456 TO t540->items.
          t540->save( ).
          t476 = zcl_lnt_issue=>at_statement( i_file = t30 i_statement = t47 i_message_26cb = |SELECT SINGLE possibily not unique| i_key = t480 i_severity = t534 i_fix = t536 i_alternative_fixes = t540 ).
          t19->load( ).
          APPEND t476 TO t19->items.
          t19->save( ).
        ENDIF.
        DATA(t548) = 1.
        t41 = t41 + t548.
      ENDDO.
    ENDDO.
    result = t19.

  ENDMETHOD.

  METHOD find_reference.
    DATA(t1) = i_position_a3fd.
    DATA(t6) = i_spaghetti.
    DATA t7 TYPE REF TO zcl_lnt_position.
    t7 = t1.
    DATA t14 TYPE REF TO zcl_lnt_abstract_file.
    t14 = i_file.
    DATA t16 TYPE string.
    t16 = t14->filename.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t16.
    DATA t21 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t21 = t6->lookup_position( i_p = t7 i_filename = t18 ).
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t21 IS INITIAL ) = abap_true.
    ELSE.
      t23 = t21->find_table_reference( i_pos = t1 ).
    ENDIF.
    result = t23.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_s_r_s_s_f_k_ts_sl_sn_fl_ky( i_reg_f149 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slct_sngl_fll_ky_cnf( me->g_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slct_sngl_fll_ky_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t2 = NEW zcl_lnt_slct_sngl_fll_ky_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_s_s_f_k_t_s_sn_fl_ky( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1690_199bc9d874b2.
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
