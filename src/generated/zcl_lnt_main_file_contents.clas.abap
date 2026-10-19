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
    me->conf = NEW zcl_lnt_mn_fl_cntnts_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |main_file_contents|.
    DATA t4 TYPE string.
    t4 = |Main file contents|.
    DATA t6 TYPE string.
    t6 = |Checks related to report declarations.|.
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
    DATA(t21) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
    t21 = t21 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
    t21 = t21 && |egin with "TYPE-POOL <name>."\n|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t18 i_tags = t8 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |tags|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA(t3) = |Main file must have specific contents: |.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ i_details }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_mn_fl_cn_ts_mn_fl_cn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_mn_fl_cn_ts_mn_fl_cn.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE string.
      DATA t8 TYPE REF TO zif_lnt_configuration.
      t8 = me->reg->get_config( ).
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
    DATA t16 TYPE REF TO object.
    t16 = t1.
    t14 ?= t16.
    t13 = t14->get_main_abap_file( ).
    t12 = t13.
    DATA(t17) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t17 = xsdbool( t12 IS INITIAL ).
    IF t17 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t24.
      result = t24.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_structure_node.
    t30 = t12->structure.
    DATA(t32) = VALUE abap_bool( ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t32 = xsdbool( t30 IS INITIAL ).
    IF t32 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t39.
      result = t39.
      RETURN.
    ENDIF.
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE abap_bool.
    DATA t42 TYPE abap_bool.
    t42 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ).
    t41 = t42.
    IF t42 = abap_true.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE REF TO zcl_lnt_ob_program.
      DATA t47 TYPE REF TO zcl_lnt_ob_program.
      DATA t49 TYPE REF TO object.
      t49 = t1.
      t47 ?= t49.
      t46 = t47.
      t46->parse_xml( ).
      DATA t52 TYPE abap_bool.
      DATA t53 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t54 TYPE REF TO zcl_lnt_shape_d77da4ed.
      t54 = t46->parsed_xml.
      t53 = t54.
      t52 = t53->is_include.
      t45 = t52.
      t44 = xsdbool( t45 = abap_false ).
      t41 = t44.
    ENDIF.
    t40 = t41.
    IF t41 = abap_true.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE REF TO zcl_lnt_ob_program.
      DATA t60 TYPE REF TO zcl_lnt_ob_program.
      DATA t62 TYPE REF TO object.
      t62 = t1.
      t60 ?= t62.
      t59 = t60.
      t59->parse_xml( ).
      DATA t65 TYPE abap_bool.
      DATA t66 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t67 TYPE REF TO zcl_lnt_shape_d77da4ed.
      t67 = t59->parsed_xml.
      t66 = t67.
      t65 = t66->is_module_pool.
      t58 = t65.
      t57 = xsdbool( t58 = abap_false ).
      t40 = t57.
    ENDIF.
    IF t40 = abap_true.
      DATA t70 TYPE f.
      DATA(t71) = CONV f( 0 ).
      t70 = t71.
      DATA t72 TYPE REF TO zcl_lnt_statement_node.
      DATA t73 TYPE REF TO zcl_lnt_statement_node.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t78 = t12->statements.
      t74 = t78.
      DATA t80 TYPE i.
      t80 = t70.
      t80 = t80 + 1.
      DATA t82 TYPE REF TO object.
      t74->load( ).
      READ TABLE t74->items INDEX t80 INTO t82.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = xsdbool( t72 IS INITIAL ).
        t91 = xsdbool( t92 = abap_false ).
        t86 = t91.
        t85 = t86.
        IF t86 = abap_true.
          DATA t94 TYPE abap_bool.
          DATA t95 TYPE REF TO zif_lnt_statement.
          t95 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_st_comment ).
          t85 = t94.
        ENDIF.
        IF t85 = abap_false.
          EXIT.
        ENDIF.
        DATA t97 TYPE f.
        DATA(t99) = CONV f( 1 ).
        t97 = t70 + t99.
        t70 = t97.
        DATA t100 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t100.
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t105 = t12->statements.
        t101 = t105.
        DATA(t107) = VALUE i( ).
        IF t70 > range_i32_upper.
          t107 = range_i32_upper.
        ELSEIF t70 < range_i32_lower.
          t107 = range_i32_lower.
        ELSE.
          t107 = trunc( t70 ).
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
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t113 = xsdbool( t72 IS INITIAL ).
      t112 = t113.
      IF t113 = abap_false.
        DATA(t120) = VALUE abap_bool( ).
        DATA t121 TYPE abap_bool.
        DATA t122 TYPE abap_bool.
        DATA t123 TYPE REF TO zif_lnt_statement.
        t123 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t122 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_report ).
        t121 = t122.
        IF t122 = abap_false.
          DATA t125 TYPE abap_bool.
          DATA t126 TYPE REF TO zif_lnt_statement.
          t126 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t125 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_program ).
          t121 = t125.
        ENDIF.
        t120 = xsdbool( t121 = abap_false ).
        t112 = t120.
      ENDIF.
      IF t112 = abap_true.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t130) = CONV f( 1 ).
        DATA(t131) = CONV f( 1 ).
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = t131.
        t129 = NEW zcl_lnt_position( i_row = t130 i_col = t132 ).
        DATA t134 TYPE REF TO zcl_lnt_issue.
        DATA t135 TYPE REF TO zcl_lnt_abap_file.
        t135 = t12.
        DATA t138 TYPE string.
        DATA(t139) = |Main file must have specific contents: |.
        DATA(t140) = |Report must begin with REPORT or PROGRAM|.
        DATA(t141) = strlen( t139 ).
        t138 = |{ t139 }{ t140 }|.
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t144 TYPE string.
        t144 = |main_file_contents|.
        DATA t146 TYPE string.
        t146 = |Main file contents|.
        DATA t148 TYPE string.
        t148 = |Checks related to report declarations.|.
        DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t155.
        t154 = t155.
        DATA(t157) = |Syntax|.
        t154->load( ).
        APPEND t157 TO t154->items.
        t154->save( ).
        t150 = t154.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t163) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
        t163 = t163 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
        t163 = t163 && |egin with "TYPE-POOL <name>."\n|.
        DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t164->has = abap_true.
        t164->value = t163.
        t160 = t164.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t143 = NEW zcl_lnt_irule_metadata( i_key = t144 i_title = t146 i_short_description = t148 i_bad_example = t166 i_good_example = t168 i_extended_information = t160 i_tags = t150 i_pragma = t170 i_pseudo_comment = t172 ).
        CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
        t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t174 ).
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t175 ).
        ENDIF.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t176 ).
        ENDIF.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t177 ).
        ENDIF.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t178 ).
        ENDIF.
        CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
        t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t179) = |key|.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
        DATA(t181) = |title|.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
        ENDIF.
        DATA(t183) = |shortDescription|.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
        ENDIF.
        DATA(t185) = |tags|.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
        ENDIF.
        DATA(t187) = |extendedInformation|.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
        ENDIF.
        t142 = t143->key.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t189 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t134 = zcl_lnt_issue=>at_position( i_file = t135 i_start = t129 i_message_26cb = t138 i_key = t142 i_severity = t189 i_fix = t191 ).
        DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t194.
        t193 = t194.
        t193->load( ).
        APPEND t134 TO t193->items.
        t193->save( ).
        result = t193.
        RETURN.
      ENDIF.
      DATA t198 TYPE REF TO zcl_lnt_expression_node.
      DATA t199 TYPE REF TO zcl_lnt_expression_node.
      DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
      t199 = t72->find_first_expression( i_type_9913 = t201 ).
      t198 = t199.
      DATA(t202) = VALUE abap_bool( ).
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t202 = xsdbool( t198 IS INITIAL ).
      IF t202 = abap_true.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        t210 = t72->get_first_token( ).
        DATA t213 TYPE REF TO zcl_lnt_issue.
        DATA t214 TYPE REF TO zcl_lnt_abap_file.
        t214 = t12.
        DATA t217 TYPE string.
        DATA(t218) = |Main file must have specific contents: |.
        DATA(t219) = |Add report name to REPORT or PROGRAM statement|.
        DATA(t220) = strlen( t218 ).
        t217 = |{ t218 }{ t219 }|.
        DATA(t221) = VALUE string( ).
        DATA t222 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t223 TYPE string.
        t223 = |main_file_contents|.
        DATA t225 TYPE string.
        t225 = |Main file contents|.
        DATA t227 TYPE string.
        t227 = |Checks related to report declarations.|.
        DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t234.
        t233 = t234.
        DATA(t236) = |Syntax|.
        t233->load( ).
        APPEND t236 TO t233->items.
        t233->save( ).
        t229 = t233.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t242) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
        t242 = t242 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
        t242 = t242 && |egin with "TYPE-POOL <name>."\n|.
        DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t243->has = abap_true.
        t243->value = t242.
        t239 = t243.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t222 = NEW zcl_lnt_irule_metadata( i_key = t223 i_title = t225 i_short_description = t227 i_bad_example = t245 i_good_example = t247 i_extended_information = t239 i_tags = t229 i_pragma = t249 i_pseudo_comment = t251 ).
        CREATE OBJECT t222->zlnt_view_ownkeys_b0e8086400eb.
        t222->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t253 ).
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t254 ).
        ENDIF.
        DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t255 ).
        ENDIF.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t256 ).
        ENDIF.
        DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t257 ).
        ENDIF.
        CREATE OBJECT t222->zlnt_json_ownkeys_70e5fd461788.
        t222->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t258) = |key|.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
        DATA(t260) = |title|.
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
        ENDIF.
        DATA(t262) = |shortDescription|.
        DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
        ENDIF.
        DATA(t264) = |tags|.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
        ENDIF.
        DATA(t266) = |extendedInformation|.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
        ENDIF.
        t221 = t222->key.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t268 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t270 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t213 = zcl_lnt_issue=>at_token( i_file = t214 i_token = t210 i_message_26cb = t217 i_key = t221 i_severity = t268 i_fix = t270 ).
        DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t273.
        t272 = t273.
        t272->load( ).
        APPEND t213 TO t272->items.
        t272->save( ).
        result = t272.
        RETURN.
      ELSE.
        DATA(t277) = VALUE abap_bool( ).
        DATA t278 TYPE string.
        DATA t279 TYPE string.
        DATA t281 TYPE REF TO zcl_lnt_abstract_token.
        DATA t282 TYPE REF TO zcl_lnt_expression_node.
        t282 = t198.
        t281 = t282->get_first_token( ).
        DATA t284 TYPE string.
        t284 = t281->str.
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
        DATA t291 TYPE REF TO object.
        t291 = t1.
        t289 ?= t291.
        t288 = t289.
        DATA t292 TYPE string.
        t292 = t288->name.
        t287 = t292.
        t277 = xsdbool( t278 <> t287 ).
        IF t277 = abap_true.
          DATA t295 TYPE REF TO zcl_lnt_abstract_token.
          DATA t296 TYPE REF TO zcl_lnt_expression_node.
          t296 = t198.
          t295 = t296->get_first_token( ).
          DATA t299 TYPE REF TO zcl_lnt_issue.
          DATA t300 TYPE REF TO zcl_lnt_abap_file.
          t300 = t12.
          DATA t303 TYPE string.
          DATA(t304) = |Main file must have specific contents: |.
          DATA(t305) = |REPORT or PROGRAM name must match filename|.
          DATA(t306) = strlen( t304 ).
          t303 = |{ t304 }{ t305 }|.
          DATA(t307) = VALUE string( ).
          DATA t308 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t309 TYPE string.
          t309 = |main_file_contents|.
          DATA t311 TYPE string.
          t311 = |Main file contents|.
          DATA t313 TYPE string.
          t313 = |Checks related to report declarations.|.
          DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t320 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t320.
          t319 = t320.
          DATA(t322) = |Syntax|.
          t319->load( ).
          APPEND t322 TO t319->items.
          t319->save( ).
          t315 = t319.
          DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t328) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
          t328 = t328 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
          t328 = t328 && |egin with "TYPE-POOL <name>."\n|.
          DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t329->has = abap_true.
          t329->value = t328.
          t325 = t329.
          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t308 = NEW zcl_lnt_irule_metadata( i_key = t309 i_title = t311 i_short_description = t313 i_bad_example = t331 i_good_example = t333 i_extended_information = t325 i_tags = t315 i_pragma = t335 i_pseudo_comment = t337 ).
          CREATE OBJECT t308->zlnt_view_ownkeys_b0e8086400eb.
          t308->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t339 ).
          DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t340 ).
          ENDIF.
          DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t341 ).
          ENDIF.
          DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t342 ).
          ENDIF.
          DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t308->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t343 ).
          ENDIF.
          CREATE OBJECT t308->zlnt_json_ownkeys_70e5fd461788.
          t308->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t344) = |key|.
          DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t344 p1 = t345 ).
          DATA(t346) = |title|.
          DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t346 p1 = t347 ).
          ENDIF.
          DATA(t348) = |shortDescription|.
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t348 p1 = t349 ).
          ENDIF.
          DATA(t350) = |tags|.
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
          ENDIF.
          DATA(t352) = |extendedInformation|.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
          ENDIF.
          t307 = t308->key.
          DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t354 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t356 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t299 = zcl_lnt_issue=>at_token( i_file = t300 i_token = t295 i_message_26cb = t303 i_key = t307 i_severity = t354 i_fix = t356 ).
          DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t359.
          t358 = t359.
          t358->load( ).
          APPEND t299 TO t358->items.
          t358->save( ).
          result = t358.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      DATA t363 TYPE abap_bool.
      t363 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_type_pool ).
      IF t363 = abap_true.
        DATA t365 TYPE f.
        DATA(t366) = CONV f( 0 ).
        t365 = t366.
        DATA t367 TYPE REF TO zcl_lnt_statement_node.
        DATA t368 TYPE REF TO zcl_lnt_statement_node.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t373 = t12->statements.
        t369 = t373.
        DATA t375 TYPE i.
        t375 = t365.
        t375 = t375 + 1.
        DATA t377 TYPE REF TO object.
        t369->load( ).
        READ TABLE t369->items INDEX t375 INTO t377.
        DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
          DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t384.
          DATA(t386) = VALUE abap_bool( ).
          DATA(t387) = xsdbool( t367 IS INITIAL ).
          t386 = xsdbool( t387 = abap_false ).
          t381 = t386.
          t380 = t381.
          IF t381 = abap_true.
            DATA t389 TYPE abap_bool.
            DATA t390 TYPE REF TO zif_lnt_statement.
            t390 = t367->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t389 = xsdbool( t390 IS BOUND AND t390 IS INSTANCE OF zcl_lnt_st_comment ).
            t380 = t389.
          ENDIF.
          IF t380 = abap_false.
            EXIT.
          ENDIF.
          DATA t392 TYPE f.
          DATA(t394) = CONV f( 1 ).
          t392 = t365 + t394.
          t365 = t392.
          DATA t395 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t395.
          DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t400 = t12->statements.
          t396 = t400.
          DATA(t402) = VALUE i( ).
          IF t365 > range_i32_upper.
            t402 = range_i32_upper.
          ELSEIF t365 < range_i32_lower.
            t402 = range_i32_lower.
          ELSE.
            t402 = trunc( t365 ).
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
        DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t408 = xsdbool( t367 IS INITIAL ).
        t407 = t408.
        IF t408 = abap_false.
          DATA t415 TYPE abap_bool.
          DATA t416 TYPE abap_bool.
          DATA t417 TYPE REF TO zif_lnt_statement.
          t417 = t367->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t416 = xsdbool( t417 IS BOUND AND t417 IS INSTANCE OF zcl_lnt_st_type_pool ).
          t415 = xsdbool( t416 = abap_false ).
          t407 = t415.
        ENDIF.
        IF t407 = abap_true.
          DATA t420 TYPE REF TO zcl_lnt_position.
          DATA(t421) = CONV f( 1 ).
          DATA(t422) = CONV f( 1 ).
          DATA(t423) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t423->has = abap_true.
          t423->value = t422.
          t420 = NEW zcl_lnt_position( i_row = t421 i_col = t423 ).
          DATA t425 TYPE REF TO zcl_lnt_issue.
          DATA t426 TYPE REF TO zcl_lnt_abap_file.
          t426 = t12.
          DATA t429 TYPE string.
          DATA(t430) = |Main file must have specific contents: |.
          DATA(t431) = |Type pool must begin with TYPE-POOL|.
          DATA(t432) = strlen( t430 ).
          t429 = |{ t430 }{ t431 }|.
          DATA(t433) = VALUE string( ).
          DATA t434 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t435 TYPE string.
          t435 = |main_file_contents|.
          DATA t437 TYPE string.
          t437 = |Main file contents|.
          DATA t439 TYPE string.
          t439 = |Checks related to report declarations.|.
          DATA t441 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t445 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t446.
          t445 = t446.
          DATA(t448) = |Syntax|.
          t445->load( ).
          APPEND t448 TO t445->items.
          t445->save( ).
          t441 = t445.
          DATA t451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t454) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
          t454 = t454 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
          t454 = t454 && |egin with "TYPE-POOL <name>."\n|.
          DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t455->has = abap_true.
          t455->value = t454.
          t451 = t455.
          DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t434 = NEW zcl_lnt_irule_metadata( i_key = t435 i_title = t437 i_short_description = t439 i_bad_example = t457 i_good_example = t459 i_extended_information = t451 i_tags = t441 i_pragma = t461 i_pseudo_comment = t463 ).
          CREATE OBJECT t434->zlnt_view_ownkeys_b0e8086400eb.
          t434->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t465 ).
          DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t466 ).
          ENDIF.
          DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t467 ).
          ENDIF.
          DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t468 ).
          ENDIF.
          DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t434->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t469 ).
          ENDIF.
          CREATE OBJECT t434->zlnt_json_ownkeys_70e5fd461788.
          t434->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t470) = |key|.
          DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t470 p1 = t471 ).
          DATA(t472) = |title|.
          DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t472 p1 = t473 ).
          ENDIF.
          DATA(t474) = |shortDescription|.
          DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t474 p1 = t475 ).
          ENDIF.
          DATA(t476) = |tags|.
          DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t476 p1 = t477 ).
          ENDIF.
          DATA(t478) = |extendedInformation|.
          DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = t478 p1 = t479 ).
          ENDIF.
          t433 = t434->key.
          DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t480 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t425 = zcl_lnt_issue=>at_position( i_file = t426 i_start = t420 i_message_26cb = t429 i_key = t433 i_severity = t480 i_fix = t482 ).
          DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t485.
          t484 = t485.
          t484->load( ).
          APPEND t425 TO t484->items.
          t484->save( ).
          result = t484.
          RETURN.
        ENDIF.
        DATA t489 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t490 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t492 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t493 TYPE REF TO zcl_lnt_abstract_node.
        t493 = t367.
        DATA t495 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t495 = t493->children.
        t492 = t495.
        t491 ?= t492.
        DATA t497 TYPE REF TO object.
        t491->load( ).
        READ TABLE t491->items INDEX 4 INTO t497.
        DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
        DATA t504 TYPE REF TO zcl_lnt_abstract_token.
        t504 = t489->get_first_token( ).
        DATA t506 TYPE string.
        t506 = t504->str.
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
        DATA t513 TYPE REF TO object.
        t513 = t1.
        t511 ?= t513.
        t510 = t511.
        DATA t514 TYPE string.
        t514 = t510->name.
        t509 = t514.
        t500 = xsdbool( t501 <> t509 ).
        IF t500 = abap_true.
          DATA t517 TYPE REF TO zcl_lnt_abstract_token.
          t517 = t489->get_first_token( ).
          DATA t520 TYPE REF TO zcl_lnt_issue.
          DATA t521 TYPE REF TO zcl_lnt_abap_file.
          t521 = t12.
          DATA t524 TYPE string.
          DATA(t525) = |Main file must have specific contents: |.
          DATA(t526) = |TYPE-POOL name must match filename|.
          DATA(t527) = strlen( t525 ).
          t524 = |{ t525 }{ t526 }|.
          DATA(t528) = VALUE string( ).
          DATA t529 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t530 TYPE string.
          t530 = |main_file_contents|.
          DATA t532 TYPE string.
          t532 = |Main file contents|.
          DATA t534 TYPE string.
          t534 = |Checks related to report declarations.|.
          DATA t536 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t541 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t541.
          t540 = t541.
          DATA(t543) = |Syntax|.
          t540->load( ).
          APPEND t543 TO t540->items.
          t540->save( ).
          t536 = t540.
          DATA t546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t549) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
          t549 = t549 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
          t549 = t549 && |egin with "TYPE-POOL <name>."\n|.
          DATA(t550) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t550->has = abap_true.
          t550->value = t549.
          t546 = t550.
          DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t529 = NEW zcl_lnt_irule_metadata( i_key = t530 i_title = t532 i_short_description = t534 i_bad_example = t552 i_good_example = t554 i_extended_information = t546 i_tags = t536 i_pragma = t556 i_pseudo_comment = t558 ).
          CREATE OBJECT t529->zlnt_view_ownkeys_b0e8086400eb.
          t529->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t560 ).
          DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t561 ).
          ENDIF.
          DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t562 ).
          ENDIF.
          DATA t563 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t563 ).
          ENDIF.
          DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t529->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t564 ).
          ENDIF.
          CREATE OBJECT t529->zlnt_json_ownkeys_70e5fd461788.
          t529->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t565) = |key|.
          DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t565 p1 = t566 ).
          DATA(t567) = |title|.
          DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t567 p1 = t568 ).
          ENDIF.
          DATA(t569) = |shortDescription|.
          DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t569 p1 = t570 ).
          ENDIF.
          DATA(t571) = |tags|.
          DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t571 p1 = t572 ).
          ENDIF.
          DATA(t573) = |extendedInformation|.
          DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = t573 p1 = t574 ).
          ENDIF.
          t528 = t529->key.
          DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t575 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t577 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t520 = zcl_lnt_issue=>at_token( i_file = t521 i_token = t517 i_message_26cb = t524 i_key = t528 i_severity = t575 i_fix = t577 ).
          DATA t579 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t580 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t580.
          t579 = t580.
          t579->load( ).
          APPEND t520 TO t579->items.
          t579->save( ).
          result = t579.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t584 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t584.
    result = t584.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_mn_fl_cntnts_cnf( me->g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mn_fl_cntnts_cnf( me->g_c_i_s_r_mn_fl_cn_ts_mn_fl_cn( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_mn_fl_cntnts_cnf.
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
        t2 = NEW zcl_lnt_mn_fl_cntnts_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_mn_fl_cn_ts_mn_fl_cn( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_main_file_contents.
    DATA(t3) = i_reg_f149.
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
