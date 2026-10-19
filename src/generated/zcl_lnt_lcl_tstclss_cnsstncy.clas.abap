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
    me->conf = NEW zcl_lnt_lcl_tstcls_cnsstnc_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |local_testclass_consistency|.
    DATA t4 TYPE string.
    t4 = |Local testclass consistency|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that local test classes are placed in the test includ|.
    t7 = t7 && |e, and class unit test flag is set|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Syntax|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
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
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_lc_ts_cn_ts_lc_ts_cn.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_lc_ts_cn_ts_lc_ts_cn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_lc_ts_cn_ts_lc_ts_cn.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    DATA t7 TYPE REF TO zif_lnt_configuration.
    t7 = me->reg->get_config( ).
    t6 = t7->get_release( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    DATA t11 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t11 = zcl_lnt_version_module=>release_b8cd.
    DATA(t12) = |v700|.
    t10 = t11->get( p0 = t12 ).
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t16 TYPE REF TO object.
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
    IF t9 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
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
      CREATE OBJECT t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    t21 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
    t20 = xsdbool( t21 = abap_false ).
    IF t20 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zif_lnt_abap_file_information.
    DATA t28 TYPE REF TO zif_lnt_abap_file_information.
    t28 = t1->info.
    t25 = t28.
    t24 = t25->list_class_definitions( ).
    DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t31 TYPE REF TO object.
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
      t38 = t30->is_local.
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
        t41 = t30->is_for_testing.
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
        t47 = t1.
        DATA(t49) = VALUE string( ).
        t49 = t47->filename.
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
        t58 = t30->name.
        DATA(t60) = strlen( t57 ).
        t56 = |{ t57 }{ t58 }|.
        DATA(t61) = |" in the testclass include|.
        DATA(t62) = strlen( t56 ).
        t55 = |{ t56 }{ t61 }|.
        t54 = t55.
        DATA t64 TYPE REF TO zcl_lnt_issue.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t65.
        t65 = t30->identifier.
        DATA(t68) = VALUE string( ).
        DATA t69 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t69.
        DATA(t70) = VALUE string( ).
        t70 = |local_testclass_consistency|.
        DATA(t72) = VALUE string( ).
        t72 = |Local testclass consistency|.
        DATA(t74) = VALUE string( ).
        DATA(t75) = |Checks that local test classes are placed in the test includ|.
        t75 = t75 && |e, and class unit test flag is set|.
        t74 = t75.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t76.
        DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t80.
        DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t81.
        CREATE OBJECT t81.
        t80 = t81.
        DATA(t83) = |Syntax|.
        t80->load( ).
        APPEND t83 TO t80->items.
        t80->save( ).
        t76 = t80.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        CLEAR t86.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        CLEAR t88.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        CLEAR t90.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        CLEAR t92.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        CLEAR t94.
        t69 = NEW zcl_lnt_irule_metadata( i_key = t70 i_title = t72 i_short_description = t74 i_bad_example = t86 i_good_example = t88 i_extended_information = t90 i_tags = t76 i_pragma = t92 i_pseudo_comment = t94 ).
        CREATE OBJECT t69->zlnt_view_ownkeys_b0e8086400eb.
        t69->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        t69->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t96 ).
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
        t69->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
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
        t108 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t110.
        t64 = zcl_lnt_issue=>at_identifier( i_identifier = t65 i_message_26cb = t54 i_key = t68 i_severity = t108 i_fix = t110 ).
        t3->load( ).
        APPEND t64 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    DATA(t113) = VALUE abap_bool( ).
    DATA(t114) = VALUE abap_bool( ).
    DATA(t115) = VALUE abap_bool( ).
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = VALUE i( ).
    DATA(t118) = VALUE string( ).
    DATA t119 TYPE REF TO zcl_lnt_abstract_file.
    t119 = t1.
    DATA(t121) = VALUE string( ).
    t121 = t119->filename.
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
    t115 = xsdbool( t116 = abap_true ).
    t114 = t115.
    IF t115 = abap_true.
      DATA(t127) = VALUE abap_bool( ).
      DATA t129 TYPE REF TO zcl_lnt_abap_file.
      DATA t130 TYPE REF TO zcl_lnt_class.
      DATA t132 TYPE REF TO object.
      t132 = t2.
      t130 ?= t132.
      t129 = t130->get_testclass_file( ).
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t135) = VALUE abap_bool( ).
      DATA(t136) = xsdbool( t129 IS INITIAL ).
      t135 = xsdbool( t136 = abap_false ).
      t127 = t135.
      t114 = t127.
    ENDIF.
    t113 = t114.
    IF t114 = abap_true.
      DATA(t138) = VALUE abap_bool( ).
      DATA t139 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t142 TYPE REF TO zcl_lnt_abstract_object.
      DATA t143 TYPE REF TO zcl_lnt_class.
      DATA t145 TYPE REF TO object.
      t145 = t2.
      t143 ?= t145.
      t142 = t143.
      DATA t147 TYPE REF TO zif_lnt_file.
      DATA t148 TYPE REF TO zif_lnt_file.
      t148 = t142->get_xml_file( ).
      t147 = t148.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t151) = VALUE abap_bool( ).
      t151 = xsdbool( t147 IS BOUND ).
      IF t151 = abap_true.
        DATA(t155) = VALUE string( ).
        DATA t156 TYPE REF TO zif_lnt_file.
        t156 = t147.
        t155 = t156->get_raw( ).
        DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t158->has = abap_true.
        t158->value = t155.
        t150 = t158.
      ELSE.
        CLEAR t150.
      ENDIF.
      t140 = t150.
      DATA t161 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t162) = VALUE abap_bool( ).
      IF t140 IS INITIAL.
        t162 = abap_true.
      ELSEIF t140->has = abap_false.
        t162 = abap_true.
      ENDIF.
      IF t162 = abap_true.
      ELSE.
        DATA(t165) = VALUE abap_bool( ).
        DATA(t166) = VALUE i( ).
        DATA(t167) = VALUE string( ).
        t167 = t140->value.
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
      DATA(t176) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t176->has = abap_true.
      t176->value = abap_false.
      t173 = t176.
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
      DATA t182 TYPE REF TO zcl_lnt_class.
      DATA t183 TYPE REF TO zcl_lnt_class.
      DATA t185 TYPE REF TO object.
      t185 = t2.
      t183 ?= t185.
      t182 = t183.
      DATA t187 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t189 TYPE REF TO zif_lnt_abap_file_information.
      DATA t191 TYPE REF TO zcl_lnt_abap_file.
      DATA t192 TYPE REF TO zcl_lnt_abap_file.
      t192 = t182->get_main_abap_file( ).
      t191 = t192.
      DATA t194 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t195) = xsdbool( t191 IS INITIAL ).
      IF t195 = abap_true.
      ELSE.
        DATA t202 TYPE REF TO zif_lnt_abap_file_information.
        t202 = t191->info.
        t194 = t202.
      ENDIF.
      t189 = t194.
      DATA t204 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t205) = xsdbool( t189 IS INITIAL ).
      IF t205 = abap_true.
      ELSE.
        DATA t208 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t209 TYPE REF TO zif_lnt_abap_file_information.
        t209 = t189.
        DATA(t211) = VALUE string( ).
        DATA t212 TYPE REF TO zcl_lnt_abstract_object.
        t212 = t182.
        DATA(t214) = VALUE string( ).
        t214 = t212->name.
        t211 = t214.
        t208 = t209->get_class_definition_by_name( i_name = t211 ).
        t204 = t208.
      ENDIF.
      t187 = t204.
      DATA t216 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t217) = xsdbool( t187 IS INITIAL ).
      IF t217 = abap_true.
      ELSE.
        DATA t220 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t221 TYPE REF TO zcl_lnt_info_class_definition.
        t221 = t187.
        t220 = t221->identifier.
        t216 = t220.
      ENDIF.
      t180 = t216.
      DATA(t223) = VALUE abap_bool( ).
      t223 = xsdbool( t180 IS BOUND ).
      IF t223 = abap_true.
        DATA(t225) = VALUE string( ).
        t225 = |Has testclass, but XML does not set <WITH_UNIT_TESTS>|.
        DATA t228 TYPE REF TO zcl_lnt_issue.
        DATA t229 TYPE REF TO zcl_lnt_fi_identifier.
        t229 = t180.
        DATA(t232) = VALUE string( ).
        DATA t233 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t234) = VALUE string( ).
        t234 = |local_testclass_consistency|.
        DATA(t236) = VALUE string( ).
        t236 = |Local testclass consistency|.
        DATA(t238) = VALUE string( ).
        DATA(t239) = |Checks that local test classes are placed in the test includ|.
        t239 = t239 && |e, and class unit test flag is set|.
        t238 = t239.
        DATA t240 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t245.
        t244 = t245.
        DATA(t247) = |Syntax|.
        t244->load( ).
        APPEND t247 TO t244->items.
        t244->save( ).
        t240 = t244.
        DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t233 = NEW zcl_lnt_irule_metadata( i_key = t234 i_title = t236 i_short_description = t238 i_bad_example = t250 i_good_example = t252 i_extended_information = t254 i_tags = t240 i_pragma = t256 i_pseudo_comment = t258 ).
        CREATE OBJECT t233->zlnt_view_ownkeys_b0e8086400eb.
        t233->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t260 ).
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t261 ).
        ENDIF.
        DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t262 ).
        ENDIF.
        DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t233->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t233->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t263 ).
        ENDIF.
        CREATE OBJECT t233->zlnt_json_ownkeys_70e5fd461788.
        t233->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t264) = |key|.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
        DATA(t266) = |title|.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
        ENDIF.
        DATA(t268) = |shortDescription|.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t268 p1 = t269 ).
        ENDIF.
        DATA(t270) = |tags|.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t233->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t233->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
        ENDIF.
        t232 = t233->key.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t272 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t274 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t228 = zcl_lnt_issue=>at_identifier( i_identifier = t229 i_message_26cb = t225 i_key = t232 i_severity = t272 i_fix = t274 ).
        t3->load( ).
        APPEND t228 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDIF.
    DATA(t277) = VALUE abap_bool( ).
    DATA(t278) = VALUE abap_bool( ).
    DATA(t279) = VALUE abap_bool( ).
    DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t282) = VALUE string( ).
    DATA t283 TYPE REF TO zcl_lnt_abstract_file.
    t283 = t1.
    DATA(t285) = VALUE string( ).
    t285 = t283->filename.
    t282 = t285.
    DATA(t287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t287->has = abap_true.
    t287->value = t282.
    t280 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t290 TYPE REF TO zcl_lnt_abap_file.
    DATA t291 TYPE REF TO zcl_lnt_abap_file.
    DATA t292 TYPE REF TO zcl_lnt_class.
    DATA t294 TYPE REF TO object.
    t294 = t2.
    t292 ?= t294.
    t291 = t292->get_main_abap_file( ).
    t290 = t291.
    DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t296) = xsdbool( t290 IS INITIAL ).
    IF t296 = abap_true.
    ELSE.
      DATA(t299) = VALUE string( ).
      DATA t300 TYPE REF TO zcl_lnt_abstract_file.
      t300 = t290.
      DATA(t303) = VALUE string( ).
      t303 = t300->filename.
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
      DATA t310 TYPE REF TO zcl_lnt_abap_file.
      DATA t311 TYPE REF TO zcl_lnt_class.
      DATA t313 TYPE REF TO object.
      t313 = t2.
      t311 ?= t313.
      t310 = t311->get_testclass_file( ).
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t308 = xsdbool( t310 IS INITIAL ).
      t278 = t308.
    ENDIF.
    t277 = t278.
    IF t278 = abap_true.
      DATA(t318) = VALUE abap_bool( ).
      DATA t319 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t322 TYPE REF TO zcl_lnt_abstract_object.
      DATA t323 TYPE REF TO zcl_lnt_class.
      DATA t325 TYPE REF TO object.
      t325 = t2.
      t323 ?= t325.
      t322 = t323.
      DATA t327 TYPE REF TO zif_lnt_file.
      DATA t328 TYPE REF TO zif_lnt_file.
      t328 = t322->get_xml_file( ).
      t327 = t328.
      DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t331) = VALUE abap_bool( ).
      t331 = xsdbool( t327 IS BOUND ).
      IF t331 = abap_true.
        DATA(t335) = VALUE string( ).
        DATA t336 TYPE REF TO zif_lnt_file.
        t336 = t327.
        t335 = t336->get_raw( ).
        DATA(t338) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t338->has = abap_true.
        t338->value = t335.
        t330 = t338.
      ELSE.
        CLEAR t330.
      ENDIF.
      t320 = t330.
      DATA t341 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t342) = VALUE abap_bool( ).
      IF t320 IS INITIAL.
        t342 = abap_true.
      ELSEIF t320->has = abap_false.
        t342 = abap_true.
      ENDIF.
      IF t342 = abap_true.
      ELSE.
        DATA(t345) = VALUE abap_bool( ).
        DATA(t346) = VALUE i( ).
        DATA(t347) = VALUE string( ).
        t347 = t320->value.
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
      DATA(t356) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t356->has = abap_true.
      t356->value = abap_true.
      t353 = t356.
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
      DATA t362 TYPE REF TO zcl_lnt_class.
      DATA t363 TYPE REF TO zcl_lnt_class.
      DATA t365 TYPE REF TO object.
      t365 = t2.
      t363 ?= t365.
      t362 = t363.
      DATA t367 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t369 TYPE REF TO zif_lnt_abap_file_information.
      DATA t371 TYPE REF TO zcl_lnt_abap_file.
      DATA t372 TYPE REF TO zcl_lnt_abap_file.
      t372 = t362->get_main_abap_file( ).
      t371 = t372.
      DATA t374 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t375) = xsdbool( t371 IS INITIAL ).
      IF t375 = abap_true.
      ELSE.
        DATA t382 TYPE REF TO zif_lnt_abap_file_information.
        t382 = t371->info.
        t374 = t382.
      ENDIF.
      t369 = t374.
      DATA t384 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t385) = xsdbool( t369 IS INITIAL ).
      IF t385 = abap_true.
      ELSE.
        DATA t388 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t389 TYPE REF TO zif_lnt_abap_file_information.
        t389 = t369.
        DATA(t391) = VALUE string( ).
        DATA t392 TYPE REF TO zcl_lnt_abstract_object.
        t392 = t362.
        DATA(t394) = VALUE string( ).
        t394 = t392->name.
        t391 = t394.
        t388 = t389->get_class_definition_by_name( i_name = t391 ).
        t384 = t388.
      ENDIF.
      t367 = t384.
      DATA t396 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t397) = xsdbool( t367 IS INITIAL ).
      IF t397 = abap_true.
      ELSE.
        DATA t400 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t401 TYPE REF TO zcl_lnt_info_class_definition.
        t401 = t367.
        t400 = t401->identifier.
        t396 = t400.
      ENDIF.
      t360 = t396.
      DATA(t403) = VALUE abap_bool( ).
      t403 = xsdbool( t360 IS BOUND ).
      IF t403 = abap_true.
        DATA(t405) = VALUE string( ).
        t405 = |Has <WITH_UNIT_TESTS> set in XML, but no testclasses|.
        DATA t408 TYPE REF TO zcl_lnt_issue.
        DATA t409 TYPE REF TO zcl_lnt_fi_identifier.
        t409 = t360.
        DATA(t412) = VALUE string( ).
        DATA t413 TYPE REF TO zcl_lnt_irule_metadata.
        DATA(t414) = VALUE string( ).
        t414 = |local_testclass_consistency|.
        DATA(t416) = VALUE string( ).
        t416 = |Local testclass consistency|.
        DATA(t418) = VALUE string( ).
        DATA(t419) = |Checks that local test classes are placed in the test includ|.
        t419 = t419 && |e, and class unit test flag is set|.
        t418 = t419.
        DATA t420 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t424 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t425 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t425.
        t424 = t425.
        DATA(t427) = |Syntax|.
        t424->load( ).
        APPEND t427 TO t424->items.
        t424->save( ).
        t420 = t424.
        DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t434 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t413 = NEW zcl_lnt_irule_metadata( i_key = t414 i_title = t416 i_short_description = t418 i_bad_example = t430 i_good_example = t432 i_extended_information = t434 i_tags = t420 i_pragma = t436 i_pseudo_comment = t438 ).
        CREATE OBJECT t413->zlnt_view_ownkeys_b0e8086400eb.
        t413->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t413->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t440 ).
        DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t413->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t413->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t441 ).
        ENDIF.
        DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t413->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t413->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t442 ).
        ENDIF.
        DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t413->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t413->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t443 ).
        ENDIF.
        CREATE OBJECT t413->zlnt_json_ownkeys_70e5fd461788.
        t413->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t444) = |key|.
        DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t413->zlnt_json_ownkeys_70e5fd461788->put( p0 = t444 p1 = t445 ).
        DATA(t446) = |title|.
        DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t413->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t413->zlnt_json_ownkeys_70e5fd461788->put( p0 = t446 p1 = t447 ).
        ENDIF.
        DATA(t448) = |shortDescription|.
        DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t413->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t413->zlnt_json_ownkeys_70e5fd461788->put( p0 = t448 p1 = t449 ).
        ENDIF.
        DATA(t450) = |tags|.
        DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t413->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t413->zlnt_json_ownkeys_70e5fd461788->put( p0 = t450 p1 = t451 ).
        ENDIF.
        t412 = t413->key.
        DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t452 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t454 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t408 = zcl_lnt_issue=>at_identifier( i_identifier = t409 i_message_26cb = t405 i_key = t412 i_severity = t452 i_fix = t454 ).
        t3->load( ).
        APPEND t408 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_lcl_tstcls_cnsstnc_cnf( me->g_c_i_s_r_lc_ts_cn_ts_lc_ts_cn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_lcl_tstcls_cnsstnc_cnf( me->g_c_i_s_r_lc_ts_cn_ts_lc_ts_cn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_lcl_tstcls_cnsstnc_cnf.
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
        t1 = NEW zcl_lnt_lcl_tstcls_cnsstnc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_lc_ts_cn_ts_lc_ts_cn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_lc_ts_cn_ts_lc_ts_cn( i_file = i_file i_obj_1ed0 = i_obj_1ed0 ) ).

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
