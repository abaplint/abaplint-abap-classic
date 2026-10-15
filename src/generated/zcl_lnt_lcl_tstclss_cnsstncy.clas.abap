* TS: src/rules/local_testclass_consistency.ts:13:1 LocalTestclassConsistency
CLASS zcl_lnt_lcl_tstclss_cnsstncy DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_lcl_tstcls_cnsstnc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_lc_ts_cn_ts_lc_ts_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_lcl_tstcls_cnsstnc_cnf.
    METHODS s_c_i_s_r_lc_ts_cn_ts_lc_ts_cn IMPORTING i_conf TYPE REF TO zcl_lnt_lcl_tstcls_cnsstnc_cnf.
    METHODS r_p_i_s_r_lc_ts_cn_ts_lc_ts_cn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lcl_tstclss_cnsstncy IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_lcl_tstcls_cnsstnc_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |local_testclass_consistency|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Local testclass consistency|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that local test classes are placed in the test includ|.
    t7 = t7 && |e, and class unit test flag is set|.
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
      DATA(t15) = |Syntax|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_lc_ts_cn_ts_lc_ts_cn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_lc_ts_cn_ts_lc_ts_cn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_lc_ts_cn_ts_lc_ts_cn.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_configuration.
    CLEAR t7.
    DATA(t8) = me->reg.
    t7 = t8->get_config( ).
    t6 = t7->get_release( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t11.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t11 = zcl_lnt_version_module=>release_b8cd.
    DATA(t12) = |v700|.
    t10 = t11->get( p0 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    CLEAR t13.
    IF t6 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      CLEAR t15.
      t16 = t6.
      TRY.
          t13 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t15 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t13 = t15->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    CLEAR t14.
    IF t9 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      CLEAR t17.
      t18 = t9.
      TRY.
          t14 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t17 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t14 = t17->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    IF t13 IS BOUND.
      t5 = t13->strict_equals( t14 ).
    ELSE.
      t5 = xsdbool( t14 IS NOT BOUND ).
    ENDIF.
    IF t5 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      CREATE OBJECT t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t2.
    t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_class ).
    t20 = xsdbool( t21 = abap_false ).
    IF t20 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t23.
      CREATE OBJECT t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t26.
    DATA(t27) = t1.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t28.
    DATA(t29) = t26.
    t28 = t29->info.
    t25 = t28.
    t24 = t25->list_class_definitions( ).
    DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    DATA(t32) = VALUE i( ).
    DO.
      t24->load( ).
      IF t32 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t24->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        CLEAR t34.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t38.
      DATA(t39) = t30.
      t38 = t39->is_local.
      IF t38 IS BOUND.
        IF t38->has = abap_true.
          t37 = xsdbool( t38->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t36 = t37.
      IF t37 = abap_true.
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t41.
        DATA(t42) = t30.
        t41 = t42->is_for_testing.
        IF t41 IS BOUND.
          IF t41->has = abap_true.
            t40 = xsdbool( t41->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t36 = t40.
      ENDIF.
      t35 = t36.
      IF t36 = abap_true.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE i( ).
        DATA(t46) = VALUE string( ).
        DATA t47 TYPE REF TO zcl_lnt_abstract_file.
        CLEAR t47.
        DATA(t48) = t1.
        t47 = t48.
        DATA(t49) = VALUE string( ).
        DATA(t50) = t47.
        t49 = t50->filename.
        t46 = t49.
        DATA(t51) = |.testclasses.abap|.
        DATA(t52) = strlen( t46 ).
        IF t51 IS INITIAL.
          t45 = 0.
        ELSE.
          FIND t51 IN t46 MATCH OFFSET t45.
          IF sy-subrc <> 0.
            t45 = -1.
          ENDIF.
        ENDIF.
        DATA(t53) = 0.
        t44 = xsdbool( t45 >= t53 ).
        t43 = xsdbool( t44 = abap_false ).
        t35 = t43.
      ENDIF.
      IF t35 = abap_true.
        DATA(t54) = VALUE string( ).
        DATA(t55) = VALUE string( ).
        DATA(t56) = VALUE string( ).
        DATA(t57) = |Place local testclass "|.
        DATA(t58) = VALUE string( ).
        DATA(t59) = t30.
        t58 = t59->name.
        DATA(t60) = strlen( t57 ).
        t56 = |{ t57 }{ t58 }|.
        DATA(t61) = |" in the testclass include|.
        DATA(t62) = strlen( t56 ).
        t55 = |{ t56 }{ t61 }|.
        t54 = t55.
        DATA t63 TYPE REF TO zcl_lnt_issue.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_issue.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t65.
        DATA(t66) = t30.
        t65 = t66->identifier.
        DATA(t67) = t54.
        DATA(t68) = VALUE string( ).
        DATA t69 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t69.
        DATA(t70) = VALUE string( ).
        DATA(t71) = |local_testclass_consistency|.
        t70 = t71.
        DATA(t72) = VALUE string( ).
        DATA(t73) = |Local testclass consistency|.
        t72 = t73.
        DATA(t74) = VALUE string( ).
        DATA(t75) = |Checks that local test classes are placed in the test includ|.
        t75 = t75 && |e, and class unit test flag is set|.
        t74 = t75.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t77.
        DATA(t78) = abap_true.
        IF t78 = abap_true.
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t79.
          DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t80.
          DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t81.
          CREATE OBJECT t81.
          t80 = t81.
          DATA(t82) = t80.
          DATA(t83) = |Syntax|.
          t82->load( ).
          APPEND t83 TO t82->items.
          t82->save( ).
          DATA(t84) = t80.
          t79 = t84.
          t77 = t79.
        ELSE.
          DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t85.
          t77 = t85.
        ENDIF.
        t76 = t77.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t86 = t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        t88 = t89.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        t90 = t91.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        t92 = t93.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        t94 = t95.
        t69 = NEW zcl_lnt_irule_metadata( i_key = t70 i_title = t72 i_short_description = t74 i_bad_example = t86 i_good_example = t88 i_extended_information = t90 i_tags = t76 i_pragma = t92 i_pseudo_comment = t94 ).
        CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
        t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t96 ).
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t97 ).
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t98 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t69->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t99 ).
        ENDIF.
        CREATE OBJECT t69->zlnt_json_ownkeys_70e5fd461788.
        t69->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t100) = |key|.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
        ENDIF.
        DATA(t102) = |title|.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
        ENDIF.
        DATA(t104) = |shortDescription|.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
        ENDIF.
        DATA(t106) = |tags|.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t69->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
        ENDIF.
        t68 = t69->key.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA(t109) = me->conf.
        t108 = t109->zlnt_view_read_sr_15c06369f827( ).
        DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t110.
        t64 = zcl_lnt_issue=>at_identifier( i_identifier = t65 i_message_26cb = t67 i_key = t68 i_severity = t108 i_fix = t110 ).
        t63 = t64.
        DATA(t111) = t3.
        DATA(t112) = t63.
        t111->load( ).
        APPEND t112 TO t111->items.
        t111->save( ).
      ENDIF.
    ENDDO.
    DATA(t113) = VALUE abap_bool( ).
    DATA(t114) = VALUE abap_bool( ).
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = VALUE i( ).
    DATA(t118) = VALUE string( ).
    DATA t119 TYPE REF TO zcl_lnt_abstract_file.
    CLEAR t119.
    DATA(t120) = t1.
    t119 = t120.
    DATA(t121) = VALUE string( ).
    DATA(t122) = t119.
    t121 = t122->filename.
    t118 = t121.
    DATA(t123) = |.testclasses.|.
    DATA(t124) = strlen( t118 ).
    IF t123 IS INITIAL.
      t117 = 0.
    ELSE.
      FIND t123 IN t118 MATCH OFFSET t117.
      IF sy-subrc <> 0.
        t117 = -1.
      ENDIF.
    ENDIF.
    DATA(t125) = 0.
    t116 = xsdbool( t117 >= t125 ).
    DATA(t126) = abap_true.
    t115 = xsdbool( t116 = t126 ).
    t114 = t115.
    IF t115 = abap_true.
      DATA(t127) = VALUE abap_bool( ).
      DATA t128 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t128.
      DATA t129 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t129.
      DATA t130 TYPE REF TO zcl_lnt_class.
      CLEAR t130.
      DATA(t131) = t2.
      DATA t132 TYPE REF TO object.
      CLEAR t132.
      t132 = t131.
      t130 ?= t132.
      t129 = t130->get_testclass_file( ).
      t128 = t129.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      t133 = t134.
      DATA(t135) = VALUE abap_bool( ).
      DATA(t136) = VALUE abap_bool( ).
      DATA(t137) = t128.
      IF t137 IS INITIAL.
        t136 = abap_true.
      ENDIF.
      t135 = xsdbool( t136 = abap_false ).
      t127 = t135.
      t114 = t127.
    ENDIF.
    t113 = t114.
    IF t114 = abap_true.
      DATA(t138) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t140.
      DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t141.
      DATA t142 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t142.
      DATA t143 TYPE REF TO zcl_lnt_class.
      CLEAR t143.
      DATA(t144) = t2.
      DATA t145 TYPE REF TO object.
      CLEAR t145.
      t145 = t144.
      t143 ?= t145.
      t142 = t143.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      DATA t147 TYPE REF TO zif_lnt_file.
      CLEAR t147.
      DATA t148 TYPE REF TO zif_lnt_file.
      CLEAR t148.
      DATA(t149) = t142.
      t148 = t149->get_xml_file( ).
      t147 = t148.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t150.
      DATA(t151) = VALUE abap_bool( ).
      DATA(t152) = t147.
      t151 = xsdbool( t152 IS BOUND ).
      IF t151 = abap_true.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA(t154) = abap_true.
        IF t154 = abap_true.
          DATA(t155) = VALUE string( ).
          DATA t156 TYPE REF TO zif_lnt_file.
          CLEAR t156.
          DATA(t157) = t147.
          t156 = t157.
          t155 = t156->get_raw( ).
          DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t158->has = abap_true.
          t158->value = t155.
          t153 = t158.
        ELSE.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          t153 = t159.
        ENDIF.
        t150 = t153.
      ELSE.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        t150 = t160.
      ENDIF.
      t146 = t150.
      t141 = t146.
      t140 = t141.
      DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t161.
      DATA(t162) = VALUE abap_bool( ).
      DATA(t163) = t140.
      IF t163 IS INITIAL.
        t162 = abap_true.
      ELSEIF t163->has = abap_false.
        t162 = abap_true.
      ENDIF.
      IF t162 = abap_true.
        DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t164.
        t161 = t164.
      ELSE.
        DATA(t165) = VALUE abap_bool( ).
        DATA(t166) = VALUE i( ).
        DATA(t167) = VALUE string( ).
        DATA(t168) = t140.
        t167 = t168->value.
        DATA(t169) = |<WITH_UNIT_TESTS>X</WITH_UNIT_TESTS>|.
        DATA(t170) = strlen( t167 ).
        IF t169 IS INITIAL.
          t166 = 0.
        ELSE.
          FIND t169 IN t167 MATCH OFFSET t166.
          IF sy-subrc <> 0.
            t166 = -1.
          ENDIF.
        ENDIF.
        DATA(t171) = 0.
        t165 = xsdbool( t166 >= t171 ).
        DATA(t172) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t172->has = abap_true.
        t172->value = t165.
        t161 = t172.
      ENDIF.
      t139 = t161.
      DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t173.
      DATA(t174) = abap_true.
      IF t174 = abap_true.
        DATA(t175) = abap_false.
        DATA(t176) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t176->has = abap_true.
        t176->value = t175.
        t173 = t176.
      ELSE.
        DATA t177 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t177.
        t173 = t177.
      ENDIF.
      DATA(t178) = VALUE abap_bool( ).
      DATA(t179) = VALUE abap_bool( ).
      IF t139 IS BOUND.
        t178 = t139->has.
      ENDIF.
      IF t173 IS BOUND.
        t179 = t173->has.
      ENDIF.
      IF t178 = t179.
        IF t178 = abap_false.
          t138 = abap_true.
        ELSEIF t139->value = t173->value.
          t138 = abap_true.
        ENDIF.
      ENDIF.
      t113 = t138.
    ENDIF.
    IF t113 = abap_true.
      DATA t180 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t180.
      DATA t181 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t181.
      DATA t182 TYPE REF TO zcl_lnt_class.
      CLEAR t182.
      DATA t183 TYPE REF TO zcl_lnt_class.
      CLEAR t183.
      DATA(t184) = t2.
      DATA t185 TYPE REF TO object.
      CLEAR t185.
      t185 = t184.
      t183 ?= t185.
      t182 = t183.
      DATA t186 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t186.
      DATA t187 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t187.
      DATA t188 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t188.
      DATA t189 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t189.
      DATA t190 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t190.
      DATA t191 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t191.
      DATA t192 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t192.
      DATA(t193) = t182.
      t192 = t193->get_main_abap_file( ).
      t191 = t192.
      DATA t194 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t194.
      DATA(t195) = VALUE abap_bool( ).
      DATA(t196) = t191.
      IF t196 IS INITIAL.
        t195 = abap_true.
      ENDIF.
      IF t195 = abap_true.
        DATA t197 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t197.
        t194 = t197.
      ELSE.
        DATA t198 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t198.
        DATA t199 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t199.
        DATA t200 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t200.
        DATA(t201) = t191.
        t200 = t201.
        t199 = t200.
        DATA t202 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t202.
        DATA(t203) = t199.
        t202 = t203->info.
        t198 = t202.
        t194 = t198.
      ENDIF.
      t190 = t194.
      t189 = t190.
      DATA t204 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t204.
      DATA(t205) = VALUE abap_bool( ).
      DATA(t206) = t189.
      IF t206 IS INITIAL.
        t205 = abap_true.
      ENDIF.
      IF t205 = abap_true.
        DATA t207 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t207.
        t204 = t207.
      ELSE.
        DATA t208 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t208.
        DATA t209 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t209.
        DATA(t210) = t189.
        t209 = t210.
        DATA(t211) = VALUE string( ).
        DATA t212 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t212.
        DATA(t213) = t182.
        t212 = t213.
        DATA(t214) = VALUE string( ).
        DATA(t215) = t212.
        t214 = t215->name.
        t211 = t214.
        t208 = t209->get_class_definition_by_name( i_name = t211 ).
        t204 = t208.
      ENDIF.
      t188 = t204.
      t187 = t188.
      DATA t216 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t216.
      DATA(t217) = VALUE abap_bool( ).
      DATA(t218) = t187.
      IF t218 IS INITIAL.
        t217 = abap_true.
      ENDIF.
      IF t217 = abap_true.
        DATA t219 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t219.
        t216 = t219.
      ELSE.
        DATA t220 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t220.
        DATA t221 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t221.
        DATA(t222) = t187.
        t221 = t222.
        t220 = t221->identifier.
        t216 = t220.
      ENDIF.
      t186 = t216.
      t181 = t186.
      t180 = t181.
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = t180.
      t223 = xsdbool( t224 IS BOUND ).
      IF t223 = abap_true.
        DATA(t225) = VALUE string( ).
        DATA(t226) = |Has testclass, but XML does not set <WITH_UNIT_TESTS>|.
        t225 = t226.
        DATA t227 TYPE REF TO zcl_lnt_issue.
        CLEAR t227.
        DATA t228 TYPE REF TO zcl_lnt_issue.
        CLEAR t228.
        DATA t229 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t229.
        DATA(t230) = t180.
        t229 = t230.
        DATA(t231) = t225.
        DATA(t232) = VALUE string( ).
        DATA t233 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t233.
        DATA(t234) = VALUE string( ).
        DATA(t235) = |local_testclass_consistency|.
        t234 = t235.
        DATA(t236) = VALUE string( ).
        DATA(t237) = |Local testclass consistency|.
        t236 = t237.
        DATA(t238) = VALUE string( ).
        DATA(t239) = |Checks that local test classes are placed in the test includ|.
        t239 = t239 && |e, and class unit test flag is set|.
        t238 = t239.
        DATA t240 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t240.
        DATA t241 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t241.
        DATA(t242) = abap_true.
        IF t242 = abap_true.
          DATA t243 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t243.
          DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t244.
          DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t245.
          CREATE OBJECT t245.
          t244 = t245.
          DATA(t246) = t244.
          DATA(t247) = |Syntax|.
          t246->load( ).
          APPEND t247 TO t246->items.
          t246->save( ).
          DATA(t248) = t244.
          t243 = t248.
          t241 = t243.
        ELSE.
          DATA t249 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t249.
          t241 = t249.
        ENDIF.
        t240 = t241.
        DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t250.
        DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t251.
        t250 = t251.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        t252 = t253.
        DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t254.
        DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t255.
        t254 = t255.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t257.
        t256 = t257.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t259.
        t258 = t259.
        t233 = NEW zcl_lnt_irule_metadata( i_key = t234 i_title = t236 i_short_description = t238 i_bad_example = t250 i_good_example = t252 i_extended_information = t254 i_tags = t240 i_pragma = t256 i_pseudo_comment = t258 ).
        CREATE OBJECT t233->zlnt_view_ownkeys_b0e8086400eb.
        t233->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t260.
        IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t260 ).
        ENDIF.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t261.
        IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t261 ).
        ENDIF.
        DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t262.
        IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t262 ).
        ENDIF.
        DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t263.
        IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t263 ).
        ENDIF.
        CREATE OBJECT t233->zlnt_json_ownkeys_70e5fd461788.
        t233->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t264) = |key|.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t265.
        IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
        ENDIF.
        DATA(t266) = |title|.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
        ENDIF.
        DATA(t268) = |shortDescription|.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
        ENDIF.
        DATA(t270) = |tags|.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
        ENDIF.
        t232 = t233->key.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA(t273) = me->conf.
        t272 = t273->zlnt_view_read_sr_15c06369f827( ).
        DATA t274 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t274.
        t228 = zcl_lnt_issue=>at_identifier( i_identifier = t229 i_message_26cb = t231 i_key = t232 i_severity = t272 i_fix = t274 ).
        t227 = t228.
        DATA(t275) = t3.
        DATA(t276) = t227.
        t275->load( ).
        APPEND t276 TO t275->items.
        t275->save( ).
      ENDIF.
    ENDIF.
    DATA(t277) = VALUE abap_bool( ).
    DATA(t278) = VALUE abap_bool( ).
    DATA(t279) = VALUE abap_bool( ).
    DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t280.
    DATA(t281) = abap_true.
    IF t281 = abap_true.
      DATA(t282) = VALUE string( ).
      DATA t283 TYPE REF TO zcl_lnt_abstract_file.
      CLEAR t283.
      DATA(t284) = t1.
      t283 = t284.
      DATA(t285) = VALUE string( ).
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
    DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t289.
    DATA t290 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t290.
    DATA t291 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t291.
    DATA t292 TYPE REF TO zcl_lnt_class.
    CLEAR t292.
    DATA(t293) = t2.
    DATA t294 TYPE REF TO object.
    CLEAR t294.
    t294 = t293.
    t292 ?= t294.
    t291 = t292->get_main_abap_file( ).
    t290 = t291.
    DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t295.
    DATA(t296) = VALUE abap_bool( ).
    DATA(t297) = t290.
    IF t297 IS INITIAL.
      t296 = abap_true.
    ENDIF.
    IF t296 = abap_true.
      DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t298.
      t295 = t298.
    ELSE.
      DATA(t299) = VALUE string( ).
      DATA t300 TYPE REF TO zcl_lnt_abstract_file.
      CLEAR t300.
      DATA t301 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t301.
      DATA(t302) = t290.
      t301 = t302.
      t300 = t301.
      DATA(t303) = VALUE string( ).
      DATA(t304) = t300.
      t303 = t304->filename.
      t299 = t303.
      DATA(t305) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t305->has = abap_true.
      t305->value = t299.
      t295 = t305.
    ENDIF.
    t289 = t295.
    DATA(t306) = VALUE abap_bool( ).
    DATA(t307) = VALUE abap_bool( ).
    IF t280 IS BOUND.
      t306 = t280->has.
    ENDIF.
    IF t289 IS BOUND.
      t307 = t289->has.
    ENDIF.
    IF t306 = t307.
      IF t306 = abap_false.
        t279 = abap_true.
      ELSEIF t280->value = t289->value.
        t279 = abap_true.
      ENDIF.
    ENDIF.
    t278 = t279.
    IF t279 = abap_true.
      DATA(t308) = VALUE abap_bool( ).
      DATA t309 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t309.
      DATA t310 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t310.
      DATA t311 TYPE REF TO zcl_lnt_class.
      CLEAR t311.
      DATA(t312) = t2.
      DATA t313 TYPE REF TO object.
      CLEAR t313.
      t313 = t312.
      t311 ?= t313.
      t310 = t311->get_testclass_file( ).
      t309 = t310.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t314.
      DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t315.
      t314 = t315.
      DATA(t316) = VALUE abap_bool( ).
      DATA(t317) = t309.
      IF t317 IS INITIAL.
        t316 = abap_true.
      ENDIF.
      t308 = t316.
      t278 = t308.
    ENDIF.
    t277 = t278.
    IF t278 = abap_true.
      DATA(t318) = VALUE abap_bool( ).
      DATA t319 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t319.
      DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t320.
      DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t321.
      DATA t322 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t322.
      DATA t323 TYPE REF TO zcl_lnt_class.
      CLEAR t323.
      DATA(t324) = t2.
      DATA t325 TYPE REF TO object.
      CLEAR t325.
      t325 = t324.
      t323 ?= t325.
      t322 = t323.
      DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t326.
      DATA t327 TYPE REF TO zif_lnt_file.
      CLEAR t327.
      DATA t328 TYPE REF TO zif_lnt_file.
      CLEAR t328.
      DATA(t329) = t322.
      t328 = t329->get_xml_file( ).
      t327 = t328.
      DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t330.
      DATA(t331) = VALUE abap_bool( ).
      DATA(t332) = t327.
      t331 = xsdbool( t332 IS BOUND ).
      IF t331 = abap_true.
        DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t333.
        DATA(t334) = abap_true.
        IF t334 = abap_true.
          DATA(t335) = VALUE string( ).
          DATA t336 TYPE REF TO zif_lnt_file.
          CLEAR t336.
          DATA(t337) = t327.
          t336 = t337.
          t335 = t336->get_raw( ).
          DATA(t338) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t338->has = abap_true.
          t338->value = t335.
          t333 = t338.
        ELSE.
          DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t339.
          t333 = t339.
        ENDIF.
        t330 = t333.
      ELSE.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        t330 = t340.
      ENDIF.
      t326 = t330.
      t321 = t326.
      t320 = t321.
      DATA t341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t341.
      DATA(t342) = VALUE abap_bool( ).
      DATA(t343) = t320.
      IF t343 IS INITIAL.
        t342 = abap_true.
      ELSEIF t343->has = abap_false.
        t342 = abap_true.
      ENDIF.
      IF t342 = abap_true.
        DATA t344 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t344.
        t341 = t344.
      ELSE.
        DATA(t345) = VALUE abap_bool( ).
        DATA(t346) = VALUE i( ).
        DATA(t347) = VALUE string( ).
        DATA(t348) = t320.
        t347 = t348->value.
        DATA(t349) = |<WITH_UNIT_TESTS>X</WITH_UNIT_TESTS>|.
        DATA(t350) = strlen( t347 ).
        IF t349 IS INITIAL.
          t346 = 0.
        ELSE.
          FIND t349 IN t347 MATCH OFFSET t346.
          IF sy-subrc <> 0.
            t346 = -1.
          ENDIF.
        ENDIF.
        DATA(t351) = 0.
        t345 = xsdbool( t346 >= t351 ).
        DATA(t352) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t352->has = abap_true.
        t352->value = t345.
        t341 = t352.
      ENDIF.
      t319 = t341.
      DATA t353 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t353.
      DATA(t354) = abap_true.
      IF t354 = abap_true.
        DATA(t355) = abap_true.
        DATA(t356) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t356->has = abap_true.
        t356->value = t355.
        t353 = t356.
      ELSE.
        DATA t357 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t357.
        t353 = t357.
      ENDIF.
      DATA(t358) = VALUE abap_bool( ).
      DATA(t359) = VALUE abap_bool( ).
      IF t319 IS BOUND.
        t358 = t319->has.
      ENDIF.
      IF t353 IS BOUND.
        t359 = t353->has.
      ENDIF.
      IF t358 = t359.
        IF t358 = abap_false.
          t318 = abap_true.
        ELSEIF t319->value = t353->value.
          t318 = abap_true.
        ENDIF.
      ENDIF.
      t277 = t318.
    ENDIF.
    IF t277 = abap_true.
      DATA t360 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t360.
      DATA t361 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t361.
      DATA t362 TYPE REF TO zcl_lnt_class.
      CLEAR t362.
      DATA t363 TYPE REF TO zcl_lnt_class.
      CLEAR t363.
      DATA(t364) = t2.
      DATA t365 TYPE REF TO object.
      CLEAR t365.
      t365 = t364.
      t363 ?= t365.
      t362 = t363.
      DATA t366 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t366.
      DATA t367 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t367.
      DATA t368 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t368.
      DATA t369 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t369.
      DATA t370 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t370.
      DATA t371 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t371.
      DATA t372 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t372.
      DATA(t373) = t362.
      t372 = t373->get_main_abap_file( ).
      t371 = t372.
      DATA t374 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t374.
      DATA(t375) = VALUE abap_bool( ).
      DATA(t376) = t371.
      IF t376 IS INITIAL.
        t375 = abap_true.
      ENDIF.
      IF t375 = abap_true.
        DATA t377 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t377.
        t374 = t377.
      ELSE.
        DATA t378 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t378.
        DATA t379 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t379.
        DATA t380 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t380.
        DATA(t381) = t371.
        t380 = t381.
        t379 = t380.
        DATA t382 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t382.
        DATA(t383) = t379.
        t382 = t383->info.
        t378 = t382.
        t374 = t378.
      ENDIF.
      t370 = t374.
      t369 = t370.
      DATA t384 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t384.
      DATA(t385) = VALUE abap_bool( ).
      DATA(t386) = t369.
      IF t386 IS INITIAL.
        t385 = abap_true.
      ENDIF.
      IF t385 = abap_true.
        DATA t387 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t387.
        t384 = t387.
      ELSE.
        DATA t388 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t388.
        DATA t389 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t389.
        DATA(t390) = t369.
        t389 = t390.
        DATA(t391) = VALUE string( ).
        DATA t392 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t392.
        DATA(t393) = t362.
        t392 = t393.
        DATA(t394) = VALUE string( ).
        DATA(t395) = t392.
        t394 = t395->name.
        t391 = t394.
        t388 = t389->get_class_definition_by_name( i_name = t391 ).
        t384 = t388.
      ENDIF.
      t368 = t384.
      t367 = t368.
      DATA t396 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t396.
      DATA(t397) = VALUE abap_bool( ).
      DATA(t398) = t367.
      IF t398 IS INITIAL.
        t397 = abap_true.
      ENDIF.
      IF t397 = abap_true.
        DATA t399 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t399.
        t396 = t399.
      ELSE.
        DATA t400 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t400.
        DATA t401 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t401.
        DATA(t402) = t367.
        t401 = t402.
        t400 = t401->identifier.
        t396 = t400.
      ENDIF.
      t366 = t396.
      t361 = t366.
      t360 = t361.
      DATA(t403) = VALUE abap_bool( ).
      DATA(t404) = t360.
      t403 = xsdbool( t404 IS BOUND ).
      IF t403 = abap_true.
        DATA(t405) = VALUE string( ).
        DATA(t406) = |Has <WITH_UNIT_TESTS> set in XML, but no testclasses|.
        t405 = t406.
        DATA t407 TYPE REF TO zcl_lnt_issue.
        CLEAR t407.
        DATA t408 TYPE REF TO zcl_lnt_issue.
        CLEAR t408.
        DATA t409 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t409.
        DATA(t410) = t360.
        t409 = t410.
        DATA(t411) = t405.
        DATA(t412) = VALUE string( ).
        DATA t413 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t413.
        DATA(t414) = VALUE string( ).
        DATA(t415) = |local_testclass_consistency|.
        t414 = t415.
        DATA(t416) = VALUE string( ).
        DATA(t417) = |Local testclass consistency|.
        t416 = t417.
        DATA(t418) = VALUE string( ).
        DATA(t419) = |Checks that local test classes are placed in the test includ|.
        t419 = t419 && |e, and class unit test flag is set|.
        t418 = t419.
        DATA t420 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t420.
        DATA t421 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t421.
        DATA(t422) = abap_true.
        IF t422 = abap_true.
          DATA t423 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t423.
          DATA t424 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t424.
          DATA t425 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t425.
          CREATE OBJECT t425.
          t424 = t425.
          DATA(t426) = t424.
          DATA(t427) = |Syntax|.
          t426->load( ).
          APPEND t427 TO t426->items.
          t426->save( ).
          DATA(t428) = t424.
          t423 = t428.
          t421 = t423.
        ELSE.
          DATA t429 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t429.
          t421 = t429.
        ENDIF.
        t420 = t421.
        DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t430.
        DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t431.
        t430 = t431.
        DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t432.
        DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t433.
        t432 = t433.
        DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t434.
        DATA t435 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t435.
        t434 = t435.
        DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t436.
        DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t437.
        t436 = t437.
        DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t438.
        DATA t439 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t439.
        t438 = t439.
        t413 = NEW zcl_lnt_irule_metadata( i_key = t414 i_title = t416 i_short_description = t418 i_bad_example = t430 i_good_example = t432 i_extended_information = t434 i_tags = t420 i_pragma = t436 i_pseudo_comment = t438 ).
        CREATE OBJECT t413->zlnt_view_ownkeys_b0e8086400eb.
        t413->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t440.
        IF t413->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t413->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t440 ).
        ENDIF.
        DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t441.
        IF t413->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t413->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t441 ).
        ENDIF.
        DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t442.
        IF t413->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t413->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t442 ).
        ENDIF.
        DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t443.
        IF t413->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t413->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t443 ).
        ENDIF.
        CREATE OBJECT t413->zlnt_json_ownkeys_70e5fd461788.
        t413->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t444) = |key|.
        DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t445.
        IF t413->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t413->zlnt_json_ownkeys_70e5fd461788->put( p0 = t444 p1 = t445 ).
        ENDIF.
        DATA(t446) = |title|.
        DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t447.
        IF t413->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t413->zlnt_json_ownkeys_70e5fd461788->put( p0 = t446 p1 = t447 ).
        ENDIF.
        DATA(t448) = |shortDescription|.
        DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t449.
        IF t413->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t413->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
        ENDIF.
        DATA(t450) = |tags|.
        DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t451.
        IF t413->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t413->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
        ENDIF.
        t412 = t413->key.
        DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t452.
        DATA(t453) = me->conf.
        t452 = t453->zlnt_view_read_sr_15c06369f827( ).
        DATA t454 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t454.
        t408 = zcl_lnt_issue=>at_identifier( i_identifier = t409 i_message_26cb = t411 i_key = t412 i_severity = t452 i_fix = t454 ).
        t407 = t408.
        DATA(t455) = t3.
        DATA(t456) = t407.
        t455->load( ).
        APPEND t456 TO t455->items.
        t455->save( ).
      ENDIF.
    ENDIF.
    DATA(t457) = t3.
    result = t457.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_lcl_tstcls_cnsstnc_cnf( me->g_c_i_s_r_lc_ts_cn_ts_lc_ts_cn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_lcl_tstcls_cnsstnc_cnf( me->g_c_i_s_r_lc_ts_cn_ts_lc_ts_cn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_lcl_tstcls_cnsstnc_cnf.
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
        t1 = NEW zcl_lnt_lcl_tstcls_cnsstnc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_lc_ts_cn_ts_lc_ts_cn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_lc_ts_cn_ts_lc_ts_cn( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1569_d84657a87c20.
  ENDMETHOD.
ENDCLASS.
