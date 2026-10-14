* TS: src/rules/cloud_types.ts:13:1 CloudTypes
CLASS zcl_lnt_cloud_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_cloud_types_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_object_type TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_cl_ty_ts_cl_typ RETURNING VALUE(result) TYPE REF TO zcl_lnt_cloud_types_conf.
    METHODS st_cn_in_sr_rl_cl_ty_ts_cl_typ IMPORTING i_conf TYPE REF TO zcl_lnt_cloud_types_conf.
    METHODS in_in_sr_rl_cld_typ_ts_cld_typ IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_cloud_types.
    CLASS-METHODS is_cloud IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cloud_types IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cloud_types_conf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |cloud_types|.
    DATA(t3) = |Check cloud types|.
    DATA(t4) = |Checks that the package does not contain any object types un|.
    t4 = t4 && |supported in cloud ABAP.|.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA(t9) = abap_true.
    IF t9 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11 = t12.
      DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t14) = |SingleFile|.
      APPEND t14 TO t13->items.
      DATA(t15) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t16) = |Syntax|.
      APPEND t16 TO t15->items.
      DATA(t17) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      t10 = t17.
      t8 = t10.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      t8 = t18.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t5 i_good_example = t6 i_extended_information = t7 i_tags = t8 i_pragma = t19 i_pseudo_comment = t20 ).
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_object_type.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cloud_types.ts:26|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cl_ty_ts_cl_typ.
    DATA(t1) = CAST zcl_lnt_cloud_types_conf( me->conf ).
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cl_ty_ts_cl_typ.
    DATA(t1) = CAST zcl_lnt_cloud_types_conf( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cloud_types.ts:34|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD in_in_sr_rl_cld_typ_ts_cld_typ.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cloud_types.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_cloud.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = VALUE abap_bool( ).
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA(t39) = VALUE abap_bool( ).
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE abap_bool( ).
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE abap_bool.
    DATA t50 TYPE abap_bool.
    DATA(t51) = CAST zif_lnt_object( t1 ).
    t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_applctn_jb_ctlg_entry ).
    t49 = t50.
    IF t50 = abap_false.
      DATA t52 TYPE abap_bool.
      DATA(t53) = CAST zif_lnt_object( t1 ).
      t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_applctn_jb_tmplt ).
      t49 = t52.
    ENDIF.
    t48 = t49.
    IF t49 = abap_false.
      DATA t54 TYPE abap_bool.
      DATA(t55) = CAST zif_lnt_object( t1 ).
      t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_api_release_state ).
      t48 = t54.
    ENDIF.
    t47 = t48.
    IF t48 = abap_false.
      DATA t56 TYPE abap_bool.
      DATA(t57) = CAST zif_lnt_object( t1 ).
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_assgn_srvc_t_athrz_grp ).
      t47 = t56.
    ENDIF.
    t46 = t47.
    IF t47 = abap_false.
      DATA t58 TYPE abap_bool.
      DATA(t59) = CAST zif_lnt_object( t1 ).
      t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_atc_check_category ).
      t46 = t58.
    ENDIF.
    t45 = t46.
    IF t46 = abap_false.
      DATA t60 TYPE abap_bool.
      DATA(t61) = CAST zif_lnt_object( t1 ).
      t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_applctn_dscrptrs_fr ).
      t45 = t60.
    ENDIF.
    t44 = t45.
    IF t45 = abap_false.
      DATA t62 TYPE abap_bool.
      DATA(t63) = CAST zif_lnt_object( t1 ).
      t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_atc_check_object ).
      t44 = t62.
    ENDIF.
    t43 = t44.
    IF t44 = abap_false.
      DATA t64 TYPE abap_bool.
      DATA(t65) = CAST zif_lnt_object( t1 ).
      t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_atc_check_variant ).
      t43 = t64.
    ENDIF.
    t42 = t43.
    IF t43 = abap_false.
      DATA t66 TYPE abap_bool.
      DATA(t67) = CAST zif_lnt_object( t1 ).
      t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_athrztn_chck_fld ).
      t42 = t66.
    ENDIF.
    t41 = t42.
    IF t42 = abap_false.
      DATA t68 TYPE abap_bool.
      DATA(t69) = CAST zif_lnt_object( t1 ).
      t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_authorization_object ).
      t41 = t68.
    ENDIF.
    t40 = t41.
    IF t41 = abap_false.
      DATA t70 TYPE abap_bool.
      DATA(t71) = CAST zif_lnt_object( t1 ).
      t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_athrztn_objct_extnsn ).
      t40 = t70.
    ENDIF.
    t39 = t40.
    IF t40 = abap_false.
      DATA t72 TYPE abap_bool.
      DATA(t73) = CAST zif_lnt_object( t1 ).
      t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_behavior_definition ).
      t39 = t72.
    ENDIF.
    t38 = t39.
    IF t39 = abap_false.
      DATA t74 TYPE abap_bool.
      DATA(t75) = CAST zif_lnt_object( t1 ).
      t74 = xsdbool( t75 IS BOUND AND t75 IS INSTANCE OF zcl_lnt_business_catalog ).
      t38 = t74.
    ENDIF.
    t37 = t38.
    IF t38 = abap_false.
      DATA t76 TYPE abap_bool.
      DATA(t77) = CAST zif_lnt_object( t1 ).
      t76 = xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_bsnss_ctlg_app_assgnmn ).
      t37 = t76.
    ENDIF.
    t36 = t37.
    IF t37 = abap_false.
      DATA t78 TYPE abap_bool.
      DATA(t79) = CAST zif_lnt_object( t1 ).
      t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_bsns_cnfgr_mntnn_objct ).
      t36 = t78.
    ENDIF.
    t35 = t36.
    IF t36 = abap_false.
      DATA t80 TYPE abap_bool.
      DATA(t81) = CAST zif_lnt_object( t1 ).
      t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_cds_metadata_extension ).
      t35 = t80.
    ENDIF.
    t34 = t35.
    IF t35 = abap_false.
      DATA t82 TYPE abap_bool.
      DATA(t83) = CAST zif_lnt_object( t1 ).
      t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_class ).
      t34 = t82.
    ENDIF.
    t33 = t34.
    IF t34 = abap_false.
      DATA t84 TYPE abap_bool.
      DATA(t85) = CAST zif_lnt_object( t1 ).
      t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_cds_type ).
      t33 = t84.
    ENDIF.
    t32 = t33.
    IF t33 = abap_false.
      DATA t86 TYPE abap_bool.
      DATA(t87) = CAST zif_lnt_object( t1 ).
      t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_change_document ).
      t32 = t86.
    ENDIF.
    t31 = t32.
    IF t32 = abap_false.
      DATA t88 TYPE abap_bool.
      DATA(t89) = CAST zif_lnt_object( t1 ).
      t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_cds_entity_buffer ).
      t31 = t88.
    ENDIF.
    t30 = t31.
    IF t31 = abap_false.
      DATA t90 TYPE abap_bool.
      DATA(t91) = CAST zif_lnt_object( t1 ).
      t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_application_log_object ).
      t30 = t90.
    ENDIF.
    t29 = t30.
    IF t30 = abap_false.
      DATA t92 TYPE abap_bool.
      DATA(t93) = CAST zif_lnt_object( t1 ).
      t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_communication_scenario ).
      t29 = t92.
    ENDIF.
    t28 = t29.
    IF t29 = abap_false.
      DATA t94 TYPE abap_bool.
      DATA(t95) = CAST zif_lnt_object( t1 ).
      t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_data_control ).
      t28 = t94.
    ENDIF.
    t27 = t28.
    IF t28 = abap_false.
      DATA t96 TYPE abap_bool.
      DATA(t97) = CAST zif_lnt_object( t1 ).
      t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_namespace ).
      t27 = t96.
    ENDIF.
    t26 = t27.
    IF t27 = abap_false.
      DATA t98 TYPE abap_bool.
      DATA(t99) = CAST zif_lnt_object( t1 ).
      t98 = xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_knwldg_trnsfr_dcmnt ).
      t26 = t98.
    ENDIF.
    t25 = t26.
    IF t26 = abap_false.
      DATA t100 TYPE abap_bool.
      DATA(t101) = CAST zif_lnt_object( t1 ).
      t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_ob_data_definition ).
      t25 = t100.
    ENDIF.
    t24 = t25.
    IF t25 = abap_false.
      DATA t102 TYPE abap_bool.
      DATA(t103) = CAST zif_lnt_object( t1 ).
      t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_data_element ).
      t24 = t102.
    ENDIF.
    t23 = t24.
    IF t24 = abap_false.
      DATA t104 TYPE abap_bool.
      DATA(t105) = CAST zif_lnt_object( t1 ).
      t104 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_domain ).
      t23 = t104.
    ENDIF.
    t22 = t23.
    IF t23 = abap_false.
      DATA t106 TYPE abap_bool.
      DATA(t107) = CAST zif_lnt_object( t1 ).
      t106 = xsdbool( t107 IS BOUND AND t107 IS INSTANCE OF zcl_lnt_event_binding ).
      t22 = t106.
    ENDIF.
    t21 = t22.
    IF t22 = abap_false.
      DATA t108 TYPE abap_bool.
      DATA(t109) = CAST zif_lnt_object( t1 ).
      t108 = xsdbool( t109 IS BOUND AND t109 IS INSTANCE OF zcl_lnt_event_consumer ).
      t21 = t108.
    ENDIF.
    t20 = t21.
    IF t21 = abap_false.
      DATA t110 TYPE abap_bool.
      DATA(t111) = CAST zif_lnt_object( t1 ).
      t110 = xsdbool( t111 IS BOUND AND t111 IS INSTANCE OF zcl_lnt_function_group ).
      t20 = t110.
    ENDIF.
    t19 = t20.
    IF t20 = abap_false.
      DATA t112 TYPE abap_bool.
      DATA(t113) = CAST zif_lnt_object( t1 ).
      t112 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_gtwy_o_dt_grp_and_assg ).
      t19 = t112.
    ENDIF.
    t18 = t19.
    IF t19 = abap_false.
      DATA t114 TYPE abap_bool.
      DATA(t115) = CAST zif_lnt_object( t1 ).
      t114 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_http_service ).
      t18 = t114.
    ENDIF.
    t17 = t18.
    IF t18 = abap_false.
      DATA t116 TYPE abap_bool.
      DATA(t117) = CAST zif_lnt_object( t1 ).
      t116 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_iamapp ).
      t17 = t116.
    ENDIF.
    t16 = t17.
    IF t17 = abap_false.
      DATA t118 TYPE abap_bool.
      DATA(t119) = CAST zif_lnt_object( t1 ).
      t118 = xsdbool( t119 IS BOUND AND t119 IS INSTANCE OF zcl_lnt_inbound_service ).
      t16 = t118.
    ENDIF.
    t15 = t16.
    IF t16 = abap_false.
      DATA t120 TYPE abap_bool.
      DATA(t121) = CAST zif_lnt_object( t1 ).
      t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_ob_interface ).
      t15 = t120.
    ENDIF.
    t14 = t15.
    IF t15 = abap_false.
      DATA t122 TYPE abap_bool.
      DATA(t123) = CAST zif_lnt_object( t1 ).
      t122 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_lock_object ).
      t14 = t122.
    ENDIF.
    t13 = t14.
    IF t14 = abap_false.
      DATA t124 TYPE abap_bool.
      DATA(t125) = CAST zif_lnt_object( t1 ).
      t124 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_mntnn_and_trnspr_objct ).
      t13 = t124.
    ENDIF.
    t12 = t13.
    IF t13 = abap_false.
      DATA t126 TYPE abap_bool.
      DATA(t127) = CAST zif_lnt_object( t1 ).
      t126 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_ob_message_class ).
      t12 = t126.
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      DATA t128 TYPE abap_bool.
      DATA(t129) = CAST zif_lnt_object( t1 ).
      t128 = xsdbool( t129 IS BOUND AND t129 IS INSTANCE OF zcl_lnt_number_range ).
      t11 = t128.
    ENDIF.
    t10 = t11.
    IF t11 = abap_false.
      DATA t130 TYPE abap_bool.
      DATA(t131) = CAST zif_lnt_object( t1 ).
      t130 = xsdbool( t131 IS BOUND AND t131 IS INSTANCE OF zcl_lnt_outbound_service ).
      t10 = t130.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA t132 TYPE abap_bool.
      DATA(t133) = CAST zif_lnt_object( t1 ).
      t132 = xsdbool( t133 IS BOUND AND t133 IS INSTANCE OF zcl_lnt_package ).
      t9 = t132.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t134 TYPE abap_bool.
      DATA(t135) = CAST zif_lnt_object( t1 ).
      t134 = xsdbool( t135 IS BOUND AND t135 IS INSTANCE OF zcl_lnt_restriction_field ).
      t8 = t134.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t136 TYPE abap_bool.
      DATA(t137) = CAST zif_lnt_object( t1 ).
      t136 = xsdbool( t137 IS BOUND AND t137 IS INSTANCE OF zcl_lnt_restriction_type ).
      t7 = t136.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t138 TYPE abap_bool.
      DATA(t139) = CAST zif_lnt_object( t1 ).
      t138 = xsdbool( t139 IS BOUND AND t139 IS INSTANCE OF zcl_lnt_service_binding ).
      t6 = t138.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t140 TYPE abap_bool.
      DATA(t141) = CAST zif_lnt_object( t1 ).
      t140 = xsdbool( t141 IS BOUND AND t141 IS INSTANCE OF zcl_lnt_service_definition ).
      t5 = t140.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t142 TYPE abap_bool.
      DATA(t143) = CAST zif_lnt_object( t1 ).
      t142 = xsdbool( t143 IS BOUND AND t143 IS INSTANCE OF zcl_lnt_table ).
      t4 = t142.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t144 TYPE abap_bool.
      DATA(t145) = CAST zif_lnt_object( t1 ).
      t144 = xsdbool( t145 IS BOUND AND t145 IS INSTANCE OF zcl_lnt_ob_table_type ).
      t3 = t144.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t146 TYPE abap_bool.
      DATA(t147) = CAST zif_lnt_object( t1 ).
      t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_transformation ).
      t2 = t146.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cloud_types.ts:95|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cloud_types_conf( me->gt_cn_in_sr_rl_cl_ty_ts_cl_typ( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cloud_types_conf( me->gt_cn_in_sr_rl_cl_ty_ts_cl_typ( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cloud_types.ts:34|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/cloud_types.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1357_e35e10f731f8.
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
