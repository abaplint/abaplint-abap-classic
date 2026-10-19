* TS: src/rules/no_comments_between_methods.ts:14:1 NoCommentsBetweenMethods
CLASS zcl_lnt_n_cmmnts_btwn_mthds DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_cmmnt_btwn_mthds_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_n_c_b_m_t_n_cm_bt_mt RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_cmmnt_btwn_mthds_cnf.
    METHODS s_c_i_s_r_n_c_b_m_t_n_cm_bt_mt IMPORTING i_conf TYPE REF TO zcl_lnt_n_cmmnt_btwn_mthds_cnf.
    METHODS r_p_i_s_r_n_c_b_m_t_n_cm_bt_mt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_n_cmmnts_btwn_mthds IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_n_cmmnt_btwn_mthds_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |It's not possible to have comments between methods in global|.
    t7 = t7 && | classes.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Syntax| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = |CLASS zcl_foo IMPLEMENTATION.\n  METHOD first.\n  ENDMETHOD.\n |.
    t23 = t23 && | " comment\n  METHOD second.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA(t29) = |CLASS zcl_foo IMPLEMENTATION.\n  METHOD first.\n  ENDMETHOD.\n\n|.
    t29 = t29 && |  METHOD second.\n  ENDMETHOD.\nENDCLASS.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |no_comments_between_methods| i_title = |No comments between methods in global classes| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_n_c_b_m_t_n_cm_bt_mt.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_n_c_b_m_t_n_cm_bt_mt.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_n_c_b_m_t_n_cm_bt_mt.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    IF xsdbool( xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ELSE.
      DATA(t9) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zcl_lnt_abap_file.
      t10 = t1.
      DATA t14 TYPE REF TO zcl_lnt_abap_file.
      DATA t15 TYPE REF TO zcl_lnt_class.
      DATA t17 TYPE REF TO object.
      t17 = t2.
      t15 ?= t17.
      t14 = t15->get_main_abap_file( ).
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t10 IS BOUND.
        IF t10 IS BOUND.
          DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t21 TYPE REF TO object.
          t21 = t10.
          TRY.
              t18 ?= t21.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t18 IS NOT BOUND.
            TRY.
                t20 ?= t10.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t20 IS BOUND.
              t18 = t20->source( ).
            ENDIF.
            IF t18 IS NOT BOUND.
              CREATE OBJECT t18.
              t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t18->oval = t10.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t14 IS BOUND.
        IF t14 IS BOUND.
          DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t23 TYPE REF TO object.
          t23 = t14.
          TRY.
              t19 ?= t23.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t19 IS NOT BOUND.
            TRY.
                t22 ?= t14.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t22 IS BOUND.
              t19 = t22->source( ).
            ENDIF.
            IF t19 IS NOT BOUND.
              CREATE OBJECT t19.
              t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t19->oval = t14.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t18 IS BOUND.
        t9 = t18->strict_equals( t19 ).
      ELSE.
        t9 = xsdbool( t19 IS NOT BOUND ).
      ENDIF.
      t9 = xsdbool( t9 = abap_false ).
      IF t9 = abap_true.
        CREATE OBJECT result.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t25) = VALUE abap_bool( ).
    t25 = abap_false.
    DATA(t27) = VALUE abap_bool( ).
    t27 = abap_false.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t29 = t1->statements.
    DATA t34 TYPE REF TO zcl_lnt_statement_node.
    DATA t35 TYPE REF TO object.
    DATA(t36) = VALUE i( ).
    DO.
      t29->load( ).
      IF t36 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t35.
      READ TABLE t29->items INDEX t36 + 1 INTO t35.
      t36 = t36 + 1.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      CLEAR t34.
      IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t37 ?= t35.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        t38 = t37->as_ref( ).
        t34 ?= t38.
      ELSE.
        t34 ?= t35.
      ENDIF.
      DATA t39 TYPE REF TO zif_lnt_statement.
      CLEAR t39.
      t39 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ) = abap_true.
        t27 = abap_true.
      ELSE.
        IF xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_end_class ) = abap_true.
          t27 = abap_false.
        ELSE.
          IF xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ) = abap_true.
            t25 = abap_true.
          ELSE.
            IF xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_end_method ) = abap_true.
              t25 = abap_false.
            ELSE.
              DATA(t54) = VALUE abap_bool( ).
              DATA(t55) = VALUE abap_bool( ).
              DATA(t56) = VALUE abap_bool( ).
              t56 = xsdbool( t27 = abap_true ).
              t55 = t56.
              IF t56 = abap_true.
                t55 = xsdbool( t25 = abap_false ).
              ENDIF.
              t54 = t55.
              IF t55 = abap_true.
                t54 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_st_comment ).
              ENDIF.
              IF t54 = abap_true.
                DATA t65 TYPE REF TO zcl_lnt_issue.
                CLEAR t65.
                DATA(t69) = VALUE string( ).
                DATA t70 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t70.
                DATA(t75) = VALUE string( ).
                DATA(t76) = |It's not possible to have comments between methods in global|.
                t76 = t76 && | classes.|.
                t75 = t76.
                DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t77.
                DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t81.
                DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t82.
                CREATE OBJECT t82.
                t81 = t82.
                t81->load( ).
                APPEND |SingleFile| TO t81->items.
                t81->save( ).
                t81->load( ).
                APPEND |Syntax| TO t81->items.
                t81->save( ).
                t77 = t81.
                DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t89.
                DATA(t92) = |CLASS zcl_foo IMPLEMENTATION.\n  METHOD first.\n  ENDMETHOD.\n |.
                t92 = t92 && | " comment\n  METHOD second.\n  ENDMETHOD.\nENDCLASS.|.
                DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t93->has = abap_true.
                t93->value = t92.
                t89 = t93.
                DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t95.
                DATA(t98) = |CLASS zcl_foo IMPLEMENTATION.\n  METHOD first.\n  ENDMETHOD.\n\n|.
                t98 = t98 && |  METHOD second.\n  ENDMETHOD.\nENDCLASS.|.
                DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t99->has = abap_true.
                t99->value = t98.
                t95 = t99.
                DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t101.
                CLEAR t101.
                DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t103.
                CLEAR t103.
                DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t105.
                CLEAR t105.
                t70 = NEW zcl_lnt_irule_metadata( i_key = |no_comments_between_methods| i_title = |No comments between methods in global classes| i_short_description = t75 i_bad_example = t89 i_good_example = t95 i_extended_information = t101 i_tags = t77 i_pragma = t103 i_pseudo_comment = t105 ).
                CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
                t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t107.
                t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t107 ).
                DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t108.
                IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t108 ).
                ENDIF.
                DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t109.
                IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t109 ).
                ENDIF.
                DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t110.
                IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t110 ).
                ENDIF.
                DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t111.
                IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t111 ).
                ENDIF.
                DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t112.
                IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t112 ).
                ENDIF.
                CREATE OBJECT t70->zlnt_json_ownkeys_70e5fd461788.
                t70->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t114.
                t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t114 ).
                DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t116.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t116 ).
                ENDIF.
                DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t118.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t118 ).
                ENDIF.
                DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t120.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t120 ).
                ENDIF.
                DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t122.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t122 ).
                ENDIF.
                DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t124.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t124 ).
                ENDIF.
                t69 = t70->key.
                DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t125.
                t125 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                DATA t127 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t127.
                DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t128.
                t65 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t34 i_message_26cb = |Comment between methods in global class implementation| i_key = t69 i_severity = t125 i_fix = t127 i_alternative_fixes = t128 ).
                t3->load( ).
                APPEND t65 TO t3->items.
                t3->save( ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_n_cmmnt_btwn_mthds_cnf( me->g_c_i_s_r_n_c_b_m_t_n_cm_bt_mt( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_n_cmmnt_btwn_mthds_cnf( me->g_c_i_s_r_n_c_b_m_t_n_cm_bt_mt( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_cmmnt_btwn_mthds_cnf.
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
        t1 = NEW zcl_lnt_n_cmmnt_btwn_mthds_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_n_c_b_m_t_n_cm_bt_mt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_c_b_m_t_n_cm_bt_mt( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1609_4999348cc6ec.
  ENDMETHOD.
ENDCLASS.
