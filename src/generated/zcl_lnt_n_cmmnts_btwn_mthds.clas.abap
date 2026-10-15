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
    DATA(t1) = NEW zcl_lnt_n_cmmnt_btwn_mthds_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_comments_between_methods|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No comments between methods in global classes|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |It's not possible to have comments between methods in global|.
    t7 = t7 && | classes.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |SingleFile|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |Syntax|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |CLASS zcl_foo IMPLEMENTATION.\n  METHOD first.\n  ENDMETHOD.\n |.
      t23 = t23 && | " comment\n  METHOD second.\n  ENDMETHOD.\nENDCLASS.|.
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
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |CLASS zcl_foo IMPLEMENTATION.\n  METHOD first.\n  ENDMETHOD.\n\n|.
      t29 = t29 && |  METHOD second.\n  ENDMETHOD.\nENDCLASS.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_n_c_b_m_t_n_cm_bt_mt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_n_c_b_m_t_n_cm_bt_mt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_n_c_b_m_t_n_cm_bt_mt.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_class ).
    t5 = xsdbool( t6 = abap_false ).
    IF t5 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t8.
      CREATE OBJECT t8.
      result = t8.
      RETURN.
    ELSE.
      DATA(t9) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = t1.
        t10 = t12.
      ELSE.
        DATA t13 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t13.
        t10 = t13.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_class.
      CLEAR t15.
      DATA(t16) = t2.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      t17 = t16.
      t15 ?= t17.
      t14 = t15->get_main_abap_file( ).
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t18.
      IF t10 IS BOUND.
        CLEAR t18.
        IF t10 IS BOUND.
          DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t20.
          DATA t21 TYPE REF TO object.
          CLEAR t21.
          CLEAR t20.
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
      CLEAR t19.
      IF t14 IS BOUND.
        CLEAR t19.
        IF t14 IS BOUND.
          DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t22.
          DATA t23 TYPE REF TO object.
          CLEAR t23.
          CLEAR t22.
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
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t24.
        CREATE OBJECT t24.
        result = t24.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = abap_false.
    t25 = t26.
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = abap_false.
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t30.
    DATA(t31) = t1.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA(t33) = t30.
    t32 = t33->statements.
    t29 = t32.
    DATA t34 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t34.
    DATA t35 TYPE REF TO object.
    CLEAR t35.
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
      DATA t40 TYPE REF TO zif_lnt_statement.
      CLEAR t40.
      DATA(t41) = t34.
      t40 = t41->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t39 = t40.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = t39.
      t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_st_clss_implmnttn ).
      IF t42 = abap_true.
        DATA(t44) = abap_true.
        t27 = t44.
      ELSE.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = t39.
        t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_end_class ).
        IF t45 = abap_true.
          DATA(t47) = abap_false.
          t27 = t47.
        ELSE.
          DATA(t48) = VALUE abap_bool( ).
          DATA(t49) = t39.
          t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
          IF t48 = abap_true.
            DATA(t50) = abap_true.
            t25 = t50.
          ELSE.
            DATA(t51) = VALUE abap_bool( ).
            DATA(t52) = t39.
            t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_end_method ).
            IF t51 = abap_true.
              DATA(t53) = abap_false.
              t25 = t53.
            ELSE.
              DATA(t54) = VALUE abap_bool( ).
              DATA(t55) = VALUE abap_bool( ).
              DATA(t56) = VALUE abap_bool( ).
              DATA(t57) = t27.
              DATA(t58) = abap_true.
              t56 = xsdbool( t57 = t58 ).
              t55 = t56.
              IF t56 = abap_true.
                DATA(t59) = VALUE abap_bool( ).
                DATA(t60) = t25.
                DATA(t61) = abap_false.
                t59 = xsdbool( t60 = t61 ).
                t55 = t59.
              ENDIF.
              t54 = t55.
              IF t55 = abap_true.
                DATA(t62) = VALUE abap_bool( ).
                DATA(t63) = t39.
                t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_st_comment ).
                t54 = t62.
              ENDIF.
              IF t54 = abap_true.
                DATA(t64) = t3.
                DATA t65 TYPE REF TO zcl_lnt_issue.
                CLEAR t65.
                DATA(t66) = t1.
                DATA(t67) = t34.
                DATA(t68) = |Comment between methods in global class implementation|.
                DATA(t69) = VALUE string( ).
                DATA t70 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t70.
                DATA(t71) = VALUE string( ).
                DATA(t72) = |no_comments_between_methods|.
                t71 = t72.
                DATA(t73) = VALUE string( ).
                DATA(t74) = |No comments between methods in global classes|.
                t73 = t74.
                DATA(t75) = VALUE string( ).
                DATA(t76) = |It's not possible to have comments between methods in global|.
                t76 = t76 && | classes.|.
                t75 = t76.
                DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t77.
                DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t78.
                DATA(t79) = abap_true.
                IF t79 = abap_true.
                  DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t80.
                  DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t81.
                  DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t82.
                  CREATE OBJECT t82.
                  t81 = t82.
                  DATA(t83) = t81.
                  DATA(t84) = |SingleFile|.
                  t83->load( ).
                  APPEND t84 TO t83->items.
                  t83->save( ).
                  DATA(t85) = t81.
                  DATA(t86) = |Syntax|.
                  t85->load( ).
                  APPEND t86 TO t85->items.
                  t85->save( ).
                  DATA(t87) = t81.
                  t80 = t87.
                  t78 = t80.
                ELSE.
                  DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t88.
                  t78 = t88.
                ENDIF.
                t77 = t78.
                DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t89.
                DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t90.
                DATA(t91) = abap_true.
                IF t91 = abap_true.
                  DATA(t92) = |CLASS zcl_foo IMPLEMENTATION.\n  METHOD first.\n  ENDMETHOD.\n |.
                  t92 = t92 && | " comment\n  METHOD second.\n  ENDMETHOD.\nENDCLASS.|.
                  DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t93->has = abap_true.
                  t93->value = t92.
                  t90 = t93.
                ELSE.
                  DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t94.
                  t90 = t94.
                ENDIF.
                t89 = t90.
                DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t95.
                DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t96.
                DATA(t97) = abap_true.
                IF t97 = abap_true.
                  DATA(t98) = |CLASS zcl_foo IMPLEMENTATION.\n  METHOD first.\n  ENDMETHOD.\n\n|.
                  t98 = t98 && |  METHOD second.\n  ENDMETHOD.\nENDCLASS.|.
                  DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t99->has = abap_true.
                  t99->value = t98.
                  t96 = t99.
                ELSE.
                  DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t100.
                  t96 = t100.
                ENDIF.
                t95 = t96.
                DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t101.
                DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t102.
                t101 = t102.
                DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t103.
                DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t104.
                t103 = t104.
                DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t105.
                DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t106.
                t105 = t106.
                t70 = NEW zcl_lnt_irule_metadata( i_key = t71 i_title = t73 i_short_description = t75 i_bad_example = t89 i_good_example = t95 i_extended_information = t101 i_tags = t77 i_pragma = t103 i_pseudo_comment = t105 ).
                CREATE OBJECT t70->zlnt_view_ownkeys_b0e8086400eb.
                t70->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t107.
                IF t70->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t70->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t107 ).
                ENDIF.
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
                DATA(t113) = |key|.
                DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t114.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
                ENDIF.
                DATA(t115) = |title|.
                DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t116.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
                ENDIF.
                DATA(t117) = |shortDescription|.
                DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t118.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
                ENDIF.
                DATA(t119) = |tags|.
                DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t120.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
                ENDIF.
                DATA(t121) = |badExample|.
                DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t122.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
                ENDIF.
                DATA(t123) = |goodExample|.
                DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t124.
                IF t70->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t70->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
                ENDIF.
                t69 = t70->key.
                DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t125.
                DATA(t126) = me->conf.
                t125 = t126->zlnt_view_read_sr_15c06369f827( ).
                DATA t127 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t127.
                DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t128.
                t65 = zcl_lnt_issue=>at_statement( i_file = t66 i_statement = t67 i_message_26cb = t68 i_key = t69 i_severity = t125 i_fix = t127 i_alternative_fixes = t128 ).
                t64->load( ).
                APPEND t65 TO t64->items.
                t64->save( ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t129) = t3.
    result = t129.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_cmmnt_btwn_mthds_cnf( me->g_c_i_s_r_n_c_b_m_t_n_cm_bt_mt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_cmmnt_btwn_mthds_cnf( me->g_c_i_s_r_n_c_b_m_t_n_cm_bt_mt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_cmmnt_btwn_mthds_cnf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_c_b_m_t_n_cm_bt_mt( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

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
