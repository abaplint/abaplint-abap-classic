* TS: src/rules/selection_screen_naming.ts:21:1 SelectionScreenNaming
CLASS zcl_lnt_slctn_scrn_nmng DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm IMPORTING i_conf TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    METHODS r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_pattern_for_statement IMPORTING i_statement TYPE REF TO zif_lnt_statement RETURNING VALUE(result) TYPE string.
    METHODS get_field_for_statement_node IMPORTING i_stat_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slctn_scrn_nmng IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_slctn_scrn_nmng_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for selec|.
    t7 = t7 && |tion-screen variable names.|.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Naming| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |selection_screen_naming| i_title = |Selection screen naming conventions| i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t12 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t35 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = |required|.
    t7 = t10.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t5 IS BOUND.
      t12 = t5->has.
    ENDIF.
    IF t7 IS BOUND.
      t13 = t7->has.
    ENDIF.
    IF t12 = t13.
      IF t12 = abap_false.
        t4 = abap_true.
      ELSEIF t5->value = t7->value.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    IF t4 = abap_true.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      DATA(t18) = |Selection-Screen variable name does not match pattern |.
      DATA(t20) = strlen( t18 ).
      t17 = |{ t18 }{ t1 }|.
      DATA(t22) = strlen( t17 ).
      t16 = |{ t17 }{ |: | }|.
      DATA(t24) = strlen( t16 ).
      t15 = |{ t16 }{ t2 }|.
      DATA(t26) = strlen( t15 ).
      t3 = |{ t15 }{ || }|.
    ELSE.
      DATA t28 TYPE string.
      DATA t29 TYPE string.
      DATA t30 TYPE string.
      DATA(t31) = |Selection-Screen variable name must not match pattern |.
      DATA(t33) = strlen( t31 ).
      t30 = |{ t31 }{ t1 }|.
      DATA(t35) = strlen( t30 ).
      t29 = |{ t30 }{ |: | }|.
      DATA(t37) = strlen( t29 ).
      t28 = |{ t29 }{ t2 }|.
      DATA(t39) = strlen( t28 ).
      t3 = |{ t28 }{ || }|.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = VALUE abap_bool( ).
    IF t5 IS INITIAL.
      t10 = abap_true.
    ELSEIF t5->has = abap_false.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA(t12) = me->conf.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = |required|.
      t12->zlnt_view_write_s_9ebcbca32e92( p0 = t16 ).
    ENDIF.
    DATA t18 TYPE abap_bool.
    t18 = abap_false.
    DATA t20 TYPE abap_bool.
    t20 = abap_false.
    DATA t22 TYPE abap_bool.
    t22 = abap_false.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t26 = me->conf->zlnt_view_read_sr_75544672d945( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = VALUE abap_bool( ).
    IF t26 IS INITIAL.
      t31 = abap_true.
    ELSEIF t26->has = abap_false.
      t31 = abap_true.
    ENDIF.
    t25 = t31.
    t24 = t25.
    IF t25 = abap_false.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t36 = me->conf->zlnt_view_read_sr_75544672d945( ).
      t24 = xsdbool( strlen( t36->value ) = 0 ).
    ENDIF.
    IF t24 = abap_true.
      t18 = abap_true.
    ENDIF.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t43 = me->conf->zlnt_view_read_sr_6d5a5cea1316( ).
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = VALUE abap_bool( ).
    IF t43 IS INITIAL.
      t48 = abap_true.
    ELSEIF t43->has = abap_false.
      t48 = abap_true.
    ENDIF.
    t42 = t48.
    t41 = t42.
    IF t42 = abap_false.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t53 = me->conf->zlnt_view_read_sr_6d5a5cea1316( ).
      t41 = xsdbool( strlen( t53->value ) = 0 ).
    ENDIF.
    IF t41 = abap_true.
      t20 = abap_true.
    ENDIF.
    DATA(t58) = VALUE abap_bool( ).
    DATA(t59) = VALUE abap_bool( ).
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t60 = me->conf->zlnt_view_read_sr_8f2e2a5ebfb2( ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t65) = VALUE abap_bool( ).
    IF t60 IS INITIAL.
      t65 = abap_true.
    ELSEIF t60->has = abap_false.
      t65 = abap_true.
    ENDIF.
    t59 = t65.
    t58 = t59.
    IF t59 = abap_false.
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t70 = me->conf->zlnt_view_read_sr_8f2e2a5ebfb2( ).
      t58 = xsdbool( strlen( t70->value ) = 0 ).
    ENDIF.
    IF t58 = abap_true.
      t22 = abap_true.
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t75 = t1->statements.
    DATA t80 TYPE REF TO zcl_lnt_statement_node.
    DATA t81 TYPE REF TO object.
    DATA(t82) = VALUE i( ).
    DO.
      t75->load( ).
      IF t82 >= lines( t75->items ).
        EXIT.
      ENDIF.
      CLEAR t81.
      READ TABLE t75->items INDEX t82 + 1 INTO t81.
      t82 = t82 + 1.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      CLEAR t80.
      IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t81.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t80 ?= t84.
      ELSE.
        t80 ?= t81.
      ENDIF.
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE REF TO zif_lnt_statement.
      t89 = t80->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_st_parameter ).
      t87 = t88.
      IF t88 = abap_true.
        t87 = xsdbool( t18 = abap_false ).
      ENDIF.
      t86 = t87.
      IF t87 = abap_false.
        DATA t93 TYPE abap_bool.
        DATA t94 TYPE abap_bool.
        DATA t95 TYPE REF TO zif_lnt_statement.
        t95 = t80->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_st_select_option ).
        t93 = t94.
        IF t94 = abap_true.
          t93 = xsdbool( t20 = abap_false ).
        ENDIF.
        t86 = t93.
      ENDIF.
      t85 = t86.
      IF t86 = abap_false.
        DATA t99 TYPE abap_bool.
        DATA t100 TYPE abap_bool.
        DATA t101 TYPE REF TO zif_lnt_statement.
        t101 = t80->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_st_selection_screen ).
        t99 = t100.
        IF t100 = abap_true.
          t99 = xsdbool( t22 = abap_false ).
        ENDIF.
        t85 = t99.
      ENDIF.
      IF t85 = abap_true.
        DATA t105 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t105.
        DATA t107 TYPE REF TO zcl_lnt_statement_node.
        t107 = t80.
        DATA t109 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t109.
        DATA t111 TYPE REF TO zif_lnt_statement.
        t111 = t107->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t111 IS BOUND AND t111 IS INSTANCE OF zcl_lnt_st_parameter ) = abap_true.
          DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
          t109 = t107->find_first_expression( i_type_9913 = t115 ).
        ELSE.
          DATA t116 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t116.
          DATA t118 TYPE REF TO zif_lnt_statement.
          t118 = t107->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          IF xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_st_select_option ) = abap_true.
            DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
            t116 = t107->find_first_expression( i_type_9913 = t122 ).
          ELSE.
            DATA t123 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t123.
            DATA t125 TYPE REF TO zif_lnt_statement.
            t125 = t107->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            IF xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_st_selection_screen ) = abap_true.
              DATA t128 TYPE REF TO zcl_lnt_expression_node.
              DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604.
              t128 = t107->find_first_expression( i_type_9913 = t131 ).
              DATA(t132) = VALUE abap_bool( ).
              DATA(t133) = VALUE abap_bool( ).
              DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t136.
              t133 = xsdbool( t128 IS INITIAL ).
              t132 = t133.
              IF t133 = abap_true.
                DATA(t141) = VALUE i( ).
                DATA t142 TYPE string.
                DATA t143 TYPE string.
                t143 = t107->concat_tokens( ).
                DATA(t145) = strlen( t143 ).
                t142 = t143.
                IF t142 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t142 TO UPPER CASE.
                ELSE.
                  t142 = zlnt_runtime_uppe_91169605024d=>full( t142 ).
                ENDIF.
                DATA(t146) = | BEGIN OF TABBED BLOCK|.
                DATA(t147) = strlen( t142 ).
                IF t146 IS INITIAL.
                  t141 = 0.
                ELSE.
                  FIND t146 IN t142 MATCH OFFSET t141.
                  IF sy-subrc <> 0.
                    t141 = -1.
                  ENDIF.
                ENDIF.
                t132 = xsdbool( t141 >= 0 ).
              ENDIF.
              IF t132 = abap_true.
                DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d107_ee9c2dd1a63a.
                t128 = t107->find_first_expression( i_type_9913 = t151 ).
              ENDIF.
              t123 = t128.
            ELSE.
              CLEAR t123.
            ENDIF.
            t116 = t123.
          ENDIF.
          t109 = t116.
        ENDIF.
        t105 = t109.
        DATA t155 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t155.
        DATA t157 TYPE REF TO zif_lnt_statement.
        t157 = t80->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        DATA t161 TYPE string.
        t161 = ||.
        IF xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_st_parameter ) = abap_true.
          t161 = me->conf->zlnt_view_read_sr_75544672d945( )->value.
        ELSE.
          IF xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_st_select_option ) = abap_true.
            t161 = me->conf->zlnt_view_read_sr_6d5a5cea1316( )->value.
          ELSE.
            IF xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_st_selection_screen ) = abap_true.
              t161 = me->conf->zlnt_view_read_sr_8f2e2a5ebfb2( )->value.
            ENDIF.
          ENDIF.
        ENDIF.
        CREATE OBJECT t155 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t161 flags = |i|.
        DATA t180 TYPE abap_bool.
        DATA t181 TYPE abap_bool.
        t181 = xsdbool( t105 IS BOUND ).
        t180 = t181.
        IF t181 = abap_true.
          DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t184.
          DATA t191 TYPE string.
          t191 = t105->get_first_token( )->str.
          DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t193->has = abap_true.
          t193->value = t191.
          t184 = t193.
          DATA(t196) = me->conf.
          t180 = zcl_lnt_name_validator=>violates_rule( i_name = t184 i_pattern = t155 i_params_4c59 = t196 ).
        ENDIF.
        IF t180 = abap_true.
          DATA t198 TYPE REF TO zcl_lnt_issue.
          CLEAR t198.
          DATA t200 TYPE REF TO zcl_lnt_abstract_token.
          t200 = t105->get_first_token( ).
          DATA(t203) = VALUE string( ).
          DATA(t204) = VALUE string( ).
          DATA t206 TYPE REF TO zif_lnt_statement.
          t206 = t80->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          DATA t210 TYPE string.
          t210 = ||.
          IF xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_st_parameter ) = abap_true.
            t210 = me->conf->zlnt_view_read_sr_75544672d945( )->value.
          ELSE.
            IF xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_st_select_option ) = abap_true.
              t210 = me->conf->zlnt_view_read_sr_6d5a5cea1316( )->value.
            ELSE.
              IF xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_st_selection_screen ) = abap_true.
                t210 = me->conf->zlnt_view_read_sr_8f2e2a5ebfb2( )->value.
              ENDIF.
            ENDIF.
          ENDIF.
          t204 = t210.
          DATA t228 TYPE string.
          t228 = t105->get_first_token( )->str.
          DATA(t236) = VALUE string( ).
          DATA(t237) = VALUE abap_bool( ).
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t238 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t243) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t243->has = abap_true.
          t243->value = |required|.
          t240 = t243.
          DATA(t245) = VALUE abap_bool( ).
          DATA(t246) = VALUE abap_bool( ).
          IF t238 IS BOUND.
            t245 = t238->has.
          ENDIF.
          IF t240 IS BOUND.
            t246 = t240->has.
          ENDIF.
          IF t245 = t246.
            IF t245 = abap_false.
              t237 = abap_true.
            ELSEIF t238->value = t240->value.
              t237 = abap_true.
            ENDIF.
          ENDIF.
          IF t237 = abap_true.
            DATA t248 TYPE string.
            DATA t249 TYPE string.
            DATA t250 TYPE string.
            DATA(t251) = |Selection-Screen variable name does not match pattern |.
            DATA(t253) = strlen( t251 ).
            t250 = |{ t251 }{ t204 }|.
            DATA(t255) = strlen( t250 ).
            t249 = |{ t250 }{ |: | }|.
            DATA(t257) = strlen( t249 ).
            t248 = |{ t249 }{ t228 }|.
            DATA(t259) = strlen( t248 ).
            t236 = |{ t248 }{ || }|.
          ELSE.
            DATA t261 TYPE string.
            DATA t262 TYPE string.
            DATA t263 TYPE string.
            DATA(t264) = |Selection-Screen variable name must not match pattern |.
            DATA(t266) = strlen( t264 ).
            t263 = |{ t264 }{ t204 }|.
            DATA(t268) = strlen( t263 ).
            t262 = |{ t263 }{ |: | }|.
            DATA(t270) = strlen( t262 ).
            t261 = |{ t262 }{ t228 }|.
            DATA(t272) = strlen( t261 ).
            t236 = |{ t261 }{ || }|.
          ENDIF.
          t203 = t236.
          DATA(t273) = VALUE string( ).
          DATA t274 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t279 TYPE string.
          DATA(t280) = |Allows you to enforce a pattern, such as a prefix, for selec|.
          t280 = t280 && |tion-screen variable names.|.
          t279 = t280.
          DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t281.
          DATA t285 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t285.
          t285->load( ).
          APPEND |Naming| TO t285->items.
          t285->save( ).
          t285->load( ).
          APPEND |SingleFile| TO t285->items.
          t285->save( ).
          t281 = t285.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t297.
          DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t299.
          DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t301.
          t274 = NEW zcl_lnt_irule_metadata( i_key = |selection_screen_naming| i_title = |Selection screen naming conventions| i_short_description = t279 i_bad_example = t293 i_good_example = t295 i_extended_information = t297 i_tags = t281 i_pragma = t299 i_pseudo_comment = t301 ).
          CREATE OBJECT t274->zlnt_view_ownkeys_b0e8086400eb.
          t274->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t303 ).
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t304.
          IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t304 ).
          ENDIF.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t305 ).
          ENDIF.
          DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t306.
          IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t306 ).
          ENDIF.
          CREATE OBJECT t274->zlnt_json_ownkeys_70e5fd461788.
          t274->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t308.
          t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t308 ).
          DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t310.
          IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t310 ).
          ENDIF.
          DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t312.
          IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t312 ).
          ENDIF.
          DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t314.
          IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t314 ).
          ENDIF.
          t273 = t274->key.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t315 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t317 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t317.
          t198 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t200 i_message_26cb = t203 i_key = t273 i_severity = t315 i_fix = t317 ).
          t2->load( ).
          APPEND t198 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_pattern_for_statement.
    DATA(t1) = i_statement.
    DATA t2 TYPE string.
    t2 = ||.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_parameter ) = abap_true.
      t2 = me->conf->zlnt_view_read_sr_75544672d945( )->value.
    ELSE.
      IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_select_option ) = abap_true.
        t2 = me->conf->zlnt_view_read_sr_6d5a5cea1316( )->value.
      ELSE.
        IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_st_selection_screen ) = abap_true.
          t2 = me->conf->zlnt_view_read_sr_8f2e2a5ebfb2( )->value.
        ENDIF.
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_field_for_statement_node.
    DATA(t1) = i_stat_node.
    DATA t3 TYPE REF TO zif_lnt_statement.
    t3 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_st_parameter ) = abap_true.
      DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
      result = t1->find_first_expression( i_type_9913 = t7 ).
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_statement.
    t9 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_st_select_option ) = abap_true.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
      result = t1->find_first_expression( i_type_9913 = t13 ).
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_statement.
    t15 = t1->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_selection_screen ) = abap_true.
      DATA t17 TYPE REF TO zcl_lnt_expression_node.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604.
      t17 = t1->find_first_expression( i_type_9913 = t20 ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t22 = xsdbool( t17 IS INITIAL ).
      t21 = t22.
      IF t22 = abap_true.
        DATA(t30) = VALUE i( ).
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        t32 = t1->concat_tokens( ).
        DATA(t34) = strlen( t32 ).
        t31 = t32.
        IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t31 TO UPPER CASE.
        ELSE.
          t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
        ENDIF.
        DATA(t35) = | BEGIN OF TABBED BLOCK|.
        DATA(t36) = strlen( t31 ).
        IF t35 IS INITIAL.
          t30 = 0.
        ELSE.
          FIND t35 IN t31 MATCH OFFSET t30.
          IF sy-subrc <> 0.
            t30 = -1.
          ENDIF.
        ENDIF.
        t21 = xsdbool( t30 >= 0 ).
      ENDIF.
      IF t21 = abap_true.
        DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d107_ee9c2dd1a63a.
        t17 = t1->find_first_expression( i_type_9913 = t40 ).
      ENDIF.
      result = t17.
      RETURN.
    ENDIF.
    CLEAR result.




  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_slctn_scrn_nmng_cnf( me->g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_slctn_scrn_nmng_cnf( me->g_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_slctn_scrn_nmng_cnf.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_slctn_scrn_nmng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sl_sc_nm_ts_sl_sc_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sl_sc_nm_ts_sl_sc_nm( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1692_29dfda0dd844.
  ENDMETHOD.
ENDCLASS.
