* TS: src/rules/remove_descriptions.ts:21:1 RemoveDescriptions
CLASS zcl_lnt_remove_descriptions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_rm_ds_ts_rm_dsc RETURNING VALUE(result) TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    METHODS st_cn_in_sr_rl_rm_ds_ts_rm_dsc IMPORTING i_conf TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
    METHODS in_in_sr_rl_rmv_dsc_ts_rmv_dsc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_remove_descriptions.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_interface IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_ob_interface RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_class RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_xml IMPORTING i_xml TYPE string i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_remove_descriptions IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_rmv_dscrptns_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |remove_descriptions|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Remove descriptions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Ensures you have no descriptions in metadata of methods, par|.
    t7 = t7 && |ameters, etc.\n\nClass descriptions are required, see rule des|.
    t7 = t7 && |cription_empty.\n\nConsider using ABAP Doc for documentation.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t11.
      t9 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t12.
      t9 = t12.
    ENDIF.
    t8 = t9.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t14.
    t13 = t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t16.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    t21 = t22.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t13 i_good_example = t15 i_extended_information = t17 i_tags = t8 i_pragma = t19 i_pseudo_comment = t21 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t23 ).
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t26 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t27) = |key|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    DATA(t29) = |title|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t29 p1 = t30 ).
    ENDIF.
    DATA(t31) = |shortDescription|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA(t33) = |tags|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_rm_ds_ts_rm_dsc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_rm_ds_ts_rm_dsc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_rmv_dsc_ts_rmv_dsc.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zcl_lnt_ddic.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_ddic.
    CLEAR t3.
    DATA(t4) = me->reg.
    t3 = NEW zcl_lnt_ddic( i_reg_f149 = t4 ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_class ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t8.
      TRY.
          DATA t9 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t9.
          DATA t10 TYPE REF TO zcl_lnt_class.
          CLEAR t10.
          DATA t11 TYPE REF TO zcl_lnt_class.
          CLEAR t11.
          DATA(t12) = t1.
          DATA t13 TYPE REF TO object.
          CLEAR t13.
          t13 = t12.
          t11 ?= t13.
          t10 = t11.
          DATA t14 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t14.
          DATA t15 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t15.
          DATA t16 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t16.
          DATA t17 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t17.
          DATA t18 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t18.
          DATA(t19) = t10.
          t18 = t19->get_main_abap_file( ).
          t17 = t18.
          DATA t20 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t20.
          DATA(t21) = VALUE abap_bool( ).
          DATA(t22) = t17.
          IF t22 IS INITIAL.
            t21 = abap_true.
          ENDIF.
          IF t21 = abap_true.
            DATA t23 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t23.
            t20 = t23.
          ELSE.
            DATA t24 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t24.
            DATA t25 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t25.
            DATA t26 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t26.
            DATA(t27) = t17.
            t26 = t27.
            t25 = t26.
            DATA t28 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t28.
            DATA(t29) = t25.
            t28 = t29->info.
            t24 = t28.
            t20 = t24.
          ENDIF.
          t16 = t20.
          t15 = t16.
          DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t30.
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = t15.
          IF t32 IS INITIAL.
            t31 = abap_true.
          ENDIF.
          IF t31 = abap_true.
            DATA t33 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t33.
            t30 = t33.
          ELSE.
            DATA t34 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t34.
            DATA t35 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t35.
            DATA(t36) = t15.
            t35 = t36.
            DATA(t37) = VALUE string( ).
            DATA t38 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t38.
            DATA(t39) = t10.
            t38 = t39.
            DATA(t40) = VALUE string( ).
            DATA(t41) = t38.
            t40 = t41->name.
            t37 = t40.
            t34 = t35->get_class_definition_by_name( i_name = t37 ).
            t30 = t34.
          ENDIF.
          t14 = t30.
          t9 = t14.
          t7 = t9.
        CATCH zlnt_exception_cl_30eec8e8805d INTO t8.
          DATA(t42) = t8->payload.
          DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t43.
          CREATE OBJECT t43.
          result = t43.
          RETURN.
      ENDTRY.
      DATA(t44) = VALUE abap_bool( ).
      DATA t45 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t45.
      DATA(t46) = t7.
      t45 = t46.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      t47 = t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t45.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      t44 = t49.
      IF t44 = abap_true.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t51.
        CREATE OBJECT t51.
        result = t51.
        RETURN.
      ELSE.
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t54.
        DATA(t55) = me->conf.
        t54 = t55->zlnt_view_read_sr_8c0bcd1bdb14( ).
        IF t54 IS BOUND.
          IF t54->has = abap_true.
            t53 = xsdbool( t54->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t52 = t53.
        IF t53 = abap_true.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = t2.
          DATA t58 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t58.
          DATA(t59) = abap_true.
          IF t59 = abap_true.
            DATA t60 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t60.
            DATA(t61) = t7.
            t60 = t61.
            t58 = t60.
          ELSE.
            DATA t62 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t62.
            t58 = t62.
          ENDIF.
          DATA t63 TYPE REF TO zcl_lnt_class.
          CLEAR t63.
          DATA(t64) = t1.
          DATA t65 TYPE REF TO object.
          CLEAR t65.
          t65 = t64.
          t63 ?= t65.
          t56 = t57->is_exception( i_def = t58 i_obj_ac26 = t63 ).
          t52 = t56.
        ENDIF.
        IF t52 = abap_true.
          DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t66.
          CREATE OBJECT t66.
          result = t66.
          RETURN.
        ELSE.
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = me->conf.
          t69 = t70->zlnt_view_read_sr_cc7a7915a497( ).
          DATA(t71) = abap_true.
          t68 = xsdbool( t69 = t71 ).
          t67 = t68.
          IF t68 = abap_true.
            DATA(t72) = VALUE abap_bool( ).
            DATA t73 TYPE REF TO zcl_lnt_info_implementing.
            CLEAR t73.
            DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t74.
            DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t75.
            DATA t76 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t76.
            DATA(t77) = t7.
            t76 = t77.
            t75 = t76->interfaces.
            t74 = t75.
            DATA(t78) = VALUE i( ).
            DATA(t79) = VALUE i( ).
            DATA(t80) = t74.
            t80->load( ).
            t79 = lines( t80->items ).
            t78 = t79.
            DATA(t81) = VALUE i( ).
            DATA(t82) = 0.
            t81 = t82.
            DATA t83 TYPE REF TO zcl_lnt_info_implementing.
            CLEAR t83.
            DATA t84 TYPE REF TO zcl_lnt_info_implementing.
            CLEAR t84.
            t83 = t84.
            DO.
              DATA(t85) = VALUE abap_bool( ).
              DATA(t86) = t81.
              DATA(t87) = t78.
              t85 = xsdbool( t86 < t87 ).
              IF t85 = abap_false.
                EXIT.
              ENDIF.
              DATA t88 TYPE REF TO zcl_lnt_info_implementing.
              CLEAR t88.
              DATA t89 TYPE REF TO zcl_lnt_info_implementing.
              CLEAR t89.
              DATA t90 TYPE REF TO zcl_lnt_info_implementing.
              CLEAR t90.
              DATA(t91) = t74.
              DATA(t92) = t81.
              DATA t93 TYPE REF TO object.
              CLEAR t93.
              t93 = t91->get( p0 = t92 ).
              DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t94.
              CLEAR t90.
              IF t93 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t94 ?= t93.
                DATA t95 TYPE REF TO object.
                CLEAR t95.
                t95 = t94->as_ref( ).
                t90 ?= t95.
              ELSE.
                t90 ?= t93.
              ENDIF.
              t89 = t90.
              t88 = t89.
              DATA(t96) = VALUE abap_bool( ).
              DATA(t97) = VALUE string( ).
              DATA(t98) = VALUE string( ).
              DATA(t99) = t88.
              t98 = t99->name.
              DATA(t100) = strlen( t98 ).
              t97 = t98.
              IF t97 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t97 TO UPPER CASE.
              ELSE.
                t97 = zlnt_runtime_uppe_91169605024d=>full( t97 ).
              ENDIF.
              DATA(t101) = |IF_WORKFLOW|.
              t96 = xsdbool( t97 = t101 ).
              IF t96 = abap_true.
                DATA t102 TYPE REF TO zcl_lnt_info_implementing.
                CLEAR t102.
                DATA(t103) = abap_true.
                IF t103 = abap_true.
                  DATA(t104) = t88.
                  t102 = t104.
                ELSE.
                  DATA t105 TYPE REF TO zcl_lnt_info_implementing.
                  CLEAR t105.
                  t102 = t105.
                ENDIF.
                t83 = t102.
                EXIT.
              ENDIF.
              DATA(t106) = VALUE i( ).
              DATA(t107) = t81.
              DATA(t108) = 1.
              t106 = t107 + t108.
              t81 = t106.
            ENDDO.
            DATA(t109) = t83.
            t73 = t109.
            t72 = xsdbool( t73 IS BOUND ).
            t67 = t72.
          ENDIF.
          IF t67 = abap_true.
            DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t110.
            CREATE OBJECT t110.
            result = t110.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t111.
      DATA t112 TYPE REF TO zcl_lnt_class.
      CLEAR t112.
      DATA t113 TYPE REF TO zcl_lnt_class.
      CLEAR t113.
      DATA(t114) = t1.
      DATA t115 TYPE REF TO object.
      CLEAR t115.
      t115 = t114.
      t113 ?= t115.
      t112 = t113.
      DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t116.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t117.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t118.
      DATA t119 TYPE REF TO zcl_lnt_abstract_object.
      CLEAR t119.
      DATA(t120) = t112.
      t119 = t120.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t121.
      DATA t122 TYPE REF TO zif_lnt_file.
      CLEAR t122.
      DATA t123 TYPE REF TO zif_lnt_file.
      CLEAR t123.
      DATA(t124) = t119.
      t123 = t124->get_xml_file( ).
      t122 = t123.
      DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t125.
      DATA(t126) = VALUE abap_bool( ).
      DATA(t127) = t122.
      t126 = xsdbool( t127 IS BOUND ).
      IF t126 = abap_true.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE REF TO zif_lnt_file.
          CLEAR t131.
          DATA(t132) = t122.
          t131 = t132.
          t130 = t131->get_raw( ).
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = t130.
          t128 = t133.
        ELSE.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          t128 = t134.
        ENDIF.
        t125 = t128.
      ELSE.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        t125 = t135.
      ENDIF.
      t121 = t125.
      t118 = t121.
      t117 = t118.
      DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t136.
      DATA(t137) = VALUE abap_bool( ).
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t138.
      DATA(t139) = t117.
      t138 = t139.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t141.
      t140 = t141.
      DATA(t142) = VALUE abap_bool( ).
      DATA(t143) = t138.
      IF t143 IS INITIAL.
        t142 = abap_true.
      ELSEIF t143->has = abap_false.
        t142 = abap_true.
      ENDIF.
      t137 = t142.
      IF t137 = abap_true.
        DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t144.
        CREATE OBJECT t144.
        t136 = t144.
      ELSE.
        DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t145.
        DATA t146 TYPE REF TO zif_lnt_file.
        CLEAR t146.
        DATA t147 TYPE REF TO zif_lnt_file.
        CLEAR t147.
        DATA(t148) = t112.
        t147 = t148->get_xml_file( ).
        t146 = t147.
        DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t149.
        DATA(t150) = VALUE abap_bool( ).
        DATA t151 TYPE REF TO zif_lnt_file.
        CLEAR t151.
        DATA(t152) = t146.
        t151 = t152.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        t153 = t154.
        DATA(t155) = VALUE abap_bool( ).
        DATA(t156) = t151.
        IF t156 IS INITIAL.
          t155 = abap_true.
        ENDIF.
        t150 = t155.
        IF t150 = abap_true.
          DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t157.
          CREATE OBJECT t157.
          t149 = t157.
        ELSE.
          DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t158.
          DATA(t159) = VALUE string( ).
          DATA(t160) = t117.
          t159 = t160->value.
          DATA t161 TYPE REF TO zif_lnt_file.
          CLEAR t161.
          DATA(t162) = t146.
          t161 = t162.
          t158 = me->check_xml( i_xml = t159 i_file = t161 ).
          t149 = t158.
        ENDIF.
        t145 = t149.
        t136 = t145.
      ENDIF.
      t116 = t136.
      t111 = t116.
      result = t111.
      RETURN.
    ELSE.
      DATA(t163) = VALUE abap_bool( ).
      DATA(t164) = t1.
      t163 = xsdbool( t164 IS BOUND AND t164 IS INSTANCE OF zcl_lnt_ob_interface ).
      IF t163 = abap_true.
        DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t165.
        DATA t166 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t166.
        DATA t167 TYPE REF TO zcl_lnt_ob_interface.
        CLEAR t167.
        DATA(t168) = t1.
        DATA t169 TYPE REF TO object.
        CLEAR t169.
        t169 = t168.
        t167 ?= t169.
        t166 = t167.
        DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t170.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA t173 TYPE REF TO zcl_lnt_abstract_object.
        CLEAR t173.
        DATA(t174) = t166.
        t173 = t174.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        DATA t176 TYPE REF TO zif_lnt_file.
        CLEAR t176.
        DATA t177 TYPE REF TO zif_lnt_file.
        CLEAR t177.
        DATA(t178) = t173.
        t177 = t178->get_xml_file( ).
        t176 = t177.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t179.
        DATA(t180) = VALUE abap_bool( ).
        DATA(t181) = t176.
        t180 = xsdbool( t181 IS BOUND ).
        IF t180 = abap_true.
          DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t182.
          DATA(t183) = abap_true.
          IF t183 = abap_true.
            DATA(t184) = VALUE string( ).
            DATA t185 TYPE REF TO zif_lnt_file.
            CLEAR t185.
            DATA(t186) = t176.
            t185 = t186.
            t184 = t185->get_raw( ).
            DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t187->has = abap_true.
            t187->value = t184.
            t182 = t187.
          ELSE.
            DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t188.
            t182 = t188.
          ENDIF.
          t179 = t182.
        ELSE.
          DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t189.
          t179 = t189.
        ENDIF.
        t175 = t179.
        t172 = t175.
        t171 = t172.
        DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t190.
        DATA(t191) = VALUE abap_bool( ).
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t192.
        DATA(t193) = t171.
        t192 = t193.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        t194 = t195.
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = t192.
        IF t197 IS INITIAL.
          t196 = abap_true.
        ELSEIF t197->has = abap_false.
          t196 = abap_true.
        ENDIF.
        t191 = t196.
        IF t191 = abap_true.
          DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t198.
          CREATE OBJECT t198.
          t190 = t198.
        ELSE.
          DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t199.
          DATA t200 TYPE REF TO zif_lnt_file.
          CLEAR t200.
          DATA t201 TYPE REF TO zif_lnt_file.
          CLEAR t201.
          DATA(t202) = t166.
          t201 = t202->get_xml_file( ).
          t200 = t201.
          DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t203.
          DATA(t204) = VALUE abap_bool( ).
          DATA t205 TYPE REF TO zif_lnt_file.
          CLEAR t205.
          DATA(t206) = t200.
          t205 = t206.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          t207 = t208.
          DATA(t209) = VALUE abap_bool( ).
          DATA(t210) = t205.
          IF t210 IS INITIAL.
            t209 = abap_true.
          ENDIF.
          t204 = t209.
          IF t204 = abap_true.
            DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t211.
            CREATE OBJECT t211.
            t203 = t211.
          ELSE.
            DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t212.
            DATA(t213) = VALUE string( ).
            DATA(t214) = t171.
            t213 = t214->value.
            DATA t215 TYPE REF TO zif_lnt_file.
            CLEAR t215.
            DATA(t216) = t200.
            t215 = t216.
            t212 = me->check_xml( i_xml = t213 i_file = t215 ).
            t203 = t212.
          ENDIF.
          t199 = t203.
          t190 = t199.
        ENDIF.
        t170 = t190.
        t165 = t170.
        result = t165.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t217.
    CREATE OBJECT t217.
    result = t217.

  ENDMETHOD.

  METHOD check_interface.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA(t9) = t4.
    t8 = t9->get_xml_file( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t7.
    t11 = xsdbool( t12 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA t15 TYPE string.
        DATA t16 TYPE REF TO zif_lnt_file.
        DATA(t17) = t7.
        t16 = t17.
        t15 = t16->get_raw( ).
        DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t18->has = abap_true.
        t18->value = t15.
        t13 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t13 = t19.
      ENDIF.
      t10 = t13.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t10 = t20.
    ENDIF.
    t6 = t10.
    t3 = t6.
    t2 = t3.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = t2.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ELSEIF t27->has = abap_false.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t28.
      result = t28.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zif_lnt_file.
    DATA t30 TYPE REF TO zif_lnt_file.
    DATA(t31) = t1.
    t30 = t31->get_xml_file( ).
    t29 = t30.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zif_lnt_file.
    DATA(t34) = t29.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t33.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    t32 = t37.
    IF t32 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t39.
      result = t39.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE string.
    DATA(t42) = t2.
    t41 = t42->value.
    DATA t43 TYPE REF TO zif_lnt_file.
    DATA(t44) = t29.
    t43 = t44.
    t40 = me->check_xml( i_xml = t41 i_file = t43 ).
    result = t40.

  ENDMETHOD.

  METHOD check_class.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA t8 TYPE REF TO zif_lnt_file.
    DATA(t9) = t4.
    t8 = t9->get_xml_file( ).
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA(t12) = t7.
    t11 = xsdbool( t12 IS BOUND ).
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA t15 TYPE string.
        DATA t16 TYPE REF TO zif_lnt_file.
        DATA(t17) = t7.
        t16 = t17.
        t15 = t16->get_raw( ).
        DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t18->has = abap_true.
        t18->value = t15.
        t13 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t13 = t19.
      ENDIF.
      t10 = t13.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      t10 = t20.
    ENDIF.
    t6 = t10.
    t3 = t6.
    t2 = t3.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = t2.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    t24 = t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ELSEIF t27->has = abap_false.
      t26 = abap_true.
    ENDIF.
    t21 = t26.
    IF t21 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t28.
      result = t28.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zif_lnt_file.
    DATA t30 TYPE REF TO zif_lnt_file.
    DATA(t31) = t1.
    t30 = t31->get_xml_file( ).
    t29 = t30.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zif_lnt_file.
    DATA(t34) = t29.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    t35 = t36.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t33.
    IF t38 IS INITIAL.
      t37 = abap_true.
    ENDIF.
    t32 = t37.
    IF t32 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t39.
      result = t39.
      RETURN.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE string.
    DATA(t42) = t2.
    t41 = t42->value.
    DATA t43 TYPE REF TO zif_lnt_file.
    DATA(t44) = t29.
    t43 = t44.
    t40 = me->check_xml( i_xml = t41 i_file = t43 ).
    result = t40.

  ENDMETHOD.

  METHOD check_xml.
    DATA(t1) = i_xml.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t4.
    TRY.
        DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t5.
        DATA(t6) = t1.
        t5 = zlnt_runtime_xmlw_d7bcce7c35ad=>parse( t6 ).
        t3 = t5.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t4.
        DATA(t7) = t4->payload.
        DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t8.
        CREATE OBJECT t8.
        result = t8.
        RETURN.
    ENDTRY.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA(t17) = t3.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t16.
    IF t20 IS NOT BOUND.
      t19 = abap_true.
    ELSE.
      t19 = xsdbool( t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      DATA(t23) = t16.
      DATA(t24) = |abapGit|.
      t22 = t23->get( p0 = t24 ).
      t18 = t22.
    ENDIF.
    t15 = t18.
    t14 = t15.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = t14.
    CLEAR t27.
    IF t28 IS BOUND.
      t27 = t28.
    ENDIF.
    IF t27 IS NOT BOUND.
      t26 = abap_true.
    ELSE.
      t26 = xsdbool( t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t26 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      t25 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      DATA(t32) = t14.
      t31 = t32.
      DATA(t33) = |asx:abap|.
      t30 = t31->get( p0 = t33 ).
      t25 = t30.
    ENDIF.
    t13 = t25.
    t12 = t13.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = t12.
    CLEAR t36.
    IF t37 IS BOUND.
      t36 = t37.
    ENDIF.
    IF t36 IS NOT BOUND.
      t35 = abap_true.
    ELSE.
      t35 = xsdbool( t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t35 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      t34 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      DATA(t41) = t12.
      t40 = t41.
      DATA(t42) = |asx:values|.
      t39 = t40->get( p0 = t42 ).
      t34 = t39.
    ENDIF.
    t11 = t34.
    t10 = t11.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    t43 = t44.
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = t10.
    IF t46 IS INITIAL.
      t45 = abap_true.
    ENDIF.
    t9 = t45.
    IF t9 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t47.
      CREATE OBJECT t47.
      result = t47.
      RETURN.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = t3.
    t56 = t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = VALUE abap_bool( ).
    DATA(t60) = t56.
    IF t60 IS NOT BOUND.
      t59 = abap_true.
    ELSE.
      t59 = xsdbool( t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t59 = abap_true.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      t58 = t61.
    ELSE.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      DATA(t63) = t56.
      DATA(t64) = |abapGit|.
      t62 = t63->get( p0 = t64 ).
      t58 = t62.
    ENDIF.
    t55 = t58.
    t54 = t55.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = VALUE abap_bool( ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = t54.
    CLEAR t67.
    IF t68 IS BOUND.
      t67 = t68.
    ENDIF.
    IF t67 IS NOT BOUND.
      t66 = abap_true.
    ELSE.
      t66 = xsdbool( t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t66 = abap_true.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      t65 = t69.
    ELSE.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      DATA(t72) = t54.
      t71 = t72.
      DATA(t73) = |asx:abap|.
      t70 = t71->get( p0 = t73 ).
      t65 = t70.
    ENDIF.
    t53 = t65.
    t52 = t53.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = VALUE abap_bool( ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = t52.
    CLEAR t76.
    IF t77 IS BOUND.
      t76 = t77.
    ENDIF.
    IF t76 IS NOT BOUND.
      t75 = abap_true.
    ELSE.
      t75 = xsdbool( t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t75 = abap_true.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      t74 = t78.
    ELSE.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      DATA(t81) = t52.
      t80 = t81.
      DATA(t82) = |asx:values|.
      t79 = t80->get( p0 = t82 ).
      t74 = t79.
    ENDIF.
    t51 = t74.
    t50 = t51.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = VALUE abap_bool( ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = t50.
    CLEAR t85.
    IF t86 IS BOUND.
      t85 = t86.
    ENDIF.
    IF t85 IS NOT BOUND.
      t84 = abap_true.
    ELSE.
      t84 = xsdbool( t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t84 = abap_true.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      t83 = t87.
    ELSE.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t89.
      DATA(t90) = t50.
      t89 = t90.
      DATA(t91) = |DESCRIPTIONS|.
      t88 = t89->get( p0 = t91 ).
      t83 = t88.
    ENDIF.
    t49 = t83.
    t48 = t49.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = t48.
    IF t95 IS INITIAL.
      t94 = abap_true.
    ENDIF.
    IF t94 = abap_true.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      t93 = t96.
    ELSE.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      DATA(t98) = t48.
      t97 = t98.
      t93 = t97.
    ENDIF.
    t92 = t93.
    DATA(t99) = VALUE abap_bool( ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = t92.
    t100 = t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    t102 = t103.
    DATA(t104) = VALUE abap_bool( ).
    DATA(t105) = t100.
    IF t105 IS INITIAL.
      t104 = abap_true.
    ENDIF.
    t99 = t104.
    IF t99 = abap_true.
      DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t106.
      CREATE OBJECT t106.
      result = t106.
      RETURN.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    CLEAR t109.
    DATA(t110) = NEW zlnt_runtime_map__45a2315f90b8( ).
    t109 = t110.
    DATA(t111) = t109.
    t108 = t111.
    t107 = t108.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t113.
    CREATE OBJECT t113.
    t112 = t113.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = t92.
    t116 = t117.
    DATA(t118) = |SEOCOMPOTX|.
    t115 = t116->get( p0 = t118 ).
    t114 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t115 ).
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO object.
    CLEAR t120.
    DATA(t121) = VALUE i( ).
    DO.
      t114->load( ).
      IF t121 >= lines( t114->items ).
        EXIT.
      ENDIF.
      CLEAR t120.
      READ TABLE t114->items INDEX t121 + 1 INTO t120.
      t121 = t121 + 1.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      CLEAR t119.
      IF t120 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t122 ?= t120.
        t119 = t122.
      ELSE.
        IF t120 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t123 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t123.
          t123 ?= t120.
          CLEAR t119.
          IF t123 IS BOUND.
            CREATE OBJECT t119.
            t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t119->cval = t123.
          ENDIF.
        ELSE.
          CLEAR t119.
          IF t120 IS BOUND.
            DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t124.
            DATA t125 TYPE REF TO object.
            CLEAR t125.
            CLEAR t124.
            t125 = t120.
            TRY.
                t119 ?= t125.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t119 IS NOT BOUND.
              TRY.
                  t124 ?= t120.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t124 IS BOUND.
                t119 = t124->source( ).
              ENDIF.
              IF t119 IS NOT BOUND.
                CREATE OBJECT t119.
                t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t119->oval = t120.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t126) = VALUE string( ).
      DATA(t127) = VALUE string( ).
      DATA(t128) = |Remove description for |.
      DATA(t129) = VALUE string( ).
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      DATA(t131) = t119.
      DATA(t132) = |CMPNAME|.
      t130 = t131->get( p0 = t132 ).
      IF t130 IS BOUND.
        IF t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t133) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t134) = |src/rules/remove_descriptions.ts:123:51: ABAP record string |.
          t134 = t134 && |conversion requires primitive dynamic storage|.
          t133->source_location = t134.
          RAISE EXCEPTION t133.
        ENDIF.
      ENDIF.
      IF t130 IS BOUND.
        IF t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t130->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t135) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t136) = |src/rules/remove_descriptions.ts:123:51: record string conve|.
            t136 = t136 && |rsion requires the original default Object coercion hooks|.
            t135->source_location = t136.
            RAISE EXCEPTION t135.
          ENDIF.
          READ TABLE t130->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t137) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t138) = |src/rules/remove_descriptions.ts:123:51: record string conve|.
            t138 = t138 && |rsion requires the original default Object coercion hooks|.
            t137->source_location = t138.
            RAISE EXCEPTION t137.
          ENDIF.
          READ TABLE t130->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t139) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t140) = |src/rules/remove_descriptions.ts:123:51: record string conve|.
            t140 = t140 && |rsion requires the original default Object coercion hooks|.
            t139->source_location = t140.
            RAISE EXCEPTION t139.
          ENDIF.
          t129 = `[object Object]`.
        ELSE.
          t129 = t130->to_string( ).
        ENDIF.
      ELSE.
        t129 = `undefined`.
      ENDIF.
      DATA(t141) = strlen( t128 ).
      t127 = |{ t128 }{ t129 }|.
      t126 = t127.
      DATA(t142) = VALUE abap_bool( ).
      DATA t143 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t143.
      DATA t144 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t144.
      DATA(t145) = t107.
      DATA(t146) = VALUE string( ).
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      DATA(t148) = t119.
      DATA(t149) = |CMPNAME|.
      t147 = t148->get( p0 = t149 ).
      IF t147 IS BOUND.
        IF t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t150) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t151) = |src/rules/remove_descriptions.ts:124:20: ABAP record string |.
          t151 = t151 && |conversion requires primitive dynamic storage|.
          t150->source_location = t151.
          RAISE EXCEPTION t150.
        ENDIF.
      ENDIF.
      IF t147 IS BOUND.
        IF t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t147->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t152) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t153) = |src/rules/remove_descriptions.ts:124:20: record string conve|.
            t153 = t153 && |rsion requires the original default Object coercion hooks|.
            t152->source_location = t153.
            RAISE EXCEPTION t152.
          ENDIF.
          READ TABLE t147->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t154) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t155) = |src/rules/remove_descriptions.ts:124:20: record string conve|.
            t155 = t155 && |rsion requires the original default Object coercion hooks|.
            t154->source_location = t155.
            RAISE EXCEPTION t154.
          ENDIF.
          READ TABLE t147->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t156) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t157) = |src/rules/remove_descriptions.ts:124:20: record string conve|.
            t157 = t157 && |rsion requires the original default Object coercion hooks|.
            t156->source_location = t157.
            RAISE EXCEPTION t156.
          ENDIF.
          t146 = `[object Object]`.
        ELSE.
          t146 = t147->to_string( ).
        ENDIF.
      ELSE.
        t146 = `undefined`.
      ENDIF.
      t144 = t145->get( p0 = t146 ).
      t143 = t144.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      t158 = t159.
      DATA(t160) = VALUE abap_bool( ).
      DATA(t161) = VALUE abap_bool( ).
      DATA(t162) = t143.
      IF t162 IS INITIAL.
        t161 = abap_true.
      ELSEIF t162->has = abap_false.
        t161 = abap_true.
      ENDIF.
      t160 = xsdbool( t161 = abap_false ).
      t142 = t160.
      IF t142 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t163 TYPE REF TO zcl_lnt_position.
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_position.
      CLEAR t164.
      DATA(t165) = CONV f( 1 ).
      DATA(t166) = CONV f( 1 ).
      DATA(t167) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t167->has = abap_true.
      t167->value = t166.
      t164 = NEW zcl_lnt_position( i_row = t165 i_col = t167 ).
      t163 = t164.
      DATA t168 TYPE REF TO zcl_lnt_issue.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_issue.
      CLEAR t169.
      DATA(t170) = t2.
      DATA(t171) = t163.
      DATA(t172) = t126.
      DATA(t173) = VALUE string( ).
      DATA t174 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t174.
      DATA(t175) = VALUE string( ).
      DATA(t176) = |remove_descriptions|.
      t175 = t176.
      DATA(t177) = VALUE string( ).
      DATA(t178) = |Remove descriptions|.
      t177 = t178.
      DATA(t179) = VALUE string( ).
      DATA(t180) = |Ensures you have no descriptions in metadata of methods, par|.
      t180 = t180 && |ameters, etc.\n\nClass descriptions are required, see rule des|.
      t180 = t180 && |cription_empty.\n\nConsider using ABAP Doc for documentation.|.
      t179 = t180.
      DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t181.
      DATA t182 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t182.
      DATA(t183) = abap_true.
      IF t183 = abap_true.
        DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t184.
        CREATE OBJECT t184.
        t182 = t184.
      ELSE.
        DATA t185 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t185.
        t182 = t185.
      ENDIF.
      t181 = t182.
      DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t186.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t187.
      t186 = t187.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t189.
      t188 = t189.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t190.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      t190 = t191.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t192.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t193.
      t192 = t193.
      DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t194.
      DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t195.
      t194 = t195.
      t174 = NEW zcl_lnt_irule_metadata( i_key = t175 i_title = t177 i_short_description = t179 i_bad_example = t186 i_good_example = t188 i_extended_information = t190 i_tags = t181 i_pragma = t192 i_pseudo_comment = t194 ).
      CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
      t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t196.
      IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t196 ).
      ENDIF.
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t197.
      IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t197 ).
      ENDIF.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t198 ).
      ENDIF.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t199 ).
      ENDIF.
      CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
      t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t200) = |key|.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t200 p1 = t201 ).
      ENDIF.
      DATA(t202) = |title|.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
      ENDIF.
      DATA(t204) = |shortDescription|.
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t205.
      IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
      ENDIF.
      DATA(t206) = |tags|.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t206 p1 = t207 ).
      ENDIF.
      t173 = t174->key.
      DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t208.
      DATA(t209) = me->conf.
      t208 = t209->zlnt_view_read_sr_15c06369f827( ).
      DATA t210 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t210.
      t169 = zcl_lnt_issue=>at_position( i_file = t170 i_start = t171 i_message_26cb = t172 i_key = t173 i_severity = t208 i_fix = t210 ).
      t168 = t169.
      DATA(t211) = t112.
      DATA(t212) = t168.
      t211->load( ).
      APPEND t212 TO t211->items.
      t211->save( ).
      DATA t213 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      CLEAR t213.
      DATA(t214) = t107.
      DATA(t215) = VALUE string( ).
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t216.
      DATA(t217) = t119.
      DATA(t218) = |CMPNAME|.
      t216 = t217->get( p0 = t218 ).
      IF t216 IS BOUND.
        IF t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t219) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t220) = |src/rules/remove_descriptions.ts:132:16: ABAP record string |.
          t220 = t220 && |conversion requires primitive dynamic storage|.
          t219->source_location = t220.
          RAISE EXCEPTION t219.
        ENDIF.
      ENDIF.
      IF t216 IS BOUND.
        IF t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t216->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t221) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t222) = |src/rules/remove_descriptions.ts:132:16: record string conve|.
            t222 = t222 && |rsion requires the original default Object coercion hooks|.
            t221->source_location = t222.
            RAISE EXCEPTION t221.
          ENDIF.
          READ TABLE t216->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t223) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t224) = |src/rules/remove_descriptions.ts:132:16: record string conve|.
            t224 = t224 && |rsion requires the original default Object coercion hooks|.
            t223->source_location = t224.
            RAISE EXCEPTION t223.
          ENDIF.
          READ TABLE t216->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t225) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t226) = |src/rules/remove_descriptions.ts:132:16: record string conve|.
            t226 = t226 && |rsion requires the original default Object coercion hooks|.
            t225->source_location = t226.
            RAISE EXCEPTION t225.
          ENDIF.
          t215 = `[object Object]`.
        ELSE.
          t215 = t216->to_string( ).
        ENDIF.
      ELSE.
        t215 = `undefined`.
      ENDIF.
      DATA(t227) = abap_true.
      t213 = t214->set( p0 = t215 p1 = t227 ).
    ENDDO.
    DATA(t228) = t112.
    result = t228.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rmv_dscrptns_cnf( me->gt_cn_in_sr_rl_rm_ds_ts_rm_dsc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rmv_dscrptns_cnf( me->gt_cn_in_sr_rl_rm_ds_ts_rm_dsc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_rmv_dscrptns_cnf.
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
        t2 = NEW zcl_lnt_rmv_dscrptns_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_rm_ds_ts_rm_dsc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_remove_descriptions.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_rmv_dsc_ts_rmv_dsc( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1682_28fcf90d5cf8.
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
