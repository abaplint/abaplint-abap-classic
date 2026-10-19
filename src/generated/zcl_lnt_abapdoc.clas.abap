* TS: src/rules/abapdoc.ts:19:1 Abapdoc
CLASS zcl_lnt_abapdoc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_abapdoc_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cnf_ins_src_rls_abp_ts_abpd RETURNING VALUE(result) TYPE REF TO zcl_lnt_abapdoc_conf.
    METHODS st_cnf_ins_src_rls_abp_ts_abpd IMPORTING i_conf TYPE REF TO zcl_lnt_abapdoc_conf.
    METHODS rn_prs_ins_src_rls_abp_ts_abpd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_abapdoc IMPORTING i_rows TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_5ba9c08dc722 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_abapdoc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_abapdoc_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |abapdoc|.
    DATA t4 TYPE string.
    t4 = |Check abapdoc|.
    DATA t6 TYPE string.
    t6 = |Various checks regarding abapdoc.|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Base rule checks for existence of abapdoc for public class m|.
    t11 = t11 && |ethods and all interface methods.\n\nPlus class and interface |.
    t11 = t11 && |definitions.\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
    t11 = t11 && |lean-abap/CleanABAP.md#abap-doc-only-for-public-apis|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Styleguide|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cnf_ins_src_rls_abp_ts_abpd.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cnf_ins_src_rls_abp_ts_abpd.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_prs_ins_src_rls_abp_ts_abpd.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zif_lnt_file.
    t9 = t1->file.
    t8 = t9->get_raw_rows( ).
    t4 = t8.
    DATA t11 TYPE string.
    t11 = `^\"! .*<[^/>]*><\/`.
    DATA t13 TYPE string.
    t13 = `^\"!.+$`.
    DATA t15 TYPE string.
    t15 = `^\"! @parameter .+\|`.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zif_lnt_abap_file_information.
    DATA t23 TYPE REF TO zif_lnt_abap_file_information.
    t23 = t1->info.
    t20 = t23.
    t19 = t20->list_class_definitions( ).
    DATA t25 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t26 TYPE REF TO object.
    DATA(t27) = VALUE i( ).
    DO.
      t19->load( ).
      IF t27 >= lines( t19->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t19->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE abap_bool.
      t32 = me->conf->zlnt_view_read_sr_6201f324c67f( ).
      t31 = xsdbool( t32 = abap_false ).
      t30 = t31.
      IF t31 = abap_true.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t36 = t25->is_local.
        DATA t38 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t38.
        DATA(t41) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t41->has = abap_true.
        t41->value = abap_true.
        t38 = t41.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        IF t36 IS BOUND.
          t43 = t36->has.
        ENDIF.
        IF t38 IS BOUND.
          t44 = t38->has.
        ENDIF.
        IF t43 = t44.
          IF t43 = abap_false.
            t35 = abap_true.
          ELSEIF t36->value = t38->value.
            t35 = abap_true.
          ENDIF.
        ENDIF.
        t30 = t35.
      ENDIF.
      IF t30 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE abap_bool.
      DATA t47 TYPE abap_bool.
      t47 = me->conf->zlnt_view_read_sr_79466e3b7ce0( ).
      t46 = xsdbool( t47 = abap_true ).
      t45 = t46.
      IF t46 = abap_true.
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t51 = t25->is_for_testing.
        DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t53.
        DATA(t56) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t56->has = abap_true.
        t56->value = abap_true.
        t53 = t56.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = VALUE abap_bool( ).
        IF t51 IS BOUND.
          t58 = t51->has.
        ENDIF.
        IF t53 IS BOUND.
          t59 = t53->has.
        ENDIF.
        IF t58 = t59.
          IF t58 = abap_false.
            t50 = abap_true.
          ELSEIF t51->value = t53->value.
            t50 = abap_true.
          ENDIF.
        ENDIF.
        t45 = t50.
      ENDIF.
      IF t45 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t60.
      DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t62.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t64.
      t63 = t64.
      DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t65 = t25->methods.
      DATA t67 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      DATA(t69) = VALUE i( ).
      DO.
        t65->load( ).
        IF t69 >= lines( t65->items ).
          EXIT.
        ENDIF.
        CLEAR t68.
        READ TABLE t65->items INDEX t69 + 1 INTO t68.
        t69 = t69 + 1.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t67.
        IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t70 ?= t68.
          DATA t71 TYPE REF TO object.
          t71 = t70->as_ref( ).
          t67 ?= t71.
        ELSE.
          t67 ?= t68.
        ENDIF.
        DATA t72 TYPE abap_bool.
        DATA t73 TYPE f.
        t73 = t67->visibility.
        DATA(t75) = CONV f( 3 ).
        t72 = xsdbool( t73 = t75 ).
        IF t72 = abap_true.
          t63->load( ).
          APPEND t67 TO t63->items.
          t63->save( ).
        ENDIF.
      ENDDO.
      t62 = t63.
      t60 = t17->concat( p0 = t62 ).
      t17 = t60.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE abap_bool.
      t80 = me->conf->zlnt_view_read_sr_a4d201238a70( ).
      t79 = xsdbool( t80 = abap_true ).
      IF t79 = abap_true.
        DATA t83 TYPE f.
        DATA t84 TYPE f.
        DATA t85 TYPE f.
        DATA t89 TYPE REF TO zcl_lnt_fi_identifier.
        t89 = t25->identifier.
        DATA t93 TYPE REF TO zcl_lnt_abstract_token.
        t93 = t89->token.
        DATA t95 TYPE REF TO zcl_lnt_position.
        t95 = t93->start.
        DATA t97 TYPE f.
        t97 = t95->row.
        t85 = t97.
        DATA(t99) = CONV f( 2 ).
        t84 = t85 - t99.
        t83 = t84.
        DATA(t100) = VALUE abap_bool( ).
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA(t107) = VALUE i( ).
        IF t83 > range_i32_upper.
          t107 = range_i32_upper.
        ELSEIF t83 < range_i32_lower.
          t107 = range_i32_lower.
        ELSE.
          t107 = trunc( t83 ).
        ENDIF.
        t105 = t4->get( p0 = t107 ).
        t104 = t105.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA(t110) = VALUE abap_bool( ).
        IF t104 IS INITIAL.
          t110 = abap_true.
        ELSEIF t104->has = abap_false.
          t110 = abap_true.
        ENDIF.
        IF t110 = abap_true.
          CLEAR t109.
        ELSE.
          DATA(t113) = VALUE string( ).
          DATA t114 TYPE string.
          t114 = t104->value.
          DATA(t116) = strlen( t114 ).
          DATA t117 TYPE i.
          DATA t118 TYPE i.
          t117 = 0.
          t118 = t116.
          DATA(t119) = VALUE i( ).
          DATA(t120) = VALUE i( ).
          DATA(t121) = VALUE string( ).
          WHILE t117 < t118.
            t120 = t117.
            t121 = t114+t120(1).
            DATA t122 TYPE c LENGTH 1.
            CLEAR t122.
            DATA(t123) = VALUE xstring( ).
            DATA t124 TYPE x LENGTH 1.
            CLEAR t124.
            DATA t125 TYPE x LENGTH 1.
            CLEAR t125.
            DATA(t126) = VALUE i( ).
            t122 = t121.
            t119 = cl_abap_conv_out_ce=>uccpi( t122 ).
            IF t119 >= 255.
              IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
                zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t121 IMPORTING buffer = t123 ).
              t124 = t123(1).
              t125 = t123+1(1).
              t119 = t124.
              t126 = t125.
              t119 = t119 + t126 * 256.
            ENDIF.
            IF t119 = 9 OR t119 = 10 OR t119 = 11 OR t119 = 12 OR t119 = 13 OR t119 = 32 OR t119 = 160 OR t119 = 5760 OR t119 = 8232 OR t119 = 8233 OR t119 = 8239 OR t119 = 8287 OR t119 = 12288 OR t119 = 65279 OR t119 >= 8192 AND t119 <= 8202.
              t117 = t117 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          DATA(t127) = VALUE i( ).
          DATA(t128) = VALUE i( ).
          DATA(t129) = VALUE string( ).
          WHILE t118 > t117.
            t128 = t118 - 1.
            t129 = t114+t128(1).
            DATA t130 TYPE c LENGTH 1.
            CLEAR t130.
            DATA(t131) = VALUE xstring( ).
            DATA t132 TYPE x LENGTH 1.
            CLEAR t132.
            DATA t133 TYPE x LENGTH 1.
            CLEAR t133.
            DATA(t134) = VALUE i( ).
            t130 = t129.
            t127 = cl_abap_conv_out_ce=>uccpi( t130 ).
            IF t127 >= 255.
              IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
                zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t129 IMPORTING buffer = t131 ).
              t132 = t131(1).
              t133 = t131+1(1).
              t127 = t132.
              t134 = t133.
              t127 = t127 + t134 * 256.
            ENDIF.
            IF t127 = 9 OR t127 = 10 OR t127 = 11 OR t127 = 12 OR t127 = 13 OR t127 = 32 OR t127 = 160 OR t127 = 5760 OR t127 = 8232 OR t127 = 8233 OR t127 = 8239 OR t127 = 8287 OR t127 = 12288 OR t127 = 65279 OR t127 >= 8192 AND t127 <= 8202.
              t118 = t118 - 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t118 > t117.
            t116 = t118 - t117.
            t113 = t114+t117(t116).
          ELSE.
            CLEAR t113.
          ENDIF.
          DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t135->has = abap_true.
          t135->value = t113.
          t109 = t135.
        ENDIF.
        t102 = t109.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        DATA(t137) = VALUE abap_bool( ).
        IF t102 IS INITIAL.
          t137 = abap_true.
        ELSEIF t102->has = abap_false.
          t137 = abap_true.
        ENDIF.
        IF t137 = abap_true.
          CLEAR t136.
        ELSE.
          DATA(t140) = VALUE string( ).
          DATA t141 TYPE string.
          t141 = t102->value.
          DATA(t143) = 0.
          DATA(t144) = 2.
          DATA(t145) = strlen( t141 ).
          t143 = COND i( WHEN t143 < 0 THEN 0 WHEN t143 > t145 THEN t145 ELSE t143 ).
          t144 = COND i( WHEN t144 < 0 THEN 0 WHEN t144 > t145 THEN t145 ELSE t144 ).
          IF t143 > t144.
            t145 = t143.
            t143 = t144.
            t144 = t145.
          ENDIF.
          t145 = t144 - t143.
          t140 = t141+t143(t145).
          DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t146->has = abap_true.
          t146->value = t140.
          t136 = t146.
        ENDIF.
        t101 = t136.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA(t149) = |"!|.
        DATA(t150) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t150->has = abap_true.
        t150->value = t149.
        t147 = t150.
        DATA(t152) = VALUE abap_bool( ).
        DATA(t153) = VALUE abap_bool( ).
        IF t101 IS BOUND.
          t152 = t101->has.
        ENDIF.
        IF t147 IS BOUND.
          t153 = t147->has.
        ENDIF.
        IF t152 = t153.
          IF t152 = abap_false.
            t100 = abap_true.
          ELSEIF t101->value = t147->value.
            t100 = abap_true.
          ENDIF.
        ENDIF.
        IF t100 = abap_true.
          t100 = abap_false.
        ELSE.
          t100 = abap_true.
        ENDIF.
        IF t100 = abap_true.
          DATA t155 TYPE string.
          DATA(t156) = |Missing ABAP Doc for class |.
          DATA t157 TYPE string.
          DATA t161 TYPE REF TO zcl_lnt_fi_identifier.
          t161 = t25->identifier.
          DATA t163 TYPE REF TO zcl_lnt_abstract_token.
          t163 = t161->token.
          DATA t165 TYPE string.
          t165 = t163->str.
          t157 = t165.
          DATA(t167) = strlen( t156 ).
          t155 = |{ t156 }{ t157 }|.
          DATA t169 TYPE REF TO zcl_lnt_issue.
          CLEAR t169.
          DATA t170 TYPE REF TO zcl_lnt_fi_identifier.
          t170 = t25->identifier.
          DATA(t173) = VALUE string( ).
          DATA t174 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t174.
          DATA t175 TYPE string.
          t175 = |abapdoc|.
          DATA t177 TYPE string.
          t177 = |Check abapdoc|.
          DATA t179 TYPE string.
          t179 = |Various checks regarding abapdoc.|.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          DATA(t184) = |Base rule checks for existence of abapdoc for public class m|.
          t184 = t184 && |ethods and all interface methods.\n\nPlus class and interface |.
          t184 = t184 && |definitions.\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t184 = t184 && |lean-abap/CleanABAP.md#abap-doc-only-for-public-apis|.
          DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t185->has = abap_true.
          t185->value = t184.
          t181 = t185.
          DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t187.
          DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t192 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t192.
          t191 = t192.
          DATA(t194) = |SingleFile|.
          t191->load( ).
          APPEND t194 TO t191->items.
          t191->save( ).
          DATA(t196) = |Styleguide|.
          t191->load( ).
          APPEND t196 TO t191->items.
          t191->save( ).
          t187 = t191.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          t174 = NEW zcl_lnt_irule_metadata( i_key = t175 i_title = t177 i_short_description = t179 i_bad_example = t199 i_good_example = t201 i_extended_information = t181 i_tags = t187 i_pragma = t203 i_pseudo_comment = t205 ).
          CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
          t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t207 ).
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t208 ).
          ENDIF.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t209 ).
          ENDIF.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t210 ).
          ENDIF.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t211 ).
          ENDIF.
          CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
          t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t212) = |key|.
          DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t213.
          t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
          DATA(t214) = |title|.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
          ENDIF.
          DATA(t216) = |shortDescription|.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
          ENDIF.
          DATA(t218) = |extendedInformation|.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
          ENDIF.
          DATA(t220) = |tags|.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
          ENDIF.
          t173 = t174->key.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t222 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t224 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t224.
          t169 = zcl_lnt_issue=>at_identifier( i_identifier = t170 i_message_26cb = t155 i_key = t173 i_severity = t222 i_fix = t224 ).
          t2->load( ).
          APPEND t169 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t228 TYPE REF TO zif_lnt_abap_file_information.
    DATA t231 TYPE REF TO zif_lnt_abap_file_information.
    t231 = t1->info.
    t228 = t231.
    t227 = t228->list_interface_definitions( ).
    DATA t233 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t234 TYPE REF TO object.
    DATA(t235) = VALUE i( ).
    DO.
      t227->load( ).
      IF t235 >= lines( t227->items ).
        EXIT.
      ENDIF.
      CLEAR t234.
      READ TABLE t227->items INDEX t235 + 1 INTO t234.
      t235 = t235 + 1.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      CLEAR t233.
      IF t234 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t236 ?= t234.
        DATA t237 TYPE REF TO object.
        t237 = t236->as_ref( ).
        t233 ?= t237.
      ELSE.
        t233 ?= t234.
      ENDIF.
      DATA t238 TYPE abap_bool.
      DATA t239 TYPE abap_bool.
      DATA t240 TYPE abap_bool.
      t240 = me->conf->zlnt_view_read_sr_6201f324c67f( ).
      t239 = xsdbool( t240 = abap_false ).
      t238 = t239.
      IF t239 = abap_true.
        DATA(t243) = VALUE abap_bool( ).
        DATA t244 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t244 = t233->is_local.
        DATA t246 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t246.
        DATA(t249) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t249->has = abap_true.
        t249->value = abap_true.
        t246 = t249.
        DATA(t251) = VALUE abap_bool( ).
        DATA(t252) = VALUE abap_bool( ).
        IF t244 IS BOUND.
          t251 = t244->has.
        ENDIF.
        IF t246 IS BOUND.
          t252 = t246->has.
        ENDIF.
        IF t251 = t252.
          IF t251 = abap_false.
            t243 = abap_true.
          ELSEIF t244->value = t246->value.
            t243 = abap_true.
          ENDIF.
        ENDIF.
        t238 = t243.
      ENDIF.
      IF t238 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t255 = t233->methods.
      t253 = t17->concat( p0 = t255 ).
      t17 = t253.
      DATA t257 TYPE abap_bool.
      DATA t258 TYPE abap_bool.
      t258 = me->conf->zlnt_view_read_sr_566d7b4baf0b( ).
      t257 = xsdbool( t258 = abap_true ).
      IF t257 = abap_true.
        DATA t261 TYPE f.
        DATA t262 TYPE f.
        DATA t263 TYPE f.
        DATA t267 TYPE REF TO zcl_lnt_fi_identifier.
        t267 = t233->identifier.
        DATA t271 TYPE REF TO zcl_lnt_abstract_token.
        t271 = t267->token.
        DATA t273 TYPE REF TO zcl_lnt_position.
        t273 = t271->start.
        DATA t275 TYPE f.
        t275 = t273->row.
        t263 = t275.
        DATA(t277) = CONV f( 2 ).
        t262 = t263 - t277.
        t261 = t262.
        DATA(t278) = VALUE abap_bool( ).
        DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t279.
        DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t280.
        DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t282.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t283.
        DATA(t285) = VALUE i( ).
        IF t261 > range_i32_upper.
          t285 = range_i32_upper.
        ELSEIF t261 < range_i32_lower.
          t285 = range_i32_lower.
        ELSE.
          t285 = trunc( t261 ).
        ENDIF.
        t283 = t4->get( p0 = t285 ).
        t282 = t283.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        DATA(t288) = VALUE abap_bool( ).
        IF t282 IS INITIAL.
          t288 = abap_true.
        ELSEIF t282->has = abap_false.
          t288 = abap_true.
        ENDIF.
        IF t288 = abap_true.
          CLEAR t287.
        ELSE.
          DATA(t291) = VALUE string( ).
          DATA t292 TYPE string.
          t292 = t282->value.
          DATA(t294) = strlen( t292 ).
          DATA t295 TYPE i.
          DATA t296 TYPE i.
          t295 = 0.
          t296 = t294.
          DATA(t297) = VALUE i( ).
          DATA(t298) = VALUE i( ).
          DATA(t299) = VALUE string( ).
          WHILE t295 < t296.
            t298 = t295.
            t299 = t292+t298(1).
            DATA t300 TYPE c LENGTH 1.
            CLEAR t300.
            DATA(t301) = VALUE xstring( ).
            DATA t302 TYPE x LENGTH 1.
            CLEAR t302.
            DATA t303 TYPE x LENGTH 1.
            CLEAR t303.
            DATA(t304) = VALUE i( ).
            t300 = t299.
            t297 = cl_abap_conv_out_ce=>uccpi( t300 ).
            IF t297 >= 255.
              IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
                zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t299 IMPORTING buffer = t301 ).
              t302 = t301(1).
              t303 = t301+1(1).
              t297 = t302.
              t304 = t303.
              t297 = t297 + t304 * 256.
            ENDIF.
            IF t297 = 9 OR t297 = 10 OR t297 = 11 OR t297 = 12 OR t297 = 13 OR t297 = 32 OR t297 = 160 OR t297 = 5760 OR t297 = 8232 OR t297 = 8233 OR t297 = 8239 OR t297 = 8287 OR t297 = 12288 OR t297 = 65279 OR t297 >= 8192 AND t297 <= 8202.
              t295 = t295 + 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          DATA(t305) = VALUE i( ).
          DATA(t306) = VALUE i( ).
          DATA(t307) = VALUE string( ).
          WHILE t296 > t295.
            t306 = t296 - 1.
            t307 = t292+t306(1).
            DATA t308 TYPE c LENGTH 1.
            CLEAR t308.
            DATA(t309) = VALUE xstring( ).
            DATA t310 TYPE x LENGTH 1.
            CLEAR t310.
            DATA t311 TYPE x LENGTH 1.
            CLEAR t311.
            DATA(t312) = VALUE i( ).
            t308 = t307.
            t305 = cl_abap_conv_out_ce=>uccpi( t308 ).
            IF t305 >= 255.
              IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
                zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
              ENDIF.
              zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t307 IMPORTING buffer = t309 ).
              t310 = t309(1).
              t311 = t309+1(1).
              t305 = t310.
              t312 = t311.
              t305 = t305 + t312 * 256.
            ENDIF.
            IF t305 = 9 OR t305 = 10 OR t305 = 11 OR t305 = 12 OR t305 = 13 OR t305 = 32 OR t305 = 160 OR t305 = 5760 OR t305 = 8232 OR t305 = 8233 OR t305 = 8239 OR t305 = 8287 OR t305 = 12288 OR t305 = 65279 OR t305 >= 8192 AND t305 <= 8202.
              t296 = t296 - 1.
            ELSE.
              EXIT.
            ENDIF.
          ENDWHILE.
          IF t296 > t295.
            t294 = t296 - t295.
            t291 = t292+t295(t294).
          ELSE.
            CLEAR t291.
          ENDIF.
          DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t313->has = abap_true.
          t313->value = t291.
          t287 = t313.
        ENDIF.
        t280 = t287.
        DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t314.
        DATA(t315) = VALUE abap_bool( ).
        IF t280 IS INITIAL.
          t315 = abap_true.
        ELSEIF t280->has = abap_false.
          t315 = abap_true.
        ENDIF.
        IF t315 = abap_true.
          CLEAR t314.
        ELSE.
          DATA(t318) = VALUE string( ).
          DATA t319 TYPE string.
          t319 = t280->value.
          DATA(t321) = 0.
          DATA(t322) = 2.
          DATA(t323) = strlen( t319 ).
          t321 = COND i( WHEN t321 < 0 THEN 0 WHEN t321 > t323 THEN t323 ELSE t321 ).
          t322 = COND i( WHEN t322 < 0 THEN 0 WHEN t322 > t323 THEN t323 ELSE t322 ).
          IF t321 > t322.
            t323 = t321.
            t321 = t322.
            t322 = t323.
          ENDIF.
          t323 = t322 - t321.
          t318 = t319+t321(t323).
          DATA(t324) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t324->has = abap_true.
          t324->value = t318.
          t314 = t324.
        ENDIF.
        t279 = t314.
        DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t325.
        DATA(t327) = |"!|.
        DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t328->has = abap_true.
        t328->value = t327.
        t325 = t328.
        DATA(t330) = VALUE abap_bool( ).
        DATA(t331) = VALUE abap_bool( ).
        IF t279 IS BOUND.
          t330 = t279->has.
        ENDIF.
        IF t325 IS BOUND.
          t331 = t325->has.
        ENDIF.
        IF t330 = t331.
          IF t330 = abap_false.
            t278 = abap_true.
          ELSEIF t279->value = t325->value.
            t278 = abap_true.
          ENDIF.
        ENDIF.
        IF t278 = abap_true.
          t278 = abap_false.
        ELSE.
          t278 = abap_true.
        ENDIF.
        IF t278 = abap_true.
          DATA t333 TYPE string.
          DATA(t334) = |Missing ABAP Doc for interface |.
          DATA t335 TYPE string.
          DATA t339 TYPE REF TO zcl_lnt_fi_identifier.
          t339 = t233->identifier.
          DATA t341 TYPE REF TO zcl_lnt_abstract_token.
          t341 = t339->token.
          DATA t343 TYPE string.
          t343 = t341->str.
          t335 = t343.
          DATA(t345) = strlen( t334 ).
          t333 = |{ t334 }{ t335 }|.
          DATA t347 TYPE REF TO zcl_lnt_issue.
          CLEAR t347.
          DATA t348 TYPE REF TO zcl_lnt_fi_identifier.
          t348 = t233->identifier.
          DATA(t351) = VALUE string( ).
          DATA t352 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t352.
          DATA t353 TYPE string.
          t353 = |abapdoc|.
          DATA t355 TYPE string.
          t355 = |Check abapdoc|.
          DATA t357 TYPE string.
          t357 = |Various checks regarding abapdoc.|.
          DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t359.
          DATA(t362) = |Base rule checks for existence of abapdoc for public class m|.
          t362 = t362 && |ethods and all interface methods.\n\nPlus class and interface |.
          t362 = t362 && |definitions.\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t362 = t362 && |lean-abap/CleanABAP.md#abap-doc-only-for-public-apis|.
          DATA(t363) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t363->has = abap_true.
          t363->value = t362.
          t359 = t363.
          DATA t365 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t365.
          DATA t369 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t370 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t370.
          t369 = t370.
          DATA(t372) = |SingleFile|.
          t369->load( ).
          APPEND t372 TO t369->items.
          t369->save( ).
          DATA(t374) = |Styleguide|.
          t369->load( ).
          APPEND t374 TO t369->items.
          t369->save( ).
          t365 = t369.
          DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t377.
          DATA t379 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t379.
          DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t381.
          DATA t383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t383.
          t352 = NEW zcl_lnt_irule_metadata( i_key = t353 i_title = t355 i_short_description = t357 i_bad_example = t377 i_good_example = t379 i_extended_information = t359 i_tags = t365 i_pragma = t381 i_pseudo_comment = t383 ).
          CREATE OBJECT t352->zlnt_view_ownkeys_b0e8086400eb.
          t352->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t385.
          t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t385 ).
          DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t386.
          IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t386 ).
          ENDIF.
          DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t387.
          IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t387 ).
          ENDIF.
          DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t388.
          IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t388 ).
          ENDIF.
          DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t389.
          IF t352->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t352->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t389 ).
          ENDIF.
          CREATE OBJECT t352->zlnt_json_ownkeys_70e5fd461788.
          t352->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t390) = |key|.
          DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t391.
          t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t390 p1 = t391 ).
          DATA(t392) = |title|.
          DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t393.
          IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t392 p1 = t393 ).
          ENDIF.
          DATA(t394) = |shortDescription|.
          DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t395.
          IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t394 p1 = t395 ).
          ENDIF.
          DATA(t396) = |extendedInformation|.
          DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t397.
          IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t396 p1 = t397 ).
          ENDIF.
          DATA(t398) = |tags|.
          DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t399.
          IF t352->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t352->zlnt_json_ownkeys_70e5fd461788->put( p0 = t398 p1 = t399 ).
          ENDIF.
          t351 = t352->key.
          DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t400 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t402 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t402.
          t347 = zcl_lnt_issue=>at_identifier( i_identifier = t348 i_message_26cb = t333 i_key = t351 i_severity = t400 i_fix = t402 ).
          t2->load( ).
          APPEND t347 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t406 TYPE REF TO zcl_lnt_info_method_definition.
    DATA t407 TYPE REF TO object.
    DATA(t408) = VALUE i( ).
    DO.
      t17->load( ).
      IF t408 >= lines( t17->items ).
        EXIT.
      ENDIF.
      CLEAR t407.
      READ TABLE t17->items INDEX t408 + 1 INTO t407.
      t408 = t408 + 1.
      DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t409.
      CLEAR t406.
      IF t407 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t409 ?= t407.
        DATA t410 TYPE REF TO object.
        t410 = t409->as_ref( ).
        t406 ?= t410.
      ELSE.
        t406 ?= t407.
      ENDIF.
      DATA t411 TYPE abap_bool.
      DATA t412 TYPE abap_bool.
      t412 = t406->is_redefinition.
      t411 = xsdbool( t412 = abap_true ).
      IF t411 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t415 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t416 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t418 TYPE REF TO zcl_lnt_position.
      DATA t420 TYPE REF TO zcl_lnt_fi_identifier.
      t420 = t406->identifier.
      DATA t424 TYPE REF TO zcl_lnt_abstract_token.
      t424 = t420->token.
      DATA t426 TYPE REF TO zcl_lnt_position.
      t426 = t424->start.
      t418 = t426.
      t416 = me->get_abapdoc( i_rows = t4 i_pos = t418 ).
      t415 = t416.
      DATA(t428) = VALUE abap_bool( ).
      DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t431.
      t428 = xsdbool( t415 IS INITIAL ).
      IF t428 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t436) = VALUE string( ).
      t415->dense( ).
      DATA(t437) = VALUE i( ).
      DO.
        t415->load( ).
        IF t437 >= lines( t415->items ).
          EXIT.
        ENDIF.
        CLEAR t436.
        READ TABLE t415->items INDEX t437 + 1 INTO t436.
        IF t415->has( t437 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t437 = t437 + 1.
        DATA(t438) = VALUE abap_bool( ).
        DATA t440 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t440.
        DATA(t441) = VALUE string( ).
        DATA(t442) = VALUE string( ).
        DATA(t444) = strlen( t436 ).
        DATA t445 TYPE i.
        DATA t446 TYPE i.
        t445 = 0.
        t446 = t444.
        DATA(t447) = VALUE i( ).
        DATA(t448) = VALUE i( ).
        DATA(t449) = VALUE string( ).
        WHILE t445 < t446.
          t448 = t445.
          t449 = t436+t448(1).
          DATA t450 TYPE c LENGTH 1.
          CLEAR t450.
          DATA(t451) = VALUE xstring( ).
          DATA t452 TYPE x LENGTH 1.
          CLEAR t452.
          DATA t453 TYPE x LENGTH 1.
          CLEAR t453.
          DATA(t454) = VALUE i( ).
          t450 = t449.
          t447 = cl_abap_conv_out_ce=>uccpi( t450 ).
          IF t447 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t449 IMPORTING buffer = t451 ).
            t452 = t451(1).
            t453 = t451+1(1).
            t447 = t452.
            t454 = t453.
            t447 = t447 + t454 * 256.
          ENDIF.
          IF t447 = 9 OR t447 = 10 OR t447 = 11 OR t447 = 12 OR t447 = 13 OR t447 = 32 OR t447 = 160 OR t447 = 5760 OR t447 = 8232 OR t447 = 8233 OR t447 = 8239 OR t447 = 8287 OR t447 = 12288 OR t447 = 65279 OR t447 >= 8192 AND t447 <= 8202.
            t445 = t445 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t455) = VALUE i( ).
        DATA(t456) = VALUE i( ).
        DATA(t457) = VALUE string( ).
        WHILE t446 > t445.
          t456 = t446 - 1.
          t457 = t436+t456(1).
          DATA t458 TYPE c LENGTH 1.
          CLEAR t458.
          DATA(t459) = VALUE xstring( ).
          DATA t460 TYPE x LENGTH 1.
          CLEAR t460.
          DATA t461 TYPE x LENGTH 1.
          CLEAR t461.
          DATA(t462) = VALUE i( ).
          t458 = t457.
          t455 = cl_abap_conv_out_ce=>uccpi( t458 ).
          IF t455 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t457 IMPORTING buffer = t459 ).
            t460 = t459(1).
            t461 = t459+1(1).
            t455 = t460.
            t462 = t461.
            t455 = t455 + t462 * 256.
          ENDIF.
          IF t455 = 9 OR t455 = 10 OR t455 = 11 OR t455 = 12 OR t455 = 13 OR t455 = 32 OR t455 = 160 OR t455 = 5760 OR t455 = 8232 OR t455 = 8233 OR t455 = 8239 OR t455 = 8287 OR t455 = 12288 OR t455 = 65279 OR t455 >= 8192 AND t455 <= 8202.
            t446 = t446 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t446 > t445.
          t444 = t446 - t445.
          t442 = t436+t445(t444).
        ELSE.
          CLEAR t442.
        ENDIF.
        t441 = t442.
        DATA t463 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t465 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t465.
        DATA(t467) = ||.
        CREATE OBJECT t465 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t11 flags = t467.
        t463 = t465->match( t441 ).
        t440 = t463.
        DATA(t439) = xsdbool( t440 IS INITIAL ).
        t438 = xsdbool( t439 = abap_false ).
        IF t438 = abap_true.
          DATA t469 TYPE string.
          DATA t470 TYPE string.
          DATA t471 TYPE string.
          DATA t472 TYPE string.
          DATA(t473) = |Empty tag(s) in ABAP Doc for method |.
          DATA t474 TYPE string.
          DATA t478 TYPE REF TO zcl_lnt_fi_identifier.
          t478 = t406->identifier.
          DATA t480 TYPE REF TO zcl_lnt_abstract_token.
          t480 = t478->token.
          DATA t482 TYPE string.
          t482 = t480->str.
          t474 = t482.
          DATA(t484) = strlen( t473 ).
          t472 = |{ t473 }{ t474 }|.
          DATA(t485) = | (|.
          DATA(t486) = strlen( t472 ).
          t471 = |{ t472 }{ t485 }|.
          DATA(t488) = strlen( t471 ).
          t470 = |{ t471 }{ t436 }|.
          DATA(t489) = |)|.
          DATA(t490) = strlen( t470 ).
          t469 = |{ t470 }{ t489 }|.
          DATA t492 TYPE REF TO zcl_lnt_issue.
          CLEAR t492.
          DATA t493 TYPE REF TO zcl_lnt_fi_identifier.
          t493 = t406->identifier.
          DATA(t496) = VALUE string( ).
          DATA t497 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t497.
          DATA t498 TYPE string.
          t498 = |abapdoc|.
          DATA t500 TYPE string.
          t500 = |Check abapdoc|.
          DATA t502 TYPE string.
          t502 = |Various checks regarding abapdoc.|.
          DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t504.
          DATA(t507) = |Base rule checks for existence of abapdoc for public class m|.
          t507 = t507 && |ethods and all interface methods.\n\nPlus class and interface |.
          t507 = t507 && |definitions.\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t507 = t507 && |lean-abap/CleanABAP.md#abap-doc-only-for-public-apis|.
          DATA(t508) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t508->has = abap_true.
          t508->value = t507.
          t504 = t508.
          DATA t510 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t510.
          DATA t514 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t515 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t515.
          t514 = t515.
          DATA(t517) = |SingleFile|.
          t514->load( ).
          APPEND t517 TO t514->items.
          t514->save( ).
          DATA(t519) = |Styleguide|.
          t514->load( ).
          APPEND t519 TO t514->items.
          t514->save( ).
          t510 = t514.
          DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t522.
          DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t524.
          DATA t526 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t526.
          DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t528.
          t497 = NEW zcl_lnt_irule_metadata( i_key = t498 i_title = t500 i_short_description = t502 i_bad_example = t522 i_good_example = t524 i_extended_information = t504 i_tags = t510 i_pragma = t526 i_pseudo_comment = t528 ).
          CREATE OBJECT t497->zlnt_view_ownkeys_b0e8086400eb.
          t497->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t530.
          t497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t530 ).
          DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t531.
          IF t497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t531 ).
          ENDIF.
          DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t532.
          IF t497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t532 ).
          ENDIF.
          DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t533.
          IF t497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t533 ).
          ENDIF.
          DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t534.
          IF t497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t534 ).
          ENDIF.
          CREATE OBJECT t497->zlnt_json_ownkeys_70e5fd461788.
          t497->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t535) = |key|.
          DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t536.
          t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t535 p1 = t536 ).
          DATA(t537) = |title|.
          DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t538.
          IF t497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t537 p1 = t538 ).
          ENDIF.
          DATA(t539) = |shortDescription|.
          DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t540.
          IF t497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t539 p1 = t540 ).
          ENDIF.
          DATA(t541) = |extendedInformation|.
          DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t542.
          IF t497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t541 p1 = t542 ).
          ENDIF.
          DATA(t543) = |tags|.
          DATA t544 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t544.
          IF t497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t497->zlnt_json_ownkeys_70e5fd461788->put( p0 = t543 p1 = t544 ).
          ENDIF.
          t496 = t497->key.
          DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t545 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t547 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t547.
          t492 = zcl_lnt_issue=>at_identifier( i_identifier = t493 i_message_26cb = t469 i_key = t496 i_severity = t545 i_fix = t547 ).
          t2->load( ).
          APPEND t492 TO t2->items.
          t2->save( ).
        ENDIF.
        DATA(t550) = VALUE abap_bool( ).
        DATA t552 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t552.
        DATA(t553) = VALUE string( ).
        DATA(t554) = VALUE string( ).
        DATA(t556) = strlen( t436 ).
        DATA t557 TYPE i.
        DATA t558 TYPE i.
        t557 = 0.
        t558 = t556.
        DATA(t559) = VALUE i( ).
        DATA(t560) = VALUE i( ).
        DATA(t561) = VALUE string( ).
        WHILE t557 < t558.
          t560 = t557.
          t561 = t436+t560(1).
          DATA t562 TYPE c LENGTH 1.
          CLEAR t562.
          DATA(t563) = VALUE xstring( ).
          DATA t564 TYPE x LENGTH 1.
          CLEAR t564.
          DATA t565 TYPE x LENGTH 1.
          CLEAR t565.
          DATA(t566) = VALUE i( ).
          t562 = t561.
          t559 = cl_abap_conv_out_ce=>uccpi( t562 ).
          IF t559 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t561 IMPORTING buffer = t563 ).
            t564 = t563(1).
            t565 = t563+1(1).
            t559 = t564.
            t566 = t565.
            t559 = t559 + t566 * 256.
          ENDIF.
          IF t559 = 9 OR t559 = 10 OR t559 = 11 OR t559 = 12 OR t559 = 13 OR t559 = 32 OR t559 = 160 OR t559 = 5760 OR t559 = 8232 OR t559 = 8233 OR t559 = 8239 OR t559 = 8287 OR t559 = 12288 OR t559 = 65279 OR t559 >= 8192 AND t559 <= 8202.
            t557 = t557 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t567) = VALUE i( ).
        DATA(t568) = VALUE i( ).
        DATA(t569) = VALUE string( ).
        WHILE t558 > t557.
          t568 = t558 - 1.
          t569 = t436+t568(1).
          DATA t570 TYPE c LENGTH 1.
          CLEAR t570.
          DATA(t571) = VALUE xstring( ).
          DATA t572 TYPE x LENGTH 1.
          CLEAR t572.
          DATA t573 TYPE x LENGTH 1.
          CLEAR t573.
          DATA(t574) = VALUE i( ).
          t570 = t569.
          t567 = cl_abap_conv_out_ce=>uccpi( t570 ).
          IF t567 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t569 IMPORTING buffer = t571 ).
            t572 = t571(1).
            t573 = t571+1(1).
            t567 = t572.
            t574 = t573.
            t567 = t567 + t574 * 256.
          ENDIF.
          IF t567 = 9 OR t567 = 10 OR t567 = 11 OR t567 = 12 OR t567 = 13 OR t567 = 32 OR t567 = 160 OR t567 = 5760 OR t567 = 8232 OR t567 = 8233 OR t567 = 8239 OR t567 = 8287 OR t567 = 12288 OR t567 = 65279 OR t567 >= 8192 AND t567 <= 8202.
            t558 = t558 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t558 > t557.
          t556 = t558 - t557.
          t554 = t436+t557(t556).
        ELSE.
          CLEAR t554.
        ENDIF.
        t553 = t554.
        DATA t575 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t577 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t577.
        DATA(t579) = ||.
        CREATE OBJECT t577 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t13 flags = t579.
        t575 = t577->match( t553 ).
        t552 = t575.
        DATA(t551) = xsdbool( t552 IS INITIAL ).
        t550 = t551.
        IF t551 = abap_true.
          DATA t580 TYPE abap_bool.
          DATA t581 TYPE i.
          t581 = t415->indexof( p0 = t436 ).
          DATA t584 TYPE i.
          DATA t585 TYPE i.
          t415->load( ).
          t585 = lines( t415->items ).
          DATA(t587) = 1.
          t584 = t585 - t587.
          t580 = xsdbool( t581 = t584 ).
          t550 = t580.
        ENDIF.
        IF t550 = abap_true.
          DATA t589 TYPE string.
          DATA(t590) = |Missing ABAP Doc for method |.
          DATA t591 TYPE string.
          DATA t595 TYPE REF TO zcl_lnt_fi_identifier.
          t595 = t406->identifier.
          DATA t597 TYPE REF TO zcl_lnt_abstract_token.
          t597 = t595->token.
          DATA t599 TYPE string.
          t599 = t597->str.
          t591 = t599.
          DATA(t601) = strlen( t590 ).
          t589 = |{ t590 }{ t591 }|.
          DATA t603 TYPE REF TO zcl_lnt_issue.
          CLEAR t603.
          DATA t604 TYPE REF TO zcl_lnt_fi_identifier.
          t604 = t406->identifier.
          DATA(t607) = VALUE string( ).
          DATA t608 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t608.
          DATA t609 TYPE string.
          t609 = |abapdoc|.
          DATA t611 TYPE string.
          t611 = |Check abapdoc|.
          DATA t613 TYPE string.
          t613 = |Various checks regarding abapdoc.|.
          DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t615.
          DATA(t618) = |Base rule checks for existence of abapdoc for public class m|.
          t618 = t618 && |ethods and all interface methods.\n\nPlus class and interface |.
          t618 = t618 && |definitions.\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t618 = t618 && |lean-abap/CleanABAP.md#abap-doc-only-for-public-apis|.
          DATA(t619) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t619->has = abap_true.
          t619->value = t618.
          t615 = t619.
          DATA t621 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t621.
          DATA t625 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t626 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t626.
          t625 = t626.
          DATA(t628) = |SingleFile|.
          t625->load( ).
          APPEND t628 TO t625->items.
          t625->save( ).
          DATA(t630) = |Styleguide|.
          t625->load( ).
          APPEND t630 TO t625->items.
          t625->save( ).
          t621 = t625.
          DATA t633 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t633.
          DATA t635 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t635.
          DATA t637 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t637.
          DATA t639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t639.
          t608 = NEW zcl_lnt_irule_metadata( i_key = t609 i_title = t611 i_short_description = t613 i_bad_example = t633 i_good_example = t635 i_extended_information = t615 i_tags = t621 i_pragma = t637 i_pseudo_comment = t639 ).
          CREATE OBJECT t608->zlnt_view_ownkeys_b0e8086400eb.
          t608->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t641.
          t608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t641 ).
          DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t642.
          IF t608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t642 ).
          ENDIF.
          DATA t643 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t643.
          IF t608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t643 ).
          ENDIF.
          DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t644.
          IF t608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t644 ).
          ENDIF.
          DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t645.
          IF t608->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t608->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t645 ).
          ENDIF.
          CREATE OBJECT t608->zlnt_json_ownkeys_70e5fd461788.
          t608->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t646) = |key|.
          DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t647.
          t608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t646 p1 = t647 ).
          DATA(t648) = |title|.
          DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t649.
          IF t608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t648 p1 = t649 ).
          ENDIF.
          DATA(t650) = |shortDescription|.
          DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t651.
          IF t608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t650 p1 = t651 ).
          ENDIF.
          DATA(t652) = |extendedInformation|.
          DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t653.
          IF t608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t652 p1 = t653 ).
          ENDIF.
          DATA(t654) = |tags|.
          DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t655.
          IF t608->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t608->zlnt_json_ownkeys_70e5fd461788->put( p0 = t654 p1 = t655 ).
          ENDIF.
          t607 = t608->key.
          DATA t656 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t656 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t658 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t658.
          t603 = zcl_lnt_issue=>at_identifier( i_identifier = t604 i_message_26cb = t589 i_key = t607 i_severity = t656 i_fix = t658 ).
          t2->load( ).
          APPEND t603 TO t2->items.
          t2->save( ).
        ENDIF.
        DATA(t661) = VALUE abap_bool( ).
        DATA t663 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t663.
        DATA(t664) = VALUE string( ).
        DATA(t665) = VALUE string( ).
        DATA(t667) = strlen( t436 ).
        DATA t668 TYPE i.
        DATA t669 TYPE i.
        t668 = 0.
        t669 = t667.
        DATA(t670) = VALUE i( ).
        DATA(t671) = VALUE i( ).
        DATA(t672) = VALUE string( ).
        WHILE t668 < t669.
          t671 = t668.
          t672 = t436+t671(1).
          DATA t673 TYPE c LENGTH 1.
          CLEAR t673.
          DATA(t674) = VALUE xstring( ).
          DATA t675 TYPE x LENGTH 1.
          CLEAR t675.
          DATA t676 TYPE x LENGTH 1.
          CLEAR t676.
          DATA(t677) = VALUE i( ).
          t673 = t672.
          t670 = cl_abap_conv_out_ce=>uccpi( t673 ).
          IF t670 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t672 IMPORTING buffer = t674 ).
            t675 = t674(1).
            t676 = t674+1(1).
            t670 = t675.
            t677 = t676.
            t670 = t670 + t677 * 256.
          ENDIF.
          IF t670 = 9 OR t670 = 10 OR t670 = 11 OR t670 = 12 OR t670 = 13 OR t670 = 32 OR t670 = 160 OR t670 = 5760 OR t670 = 8232 OR t670 = 8233 OR t670 = 8239 OR t670 = 8287 OR t670 = 12288 OR t670 = 65279 OR t670 >= 8192 AND t670 <= 8202.
            t668 = t668 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t678) = VALUE i( ).
        DATA(t679) = VALUE i( ).
        DATA(t680) = VALUE string( ).
        WHILE t669 > t668.
          t679 = t669 - 1.
          t680 = t436+t679(1).
          DATA t681 TYPE c LENGTH 1.
          CLEAR t681.
          DATA(t682) = VALUE xstring( ).
          DATA t683 TYPE x LENGTH 1.
          CLEAR t683.
          DATA t684 TYPE x LENGTH 1.
          CLEAR t684.
          DATA(t685) = VALUE i( ).
          t681 = t680.
          t678 = cl_abap_conv_out_ce=>uccpi( t681 ).
          IF t678 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t680 IMPORTING buffer = t682 ).
            t683 = t682(1).
            t684 = t682+1(1).
            t678 = t683.
            t685 = t684.
            t678 = t678 + t685 * 256.
          ENDIF.
          IF t678 = 9 OR t678 = 10 OR t678 = 11 OR t678 = 12 OR t678 = 13 OR t678 = 32 OR t678 = 160 OR t678 = 5760 OR t678 = 8232 OR t678 = 8233 OR t678 = 8239 OR t678 = 8287 OR t678 = 12288 OR t678 = 65279 OR t678 >= 8192 AND t678 <= 8202.
            t669 = t669 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t669 > t668.
          t667 = t669 - t668.
          t665 = t436+t668(t667).
        ELSE.
          CLEAR t665.
        ENDIF.
        t664 = t665.
        DATA t686 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t688 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t688.
        DATA(t690) = ||.
        CREATE OBJECT t688 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t15 flags = t690.
        t686 = t688->match( t664 ).
        t663 = t686.
        DATA(t662) = xsdbool( t663 IS INITIAL ).
        t661 = xsdbool( t662 = abap_false ).
        IF t661 = abap_true.
          DATA t692 TYPE string.
          DATA(t693) = |Missing ABAP Doc parameter name for method |.
          DATA t694 TYPE string.
          DATA t698 TYPE REF TO zcl_lnt_fi_identifier.
          t698 = t406->identifier.
          DATA t700 TYPE REF TO zcl_lnt_abstract_token.
          t700 = t698->token.
          DATA t702 TYPE string.
          t702 = t700->str.
          t694 = t702.
          DATA(t704) = strlen( t693 ).
          t692 = |{ t693 }{ t694 }|.
          DATA t706 TYPE REF TO zcl_lnt_issue.
          CLEAR t706.
          DATA t707 TYPE REF TO zcl_lnt_fi_identifier.
          t707 = t406->identifier.
          DATA(t710) = VALUE string( ).
          DATA t711 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t711.
          DATA t712 TYPE string.
          t712 = |abapdoc|.
          DATA t714 TYPE string.
          t714 = |Check abapdoc|.
          DATA t716 TYPE string.
          t716 = |Various checks regarding abapdoc.|.
          DATA t718 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t718.
          DATA(t721) = |Base rule checks for existence of abapdoc for public class m|.
          t721 = t721 && |ethods and all interface methods.\n\nPlus class and interface |.
          t721 = t721 && |definitions.\n\nhttps://github.com/SAP/styleguides/blob/main/c|.
          t721 = t721 && |lean-abap/CleanABAP.md#abap-doc-only-for-public-apis|.
          DATA(t722) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t722->has = abap_true.
          t722->value = t721.
          t718 = t722.
          DATA t724 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t724.
          DATA t728 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t729 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t729.
          t728 = t729.
          DATA(t731) = |SingleFile|.
          t728->load( ).
          APPEND t731 TO t728->items.
          t728->save( ).
          DATA(t733) = |Styleguide|.
          t728->load( ).
          APPEND t733 TO t728->items.
          t728->save( ).
          t724 = t728.
          DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t736.
          DATA t738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t738.
          DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t740.
          DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t742.
          t711 = NEW zcl_lnt_irule_metadata( i_key = t712 i_title = t714 i_short_description = t716 i_bad_example = t736 i_good_example = t738 i_extended_information = t718 i_tags = t724 i_pragma = t740 i_pseudo_comment = t742 ).
          CREATE OBJECT t711->zlnt_view_ownkeys_b0e8086400eb.
          t711->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t744.
          t711->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t744 ).
          DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t745.
          IF t711->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t711->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t745 ).
          ENDIF.
          DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t746.
          IF t711->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t711->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t746 ).
          ENDIF.
          DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t747.
          IF t711->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t711->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t747 ).
          ENDIF.
          DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t748.
          IF t711->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t711->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t748 ).
          ENDIF.
          CREATE OBJECT t711->zlnt_json_ownkeys_70e5fd461788.
          t711->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t749) = |key|.
          DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t750.
          t711->zlnt_json_ownkeys_70e5fd461788->put( p0 = t749 p1 = t750 ).
          DATA(t751) = |title|.
          DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t752.
          IF t711->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t711->zlnt_json_ownkeys_70e5fd461788->put( p0 = t751 p1 = t752 ).
          ENDIF.
          DATA(t753) = |shortDescription|.
          DATA t754 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t754.
          IF t711->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t711->zlnt_json_ownkeys_70e5fd461788->put( p0 = t753 p1 = t754 ).
          ENDIF.
          DATA(t755) = |extendedInformation|.
          DATA t756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t756.
          IF t711->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t711->zlnt_json_ownkeys_70e5fd461788->put( p0 = t755 p1 = t756 ).
          ENDIF.
          DATA(t757) = |tags|.
          DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t758.
          IF t711->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t711->zlnt_json_ownkeys_70e5fd461788->put( p0 = t757 p1 = t758 ).
          ENDIF.
          t710 = t711->key.
          DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t759 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t761 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t761.
          t706 = zcl_lnt_issue=>at_identifier( i_identifier = t707 i_message_26cb = t692 i_key = t710 i_severity = t759 i_fix = t761 ).
          t2->load( ).
          APPEND t706 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_abapdoc.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_rows.
    DATA t3 TYPE f.
    DATA t4 TYPE f.
    DATA t5 TYPE f.
    DATA t8 TYPE f.
    t8 = i_pos->row.
    t5 = t8.
    DATA(t10) = CONV f( 2 ).
    t4 = t5 - t10.
    t3 = t4.
    DATA(t11) = VALUE string( ).
    DATA(t12) = VALUE string( ).
    DATA(t13) = VALUE string( ).
    DATA(t14) = VALUE string( ).
    DATA(t16) = VALUE i( ).
    DATA(t17) = t3.
    IF t17 > range_i32_upper.
      t16 = range_i32_upper.
    ELSEIF t17 < range_i32_lower.
      t16 = range_i32_lower.
    ELSE.
      t16 = trunc( t17 ).
    ENDIF.
    t16 = t16 + 1.
    IF t1->has( t16 - 1 ) = abap_false.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t1->load( ).
    CLEAR t14.
    READ TABLE t1->items INDEX t16 INTO t14.
    DATA(t18) = strlen( t14 ).
    DATA t19 TYPE i.
    DATA t20 TYPE i.
    t19 = 0.
    t20 = t18.
    DATA(t21) = VALUE i( ).
    DATA(t22) = VALUE i( ).
    DATA(t23) = VALUE string( ).
    WHILE t19 < t20.
      t22 = t19.
      t23 = t14+t22(1).
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      DATA(t25) = VALUE xstring( ).
      DATA t26 TYPE x LENGTH 1.
      CLEAR t26.
      DATA t27 TYPE x LENGTH 1.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      t24 = t23.
      t21 = cl_abap_conv_out_ce=>uccpi( t24 ).
      IF t21 >= 255.
        IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
          zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t23 IMPORTING buffer = t25 ).
        t26 = t25(1).
        t27 = t25+1(1).
        t21 = t26.
        t28 = t27.
        t21 = t21 + t28 * 256.
      ENDIF.
      IF t21 = 9 OR t21 = 10 OR t21 = 11 OR t21 = 12 OR t21 = 13 OR t21 = 32 OR t21 = 160 OR t21 = 5760 OR t21 = 8232 OR t21 = 8233 OR t21 = 8239 OR t21 = 8287 OR t21 = 12288 OR t21 = 65279 OR t21 >= 8192 AND t21 <= 8202.
        t19 = t19 + 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    DATA(t29) = VALUE i( ).
    DATA(t30) = VALUE i( ).
    DATA(t31) = VALUE string( ).
    WHILE t20 > t19.
      t30 = t20 - 1.
      t31 = t14+t30(1).
      DATA t32 TYPE c LENGTH 1.
      CLEAR t32.
      DATA(t33) = VALUE xstring( ).
      DATA t34 TYPE x LENGTH 1.
      CLEAR t34.
      DATA t35 TYPE x LENGTH 1.
      CLEAR t35.
      DATA(t36) = VALUE i( ).
      t32 = t31.
      t29 = cl_abap_conv_out_ce=>uccpi( t32 ).
      IF t29 >= 255.
        IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
          zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t31 IMPORTING buffer = t33 ).
        t34 = t33(1).
        t35 = t33+1(1).
        t29 = t34.
        t36 = t35.
        t29 = t29 + t36 * 256.
      ENDIF.
      IF t29 = 9 OR t29 = 10 OR t29 = 11 OR t29 = 12 OR t29 = 13 OR t29 = 32 OR t29 = 160 OR t29 = 5760 OR t29 = 8232 OR t29 = 8233 OR t29 = 8239 OR t29 = 8287 OR t29 = 12288 OR t29 = 65279 OR t29 >= 8192 AND t29 <= 8202.
        t20 = t20 - 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    IF t20 > t19.
      t18 = t20 - t19.
      t13 = t14+t19(t18).
    ELSE.
      CLEAR t13.
    ENDIF.
    DATA(t37) = strlen( t13 ).
    t12 = t13.
    IF t12 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t12 TO UPPER CASE.
    ELSE.
      t12 = zlnt_runtime_uppe_91169605024d=>full( t12 ).
    ENDIF.
    t11 = t12.
    DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t39.
    t38 = t39.
    DATA t40 TYPE abap_bool.
    DATA t41 TYPE abap_bool.
    DATA(t43) = |METHODS|.
    t41 = xsdbool( t11 = t43 ).
    t40 = t41.
    IF t41 = abap_false.
      DATA t44 TYPE abap_bool.
      DATA(t46) = |CLASS-METHODS|.
      t44 = xsdbool( t11 = t46 ).
      t40 = t44.
    ENDIF.
    IF t40 = abap_true.
      DATA t47 TYPE f.
      DATA(t49) = CONV f( 1 ).
      t47 = t3 - t49.
      t3 = t47.
      DATA(t50) = VALUE string( ).
      DATA(t51) = VALUE string( ).
      DATA(t52) = VALUE string( ).
      DATA(t54) = VALUE i( ).
      DATA(t55) = t3.
      IF t55 > range_i32_upper.
        t54 = range_i32_upper.
      ELSEIF t55 < range_i32_lower.
        t54 = range_i32_lower.
      ELSE.
        t54 = trunc( t55 ).
      ENDIF.
      t54 = t54 + 1.
      IF t1->has( t54 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t1->load( ).
      CLEAR t52.
      READ TABLE t1->items INDEX t54 INTO t52.
      DATA(t56) = strlen( t52 ).
      DATA t57 TYPE i.
      DATA t58 TYPE i.
      t57 = 0.
      t58 = t56.
      DATA(t59) = VALUE i( ).
      DATA(t60) = VALUE i( ).
      DATA(t61) = VALUE string( ).
      WHILE t57 < t58.
        t60 = t57.
        t61 = t52+t60(1).
        DATA t62 TYPE c LENGTH 1.
        CLEAR t62.
        DATA(t63) = VALUE xstring( ).
        DATA t64 TYPE x LENGTH 1.
        CLEAR t64.
        DATA t65 TYPE x LENGTH 1.
        CLEAR t65.
        DATA(t66) = VALUE i( ).
        t62 = t61.
        t59 = cl_abap_conv_out_ce=>uccpi( t62 ).
        IF t59 >= 255.
          IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
            zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t61 IMPORTING buffer = t63 ).
          t64 = t63(1).
          t65 = t63+1(1).
          t59 = t64.
          t66 = t65.
          t59 = t59 + t66 * 256.
        ENDIF.
        IF t59 = 9 OR t59 = 10 OR t59 = 11 OR t59 = 12 OR t59 = 13 OR t59 = 32 OR t59 = 160 OR t59 = 5760 OR t59 = 8232 OR t59 = 8233 OR t59 = 8239 OR t59 = 8287 OR t59 = 12288 OR t59 = 65279 OR t59 >= 8192 AND t59 <= 8202.
          t57 = t57 + 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      DATA(t67) = VALUE i( ).
      DATA(t68) = VALUE i( ).
      DATA(t69) = VALUE string( ).
      WHILE t58 > t57.
        t68 = t58 - 1.
        t69 = t52+t68(1).
        DATA t70 TYPE c LENGTH 1.
        CLEAR t70.
        DATA(t71) = VALUE xstring( ).
        DATA t72 TYPE x LENGTH 1.
        CLEAR t72.
        DATA t73 TYPE x LENGTH 1.
        CLEAR t73.
        DATA(t74) = VALUE i( ).
        t70 = t69.
        t67 = cl_abap_conv_out_ce=>uccpi( t70 ).
        IF t67 >= 255.
          IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
            zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t69 IMPORTING buffer = t71 ).
          t72 = t71(1).
          t73 = t71+1(1).
          t67 = t72.
          t74 = t73.
          t67 = t67 + t74 * 256.
        ENDIF.
        IF t67 = 9 OR t67 = 10 OR t67 = 11 OR t67 = 12 OR t67 = 13 OR t67 = 32 OR t67 = 160 OR t67 = 5760 OR t67 = 8232 OR t67 = 8233 OR t67 = 8239 OR t67 = 8287 OR t67 = 12288 OR t67 = 65279 OR t67 >= 8192 AND t67 <= 8202.
          t58 = t58 - 1.
        ELSE.
          EXIT.
        ENDIF.
      ENDWHILE.
      IF t58 > t57.
        t56 = t58 - t57.
        t51 = t52+t57(t56).
      ELSE.
        CLEAR t51.
      ENDIF.
      DATA(t75) = strlen( t51 ).
      t50 = t51.
      IF t50 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t50 TO UPPER CASE.
      ELSE.
        t50 = zlnt_runtime_uppe_91169605024d=>full( t50 ).
      ENDIF.
      t11 = t50.
    ENDIF.
    t38->load( ).
    APPEND t11 TO t38->items.
    t38->save( ).
    DATA(t78) = VALUE abap_bool( ).
    DATA(t79) = VALUE string( ).
    DATA(t80) = VALUE string( ).
    DATA(t81) = t11.
    DATA(t82) = strlen( t81 ).
    DATA t83 TYPE i.
    DATA t84 TYPE i.
    t83 = 0.
    t84 = t82.
    DATA(t85) = VALUE i( ).
    DATA(t86) = VALUE i( ).
    DATA(t87) = VALUE string( ).
    WHILE t83 < t84.
      t86 = t83.
      t87 = t81+t86(1).
      DATA t88 TYPE c LENGTH 1.
      CLEAR t88.
      DATA(t89) = VALUE xstring( ).
      DATA t90 TYPE x LENGTH 1.
      CLEAR t90.
      DATA t91 TYPE x LENGTH 1.
      CLEAR t91.
      DATA(t92) = VALUE i( ).
      t88 = t87.
      t85 = cl_abap_conv_out_ce=>uccpi( t88 ).
      IF t85 >= 255.
        IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
          zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t87 IMPORTING buffer = t89 ).
        t90 = t89(1).
        t91 = t89+1(1).
        t85 = t90.
        t92 = t91.
        t85 = t85 + t92 * 256.
      ENDIF.
      IF t85 = 9 OR t85 = 10 OR t85 = 11 OR t85 = 12 OR t85 = 13 OR t85 = 32 OR t85 = 160 OR t85 = 5760 OR t85 = 8232 OR t85 = 8233 OR t85 = 8239 OR t85 = 8287 OR t85 = 12288 OR t85 = 65279 OR t85 >= 8192 AND t85 <= 8202.
        t83 = t83 + 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    DATA(t93) = VALUE i( ).
    DATA(t94) = VALUE i( ).
    DATA(t95) = VALUE string( ).
    WHILE t84 > t83.
      t94 = t84 - 1.
      t95 = t81+t94(1).
      DATA t96 TYPE c LENGTH 1.
      CLEAR t96.
      DATA(t97) = VALUE xstring( ).
      DATA t98 TYPE x LENGTH 1.
      CLEAR t98.
      DATA t99 TYPE x LENGTH 1.
      CLEAR t99.
      DATA(t100) = VALUE i( ).
      t96 = t95.
      t93 = cl_abap_conv_out_ce=>uccpi( t96 ).
      IF t93 >= 255.
        IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
          zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t95 IMPORTING buffer = t97 ).
        t98 = t97(1).
        t99 = t97+1(1).
        t93 = t98.
        t100 = t99.
        t93 = t93 + t100 * 256.
      ENDIF.
      IF t93 = 9 OR t93 = 10 OR t93 = 11 OR t93 = 12 OR t93 = 13 OR t93 = 32 OR t93 = 160 OR t93 = 5760 OR t93 = 8232 OR t93 = 8233 OR t93 = 8239 OR t93 = 8287 OR t93 = 12288 OR t93 = 65279 OR t93 >= 8192 AND t93 <= 8202.
        t84 = t84 - 1.
      ELSE.
        EXIT.
      ENDIF.
    ENDWHILE.
    IF t84 > t83.
      t82 = t84 - t83.
      t80 = t81+t83(t82).
    ELSE.
      CLEAR t80.
    ENDIF.
    DATA(t101) = 0.
    DATA(t102) = 2.
    DATA(t103) = strlen( t80 ).
    t101 = COND i( WHEN t101 < 0 THEN 0 WHEN t101 > t103 THEN t103 ELSE t101 ).
    t102 = COND i( WHEN t102 < 0 THEN 0 WHEN t102 > t103 THEN t103 ELSE t102 ).
    IF t101 > t102.
      t103 = t101.
      t101 = t102.
      t102 = t103.
    ENDIF.
    t103 = t102 - t101.
    t79 = t80+t101(t103).
    DATA(t104) = |"!|.
    t78 = xsdbool( t79 = t104 ).
    IF t78 = abap_true.
      DO.
        DATA t105 TYPE abap_bool.
        DATA(t107) = CONV f( 0 ).
        t105 = xsdbool( t3 >= t107 ).
        IF t105 = abap_false.
          EXIT.
        ENDIF.
        DATA t108 TYPE f.
        DATA(t110) = CONV f( 1 ).
        t108 = t3 - t110.
        t3 = t108.
        DATA(t111) = VALUE string( ).
        DATA(t112) = VALUE string( ).
        DATA(t113) = VALUE string( ).
        DATA(t115) = VALUE i( ).
        IF t3 > range_i32_upper.
          t115 = range_i32_upper.
        ELSEIF t3 < range_i32_lower.
          t115 = range_i32_lower.
        ELSE.
          t115 = trunc( t3 ).
        ENDIF.
        t115 = t115 + 1.
        IF t1->has( t115 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t1->load( ).
        CLEAR t113.
        READ TABLE t1->items INDEX t115 INTO t113.
        DATA(t117) = strlen( t113 ).
        DATA t118 TYPE i.
        DATA t119 TYPE i.
        t118 = 0.
        t119 = t117.
        DATA(t120) = VALUE i( ).
        DATA(t121) = VALUE i( ).
        DATA(t122) = VALUE string( ).
        WHILE t118 < t119.
          t121 = t118.
          t122 = t113+t121(1).
          DATA t123 TYPE c LENGTH 1.
          CLEAR t123.
          DATA(t124) = VALUE xstring( ).
          DATA t125 TYPE x LENGTH 1.
          CLEAR t125.
          DATA t126 TYPE x LENGTH 1.
          CLEAR t126.
          DATA(t127) = VALUE i( ).
          t123 = t122.
          t120 = cl_abap_conv_out_ce=>uccpi( t123 ).
          IF t120 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t122 IMPORTING buffer = t124 ).
            t125 = t124(1).
            t126 = t124+1(1).
            t120 = t125.
            t127 = t126.
            t120 = t120 + t127 * 256.
          ENDIF.
          IF t120 = 9 OR t120 = 10 OR t120 = 11 OR t120 = 12 OR t120 = 13 OR t120 = 32 OR t120 = 160 OR t120 = 5760 OR t120 = 8232 OR t120 = 8233 OR t120 = 8239 OR t120 = 8287 OR t120 = 12288 OR t120 = 65279 OR t120 >= 8192 AND t120 <= 8202.
            t118 = t118 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t128) = VALUE i( ).
        DATA(t129) = VALUE i( ).
        DATA(t130) = VALUE string( ).
        WHILE t119 > t118.
          t129 = t119 - 1.
          t130 = t113+t129(1).
          DATA t131 TYPE c LENGTH 1.
          CLEAR t131.
          DATA(t132) = VALUE xstring( ).
          DATA t133 TYPE x LENGTH 1.
          CLEAR t133.
          DATA t134 TYPE x LENGTH 1.
          CLEAR t134.
          DATA(t135) = VALUE i( ).
          t131 = t130.
          t128 = cl_abap_conv_out_ce=>uccpi( t131 ).
          IF t128 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t130 IMPORTING buffer = t132 ).
            t133 = t132(1).
            t134 = t132+1(1).
            t128 = t133.
            t135 = t134.
            t128 = t128 + t135 * 256.
          ENDIF.
          IF t128 = 9 OR t128 = 10 OR t128 = 11 OR t128 = 12 OR t128 = 13 OR t128 = 32 OR t128 = 160 OR t128 = 5760 OR t128 = 8232 OR t128 = 8233 OR t128 = 8239 OR t128 = 8287 OR t128 = 12288 OR t128 = 65279 OR t128 >= 8192 AND t128 <= 8202.
            t119 = t119 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t119 > t118.
          t117 = t119 - t118.
          t112 = t113+t118(t117).
        ELSE.
          CLEAR t112.
        ENDIF.
        DATA(t136) = strlen( t112 ).
        t111 = t112.
        IF t111 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t111 TO UPPER CASE.
        ELSE.
          t111 = zlnt_runtime_uppe_91169605024d=>full( t111 ).
        ENDIF.
        t11 = t111.
        DATA(t137) = VALUE abap_bool( ).
        DATA(t138) = VALUE string( ).
        DATA(t139) = VALUE string( ).
        DATA(t141) = strlen( t11 ).
        DATA t142 TYPE i.
        DATA t143 TYPE i.
        t142 = 0.
        t143 = t141.
        DATA(t144) = VALUE i( ).
        DATA(t145) = VALUE i( ).
        DATA(t146) = VALUE string( ).
        WHILE t142 < t143.
          t145 = t142.
          t146 = t11+t145(1).
          DATA t147 TYPE c LENGTH 1.
          CLEAR t147.
          DATA(t148) = VALUE xstring( ).
          DATA t149 TYPE x LENGTH 1.
          CLEAR t149.
          DATA t150 TYPE x LENGTH 1.
          CLEAR t150.
          DATA(t151) = VALUE i( ).
          t147 = t146.
          t144 = cl_abap_conv_out_ce=>uccpi( t147 ).
          IF t144 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t146 IMPORTING buffer = t148 ).
            t149 = t148(1).
            t150 = t148+1(1).
            t144 = t149.
            t151 = t150.
            t144 = t144 + t151 * 256.
          ENDIF.
          IF t144 = 9 OR t144 = 10 OR t144 = 11 OR t144 = 12 OR t144 = 13 OR t144 = 32 OR t144 = 160 OR t144 = 5760 OR t144 = 8232 OR t144 = 8233 OR t144 = 8239 OR t144 = 8287 OR t144 = 12288 OR t144 = 65279 OR t144 >= 8192 AND t144 <= 8202.
            t142 = t142 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA(t152) = VALUE i( ).
        DATA(t153) = VALUE i( ).
        DATA(t154) = VALUE string( ).
        WHILE t143 > t142.
          t153 = t143 - 1.
          t154 = t11+t153(1).
          DATA t155 TYPE c LENGTH 1.
          CLEAR t155.
          DATA(t156) = VALUE xstring( ).
          DATA t157 TYPE x LENGTH 1.
          CLEAR t157.
          DATA t158 TYPE x LENGTH 1.
          CLEAR t158.
          DATA(t159) = VALUE i( ).
          t155 = t154.
          t152 = cl_abap_conv_out_ce=>uccpi( t155 ).
          IF t152 >= 255.
            IF zlnt_builtin_code_5ba9c08dc722 IS NOT BOUND.
              zlnt_builtin_code_5ba9c08dc722 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_5ba9c08dc722->convert( EXPORTING data = t154 IMPORTING buffer = t156 ).
            t157 = t156(1).
            t158 = t156+1(1).
            t152 = t157.
            t159 = t158.
            t152 = t152 + t159 * 256.
          ENDIF.
          IF t152 = 9 OR t152 = 10 OR t152 = 11 OR t152 = 12 OR t152 = 13 OR t152 = 32 OR t152 = 160 OR t152 = 5760 OR t152 = 8232 OR t152 = 8233 OR t152 = 8239 OR t152 = 8287 OR t152 = 12288 OR t152 = 65279 OR t152 >= 8192 AND t152 <= 8202.
            t143 = t143 - 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t143 > t142.
          t141 = t143 - t142.
          t139 = t11+t142(t141).
        ELSE.
          CLEAR t139.
        ENDIF.
        DATA(t160) = 0.
        DATA(t161) = 2.
        DATA(t162) = strlen( t139 ).
        t160 = COND i( WHEN t160 < 0 THEN 0 WHEN t160 > t162 THEN t162 ELSE t160 ).
        t161 = COND i( WHEN t161 < 0 THEN 0 WHEN t161 > t162 THEN t162 ELSE t161 ).
        IF t160 > t161.
          t162 = t160.
          t160 = t161.
          t161 = t162.
        ENDIF.
        t162 = t161 - t160.
        t138 = t139+t160(t162).
        DATA(t163) = |"!|.
        t137 = xsdbool( t138 <> t163 ).
        IF t137 = abap_true.
          EXIT.
        ENDIF.
        t38->load( ).
        APPEND t11 TO t38->items.
        t38->save( ).
      ENDDO.
    ENDIF.
    result = t38.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_abapdoc_conf( me->gt_cnf_ins_src_rls_abp_ts_abpd( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_abapdoc_conf( me->gt_cnf_ins_src_rls_abp_ts_abpd( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_abapdoc_conf.
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
        t1 = NEW zcl_lnt_abapdoc_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cnf_ins_src_rls_abp_ts_abpd( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_prs_ins_src_rls_abp_ts_abpd( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1386_e1bde5d33879.
  ENDMETHOD.
ENDCLASS.
