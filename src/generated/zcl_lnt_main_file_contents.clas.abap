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
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Syntax| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA(t21) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
    t21 = t21 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
    t21 = t21 && |egin with "TYPE-POOL <name>."\n|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |main_file_contents| i_title = |Main file contents| i_short_description = |Checks related to report declarations.| i_bad_example = t24 i_good_example = t26 i_extended_information = t22 i_tags = t8 i_pragma = t28 i_pseudo_comment = t30 ).
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
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t3) = |Main file must have specific contents: |.
    DATA(t5) = strlen( t3 ).
    result = |{ t3 }{ i_details }|.

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
    t3 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE string.
      t7 = me->reg->get_config( )->get_language_version( ).
      t2 = xsdbool( t7 = |Cloud| ).
    ENDIF.
    IF t2 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA t14 TYPE REF TO zcl_lnt_abap_object.
    t14 ?= t1.
    t12 = t14->get_main_abap_file( ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t12 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_structure_node.
    t30 = t12->structure.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t30 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA(t40) = VALUE abap_bool( ).
    DATA t41 TYPE abap_bool.
    DATA t42 TYPE abap_bool.
    t42 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ).
    t41 = t42.
    IF t42 = abap_true.
      DATA t46 TYPE REF TO zcl_lnt_ob_program.
      DATA t47 TYPE REF TO zcl_lnt_ob_program.
      t47 ?= t1.
      t46 = t47.
      t46->parse_xml( ).
      t41 = xsdbool( t46->parsed_xml->is_include = abap_false ).
    ENDIF.
    t40 = t41.
    IF t41 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_ob_program.
      DATA t60 TYPE REF TO zcl_lnt_ob_program.
      t60 ?= t1.
      t59 = t60.
      t59->parse_xml( ).
      t40 = xsdbool( t59->parsed_xml->is_module_pool = abap_false ).
    ENDIF.
    IF t40 = abap_true.
      DATA t70 TYPE f.
      t70 = CONV f( 0 ).
      DATA t72 TYPE REF TO zcl_lnt_statement_node.
      DATA t73 TYPE REF TO zcl_lnt_statement_node.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t74 = t12->statements.
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
        t86 = xsdbool( xsdbool( t72 IS INITIAL ) = abap_false ).
        t85 = t86.
        IF t86 = abap_true.
          DATA t95 TYPE REF TO zif_lnt_statement.
          t95 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t85 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_st_comment ).
        ENDIF.
        IF t85 = abap_false.
          EXIT.
        ENDIF.
        DATA(t99) = CONV f( 1 ).
        t70 = t70 + t99.
        DATA t100 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t100.
        DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t101 = t12->statements.
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
        DATA t121 TYPE abap_bool.
        DATA t122 TYPE abap_bool.
        DATA t123 TYPE REF TO zif_lnt_statement.
        t123 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t122 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_report ).
        t121 = t122.
        IF t122 = abap_false.
          DATA t126 TYPE REF TO zif_lnt_statement.
          t126 = t72->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t121 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_program ).
        ENDIF.
        t112 = xsdbool( t121 = abap_false ).
      ENDIF.
      IF t112 = abap_true.
        DATA t129 TYPE REF TO zcl_lnt_position.
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = CONV f( 1 ).
        t129 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t132 ).
        DATA t134 TYPE REF TO zcl_lnt_issue.
        DATA t135 TYPE REF TO zcl_lnt_abap_file.
        t135 = t12.
        DATA t138 TYPE string.
        DATA(t139) = |Main file must have specific contents: |.
        DATA(t141) = strlen( t139 ).
        t138 = |{ t139 }{ |Report must begin with REPORT or PROGRAM| }|.
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t154.
        t154->load( ).
        APPEND |Syntax| TO t154->items.
        t154->save( ).
        t150 = t154.
        DATA(t163) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
        t163 = t163 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
        t163 = t163 && |egin with "TYPE-POOL <name>."\n|.
        DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t164->has = abap_true.
        t164->value = t163.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t143 = NEW zcl_lnt_irule_metadata( i_key = |main_file_contents| i_title = |Main file contents| i_short_description = |Checks related to report declarations.| i_bad_example = t166 i_good_example = t168 i_extended_information = t164 i_tags = t150 i_pragma = t170 i_pseudo_comment = t172 ).
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
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t180 ).
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t182 ).
        ENDIF.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t184 ).
        ENDIF.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t186 ).
        ENDIF.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t188 ).
        ENDIF.
        t142 = t143->key.
        DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t134 = zcl_lnt_issue=>at_position( i_file = t135 i_start = t129 i_message_26cb = t138 i_key = t142 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t191 ).
        DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t193.
        t193->load( ).
        APPEND t134 TO t193->items.
        t193->save( ).
        result = t193.
        RETURN.
      ENDIF.
      DATA t198 TYPE REF TO zcl_lnt_expression_node.
      DATA(t201) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
      t198 = t72->find_first_expression( i_type_9913 = t201 ).
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t198 IS INITIAL ) = abap_true.
        DATA t210 TYPE REF TO zcl_lnt_abstract_token.
        t210 = t72->get_first_token( ).
        DATA t213 TYPE REF TO zcl_lnt_issue.
        DATA t214 TYPE REF TO zcl_lnt_abap_file.
        t214 = t12.
        DATA t217 TYPE string.
        DATA(t218) = |Main file must have specific contents: |.
        DATA(t220) = strlen( t218 ).
        t217 = |{ t218 }{ |Add report name to REPORT or PROGRAM statement| }|.
        DATA(t221) = VALUE string( ).
        DATA t222 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t233.
        t233->load( ).
        APPEND |Syntax| TO t233->items.
        t233->save( ).
        t229 = t233.
        DATA(t242) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
        t242 = t242 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
        t242 = t242 && |egin with "TYPE-POOL <name>."\n|.
        DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t243->has = abap_true.
        t243->value = t242.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t222 = NEW zcl_lnt_irule_metadata( i_key = |main_file_contents| i_title = |Main file contents| i_short_description = |Checks related to report declarations.| i_bad_example = t245 i_good_example = t247 i_extended_information = t243 i_tags = t229 i_pragma = t249 i_pseudo_comment = t251 ).
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
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t259 ).
        DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t261 ).
        ENDIF.
        DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t263 ).
        ENDIF.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t265 ).
        ENDIF.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t267 ).
        ENDIF.
        t221 = t222->key.
        DATA t270 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t213 = zcl_lnt_issue=>at_token( i_file = t214 i_token = t210 i_message_26cb = t217 i_key = t221 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t270 ).
        DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t272.
        t272->load( ).
        APPEND t213 TO t272->items.
        t272->save( ).
        result = t272.
        RETURN.
      ELSE.
        DATA t278 TYPE string.
        DATA t279 TYPE string.
        t279 = t198->get_first_token( )->str.
        DATA(t286) = strlen( t279 ).
        t278 = t279.
        IF t278 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t278 TO UPPER CASE.
        ELSE.
          t278 = zlnt_runtime_uppe_91169605024d=>full( t278 ).
        ENDIF.
        DATA t288 TYPE REF TO zcl_lnt_abstract_object.
        DATA t289 TYPE REF TO zcl_lnt_ob_program.
        t289 ?= t1.
        t288 = t289.
        IF xsdbool( t278 <> t288->name ) = abap_true.
          DATA t295 TYPE REF TO zcl_lnt_abstract_token.
          t295 = t198->get_first_token( ).
          DATA t299 TYPE REF TO zcl_lnt_issue.
          DATA t300 TYPE REF TO zcl_lnt_abap_file.
          t300 = t12.
          DATA t303 TYPE string.
          DATA(t304) = |Main file must have specific contents: |.
          DATA(t306) = strlen( t304 ).
          t303 = |{ t304 }{ |REPORT or PROGRAM name must match filename| }|.
          DATA(t307) = VALUE string( ).
          DATA t308 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t319.
          t319->load( ).
          APPEND |Syntax| TO t319->items.
          t319->save( ).
          t315 = t319.
          DATA(t328) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
          t328 = t328 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
          t328 = t328 && |egin with "TYPE-POOL <name>."\n|.
          DATA(t329) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t329->has = abap_true.
          t329->value = t328.
          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t308 = NEW zcl_lnt_irule_metadata( i_key = |main_file_contents| i_title = |Main file contents| i_short_description = |Checks related to report declarations.| i_bad_example = t331 i_good_example = t333 i_extended_information = t329 i_tags = t315 i_pragma = t335 i_pseudo_comment = t337 ).
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
          DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t345 ).
          DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t347 ).
          ENDIF.
          DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t349 ).
          ENDIF.
          DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t351 ).
          ENDIF.
          DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t308->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t308->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t353 ).
          ENDIF.
          t307 = t308->key.
          DATA t356 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t299 = zcl_lnt_issue=>at_token( i_file = t300 i_token = t295 i_message_26cb = t303 i_key = t307 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t356 ).
          DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t358.
          t358->load( ).
          APPEND t299 TO t358->items.
          t358->save( ).
          result = t358.
          RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_type_pool ) = abap_true.
        DATA t365 TYPE f.
        t365 = CONV f( 0 ).
        DATA t367 TYPE REF TO zcl_lnt_statement_node.
        DATA t368 TYPE REF TO zcl_lnt_statement_node.
        DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t369 = t12->statements.
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
          t381 = xsdbool( xsdbool( t367 IS INITIAL ) = abap_false ).
          t380 = t381.
          IF t381 = abap_true.
            DATA t390 TYPE REF TO zif_lnt_statement.
            t390 = t367->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t380 = xsdbool( t390 IS BOUND AND t390 IS INSTANCE OF zcl_lnt_st_comment ).
          ENDIF.
          IF t380 = abap_false.
            EXIT.
          ENDIF.
          DATA(t394) = CONV f( 1 ).
          t365 = t365 + t394.
          DATA t395 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t395.
          DATA t396 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t396 = t12->statements.
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
          DATA t417 TYPE REF TO zif_lnt_statement.
          t417 = t367->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t407 = xsdbool( xsdbool( t417 IS BOUND AND t417 IS INSTANCE OF zcl_lnt_st_type_pool ) = abap_false ).
        ENDIF.
        IF t407 = abap_true.
          DATA t420 TYPE REF TO zcl_lnt_position.
          DATA(t423) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t423->has = abap_true.
          t423->value = CONV f( 1 ).
          t420 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t423 ).
          DATA t425 TYPE REF TO zcl_lnt_issue.
          DATA t426 TYPE REF TO zcl_lnt_abap_file.
          t426 = t12.
          DATA t429 TYPE string.
          DATA(t430) = |Main file must have specific contents: |.
          DATA(t432) = strlen( t430 ).
          t429 = |{ t430 }{ |Type pool must begin with TYPE-POOL| }|.
          DATA(t433) = VALUE string( ).
          DATA t434 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t441 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t445 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t445.
          t445->load( ).
          APPEND |Syntax| TO t445->items.
          t445->save( ).
          t441 = t445.
          DATA(t454) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
          t454 = t454 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
          t454 = t454 && |egin with "TYPE-POOL <name>."\n|.
          DATA(t455) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t455->has = abap_true.
          t455->value = t454.
          DATA t457 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t434 = NEW zcl_lnt_irule_metadata( i_key = |main_file_contents| i_title = |Main file contents| i_short_description = |Checks related to report declarations.| i_bad_example = t457 i_good_example = t459 i_extended_information = t455 i_tags = t441 i_pragma = t461 i_pseudo_comment = t463 ).
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
          DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t471 ).
          DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t473 ).
          ENDIF.
          DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t475 ).
          ENDIF.
          DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t477 ).
          ENDIF.
          DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t434->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t434->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t479 ).
          ENDIF.
          t433 = t434->key.
          DATA t482 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t425 = zcl_lnt_issue=>at_position( i_file = t426 i_start = t420 i_message_26cb = t429 i_key = t433 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t482 ).
          DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t484.
          t484->load( ).
          APPEND t425 TO t484->items.
          t484->save( ).
          result = t484.
          RETURN.
        ENDIF.
        DATA t489 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t490 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t491 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t493 TYPE REF TO zcl_lnt_abstract_node.
        t493 = t367.
        t491 ?= t493->children.
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
        DATA t501 TYPE string.
        DATA t502 TYPE string.
        t502 = t489->get_first_token( )->str.
        DATA(t508) = strlen( t502 ).
        t501 = t502.
        IF t501 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t501 TO UPPER CASE.
        ELSE.
          t501 = zlnt_runtime_uppe_91169605024d=>full( t501 ).
        ENDIF.
        DATA t510 TYPE REF TO zcl_lnt_abstract_object.
        DATA t511 TYPE REF TO zcl_lnt_ob_type_pool.
        t511 ?= t1.
        t510 = t511.
        IF xsdbool( t501 <> t510->name ) = abap_true.
          DATA t517 TYPE REF TO zcl_lnt_abstract_token.
          t517 = t489->get_first_token( ).
          DATA t520 TYPE REF TO zcl_lnt_issue.
          DATA t521 TYPE REF TO zcl_lnt_abap_file.
          t521 = t12.
          DATA t524 TYPE string.
          DATA(t525) = |Main file must have specific contents: |.
          DATA(t527) = strlen( t525 ).
          t524 = |{ t525 }{ |TYPE-POOL name must match filename| }|.
          DATA(t528) = VALUE string( ).
          DATA t529 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t536 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t540 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t540.
          t540->load( ).
          APPEND |Syntax| TO t540->items.
          t540->save( ).
          t536 = t540.
          DATA(t549) = |Does not run if the target version is Cloud\n\n* PROGs must be|.
          t549 = t549 && |gin with "REPORT <name>." or "PROGRAM <name>.\n* TYPEs must b|.
          t549 = t549 && |egin with "TYPE-POOL <name>."\n|.
          DATA(t550) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t550->has = abap_true.
          t550->value = t549.
          DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t554 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t529 = NEW zcl_lnt_irule_metadata( i_key = |main_file_contents| i_title = |Main file contents| i_short_description = |Checks related to report declarations.| i_bad_example = t552 i_good_example = t554 i_extended_information = t550 i_tags = t536 i_pragma = t556 i_pseudo_comment = t558 ).
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
          DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t566 ).
          DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t568 ).
          ENDIF.
          DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t570 ).
          ENDIF.
          DATA t572 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t572 ).
          ENDIF.
          DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t529->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t529->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t574 ).
          ENDIF.
          t528 = t529->key.
          DATA t577 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t520 = zcl_lnt_issue=>at_token( i_file = t521 i_token = t517 i_message_26cb = t524 i_key = t528 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t577 ).
          DATA t579 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t579.
          t579->load( ).
          APPEND t520 TO t579->items.
          t579->save( ).
          result = t579.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    CREATE OBJECT result.

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
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_mn_fl_cn_ts_mn_fl_cn( i_reg_f149 = t3 ).

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
