* TS: src/rules/avoid_use.ts:34:1 AvoidUse
CLASS zcl_lnt_avoid_use DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_avoid_use_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_statement TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_av_us_ts_avd_us RETURNING VALUE(result) TYPE REF TO zcl_lnt_avoid_use_conf.
    METHODS st_cn_in_sr_rl_av_us_ts_avd_us IMPORTING i_conf TYPE REF TO zcl_lnt_avoid_use_conf.
    METHODS rn_pr_in_sr_rl_av_us_ts_avd_us IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_describe_lines_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_avoid_use IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_avoid_use_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |avoid_use|.
    DATA t4 TYPE string.
    t4 = |Avoid use of certain statements|.
    DATA t6 TYPE string.
    t6 = |Detects usage of certain statements.|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |DEFAULT KEY: https://github.com/SAP/styleguides/blob/main/cl|.
    t11 = t11 && |ean-abap/CleanABAP.md#avoid-default-key\n\nMacros: https://hel|.
    t11 = t11 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abenmac|.
    t11 = t11 && |ros_guidl.html\n\nSTATICS: use CLASS-DATA instead\n\nDESCRIBE TA|.
    t11 = t11 && |BLE LINES: use lines() instead (quickfix exists)\n\nTEST-SEAMS|.
    t11 = t11 && |: https://github.com/SAP/styleguides/blob/main/clean-abap/Cl|.
    t11 = t11 && |eanABAP.md#use-test-seams-as-temporary-workaround\n\nBREAK poi|.
    t11 = t11 && |nts|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Styleguide|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |SingleFile|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |DESCRIBE TABLE items LINES count.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |count = lines( items ).|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA(t3) = |Avoid use of |.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ i_statement }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_av_us_ts_avd_us.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_av_us_ts_avd_us.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_av_us_ts_avd_us.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = t1->statements.
    t6 = t10.
    DATA t12 TYPE i.
    t12 = 0.
    DO.
      DATA t14 TYPE abap_bool.
      DATA t16 TYPE i.
      t6->load( ).
      t16 = lines( t6->items ).
      t14 = xsdbool( t12 < t16 ).
      IF t14 = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t19.
      DATA(t21) = t12.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      t6->load( ).
      CLEAR t22.
      READ TABLE t6->items INDEX t21 INTO t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t19.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t22.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t19 ?= t24.
      ELSE.
        t19 ?= t22.
      ENDIF.
      t18 = t19.
      DATA t25 TYPE REF TO zif_lnt_statement.
      DATA t26 TYPE REF TO zif_lnt_statement.
      t26 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t25 = t26.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t30 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t30.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t34 = me->conf->zlnt_view_read_sr_fbeb22473b39( ).
      IF t34 IS BOUND.
        IF t34->has = abap_true.
          t33 = xsdbool( t34->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t32 = t33.
      IF t33 = abap_true.
        DATA t36 TYPE abap_bool.
        t36 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_define ).
        t32 = t36.
      ENDIF.
      IF t32 = abap_true.
        DATA(t40) = |DEFINE|.
        DATA(t41) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t41->has = abap_true.
        t41->value = t40.
        t28 = t41.
      ELSE.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t45 = me->conf->zlnt_view_read_sr_1dd04d74a2a7( ).
        IF t45 IS BOUND.
          IF t45->has = abap_true.
            t44 = xsdbool( t45->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t43 = t44.
        IF t44 = abap_true.
          DATA t47 TYPE abap_bool.
          t47 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_describe ).
          t43 = t47.
        ENDIF.
        IF t43 = abap_true.
          DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t52 TYPE REF TO zcl_lnt_abstract_node.
          t52 = t18.
          DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t54 = t52->children.
          t51 = t54.
          t50 ?= t51.
          t49 = t50.
          DATA t56 TYPE abap_bool.
          DATA t57 TYPE abap_bool.
          DATA t58 TYPE i.
          t49->load( ).
          t58 = lines( t49->items ).
          DATA(t60) = 6.
          t57 = xsdbool( t58 = t60 ).
          t56 = t57.
          IF t57 = abap_true.
            DATA(t61) = VALUE abap_bool( ).
            DATA(t62) = VALUE string( ).
            DATA(t63) = VALUE string( ).
            DATA t65 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t65.
            DATA t66 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t66.
            DATA t68 TYPE REF TO object.
            CLEAR t68.
            t49->load( ).
            CLEAR t68.
            READ TABLE t49->items INDEX 4 INTO t68.
            DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t69.
            CLEAR t66.
            IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t69 ?= t68.
              DATA t70 TYPE REF TO object.
              t70 = t69->as_ref( ).
              t66 ?= t70.
            ELSE.
              t66 ?= t68.
            ENDIF.
            t65 = t66->get_first_token( ).
            DATA t71 TYPE string.
            t71 = t65->str.
            t63 = t71.
            DATA(t73) = strlen( t63 ).
            t62 = t63.
            IF t62 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t62 TO UPPER CASE.
            ELSE.
              t62 = zlnt_runtime_uppe_91169605024d=>full( t62 ).
            ENDIF.
            DATA(t74) = |LINES|.
            t61 = xsdbool( t62 = t74 ).
            t56 = t61.
          ENDIF.
          IF t56 = abap_true.
            DATA(t77) = |DESCRIBE LINES, use lines() instead|.
            DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t78->has = abap_true.
            t78->value = t77.
            t28 = t78.
            DATA t80 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t80.
            DATA(t81) = VALUE abap_bool( ).
            DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            t82 = me->conf->zlnt_view_read_sr_9519265f098e( ).
            DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t84.
            DATA(t87) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t87->has = abap_true.
            t87->value = abap_true.
            t84 = t87.
            DATA(t89) = VALUE abap_bool( ).
            DATA(t90) = VALUE abap_bool( ).
            IF t82 IS BOUND.
              t89 = t82->has.
            ENDIF.
            IF t84 IS BOUND.
              t90 = t84->has.
            ENDIF.
            IF t89 = t90.
              IF t89 = abap_false.
                t81 = abap_true.
              ELSEIF t82->value = t84->value.
                t81 = abap_true.
              ENDIF.
            ENDIF.
            IF t81 = abap_true.
              CLEAR t80.
            ELSE.
              DATA t93 TYPE REF TO zcl_lnt_abap_file.
              t93 = t1.
              DATA t95 TYPE REF TO zcl_lnt_statement_node.
              t95 = t18.
              DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t101 TYPE REF TO zcl_lnt_abstract_node.
              t101 = t95.
              DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t103 = t101->children.
              t100 = t103.
              t99 ?= t100.
              t98 = t99.
              DATA(t105) = VALUE string( ).
              DATA(t106) = VALUE string( ).
              DATA t107 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t107.
              DATA t109 TYPE REF TO object.
              CLEAR t109.
              t98->load( ).
              CLEAR t109.
              READ TABLE t98->items INDEX 5 INTO t109.
              DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t110.
              CLEAR t107.
              IF t109 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t110 ?= t109.
                DATA t111 TYPE REF TO object.
                t111 = t110->as_ref( ).
                t107 ?= t111.
              ELSE.
                t107 ?= t109.
              ENDIF.
              t106 = t107->concat_tokens( ).
              t105 = t106.
              DATA(t112) = VALUE string( ).
              DATA(t113) = VALUE string( ).
              DATA t114 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t114.
              DATA t116 TYPE REF TO object.
              CLEAR t116.
              t98->load( ).
              CLEAR t116.
              READ TABLE t98->items INDEX 3 INTO t116.
              DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t117.
              CLEAR t114.
              IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t117 ?= t116.
                DATA t118 TYPE REF TO object.
                t118 = t117->as_ref( ).
                t114 ?= t118.
              ELSE.
                t114 ?= t116.
              ENDIF.
              t113 = t114->concat_tokens( ).
              t112 = t113.
              DATA t122 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t122.
              DATA t123 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t123.
              DATA t125 TYPE REF TO object.
              CLEAR t125.
              t98->load( ).
              CLEAR t125.
              READ TABLE t98->items INDEX 1 INTO t125.
              DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t126.
              CLEAR t123.
              IF t125 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t126 ?= t125.
                DATA t127 TYPE REF TO object.
                t127 = t126->as_ref( ).
                t123 ?= t127.
              ELSE.
                t123 ?= t125.
              ENDIF.
              t122 = t123->get_first_token( ).
              DATA t128 TYPE REF TO zcl_lnt_position.
              t128 = t122->start.
              DATA t131 TYPE string.
              DATA t132 TYPE string.
              DATA t133 TYPE string.
              DATA(t135) = | = lines( |.
              DATA(t136) = strlen( t105 ).
              t133 = |{ t105 }{ t135 }|.
              DATA(t138) = strlen( t133 ).
              t132 = |{ t133 }{ t112 }|.
              DATA(t139) = | ).|.
              DATA(t140) = strlen( t132 ).
              t131 = |{ t132 }{ t139 }|.
              DATA t142 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t142 = zcl_lnt_edit_helper=>delete_statement( i_file = t93 i_statement = t95 ).
              DATA t146 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t146 = zcl_lnt_edit_helper=>insert_at( i_file = t93 i_pos = t128 i_text = t131 ).
              DATA t151 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              t151 = zcl_lnt_edit_helper=>merge( i_fix1 = t142 i_fix2 = t146 ).
              t80 = t151.
            ENDIF.
            t30 = t80.
          ENDIF.
        ELSE.
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = VALUE abap_bool( ).
          DATA t160 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t160 = me->conf->zlnt_view_read_sr_90729ada0868( ).
          IF t160 IS BOUND.
            IF t160->has = abap_true.
              t159 = xsdbool( t160->value IS NOT INITIAL ).
            ENDIF.
          ENDIF.
          t158 = t159.
          IF t159 = abap_true.
            DATA t162 TYPE abap_bool.
            t162 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_static_begin ).
            t158 = t162.
          ENDIF.
          IF t158 = abap_true.
            t4 = abap_true.
            DATA(t167) = |STATICS|.
            DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t168->has = abap_true.
            t168->value = t167.
            t28 = t168.
          ELSE.
            DATA(t170) = VALUE abap_bool( ).
            DATA(t171) = VALUE abap_bool( ).
            DATA t172 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            t172 = me->conf->zlnt_view_read_sr_90729ada0868( ).
            IF t172 IS BOUND.
              IF t172->has = abap_true.
                t171 = xsdbool( t172->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
            t170 = t171.
            IF t171 = abap_true.
              DATA t174 TYPE abap_bool.
              t174 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_static_end ).
              t170 = t174.
            ENDIF.
            IF t170 = abap_true.
              t4 = abap_false.
            ELSE.
              DATA(t177) = VALUE abap_bool( ).
              DATA(t178) = VALUE abap_bool( ).
              DATA(t179) = VALUE abap_bool( ).
              DATA t180 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              t180 = me->conf->zlnt_view_read_sr_a9fad2a803af( ).
              IF t180 IS BOUND.
                IF t180->has = abap_true.
                  t179 = xsdbool( t180->value IS NOT INITIAL ).
                ENDIF.
              ENDIF.
              t178 = t179.
              IF t179 = abap_true.
                DATA t182 TYPE abap_bool.
                t182 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_export ).
                t178 = t182.
              ENDIF.
              t177 = t178.
              IF t178 = abap_true.
                DATA(t184) = VALUE abap_bool( ).
                DATA(t185) = VALUE i( ).
                DATA t186 TYPE string.
                t186 = t18->concat_tokens( ).
                DATA(t188) = |TO MEMORY |.
                DATA(t189) = strlen( t186 ).
                IF t188 IS INITIAL.
                  t185 = 0.
                ELSE.
                  FIND t188 IN t186 MATCH OFFSET t185.
                  IF sy-subrc <> 0.
                    t185 = -1.
                  ENDIF.
                ENDIF.
                DATA(t190) = 0.
                t184 = xsdbool( t185 >= t190 ).
                t177 = t184.
              ENDIF.
              IF t177 = abap_true.
                DATA(t193) = |EXPORT TO MEMORY|.
                DATA(t194) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t194->has = abap_true.
                t194->value = t193.
                t28 = t194.
              ELSE.
                DATA(t196) = VALUE abap_bool( ).
                DATA(t197) = VALUE abap_bool( ).
                DATA(t198) = VALUE abap_bool( ).
                DATA t199 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                t199 = me->conf->zlnt_view_read_sr_fef07a1ddb2e( ).
                IF t199 IS BOUND.
                  IF t199->has = abap_true.
                    t198 = xsdbool( t199->value IS NOT INITIAL ).
                  ENDIF.
                ENDIF.
                t197 = t198.
                IF t198 = abap_true.
                  DATA t201 TYPE abap_bool.
                  t201 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_export ).
                  t197 = t201.
                ENDIF.
                t196 = t197.
                IF t197 = abap_true.
                  DATA(t203) = VALUE abap_bool( ).
                  DATA(t204) = VALUE i( ).
                  DATA t205 TYPE string.
                  t205 = t18->concat_tokens( ).
                  DATA(t207) = |TO DATABASE |.
                  DATA(t208) = strlen( t205 ).
                  IF t207 IS INITIAL.
                    t204 = 0.
                  ELSE.
                    FIND t207 IN t205 MATCH OFFSET t204.
                    IF sy-subrc <> 0.
                      t204 = -1.
                    ENDIF.
                  ENDIF.
                  DATA(t209) = 0.
                  t203 = xsdbool( t204 >= t209 ).
                  t196 = t203.
                ENDIF.
                IF t196 = abap_true.
                  DATA(t212) = |EXPORT TO DATABASE|.
                  DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t213->has = abap_true.
                  t213->value = t212.
                  t28 = t213.
                ELSE.
                  DATA(t215) = VALUE abap_bool( ).
                  DATA(t216) = VALUE abap_bool( ).
                  DATA t217 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  t217 = me->conf->zlnt_view_read_sr_2e9771ed44b2( ).
                  IF t217 IS BOUND.
                    IF t217->has = abap_true.
                      t216 = xsdbool( t217->value IS NOT INITIAL ).
                    ENDIF.
                  ENDIF.
                  t215 = t216.
                  IF t216 = abap_true.
                    DATA t219 TYPE abap_bool.
                    t219 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_test_seam ).
                    t215 = t219.
                  ENDIF.
                  IF t215 = abap_true.
                    DATA t221 TYPE REF TO zcl_lnt_statement_node.
                    CLEAR t221.
                    DATA t222 TYPE REF TO zcl_lnt_statement_node.
                    CLEAR t222.
                    DATA t224 TYPE i.
                    DATA(t226) = 1.
                    t224 = t12 + t226.
                    t224 = t224 + 1.
                    DATA t227 TYPE REF TO object.
                    CLEAR t227.
                    t6->load( ).
                    CLEAR t227.
                    READ TABLE t6->items INDEX t224 INTO t227.
                    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t228.
                    CLEAR t222.
                    IF t227 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                      t228 ?= t227.
                      DATA t229 TYPE REF TO object.
                      t229 = t228->as_ref( ).
                      t222 ?= t229.
                    ELSE.
                      t222 ?= t227.
                    ENDIF.
                    t221 = t222.
                    DATA(t230) = VALUE abap_bool( ).
                    DATA(t231) = VALUE abap_bool( ).
                    DATA t232 TYPE REF TO zif_lnt_statement.
                    CLEAR t232.
                    DATA t233 TYPE REF TO zcl_lnt_statement_node.
                    t233 = t221.
                    DATA t235 TYPE REF TO zif_lnt_statement.
                    CLEAR t235.
                    DATA(t236) = xsdbool( t233 IS INITIAL ).
                    IF t236 = abap_true.
                      CLEAR t235.
                    ELSE.
                      DATA t239 TYPE REF TO zif_lnt_statement.
                      t239 = t233->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                      t235 = t239.
                    ENDIF.
                    t232 = t235.
                    t231 = xsdbool( t232 IS BOUND AND t232 IS INSTANCE OF zcl_lnt_st_comment ).
                    t230 = t231.
                    IF t231 = abap_true.
                      DATA(t241) = VALUE abap_bool( ).
                      DATA(t242) = VALUE i( ).
                      DATA t243 TYPE string.
                      t243 = t221->concat_tokens( ).
                      DATA(t245) = |EC TEST_SEAM_USAGE|.
                      DATA(t246) = strlen( t243 ).
                      IF t245 IS INITIAL.
                        t242 = 0.
                      ELSE.
                        FIND t245 IN t243 MATCH OFFSET t242.
                        IF sy-subrc <> 0.
                          t242 = -1.
                        ENDIF.
                      ENDIF.
                      DATA(t247) = 0.
                      t241 = xsdbool( t242 >= t247 ).
                      t230 = t241.
                    ENDIF.
                    IF t230 = abap_true.
                      DATA t248 TYPE i.
                      DATA(t250) = 1.
                      t248 = t12 + t250.
                      t12 = t248.
                      CONTINUE.
                    ENDIF.
                    DATA(t253) = |TEST-SEAM|.
                    DATA(t254) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t254->has = abap_true.
                    t254->value = t253.
                    t28 = t254.
                  ELSE.
                    DATA(t256) = VALUE abap_bool( ).
                    DATA(t257) = VALUE abap_bool( ).
                    DATA(t258) = VALUE abap_bool( ).
                    DATA t259 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    t259 = me->conf->zlnt_view_read_sr_90729ada0868( ).
                    IF t259 IS BOUND.
                      IF t259->has = abap_true.
                        t258 = xsdbool( t259->value IS NOT INITIAL ).
                      ENDIF.
                    ENDIF.
                    t257 = t258.
                    IF t258 = abap_true.
                      DATA t261 TYPE abap_bool.
                      t261 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_static ).
                      t257 = t261.
                    ENDIF.
                    t256 = t257.
                    IF t257 = abap_true.
                      DATA t263 TYPE abap_bool.
                      t263 = xsdbool( t4 = abap_false ).
                      t256 = t263.
                    ENDIF.
                    IF t256 = abap_true.
                      DATA(t268) = |STATICS|.
                      DATA(t269) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t269->has = abap_true.
                      t269->value = t268.
                      t28 = t269.
                    ELSE.
                      DATA(t271) = VALUE abap_bool( ).
                      DATA(t272) = VALUE abap_bool( ).
                      DATA t273 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      t273 = me->conf->zlnt_view_read_sr_3134010c4092( ).
                      IF t273 IS BOUND.
                        IF t273->has = abap_true.
                          t272 = xsdbool( t273->value IS NOT INITIAL ).
                        ENDIF.
                      ENDIF.
                      t271 = t272.
                      IF t272 = abap_true.
                        DATA t275 TYPE abap_bool.
                        t275 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_break ).
                        t271 = t275.
                      ENDIF.
                      IF t271 = abap_true.
                        DATA(t279) = |BREAK/BREAK-POINT|.
                        DATA(t280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t280->has = abap_true.
                        t280->value = t279.
                        t28 = t280.
                        DATA t282 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                        CLEAR t282.
                        DATA(t283) = VALUE abap_bool( ).
                        DATA t284 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        t284 = me->conf->zlnt_view_read_sr_9519265f098e( ).
                        DATA t286 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t286.
                        DATA(t289) = NEW zlnt_runtime_opti_7f2541396f43( ).
                        t289->has = abap_true.
                        t289->value = abap_true.
                        t286 = t289.
                        DATA(t291) = VALUE abap_bool( ).
                        DATA(t292) = VALUE abap_bool( ).
                        IF t284 IS BOUND.
                          t291 = t284->has.
                        ENDIF.
                        IF t286 IS BOUND.
                          t292 = t286->has.
                        ENDIF.
                        IF t291 = t292.
                          IF t291 = abap_false.
                            t283 = abap_true.
                          ELSEIF t284->value = t286->value.
                            t283 = abap_true.
                          ENDIF.
                        ENDIF.
                        IF t283 = abap_true.
                          CLEAR t282.
                        ELSE.
                          DATA t296 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                          t296 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t18 ).
                          t282 = t296.
                        ENDIF.
                        t30 = t282.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t300) = VALUE abap_bool( ).
      DATA(t301) = t28.
      IF t301 IS BOUND.
        IF t301->has = abap_true.
          t300 = xsdbool( strlen( t301->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t300 = abap_true.
        DATA t303 TYPE REF TO zcl_lnt_issue.
        CLEAR t303.
        DATA t306 TYPE string.
        DATA t308 TYPE string.
        t308 = t28->value.
        DATA t310 TYPE string.
        DATA(t311) = |Avoid use of |.
        DATA(t313) = strlen( t311 ).
        t310 = |{ t311 }{ t308 }|.
        t306 = t310.
        DATA(t314) = VALUE string( ).
        DATA t315 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t315.
        DATA t316 TYPE string.
        t316 = |avoid_use|.
        DATA t318 TYPE string.
        t318 = |Avoid use of certain statements|.
        DATA t320 TYPE string.
        t320 = |Detects usage of certain statements.|.
        DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t322.
        DATA(t325) = |DEFAULT KEY: https://github.com/SAP/styleguides/blob/main/cl|.
        t325 = t325 && |ean-abap/CleanABAP.md#avoid-default-key\n\nMacros: https://hel|.
        t325 = t325 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abenmac|.
        t325 = t325 && |ros_guidl.html\n\nSTATICS: use CLASS-DATA instead\n\nDESCRIBE TA|.
        t325 = t325 && |BLE LINES: use lines() instead (quickfix exists)\n\nTEST-SEAMS|.
        t325 = t325 && |: https://github.com/SAP/styleguides/blob/main/clean-abap/Cl|.
        t325 = t325 && |eanABAP.md#use-test-seams-as-temporary-workaround\n\nBREAK poi|.
        t325 = t325 && |nts|.
        DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t326->has = abap_true.
        t326->value = t325.
        t322 = t326.
        DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t328.
        DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t333.
        t332 = t333.
        DATA(t335) = |Styleguide|.
        t332->load( ).
        APPEND t335 TO t332->items.
        t332->save( ).
        DATA(t337) = |SingleFile|.
        t332->load( ).
        APPEND t337 TO t332->items.
        t332->save( ).
        t328 = t332.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        DATA(t343) = |DESCRIBE TABLE items LINES count.|.
        DATA(t344) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t344->has = abap_true.
        t344->value = t343.
        t340 = t344.
        DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t346.
        DATA(t349) = |count = lines( items ).|.
        DATA(t350) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t350->has = abap_true.
        t350->value = t349.
        t346 = t350.
        DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t352.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t354.
        t315 = NEW zcl_lnt_irule_metadata( i_key = t316 i_title = t318 i_short_description = t320 i_bad_example = t340 i_good_example = t346 i_extended_information = t322 i_tags = t328 i_pragma = t352 i_pseudo_comment = t354 ).
        CREATE OBJECT t315->zlnt_view_ownkeys_b0e8086400eb.
        t315->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        t315->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t356 ).
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        IF t315->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t315->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t357 ).
        ENDIF.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t315->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t315->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t358 ).
        ENDIF.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t359.
        IF t315->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t315->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t359 ).
        ENDIF.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t315->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t315->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t360 ).
        ENDIF.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t361.
        IF t315->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t315->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t361 ).
        ENDIF.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        IF t315->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t315->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t362 ).
        ENDIF.
        CREATE OBJECT t315->zlnt_json_ownkeys_70e5fd461788.
        t315->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t363) = |key|.
        DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t364.
        t315->zlnt_json_ownkeys_70e5fd461788->put( p0 = t363 p1 = t364 ).
        DATA(t365) = |title|.
        DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t366.
        IF t315->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t315->zlnt_json_ownkeys_70e5fd461788->put( p0 = t365 p1 = t366 ).
        ENDIF.
        DATA(t367) = |shortDescription|.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        IF t315->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t315->zlnt_json_ownkeys_70e5fd461788->put( p0 = t367 p1 = t368 ).
        ENDIF.
        DATA(t369) = |extendedInformation|.
        DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t370.
        IF t315->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t315->zlnt_json_ownkeys_70e5fd461788->put( p0 = t369 p1 = t370 ).
        ENDIF.
        DATA(t371) = |tags|.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        IF t315->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t315->zlnt_json_ownkeys_70e5fd461788->put( p0 = t371 p1 = t372 ).
        ENDIF.
        DATA(t373) = |badExample|.
        DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t374.
        IF t315->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t315->zlnt_json_ownkeys_70e5fd461788->put( p0 = t373 p1 = t374 ).
        ENDIF.
        DATA(t375) = |goodExample|.
        DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t376.
        IF t315->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t315->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
        ENDIF.
        t314 = t315->key.
        DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t377 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t380 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t380.
        t303 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t18 i_message_26cb = t306 i_key = t314 i_severity = t377 i_fix = t30 i_alternative_fixes = t380 ).
        t2->load( ).
        APPEND t303 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA(t381) = VALUE abap_bool( ).
      DATA(t382) = VALUE abap_bool( ).
      DATA(t383) = VALUE abap_bool( ).
      DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t384 = me->conf->zlnt_view_read_sr_f7c6a961d953( ).
      IF t384 IS BOUND.
        IF t384->has = abap_true.
          t383 = xsdbool( t384->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      t382 = t383.
      IF t383 = abap_true.
        DATA(t386) = VALUE abap_bool( ).
        DATA(t387) = VALUE abap_bool( ).
        DATA t388 TYPE REF TO zcl_lnt_abap_release.
        DATA t389 TYPE REF TO zif_lnt_configuration.
        t389 = me->reg->get_config( ).
        t388 = t389->get_release( ).
        DATA t391 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t391.
        DATA t392 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t392.
        DATA t393 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t393.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t393 = zcl_lnt_version_module=>release_b8cd.
        DATA(t394) = |v740sp02|.
        t392 = t393->get( p0 = t394 ).
        t391 = t392.
        t387 = zcl_lnt_version_module=>release_at_least( i_running = t388 i_required = t391 ).
        t386 = t387.
        IF t387 = abap_false.
          DATA t395 TYPE abap_bool.
          DATA t396 TYPE string.
          DATA t397 TYPE REF TO zif_lnt_configuration.
          t397 = me->reg->get_config( ).
          t396 = t397->get_language_version( ).
          DATA(t399) = |Cloud|.
          t395 = xsdbool( t396 = t399 ).
          t386 = t395.
        ENDIF.
        t382 = t386.
      ENDIF.
      t381 = t382.
      IF t382 = abap_true.
        DATA t400 TYPE abap_bool.
        DATA t401 TYPE abap_bool.
        t401 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_data ).
        t400 = t401.
        IF t401 = abap_false.
          DATA t403 TYPE abap_bool.
          t403 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_statem_type ).
          t400 = t403.
        ENDIF.
        t381 = t400.
      ENDIF.
      IF t381 = abap_true.
        DATA t405 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t405.
        DATA t407 TYPE REF TO zcl_lnt_expression_node.
        DATA t408 TYPE REF TO zcl_lnt_expression_node.
        DATA(t410) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
        t408 = t18->find_first_expression( i_type_9913 = t410 ).
        t407 = t408.
        DATA t411 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t411.
        DATA(t412) = xsdbool( t407 IS INITIAL ).
        IF t412 = abap_true.
          CLEAR t411.
        ELSE.
          DATA t415 TYPE REF TO zcl_lnt_expression_node.
          DATA t416 TYPE REF TO zcl_lnt_expression_node.
          t416 = t407.
          DATA(t418) = zlnt_runtime_desc_78196487750d=>zlnt_member_d353_58ca0f41496e.
          t415 = t416->find_direct_expression( i_type_9913 = t418 ).
          t411 = t415.
        ENDIF.
        t405 = t411.
        DATA t419 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t419.
        DATA t421 TYPE REF TO zcl_lnt_expression_node.
        t421 = t405.
        DATA t423 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t423.
        DATA(t424) = xsdbool( t421 IS INITIAL ).
        IF t424 = abap_true.
          CLEAR t423.
        ELSE.
          DATA t427 TYPE REF TO zcl_lnt_abstract_token.
          DATA t428 TYPE REF TO zcl_lnt_expression_node.
          t428 = t421.
          DATA(t430) = |DEFAULT|.
          t427 = t428->find_direct_token_by_text( i_text = t430 ).
          t423 = t427.
        ENDIF.
        t419 = t423.
        DATA t431 TYPE abap_bool.
        DATA t432 TYPE abap_bool.
        t432 = xsdbool( t405 IS BOUND ).
        t431 = t432.
        IF t432 = abap_true.
          DATA t434 TYPE abap_bool.
          t434 = xsdbool( t419 IS BOUND ).
          t431 = t434.
        ENDIF.
        IF t431 = abap_true.
          DATA t436 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t436.
          DATA t437 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t437.
          DATA t439 TYPE i.
          DATA(t441) = 1.
          t439 = t12 + t441.
          t439 = t439 + 1.
          DATA t442 TYPE REF TO object.
          CLEAR t442.
          t6->load( ).
          CLEAR t442.
          READ TABLE t6->items INDEX t439 INTO t442.
          DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t443.
          CLEAR t437.
          IF t442 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t443 ?= t442.
            DATA t444 TYPE REF TO object.
            t444 = t443->as_ref( ).
            t437 ?= t444.
          ELSE.
            t437 ?= t442.
          ENDIF.
          t436 = t437.
          DATA(t445) = VALUE abap_bool( ).
          DATA(t446) = VALUE abap_bool( ).
          DATA t447 TYPE REF TO zif_lnt_statement.
          CLEAR t447.
          DATA t448 TYPE REF TO zcl_lnt_statement_node.
          t448 = t436.
          DATA t450 TYPE REF TO zif_lnt_statement.
          CLEAR t450.
          DATA(t451) = xsdbool( t448 IS INITIAL ).
          IF t451 = abap_true.
            CLEAR t450.
          ELSE.
            DATA t454 TYPE REF TO zif_lnt_statement.
            t454 = t448->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t450 = t454.
          ENDIF.
          t447 = t450.
          t446 = xsdbool( t447 IS BOUND AND t447 IS INSTANCE OF zcl_lnt_st_comment ).
          t445 = t446.
          IF t446 = abap_true.
            DATA(t456) = VALUE abap_bool( ).
            DATA(t457) = VALUE i( ).
            DATA t458 TYPE string.
            t458 = t436->concat_tokens( ).
            DATA(t460) = |EC DEFAULT_KEY|.
            DATA(t461) = strlen( t458 ).
            IF t460 IS INITIAL.
              t457 = 0.
            ELSE.
              FIND t460 IN t458 MATCH OFFSET t457.
              IF sy-subrc <> 0.
                t457 = -1.
              ENDIF.
            ENDIF.
            DATA(t462) = 0.
            t456 = xsdbool( t457 >= t462 ).
            t445 = t456.
          ENDIF.
          IF t445 = abap_true.
            DATA t463 TYPE i.
            DATA(t465) = 1.
            t463 = t12 + t465.
            t12 = t463.
            CONTINUE.
          ENDIF.
          DATA(t468) = |DEFAULT KEY|.
          DATA(t469) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t469->has = abap_true.
          t469->value = t468.
          t28 = t469.
          DATA t472 TYPE REF TO zcl_lnt_issue.
          CLEAR t472.
          DATA t474 TYPE REF TO zcl_lnt_abstract_token.
          t474 = t419.
          DATA t476 TYPE string.
          DATA t478 TYPE string.
          t478 = t28->value.
          DATA t480 TYPE string.
          DATA(t481) = |Avoid use of |.
          DATA(t483) = strlen( t481 ).
          t480 = |{ t481 }{ t478 }|.
          t476 = t480.
          DATA(t484) = VALUE string( ).
          DATA t485 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t485.
          DATA t486 TYPE string.
          t486 = |avoid_use|.
          DATA t488 TYPE string.
          t488 = |Avoid use of certain statements|.
          DATA t490 TYPE string.
          t490 = |Detects usage of certain statements.|.
          DATA t492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t492.
          DATA(t495) = |DEFAULT KEY: https://github.com/SAP/styleguides/blob/main/cl|.
          t495 = t495 && |ean-abap/CleanABAP.md#avoid-default-key\n\nMacros: https://hel|.
          t495 = t495 && |p.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/abenmac|.
          t495 = t495 && |ros_guidl.html\n\nSTATICS: use CLASS-DATA instead\n\nDESCRIBE TA|.
          t495 = t495 && |BLE LINES: use lines() instead (quickfix exists)\n\nTEST-SEAMS|.
          t495 = t495 && |: https://github.com/SAP/styleguides/blob/main/clean-abap/Cl|.
          t495 = t495 && |eanABAP.md#use-test-seams-as-temporary-workaround\n\nBREAK poi|.
          t495 = t495 && |nts|.
          DATA(t496) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t496->has = abap_true.
          t496->value = t495.
          t492 = t496.
          DATA t498 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t498.
          DATA t502 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t503 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t503.
          t502 = t503.
          DATA(t505) = |Styleguide|.
          t502->load( ).
          APPEND t505 TO t502->items.
          t502->save( ).
          DATA(t507) = |SingleFile|.
          t502->load( ).
          APPEND t507 TO t502->items.
          t502->save( ).
          t498 = t502.
          DATA t510 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t510.
          DATA(t513) = |DESCRIBE TABLE items LINES count.|.
          DATA(t514) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t514->has = abap_true.
          t514->value = t513.
          t510 = t514.
          DATA t516 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t516.
          DATA(t519) = |count = lines( items ).|.
          DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t520->has = abap_true.
          t520->value = t519.
          t516 = t520.
          DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t522.
          DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t524.
          t485 = NEW zcl_lnt_irule_metadata( i_key = t486 i_title = t488 i_short_description = t490 i_bad_example = t510 i_good_example = t516 i_extended_information = t492 i_tags = t498 i_pragma = t522 i_pseudo_comment = t524 ).
          CREATE OBJECT t485->zlnt_view_ownkeys_b0e8086400eb.
          t485->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t526.
          t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t526 ).
          DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t527.
          IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t527 ).
          ENDIF.
          DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t528.
          IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t528 ).
          ENDIF.
          DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t529.
          IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t529 ).
          ENDIF.
          DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t530.
          IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t530 ).
          ENDIF.
          DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t531.
          IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t531 ).
          ENDIF.
          DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t532.
          IF t485->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t485->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t532 ).
          ENDIF.
          CREATE OBJECT t485->zlnt_json_ownkeys_70e5fd461788.
          t485->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t533) = |key|.
          DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t534.
          t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t533 p1 = t534 ).
          DATA(t535) = |title|.
          DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t536.
          IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t535 p1 = t536 ).
          ENDIF.
          DATA(t537) = |shortDescription|.
          DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t538.
          IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t537 p1 = t538 ).
          ENDIF.
          DATA(t539) = |extendedInformation|.
          DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t540.
          IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t539 p1 = t540 ).
          ENDIF.
          DATA(t541) = |tags|.
          DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t542.
          IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t541 p1 = t542 ).
          ENDIF.
          DATA(t543) = |badExample|.
          DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t544.
          IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t543 p1 = t544 ).
          ENDIF.
          DATA(t545) = |goodExample|.
          DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t546.
          IF t485->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t485->zlnt_json_ownkeys_70e5fd461788->put( p0 = t545 p1 = t546 ).
          ENDIF.
          t484 = t485->key.
          DATA t547 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t547 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t549 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t549.
          t472 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t474 i_message_26cb = t476 i_key = t484 i_severity = t547 i_fix = t549 ).
          t2->load( ).
          APPEND t472 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA t550 TYPE i.
      DATA(t552) = 1.
      t550 = t12 + t552.
      t12 = t550.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_describe_lines_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = t2.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t6->children.
    t5 = t8.
    t4 ?= t5.
    t3 = t4.
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t14 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 5 INTO t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t15 ?= t14.
      DATA t16 TYPE REF TO object.
      t16 = t15->as_ref( ).
      t12 ?= t16.
    ELSE.
      t12 ?= t14.
    ENDIF.
    t11 = t12->concat_tokens( ).
    t10 = t11.
    DATA(t17) = VALUE string( ).
    DATA(t18) = VALUE string( ).
    DATA t19 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t21 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 3 INTO t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t22 ?= t21.
      DATA t23 TYPE REF TO object.
      t23 = t22->as_ref( ).
      t19 ?= t23.
    ELSE.
      t19 ?= t21.
    ENDIF.
    t18 = t19->concat_tokens( ).
    t17 = t18.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    DATA t28 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t30 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 1 INTO t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t31 ?= t30.
      DATA t32 TYPE REF TO object.
      t32 = t31->as_ref( ).
      t28 ?= t32.
    ELSE.
      t28 ?= t30.
    ENDIF.
    t27 = t28->get_first_token( ).
    DATA t33 TYPE REF TO zcl_lnt_position.
    t33 = t27->start.
    DATA t36 TYPE string.
    DATA t37 TYPE string.
    DATA t38 TYPE string.
    DATA(t40) = | = lines( |.
    DATA(t41) = strlen( t10 ).
    t38 = |{ t10 }{ t40 }|.
    DATA(t43) = strlen( t38 ).
    t37 = |{ t38 }{ t17 }|.
    DATA(t44) = | ).|.
    DATA(t45) = strlen( t37 ).
    t36 = |{ t37 }{ t44 }|.
    DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t47 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t2 ).
    DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t51 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t33 i_text = t36 ).
    DATA t56 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t56 = zcl_lnt_edit_helper=>merge( i_fix1 = t47 i_fix2 = t51 ).
    result = t56.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_avoid_use_conf( me->gt_cn_in_sr_rl_av_us_ts_avd_us( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_avoid_use_conf( me->gt_cn_in_sr_rl_av_us_ts_avd_us( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_avoid_use_conf.
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
        t1 = NEW zcl_lnt_avoid_use_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_av_us_ts_avd_us( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_av_us_ts_avd_us( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1406_6ace12741310.
  ENDMETHOD.
ENDCLASS.
