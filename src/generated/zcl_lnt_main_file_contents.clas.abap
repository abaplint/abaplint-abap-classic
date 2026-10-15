* TS: src/rules/main_file_contents.ts:17:1 MainFileContents
CLASS zcl_lnt_main_file_contents DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_mn_fl_cntnts_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_details TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_mn_fl_cntnts_cnf.
    METHODS s_c_i_s_r_mn_fl_cn_ts_mn_fl_cn IMPORTING i_conf TYPE REF TO zcl_lnt_mn_fl_cntnts_cnf.
    METHODS i_i_sr_rl_mn_fl_cn_ts_mn_fl_cn IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_main_file_contents.
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
CLASS zcl_lnt_main_file_contents IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_mn_fl_cntnts_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |main_file_contents|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Main file contents|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks related to report declarations.|.
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
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
      t21 = t21 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
      t21 = t21 && |egin with "TYPE-POOL <name>."\n|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    t18 = t19.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t18 i_tags = t8 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |tags|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_details.
    DATA t2 TYPE string.
    DATA(t3) = |Main file must have specific contents: |.
    DATA(t4) = t1.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_mn_fl_cn_ts_mn_fl_cn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_mn_fl_cn_ts_mn_fl_cn.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_abap_object ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE string.
      DATA t8 TYPE REF TO zif_lnt_configuration.
      DATA(t9) = me->reg.
      t8 = t9->get_config( ).
      t7 = t8->get_language_version( ).
      DATA(t10) = |Cloud|.
      t6 = xsdbool( t7 = t10 ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA t14 TYPE REF TO zcl_lnt_abap_object.
    DATA(t15) = t1.
    DATA t16 TYPE REF TO object.
    t16 = t15.
    t14 ?= t16.
    t13 = t14->get_main_abap_file( ).
    t12 = t13.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE REF TO zcl_lnt_abap_file.
    DATA(t19) = t12.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    t20 = t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t18.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    t17 = t22.
    IF t17 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t24.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_structure_node.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    DATA t27 TYPE REF TO zcl_lnt_abap_file.
    DATA t28 TYPE REF TO zcl_lnt_abap_file.
    DATA(t29) = t12.
    t28 = t29.
    t27 = t28.
    DATA t30 TYPE REF TO zcl_lnt_structure_node.
    DATA(t31) = t27.
    t30 = t31->structure.
    t26 = t30.
    t25 = t26.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    DATA(t34) = t25.
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
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE abap_bool.
    DATA t42 TYPE abap_bool.
    DATA(t43) = t1.
    t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcl_lnt_ob_program ).
    t41 = t42.
    IF t42 = abap_true.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE REF TO zcl_lnt_ob_program.
      DATA t47 TYPE REF TO zcl_lnt_ob_program.
      DATA(t48) = t1.
      DATA t49 TYPE REF TO object.
      t49 = t48.
      t47 ?= t49.
      t46 = t47.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t46.
      t51->parse_xml( ).
      DATA t52 TYPE abap_bool.
      DATA t53 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t54 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA(t55) = t46.
      t54 = t55->parsed_xml.
      t53 = t54.
      t52 = t53->is_include.
      t50 = t52.
      t45 = t50.
      DATA(t56) = abap_false.
      t44 = xsdbool( t45 = t56 ).
      t41 = t44.
    ENDIF.
    t40 = t41.
    IF t41 = abap_true.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE REF TO zcl_lnt_ob_program.
      DATA t60 TYPE REF TO zcl_lnt_ob_program.
      DATA(t61) = t1.
      DATA t62 TYPE REF TO object.
      t62 = t61.
      t60 ?= t62.
      t59 = t60.
      DATA t63 TYPE abap_bool.
      DATA(t64) = t59.
      t64->parse_xml( ).
      DATA t65 TYPE abap_bool.
      DATA t66 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t67 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA(t68) = t59.
      t67 = t68->parsed_xml.
      t66 = t67.
      t65 = t66->is_module_pool.
      t63 = t65.
      t58 = t63.
      DATA(t69) = abap_false.
      t57 = xsdbool( t58 = t69 ).
      t40 = t57.
    ENDIF.
    IF t40 = abap_true.
      DATA t70 TYPE f.
      DATA(t71) = CONV f( 0 ).
      t70 = t71.
      DATA t72 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t72.
      DATA t73 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t73.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t75 TYPE REF TO zcl_lnt_abap_file.
      DATA t76 TYPE REF TO zcl_lnt_abap_file.
      DATA(t77) = t12.
      t76 = t77.
      t75 = t76.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t79) = t75.
      t78 = t79->statements.
      t74 = t78.
      DATA t80 TYPE i.
      DATA(t81) = t70.
      t80 = t81.
      t80 = t80 + 1.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      t74->load( ).
      CLEAR t82.
      READ TABLE t74->items INDEX t80 INTO t82.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      CLEAR t73.
      IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t82.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t73 ?= t84.
      ELSE.
        t73 ?= t82.
      ENDIF.
      t72 = t73.
      DO.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = VALUE abap_bool( ).
        DATA t87 TYPE REF TO zcl_lnt_statement_node.
        DATA(t88) = t72.
        t87 = t88.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        t89 = t90.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = VALUE abap_bool( ).
        DATA(t93) = t87.
        IF t93 IS INITIAL.
          t92 = abap_true.
        ENDIF.
        t91 = xsdbool( t92 = abap_false ).
        t86 = t91.
        t85 = t86.
        IF t86 = abap_true.
          DATA t94 TYPE abap_bool.
          DATA t95 TYPE REF TO zif_lnt_statement.
          DATA(t96) = t72.
          t95 = t96->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_st_comment ).
          t85 = t94.
        ENDIF.
        IF t85 = abap_false.
          EXIT.
        ENDIF.
        DATA t97 TYPE f.
        DATA(t98) = t70.
        DATA(t99) = CONV f( 1 ).
        t97 = t98 + t99.
        t70 = t97.
        DATA t100 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t100.
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t102 TYPE REF TO zcl_lnt_abap_file.
        DATA t103 TYPE REF TO zcl_lnt_abap_file.
        DATA(t104) = t12.
        t103 = t104.
        t102 = t103.
        DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t106) = t102.
        t105 = t106->statements.
        t101 = t105.
        DATA(t107) = VALUE i( ).
        DATA(t108) = t70.
        IF t108 > range_i32_upper.
          t107 = range_i32_upper.
        ELSEIF t108 < range_i32_lower.
          t107 = range_i32_lower.
        ELSE.
          t107 = trunc( t108 ).
        ENDIF.
        t107 = t107 + 1.
        DATA t109 TYPE REF TO object.
        CLEAR t109.
        t101->load( ).
        CLEAR t109.
        READ TABLE t101->items INDEX t107 INTO t109.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        CLEAR t100.
        IF t109 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t110 ?= t109.
          DATA t111 TYPE REF TO object.
          t111 = t110->as_ref( ).
          t100 ?= t111.
        ELSE.
          t100 ?= t109.
        ENDIF.
        t72 = t100.
      ENDDO.
      DATA(t112) = VALUE abap_bool( ).
      DATA(t113) = VALUE abap_bool( ).
      DATA t114 TYPE REF TO zcl_lnt_statement_node.
      DATA(t115) = t72.
      t114 = t115.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      t116 = t117.
      DATA(t118) = VALUE abap_bool( ).
      DATA(t119) = t114.
      IF t119 IS INITIAL.
        t118 = abap_true.
      ENDIF.
      t113 = t118.
      t112 = t113.
      IF t113 = abap_false.
        DATA(t120) = VALUE abap_bool( ).
        DATA t121 TYPE abap_bool.
        DATA t122 TYPE abap_bool.
        DATA t123 TYPE REF TO zif_lnt_statement.
        DATA(t124) = t72.
        t123 = t124->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t122 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_report ).
        t121 = t122.
        IF t122 = abap_false.
          DATA t125 TYPE abap_bool.
          DATA t126 TYPE REF TO zif_lnt_statement.
          DATA(t127) = t72.
          t126 = t127->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t125 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_program ).
          t121 = t125.
        ENDIF.
        t120 = xsdbool( t121 = abap_false ).
        t112 = t120.
      ENDIF.
      IF t112 = abap_true.
        DATA t128 TYPE REF TO zcl_lnt_position.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t130) = CONV f( 1 ).
        DATA(t131) = CONV f( 1 ).
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = t131.
        t129 = NEW zcl_lnt_position( i_row = t130 i_col = t132 ).
        t128 = t129.
        DATA t133 TYPE REF TO zcl_lnt_issue.
        CLEAR t133.
        DATA t134 TYPE REF TO zcl_lnt_issue.
        CLEAR t134.
        DATA t135 TYPE REF TO zcl_lnt_abap_file.
        DATA(t136) = t12.
        t135 = t136.
        DATA(t137) = t128.
        DATA t138 TYPE string.
        DATA(t139) = |Main file must have specific contents: |.
        DATA(t140) = |Report must begin with REPORT or PROGRAM|.
        DATA(t141) = strlen( t139 ).
        t138 = |{ t139 }{ t140 }|.
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t143.
        DATA t144 TYPE string.
        DATA(t145) = |main_file_contents|.
        t144 = t145.
        DATA t146 TYPE string.
        DATA(t147) = |Main file contents|.
        t146 = t147.
        DATA t148 TYPE string.
        DATA(t149) = |Checks related to report declarations.|.
        t148 = t149.
        DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t150.
        DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t151.
        DATA(t152) = abap_true.
        IF t152 = abap_true.
          DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t155.
          t154 = t155.
          DATA(t156) = t154.
          DATA(t157) = |Syntax|.
          t156->load( ).
          APPEND t157 TO t156->items.
          t156->save( ).
          DATA(t158) = t154.
          t153 = t158.
          t151 = t153.
        ELSE.
          DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t159.
          t151 = t159.
        ENDIF.
        t150 = t151.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        DATA(t162) = abap_true.
        IF t162 = abap_true.
          DATA(t163) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
          t163 = t163 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
          t163 = t163 && |egin with "TYPE-POOL <name>."\n|.
          DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t164->has = abap_true.
          t164->value = t163.
          t161 = t164.
        ELSE.
          DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t165.
          t161 = t165.
        ENDIF.
        t160 = t161.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t167.
        t166 = t167.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t169.
        t168 = t169.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        t170 = t171.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        t172 = t173.
        t143 = NEW zcl_lnt_irule_metadata( i_key = t144 i_title = t146 i_short_description = t148 i_bad_example = t166 i_good_example = t168 i_extended_information = t160 i_tags = t150 i_pragma = t170 i_pseudo_comment = t172 ).
        CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
        t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t174 ).
        ENDIF.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t175 ).
        ENDIF.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t176 ).
        ENDIF.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t177 ).
        ENDIF.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t178 ).
        ENDIF.
        CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
        t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t179) = |key|.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
        ENDIF.
        DATA(t181) = |title|.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
        ENDIF.
        DATA(t183) = |shortDescription|.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
        ENDIF.
        DATA(t185) = |tags|.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
        ENDIF.
        DATA(t187) = |extendedInformation|.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
        ENDIF.
        t142 = t143->key.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t190) = me->conf.
        t189 = t190->zlnt_view_read_sr_15c06369f827( ).
        DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t191.
        t134 = zcl_lnt_issue=>at_position( i_file = t135 i_start = t137 i_message_26cb = t138 i_key = t142 i_severity = t189 i_fix = t191 ).
        t133 = t134.
        DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t194.
        t193 = t194.
        DATA(t195) = t193.
        DATA(t196) = t133.
        t195->load( ).
        APPEND t196 TO t195->items.
        t195->save( ).
        DATA(t197) = t193.
        t192 = t197.
        result = t192.
        RETURN.
      ENDIF.
      DATA t198 TYPE REF TO zcl_lnt_expression_node.
      DATA t199 TYPE REF TO zcl_lnt_expression_node.
      DATA(t200) = t72.
      DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
      t199 = t200->find_first_expression( i_type_9913 = t201 ).
      t198 = t199.
      DATA(t202) = VALUE abap_bool( ).
      DATA t203 TYPE REF TO zcl_lnt_expression_node.
      DATA(t204) = t198.
      t203 = t204.
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t206.
      t205 = t206.
      DATA(t207) = VALUE abap_bool( ).
      DATA(t208) = t203.
      IF t208 IS INITIAL.
        t207 = abap_true.
      ENDIF.
      t202 = t207.
      IF t202 = abap_true.
        DATA t209 TYPE REF TO zcl_lnt_abstract_token.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t211) = t72.
        t210 = t211->get_first_token( ).
        t209 = t210.
        DATA t212 TYPE REF TO zcl_lnt_issue.
        CLEAR t212.
        DATA t213 TYPE REF TO zcl_lnt_issue.
        CLEAR t213.
        DATA t214 TYPE REF TO zcl_lnt_abap_file.
        DATA(t215) = t12.
        t214 = t215.
        DATA(t216) = t209.
        DATA t217 TYPE string.
        DATA(t218) = |Main file must have specific contents: |.
        DATA(t219) = |Add report name to REPORT or PROGRAM statement|.
        DATA(t220) = strlen( t218 ).
        t217 = |{ t218 }{ t219 }|.
        DATA(t221) = VALUE string( ).
        DATA t222 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t222.
        DATA t223 TYPE string.
        DATA(t224) = |main_file_contents|.
        t223 = t224.
        DATA t225 TYPE string.
        DATA(t226) = |Main file contents|.
        t225 = t226.
        DATA t227 TYPE string.
        DATA(t228) = |Checks related to report declarations.|.
        t227 = t228.
        DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t229.
        DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t230.
        DATA(t231) = abap_true.
        IF t231 = abap_true.
          DATA t232 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t234.
          t233 = t234.
          DATA(t235) = t233.
          DATA(t236) = |Syntax|.
          t235->load( ).
          APPEND t236 TO t235->items.
          t235->save( ).
          DATA(t237) = t233.
          t232 = t237.
          t230 = t232.
        ELSE.
          DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t238.
          t230 = t238.
        ENDIF.
        t229 = t230.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t239.
        DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t240.
        DATA(t241) = abap_true.
        IF t241 = abap_true.
          DATA(t242) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
          t242 = t242 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
          t242 = t242 && |egin with "TYPE-POOL <name>."\n|.
          DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t243->has = abap_true.
          t243->value = t242.
          t240 = t243.
        ELSE.
          DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t244.
          t240 = t244.
        ENDIF.
        t239 = t240.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        t245 = t246.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t248.
        t247 = t248.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t250.
        t249 = t250.
        DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        t251 = t252.
        t222 = NEW zcl_lnt_irule_metadata( i_key = t223 i_title = t225 i_short_description = t227 i_bad_example = t245 i_good_example = t247 i_extended_information = t239 i_tags = t229 i_pragma = t249 i_pseudo_comment = t251 ).
        CREATE OBJECT t222->zlnt_view_ownkeys_b0e8086400eb.
        t222->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t253 ).
        ENDIF.
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t254.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t254 ).
        ENDIF.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t255.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t255 ).
        ENDIF.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t256 ).
        ENDIF.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t257.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t257 ).
        ENDIF.
        CREATE OBJECT t222->zlnt_json_ownkeys_70e5fd461788.
        t222->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t258) = |key|.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
        ENDIF.
        DATA(t260) = |title|.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t261.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
        ENDIF.
        DATA(t262) = |shortDescription|.
        DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t263.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
        ENDIF.
        DATA(t264) = |tags|.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t265.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
        ENDIF.
        DATA(t266) = |extendedInformation|.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
        ENDIF.
        t221 = t222->key.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t269) = me->conf.
        t268 = t269->zlnt_view_read_sr_15c06369f827( ).
        DATA t270 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t270.
        t213 = zcl_lnt_issue=>at_token( i_file = t214 i_token = t216 i_message_26cb = t217 i_key = t221 i_severity = t268 i_fix = t270 ).
        t212 = t213.
        DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t273.
        t272 = t273.
        DATA(t274) = t272.
        DATA(t275) = t212.
        t274->load( ).
        APPEND t275 TO t274->items.
        t274->save( ).
        DATA(t276) = t272.
        t271 = t276.
        result = t271.
        RETURN.
      ELSE.
        DATA(t277) = VALUE abap_bool( ).
        DATA t278 TYPE string.
        DATA t279 TYPE string.
        DATA t280 TYPE REF TO zcl_lnt_abstract_token.
        DATA t281 TYPE REF TO zcl_lnt_abstract_token.
        DATA t282 TYPE REF TO zcl_lnt_expression_node.
        DATA(t283) = t198.
        t282 = t283.
        t281 = t282->get_first_token( ).
        t280 = t281.
        DATA t284 TYPE string.
        DATA(t285) = t280.
        t284 = t285->str.
        t279 = t284.
        DATA(t286) = strlen( t279 ).
        t278 = t279.
        IF t278 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t278 TO UPPER CASE.
        ELSE.
          t278 = zlnt_runtime_uppe_91169605024d=>full( t278 ).
        ENDIF.
        DATA t287 TYPE string.
        DATA t288 TYPE REF TO zcl_lnt_abstract_object.
        DATA t289 TYPE REF TO zcl_lnt_ob_program.
        DATA(t290) = t1.
        DATA t291 TYPE REF TO object.
        t291 = t290.
        t289 ?= t291.
        t288 = t289.
        DATA t292 TYPE string.
        DATA(t293) = t288.
        t292 = t293->name.
        t287 = t292.
        t277 = xsdbool( t278 <> t287 ).
        IF t277 = abap_true.
          DATA t294 TYPE REF TO zcl_lnt_abstract_token.
          DATA t295 TYPE REF TO zcl_lnt_abstract_token.
          DATA t296 TYPE REF TO zcl_lnt_expression_node.
          DATA(t297) = t198.
          t296 = t297.
          t295 = t296->get_first_token( ).
          t294 = t295.
          DATA t298 TYPE REF TO zcl_lnt_issue.
          CLEAR t298.
          DATA t299 TYPE REF TO zcl_lnt_issue.
          CLEAR t299.
          DATA t300 TYPE REF TO zcl_lnt_abap_file.
          DATA(t301) = t12.
          t300 = t301.
          DATA(t302) = t294.
          DATA t303 TYPE string.
          DATA(t304) = |Main file must have specific contents: |.
          DATA(t305) = |REPORT or PROGRAM name must match filename|.
          DATA(t306) = strlen( t304 ).
          t303 = |{ t304 }{ t305 }|.
          DATA(t307) = VALUE string( ).
          DATA t308 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t308.
          DATA t309 TYPE string.
          DATA(t310) = |main_file_contents|.
          t309 = t310.
          DATA t311 TYPE string.
          DATA(t312) = |Main file contents|.
          t311 = t312.
          DATA t313 TYPE string.
          DATA(t314) = |Checks related to report declarations.|.
          t313 = t314.
          DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t315.
          DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t316.
          DATA(t317) = abap_true.
          IF t317 = abap_true.
            DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t320 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t320.
            t319 = t320.
            DATA(t321) = t319.
            DATA(t322) = |Syntax|.
            t321->load( ).
            APPEND t322 TO t321->items.
            t321->save( ).
            DATA(t323) = t319.
            t318 = t323.
            t316 = t318.
          ELSE.
            DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t324.
            t316 = t324.
          ENDIF.
          t315 = t316.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t325.
          DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t326.
          DATA(t327) = abap_true.
          IF t327 = abap_true.
            DATA(t328) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
            t328 = t328 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
            t328 = t328 && |egin with "TYPE-POOL <name>."\n|.
            DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t329->has = abap_true.
            t329->value = t328.
            t326 = t329.
          ELSE.
            DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t330.
            t326 = t330.
          ENDIF.
          t325 = t326.
          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t332.
          t331 = t332.
          DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t334.
          t333 = t334.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t336.
          t335 = t336.
          DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t338.
          t337 = t338.
          t308 = NEW zcl_lnt_irule_metadata( i_key = t309 i_title = t311 i_short_description = t313 i_bad_example = t331 i_good_example = t333 i_extended_information = t325 i_tags = t315 i_pragma = t335 i_pseudo_comment = t337 ).
          CREATE OBJECT t308->zlnt_view_ownkeys_b0e8086400eb.
          t308->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t339.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t339 ).
          ENDIF.
          DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t340.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t340 ).
          ENDIF.
          DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t341.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t341 ).
          ENDIF.
          DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t342.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t342 ).
          ENDIF.
          DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t343.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t343 ).
          ENDIF.
          CREATE OBJECT t308->zlnt_json_ownkeys_70e5fd461788.
          t308->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t344) = |key|.
          DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t345.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
          ENDIF.
          DATA(t346) = |title|.
          DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t347.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t346 p1 = t347 ).
          ENDIF.
          DATA(t348) = |shortDescription|.
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t349.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t348 p1 = t349 ).
          ENDIF.
          DATA(t350) = |tags|.
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t351.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
          ENDIF.
          DATA(t352) = |extendedInformation|.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t353.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
          ENDIF.
          t307 = t308->key.
          DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t355) = me->conf.
          t354 = t355->zlnt_view_read_sr_15c06369f827( ).
          DATA t356 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t356.
          t299 = zcl_lnt_issue=>at_token( i_file = t300 i_token = t302 i_message_26cb = t303 i_key = t307 i_severity = t354 i_fix = t356 ).
          t298 = t299.
          DATA t357 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t359.
          t358 = t359.
          DATA(t360) = t358.
          DATA(t361) = t298.
          t360->load( ).
          APPEND t361 TO t360->items.
          t360->save( ).
          DATA(t362) = t358.
          t357 = t362.
          result = t357.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t363 TYPE abap_bool.
      DATA(t364) = t1.
      t363 = xsdbool( t364 IS BOUND AND t364 IS INSTANCE OF zcl_lnt_ob_type_pool ).
      IF t363 = abap_true.
        DATA t365 TYPE f.
        DATA(t366) = CONV f( 0 ).
        t365 = t366.
        DATA t367 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t367.
        DATA t368 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t368.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t370 TYPE REF TO zcl_lnt_abap_file.
        DATA t371 TYPE REF TO zcl_lnt_abap_file.
        DATA(t372) = t12.
        t371 = t372.
        t370 = t371.
        DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t374) = t370.
        t373 = t374->statements.
        t369 = t373.
        DATA t375 TYPE i.
        DATA(t376) = t365.
        t375 = t376.
        t375 = t375 + 1.
        DATA t377 TYPE REF TO object.
        CLEAR t377.
        t369->load( ).
        CLEAR t377.
        READ TABLE t369->items INDEX t375 INTO t377.
        DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t378.
        CLEAR t368.
        IF t377 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t378 ?= t377.
          DATA t379 TYPE REF TO object.
          t379 = t378->as_ref( ).
          t368 ?= t379.
        ELSE.
          t368 ?= t377.
        ENDIF.
        t367 = t368.
        DO.
          DATA(t380) = VALUE abap_bool( ).
          DATA(t381) = VALUE abap_bool( ).
          DATA t382 TYPE REF TO zcl_lnt_statement_node.
          DATA(t383) = t367.
          t382 = t383.
          DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t385.
          t384 = t385.
          DATA(t386) = VALUE abap_bool( ).
          DATA(t387) = VALUE abap_bool( ).
          DATA(t388) = t382.
          IF t388 IS INITIAL.
            t387 = abap_true.
          ENDIF.
          t386 = xsdbool( t387 = abap_false ).
          t381 = t386.
          t380 = t381.
          IF t381 = abap_true.
            DATA t389 TYPE abap_bool.
            DATA t390 TYPE REF TO zif_lnt_statement.
            DATA(t391) = t367.
            t390 = t391->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t389 = xsdbool( t390 IS BOUND AND t390 IS INSTANCE OF zcl_lnt_st_comment ).
            t380 = t389.
          ENDIF.
          IF t380 = abap_false.
            EXIT.
          ENDIF.
          DATA t392 TYPE f.
          DATA(t393) = t365.
          DATA(t394) = CONV f( 1 ).
          t392 = t393 + t394.
          t365 = t392.
          DATA t395 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t395.
          DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t397 TYPE REF TO zcl_lnt_abap_file.
          DATA t398 TYPE REF TO zcl_lnt_abap_file.
          DATA(t399) = t12.
          t398 = t399.
          t397 = t398.
          DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t401) = t397.
          t400 = t401->statements.
          t396 = t400.
          DATA(t402) = VALUE i( ).
          DATA(t403) = t365.
          IF t403 > range_i32_upper.
            t402 = range_i32_upper.
          ELSEIF t403 < range_i32_lower.
            t402 = range_i32_lower.
          ELSE.
            t402 = trunc( t403 ).
          ENDIF.
          t402 = t402 + 1.
          DATA t404 TYPE REF TO object.
          CLEAR t404.
          t396->load( ).
          CLEAR t404.
          READ TABLE t396->items INDEX t402 INTO t404.
          DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t405.
          CLEAR t395.
          IF t404 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t405 ?= t404.
            DATA t406 TYPE REF TO object.
            t406 = t405->as_ref( ).
            t395 ?= t406.
          ELSE.
            t395 ?= t404.
          ENDIF.
          t367 = t395.
        ENDDO.
        DATA(t407) = VALUE abap_bool( ).
        DATA(t408) = VALUE abap_bool( ).
        DATA t409 TYPE REF TO zcl_lnt_statement_node.
        DATA(t410) = t367.
        t409 = t410.
        DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t412.
        t411 = t412.
        DATA(t413) = VALUE abap_bool( ).
        DATA(t414) = t409.
        IF t414 IS INITIAL.
          t413 = abap_true.
        ENDIF.
        t408 = t413.
        t407 = t408.
        IF t408 = abap_false.
          DATA t415 TYPE abap_bool.
          DATA t416 TYPE abap_bool.
          DATA t417 TYPE REF TO zif_lnt_statement.
          DATA(t418) = t367.
          t417 = t418->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t416 = xsdbool( t417 IS BOUND AND t417 IS INSTANCE OF zcl_lnt_st_type_pool ).
          t415 = xsdbool( t416 = abap_false ).
          t407 = t415.
        ENDIF.
        IF t407 = abap_true.
          DATA t419 TYPE REF TO zcl_lnt_position.
          DATA t420 TYPE REF TO zcl_lnt_position.
          DATA(t421) = CONV f( 1 ).
          DATA(t422) = CONV f( 1 ).
          DATA(t423) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t423->has = abap_true.
          t423->value = t422.
          t420 = NEW zcl_lnt_position( i_row = t421 i_col = t423 ).
          t419 = t420.
          DATA t424 TYPE REF TO zcl_lnt_issue.
          CLEAR t424.
          DATA t425 TYPE REF TO zcl_lnt_issue.
          CLEAR t425.
          DATA t426 TYPE REF TO zcl_lnt_abap_file.
          DATA(t427) = t12.
          t426 = t427.
          DATA(t428) = t419.
          DATA t429 TYPE string.
          DATA(t430) = |Main file must have specific contents: |.
          DATA(t431) = |Type pool must begin with TYPE-POOL|.
          DATA(t432) = strlen( t430 ).
          t429 = |{ t430 }{ t431 }|.
          DATA(t433) = VALUE string( ).
          DATA t434 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t434.
          DATA t435 TYPE string.
          DATA(t436) = |main_file_contents|.
          t435 = t436.
          DATA t437 TYPE string.
          DATA(t438) = |Main file contents|.
          t437 = t438.
          DATA t439 TYPE string.
          DATA(t440) = |Checks related to report declarations.|.
          t439 = t440.
          DATA t441 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t441.
          DATA t442 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t442.
          DATA(t443) = abap_true.
          IF t443 = abap_true.
            DATA t444 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t445 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t446.
            t445 = t446.
            DATA(t447) = t445.
            DATA(t448) = |Syntax|.
            t447->load( ).
            APPEND t448 TO t447->items.
            t447->save( ).
            DATA(t449) = t445.
            t444 = t449.
            t442 = t444.
          ELSE.
            DATA t450 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t450.
            t442 = t450.
          ENDIF.
          t441 = t442.
          DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t451.
          DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t452.
          DATA(t453) = abap_true.
          IF t453 = abap_true.
            DATA(t454) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
            t454 = t454 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
            t454 = t454 && |egin with "TYPE-POOL <name>."\n|.
            DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t455->has = abap_true.
            t455->value = t454.
            t452 = t455.
          ELSE.
            DATA t456 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t456.
            t452 = t456.
          ENDIF.
          t451 = t452.
          DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t458.
          t457 = t458.
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t460.
          t459 = t460.
          DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t462.
          t461 = t462.
          DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t464.
          t463 = t464.
          t434 = NEW zcl_lnt_irule_metadata( i_key = t435 i_title = t437 i_short_description = t439 i_bad_example = t457 i_good_example = t459 i_extended_information = t451 i_tags = t441 i_pragma = t461 i_pseudo_comment = t463 ).
          CREATE OBJECT t434->zlnt_view_ownkeys_b0e8086400eb.
          t434->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t465.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t465 ).
          ENDIF.
          DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t466.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t466 ).
          ENDIF.
          DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t467.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t467 ).
          ENDIF.
          DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t468.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t468 ).
          ENDIF.
          DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t469.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t469 ).
          ENDIF.
          CREATE OBJECT t434->zlnt_json_ownkeys_70e5fd461788.
          t434->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t470) = |key|.
          DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t471.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t470 p1 = t471 ).
          ENDIF.
          DATA(t472) = |title|.
          DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t473.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
          ENDIF.
          DATA(t474) = |shortDescription|.
          DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t475.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
          ENDIF.
          DATA(t476) = |tags|.
          DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t477.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
          ENDIF.
          DATA(t478) = |extendedInformation|.
          DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t479.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
          ENDIF.
          t433 = t434->key.
          DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t481) = me->conf.
          t480 = t481->zlnt_view_read_sr_15c06369f827( ).
          DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t482.
          t425 = zcl_lnt_issue=>at_position( i_file = t426 i_start = t428 i_message_26cb = t429 i_key = t433 i_severity = t480 i_fix = t482 ).
          t424 = t425.
          DATA t483 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t485.
          t484 = t485.
          DATA(t486) = t484.
          DATA(t487) = t424.
          t486->load( ).
          APPEND t487 TO t486->items.
          t486->save( ).
          DATA(t488) = t484.
          t483 = t488.
          result = t483.
          RETURN.
        ENDIF.
        DATA t489 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t489.
        DATA t490 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t490.
        DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t492 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t493 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t494) = t367.
        t493 = t494.
        DATA t495 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t496) = t493.
        t495 = t496->children.
        t492 = t495.
        t491 ?= t492.
        DATA t497 TYPE REF TO object.
        CLEAR t497.
        t491->load( ).
        CLEAR t497.
        READ TABLE t491->items INDEX 4 INTO t497.
        DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t498.
        CLEAR t490.
        IF t497 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t498 ?= t497.
          DATA t499 TYPE REF TO object.
          t499 = t498->as_ref( ).
          t490 ?= t499.
        ELSE.
          t490 ?= t497.
        ENDIF.
        t489 = t490.
        DATA(t500) = VALUE abap_bool( ).
        DATA t501 TYPE string.
        DATA t502 TYPE string.
        DATA t503 TYPE REF TO zcl_lnt_abstract_token.
        DATA t504 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t505) = t489.
        t504 = t505->get_first_token( ).
        t503 = t504.
        DATA t506 TYPE string.
        DATA(t507) = t503.
        t506 = t507->str.
        t502 = t506.
        DATA(t508) = strlen( t502 ).
        t501 = t502.
        IF t501 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t501 TO UPPER CASE.
        ELSE.
          t501 = zlnt_runtime_uppe_91169605024d=>full( t501 ).
        ENDIF.
        DATA t509 TYPE string.
        DATA t510 TYPE REF TO zcl_lnt_abstract_object.
        DATA t511 TYPE REF TO zcl_lnt_ob_type_pool.
        DATA(t512) = t1.
        DATA t513 TYPE REF TO object.
        t513 = t512.
        t511 ?= t513.
        t510 = t511.
        DATA t514 TYPE string.
        DATA(t515) = t510.
        t514 = t515->name.
        t509 = t514.
        t500 = xsdbool( t501 <> t509 ).
        IF t500 = abap_true.
          DATA t516 TYPE REF TO zcl_lnt_abstract_token.
          DATA t517 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t518) = t489.
          t517 = t518->get_first_token( ).
          t516 = t517.
          DATA t519 TYPE REF TO zcl_lnt_issue.
          CLEAR t519.
          DATA t520 TYPE REF TO zcl_lnt_issue.
          CLEAR t520.
          DATA t521 TYPE REF TO zcl_lnt_abap_file.
          DATA(t522) = t12.
          t521 = t522.
          DATA(t523) = t516.
          DATA t524 TYPE string.
          DATA(t525) = |Main file must have specific contents: |.
          DATA(t526) = |TYPE-POOL name must match filename|.
          DATA(t527) = strlen( t525 ).
          t524 = |{ t525 }{ t526 }|.
          DATA(t528) = VALUE string( ).
          DATA t529 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t529.
          DATA t530 TYPE string.
          DATA(t531) = |main_file_contents|.
          t530 = t531.
          DATA t532 TYPE string.
          DATA(t533) = |Main file contents|.
          t532 = t533.
          DATA t534 TYPE string.
          DATA(t535) = |Checks related to report declarations.|.
          t534 = t535.
          DATA t536 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t536.
          DATA t537 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t537.
          DATA(t538) = abap_true.
          IF t538 = abap_true.
            DATA t539 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t541 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t541.
            t540 = t541.
            DATA(t542) = t540.
            DATA(t543) = |Syntax|.
            t542->load( ).
            APPEND t543 TO t542->items.
            t542->save( ).
            DATA(t544) = t540.
            t539 = t544.
            t537 = t539.
          ELSE.
            DATA t545 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t545.
            t537 = t545.
          ENDIF.
          t536 = t537.
          DATA t546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t546.
          DATA t547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t547.
          DATA(t548) = abap_true.
          IF t548 = abap_true.
            DATA(t549) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
            t549 = t549 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
            t549 = t549 && |egin with "TYPE-POOL <name>."\n|.
            DATA(t550) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t550->has = abap_true.
            t550->value = t549.
            t547 = t550.
          ELSE.
            DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t551.
            t547 = t551.
          ENDIF.
          t546 = t547.
          DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t553.
          t552 = t553.
          DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t555.
          t554 = t555.
          DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t557 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t557.
          t556 = t557.
          DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t559.
          t558 = t559.
          t529 = NEW zcl_lnt_irule_metadata( i_key = t530 i_title = t532 i_short_description = t534 i_bad_example = t552 i_good_example = t554 i_extended_information = t546 i_tags = t536 i_pragma = t556 i_pseudo_comment = t558 ).
          CREATE OBJECT t529->zlnt_view_ownkeys_b0e8086400eb.
          t529->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t560.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t560 ).
          ENDIF.
          DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t561.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t561 ).
          ENDIF.
          DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t562.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t562 ).
          ENDIF.
          DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t563.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t563 ).
          ENDIF.
          DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t564.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t564 ).
          ENDIF.
          CREATE OBJECT t529->zlnt_json_ownkeys_70e5fd461788.
          t529->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t565) = |key|.
          DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t566.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t565 p1 = t566 ).
          ENDIF.
          DATA(t567) = |title|.
          DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t568.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t567 p1 = t568 ).
          ENDIF.
          DATA(t569) = |shortDescription|.
          DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t570.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t569 p1 = t570 ).
          ENDIF.
          DATA(t571) = |tags|.
          DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t572.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t571 p1 = t572 ).
          ENDIF.
          DATA(t573) = |extendedInformation|.
          DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t574.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t573 p1 = t574 ).
          ENDIF.
          t528 = t529->key.
          DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t576) = me->conf.
          t575 = t576->zlnt_view_read_sr_15c06369f827( ).
          DATA t577 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t577.
          t520 = zcl_lnt_issue=>at_token( i_file = t521 i_token = t523 i_message_26cb = t524 i_key = t528 i_severity = t575 i_fix = t577 ).
          t519 = t520.
          DATA t578 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t579 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t580 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t580.
          t579 = t580.
          DATA(t581) = t579.
          DATA(t582) = t519.
          t581->load( ).
          APPEND t582 TO t581->items.
          t581->save( ).
          DATA(t583) = t579.
          t578 = t583.
          result = t578.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t584 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t584.
    result = t584.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mn_fl_cntnts_cnf( me->g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mn_fl_cntnts_cnf( me->g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_mn_fl_cntnts_cnf.
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
        t2 = NEW zcl_lnt_mn_fl_cntnts_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_mn_fl_cn_ts_mn_fl_cn( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_main_file_contents.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_mn_fl_cn_ts_mn_fl_cn( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1575_98caa254def5.
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
