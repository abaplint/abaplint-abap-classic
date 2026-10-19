* TS: src/rules/pragma_style.ts:12:1 PragmaStyle
CLASS zcl_lnt_pragma_style DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_pragma_style_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_pr_st_ts_pr_sty RETURNING VALUE(result) TYPE REF TO zcl_lnt_pragma_style_conf.
    METHODS st_cn_in_sr_rl_pr_st_ts_pr_sty IMPORTING i_conf TYPE REF TO zcl_lnt_pragma_style_conf.
    METHODS rn_pr_in_sr_rl_pr_st_ts_pr_sty IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_pragma_style IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_pragma_style_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |pragma_style|.
    DATA t4 TYPE string.
    t4 = |Pragma Style|.
    DATA t6 TYPE string.
    t6 = |Check pragmas placement and case|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
    t21 = t21 && |-US/ABENPRAGMA.html|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |DATA field ##NO_TEXT TYPE i.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |DATA field TYPE i ##NO_TEXT.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t18 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |tags|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_st_ts_pr_sty.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_st_ts_pr_sty.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_6c98808680b6( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = VALUE abap_bool( ).
    IF t4 IS INITIAL.
      t9 = abap_true.
    ELSEIF t4->has = abap_false.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t14) = |upper|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = t15.
      t11->zlnt_view_write_s_d83b491d6b0d( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_pr_st_ts_pr_sty.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE i.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t19 = t9->pragmas.
      t16 = t19.
      t16->load( ).
      t15 = lines( t16->items ).
      DATA(t21) = 0.
      t14 = xsdbool( t15 = t21 ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t25 = t9->pragmas.
      t22 = t25.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      DATA(t29) = VALUE i( ).
      DO.
        t22->load( ).
        IF t29 >= lines( t22->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t22->items INDEX t29 + 1 INTO t28.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        CLEAR t27.
        IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t30 ?= t28.
          DATA t31 TYPE REF TO object.
          t31 = t30->as_ref( ).
          t27 ?= t31.
        ELSE.
          t27 ?= t28.
        ENDIF.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t35 TYPE REF TO zcl_lnt_abstract_node.
        t35 = t9.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t37 = t35->children.
        t34 = t37.
        t33 ?= t34.
        t32 = t33.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE i.
        t32->load( ).
        t40 = lines( t32->items ).
        DATA(t42) = 1.
        t39 = xsdbool( t40 = t42 ).
        IF t39 = abap_true.
          EXIT.
        ENDIF.
        DATA(t43) = VALUE abap_bool( ).
        DATA t44 TYPE REF TO zcl_lnt_position.
        CLEAR t44.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t46.
        DATA t47 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t47.
        DATA t49 TYPE i.
        DATA t50 TYPE i.
        t32->load( ).
        t50 = lines( t32->items ).
        DATA(t52) = 2.
        t49 = t50 - t52.
        t49 = t49 + 1.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        t32->load( ).
        CLEAR t53.
        READ TABLE t32->items INDEX t49 INTO t53.
        DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t54.
        CLEAR t47.
        IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t54 ?= t53.
          DATA t55 TYPE REF TO object.
          t55 = t54->as_ref( ).
          t47 ?= t55.
        ELSE.
          t47 ?= t53.
        ENDIF.
        t46 = t47->get_last_token( ).
        DATA t56 TYPE REF TO zcl_lnt_position.
        t56 = t46->start.
        t44 = t56.
        DATA t58 TYPE REF TO zcl_lnt_position.
        DATA t61 TYPE REF TO zcl_lnt_position.
        t61 = t27->start.
        t58 = t61.
        t43 = t44->is_after( i_p = t58 ).
        IF t43 = abap_true.
          DATA(t64) = |Place pragma at end of statement|.
          DATA t66 TYPE REF TO zcl_lnt_issue.
          CLEAR t66.
          DATA(t70) = VALUE string( ).
          DATA t71 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t71.
          DATA t72 TYPE string.
          t72 = |pragma_style|.
          DATA t74 TYPE string.
          t74 = |Pragma Style|.
          DATA t76 TYPE string.
          t76 = |Check pragmas placement and case|.
          DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t78.
          DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t83.
          t82 = t83.
          DATA(t85) = |SingleFile|.
          t82->load( ).
          APPEND t85 TO t82->items.
          t82->save( ).
          t78 = t82.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          DATA(t91) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
          t91 = t91 && |-US/ABENPRAGMA.html|.
          DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t92->has = abap_true.
          t92->value = t91.
          t88 = t92.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          DATA(t97) = |DATA field ##NO_TEXT TYPE i.|.
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = t97.
          t94 = t98.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t103) = |DATA field TYPE i ##NO_TEXT.|.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t103.
          t100 = t104.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          t71 = NEW zcl_lnt_irule_metadata( i_key = t72 i_title = t74 i_short_description = t76 i_bad_example = t94 i_good_example = t100 i_extended_information = t88 i_tags = t78 i_pragma = t106 i_pseudo_comment = t108 ).
          CREATE OBJECT t71->zlnt_view_ownkeys_b0e8086400eb.
          t71->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t110 ).
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t111 ).
          ENDIF.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t112 ).
          ENDIF.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t113.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t113 ).
          ENDIF.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t114 ).
          ENDIF.
          DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t115.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t115 ).
          ENDIF.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          IF t71->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t71->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t116 ).
          ENDIF.
          CREATE OBJECT t71->zlnt_json_ownkeys_70e5fd461788.
          t71->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t117) = |key|.
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t118.
          t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
          DATA(t119) = |title|.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
          ENDIF.
          DATA(t121) = |shortDescription|.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
          ENDIF.
          DATA(t123) = |tags|.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
          ENDIF.
          DATA(t125) = |extendedInformation|.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
          ENDIF.
          DATA(t127) = |badExample|.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
          ENDIF.
          DATA(t129) = |goodExample|.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
          ENDIF.
          t70 = t71->key.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t131 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t133.
          t66 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t27 i_message_26cb = t64 i_key = t70 i_severity = t131 i_fix = t133 ).
          t2->load( ).
          APPEND t66 TO t2->items.
          t2->save( ).
          CONTINUE.
        ENDIF.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = VALUE abap_bool( ).
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t138 = me->conf->zlnt_view_read_sr_6c98808680b6( ).
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA(t142) = |upper|.
        DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t143->has = abap_true.
        t143->value = t142.
        t140 = t143.
        DATA(t145) = VALUE abap_bool( ).
        DATA(t146) = VALUE abap_bool( ).
        IF t138 IS BOUND.
          t145 = t138->has.
        ENDIF.
        IF t140 IS BOUND.
          t146 = t140->has.
        ENDIF.
        IF t145 = t146.
          IF t145 = abap_false.
            t137 = abap_true.
          ELSEIF t138->value = t140->value.
            t137 = abap_true.
          ENDIF.
        ENDIF.
        t136 = t137.
        IF t137 = abap_true.
          DATA(t147) = VALUE abap_bool( ).
          DATA t148 TYPE string.
          DATA t151 TYPE string.
          t151 = t27->str.
          t148 = t151.
          DATA t153 TYPE string.
          DATA t154 TYPE string.
          DATA t157 TYPE string.
          t157 = t27->str.
          t154 = t157.
          DATA(t159) = strlen( t154 ).
          t153 = t154.
          IF t153 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t153 TO UPPER CASE.
          ELSE.
            t153 = zlnt_runtime_uppe_91169605024d=>full( t153 ).
          ENDIF.
          t147 = xsdbool( t148 <> t153 ).
          t136 = t147.
        ENDIF.
        IF t136 = abap_true.
          DATA(t161) = |Upper case pragmas|.
          DATA t163 TYPE REF TO zcl_lnt_issue.
          CLEAR t163.
          DATA(t167) = VALUE string( ).
          DATA t168 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t168.
          DATA t169 TYPE string.
          t169 = |pragma_style|.
          DATA t171 TYPE string.
          t171 = |Pragma Style|.
          DATA t173 TYPE string.
          t173 = |Check pragmas placement and case|.
          DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t175.
          DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t180.
          t179 = t180.
          DATA(t182) = |SingleFile|.
          t179->load( ).
          APPEND t182 TO t179->items.
          t179->save( ).
          t175 = t179.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          DATA(t188) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
          t188 = t188 && |-US/ABENPRAGMA.html|.
          DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t189->has = abap_true.
          t189->value = t188.
          t185 = t189.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t191.
          DATA(t194) = |DATA field ##NO_TEXT TYPE i.|.
          DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t195->has = abap_true.
          t195->value = t194.
          t191 = t195.
          DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t197.
          DATA(t200) = |DATA field TYPE i ##NO_TEXT.|.
          DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t201->has = abap_true.
          t201->value = t200.
          t197 = t201.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          t168 = NEW zcl_lnt_irule_metadata( i_key = t169 i_title = t171 i_short_description = t173 i_bad_example = t191 i_good_example = t197 i_extended_information = t185 i_tags = t175 i_pragma = t203 i_pseudo_comment = t205 ).
          CREATE OBJECT t168->zlnt_view_ownkeys_b0e8086400eb.
          t168->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t207 ).
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t168->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t208 ).
          ENDIF.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t168->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t209 ).
          ENDIF.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t168->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t210 ).
          ENDIF.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          IF t168->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t211 ).
          ENDIF.
          DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t212.
          IF t168->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t212 ).
          ENDIF.
          DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t213.
          IF t168->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t168->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t213 ).
          ENDIF.
          CREATE OBJECT t168->zlnt_json_ownkeys_70e5fd461788.
          t168->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t214) = |key|.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
          DATA(t216) = |title|.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
          ENDIF.
          DATA(t218) = |shortDescription|.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
          ENDIF.
          DATA(t220) = |tags|.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
          ENDIF.
          DATA(t222) = |extendedInformation|.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
          ENDIF.
          DATA(t224) = |badExample|.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
          ENDIF.
          DATA(t226) = |goodExample|.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
          ENDIF.
          t167 = t168->key.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t228 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t230 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t230.
          t163 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t27 i_message_26cb = t161 i_key = t167 i_severity = t228 i_fix = t230 ).
          t2->load( ).
          APPEND t163 TO t2->items.
          t2->save( ).
        ELSE.
          DATA(t233) = VALUE abap_bool( ).
          DATA(t234) = VALUE abap_bool( ).
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t235 = me->conf->zlnt_view_read_sr_6c98808680b6( ).
          DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t237.
          DATA(t239) = |lower|.
          DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t240->has = abap_true.
          t240->value = t239.
          t237 = t240.
          DATA(t242) = VALUE abap_bool( ).
          DATA(t243) = VALUE abap_bool( ).
          IF t235 IS BOUND.
            t242 = t235->has.
          ENDIF.
          IF t237 IS BOUND.
            t243 = t237->has.
          ENDIF.
          IF t242 = t243.
            IF t242 = abap_false.
              t234 = abap_true.
            ELSEIF t235->value = t237->value.
              t234 = abap_true.
            ENDIF.
          ENDIF.
          t233 = t234.
          IF t234 = abap_true.
            DATA t244 TYPE abap_bool.
            DATA t245 TYPE string.
            DATA t248 TYPE string.
            t248 = t27->str.
            t245 = t248.
            DATA t250 TYPE string.
            DATA t251 TYPE string.
            DATA t254 TYPE string.
            t254 = t27->str.
            t251 = t254.
            DATA(t256) = strlen( t251 ).
            t250 = t251.
            TRANSLATE t250 TO LOWER CASE.
            t244 = xsdbool( t245 <> t250 ).
            t233 = t244.
          ENDIF.
          IF t233 = abap_true.
            DATA(t258) = |Lower case pragmas|.
            DATA t260 TYPE REF TO zcl_lnt_issue.
            CLEAR t260.
            DATA(t264) = VALUE string( ).
            DATA t265 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t265.
            DATA t266 TYPE string.
            t266 = |pragma_style|.
            DATA t268 TYPE string.
            t268 = |Pragma Style|.
            DATA t270 TYPE string.
            t270 = |Check pragmas placement and case|.
            DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t272.
            DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t277.
            t276 = t277.
            DATA(t279) = |SingleFile|.
            t276->load( ).
            APPEND t279 TO t276->items.
            t276->save( ).
            t272 = t276.
            DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t282.
            DATA(t285) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
            t285 = t285 && |-US/ABENPRAGMA.html|.
            DATA(t286) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t286->has = abap_true.
            t286->value = t285.
            t282 = t286.
            DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t288.
            DATA(t291) = |DATA field ##NO_TEXT TYPE i.|.
            DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t292->has = abap_true.
            t292->value = t291.
            t288 = t292.
            DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t294.
            DATA(t297) = |DATA field TYPE i ##NO_TEXT.|.
            DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t298->has = abap_true.
            t298->value = t297.
            t294 = t298.
            DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t300.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            t265 = NEW zcl_lnt_irule_metadata( i_key = t266 i_title = t268 i_short_description = t270 i_bad_example = t288 i_good_example = t294 i_extended_information = t282 i_tags = t272 i_pragma = t300 i_pseudo_comment = t302 ).
            CREATE OBJECT t265->zlnt_view_ownkeys_b0e8086400eb.
            t265->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t304.
            t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t304 ).
            DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t305.
            IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t305 ).
            ENDIF.
            DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t306.
            IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t306 ).
            ENDIF.
            DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t307.
            IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t307 ).
            ENDIF.
            DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t308.
            IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t308 ).
            ENDIF.
            DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t309.
            IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t309 ).
            ENDIF.
            DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t310.
            IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t310 ).
            ENDIF.
            CREATE OBJECT t265->zlnt_json_ownkeys_70e5fd461788.
            t265->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t311) = |key|.
            DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t312.
            t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t311 p1 = t312 ).
            DATA(t313) = |title|.
            DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t314.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
            ENDIF.
            DATA(t315) = |shortDescription|.
            DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t316.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
            ENDIF.
            DATA(t317) = |tags|.
            DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t318.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
            ENDIF.
            DATA(t319) = |extendedInformation|.
            DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t320.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
            ENDIF.
            DATA(t321) = |badExample|.
            DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t322.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
            ENDIF.
            DATA(t323) = |goodExample|.
            DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t324.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
            ENDIF.
            t264 = t265->key.
            DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t325 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t327 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t327.
            t260 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t27 i_message_26cb = t258 i_key = t264 i_severity = t325 i_fix = t327 ).
            t2->load( ).
            APPEND t260 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_pragma_style_conf( me->gt_cn_in_sr_rl_pr_st_ts_pr_sty( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_pragma_style_conf( me->gt_cn_in_sr_rl_pr_st_ts_pr_sty( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_pragma_style_conf.
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
        t1 = NEW zcl_lnt_pragma_style_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_pr_st_ts_pr_sty( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_pr_st_ts_pr_sty( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1649_806fe62f03fa.
  ENDMETHOD.
ENDCLASS.
