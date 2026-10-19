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
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
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
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |DATA field ##NO_TEXT TYPE i.|.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |DATA field TYPE i ##NO_TEXT.|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |pragma_style| i_title = |Pragma Style| i_short_description = |Check pragmas placement and case| i_bad_example = t24 i_good_example = t34 i_extended_information = t18 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_st_ts_pr_sty.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_st_ts_pr_sty.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t4 = me->conf->zlnt_view_read_sr_6c98808680b6( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = VALUE abap_bool( ).
    IF t4 IS INITIAL.
      t9 = abap_true.
    ELSEIF t4->has = abap_false.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA(t11) = me->conf.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = |upper|.
      t11->zlnt_view_write_s_d83b491d6b0d( p0 = t15 ).
    ENDIF.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_pr_st_ts_pr_sty.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
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
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t16 = t9->pragmas.
      t16->load( ).
      IF xsdbool( lines( t16->items ) = 0 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t22 = t9->pragmas.
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
        t34 = t35->children.
        t33 ?= t34.
        t32 = t33.
        t32->load( ).
        IF xsdbool( lines( t32->items ) = 1 ) = abap_true.
          EXIT.
        ENDIF.
        DATA t44 TYPE REF TO zcl_lnt_position.
        CLEAR t44.
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
        t44 = t47->get_last_token( )->start.
        DATA t58 TYPE REF TO zcl_lnt_position.
        t58 = t27->start.
        IF t44->is_after( i_p = t58 ) = abap_true.
          DATA t66 TYPE REF TO zcl_lnt_issue.
          CLEAR t66.
          DATA(t70) = VALUE string( ).
          DATA t71 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t71.
          DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t78.
          DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t82.
          t82->load( ).
          APPEND |SingleFile| TO t82->items.
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
          DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t98->has = abap_true.
          t98->value = |DATA field ##NO_TEXT TYPE i.|.
          t94 = t98.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = |DATA field TYPE i ##NO_TEXT.|.
          t100 = t104.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          t71 = NEW zcl_lnt_irule_metadata( i_key = |pragma_style| i_title = |Pragma Style| i_short_description = |Check pragmas placement and case| i_bad_example = t94 i_good_example = t100 i_extended_information = t88 i_tags = t78 i_pragma = t106 i_pseudo_comment = t108 ).
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
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t118.
          t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t118 ).
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t120 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t122 ).
          ENDIF.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t124 ).
          ENDIF.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t126 ).
          ENDIF.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t128 ).
          ENDIF.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t71->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t71->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t130 ).
          ENDIF.
          t70 = t71->key.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t131 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t133.
          t66 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t27 i_message_26cb = |Place pragma at end of statement| i_key = t70 i_severity = t131 i_fix = t133 ).
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
        DATA(t143) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t143->has = abap_true.
        t143->value = |upper|.
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
          DATA t148 TYPE string.
          t148 = t27->str.
          DATA t153 TYPE string.
          DATA t154 TYPE string.
          t154 = t27->str.
          DATA(t159) = strlen( t154 ).
          t153 = t154.
          IF t153 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t153 TO UPPER CASE.
          ELSE.
            t153 = zlnt_runtime_uppe_91169605024d=>full( t153 ).
          ENDIF.
          t136 = xsdbool( t148 <> t153 ).
        ENDIF.
        IF t136 = abap_true.
          DATA t163 TYPE REF TO zcl_lnt_issue.
          CLEAR t163.
          DATA(t167) = VALUE string( ).
          DATA t168 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t168.
          DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t175.
          DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t179.
          t179->load( ).
          APPEND |SingleFile| TO t179->items.
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
          DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t195->has = abap_true.
          t195->value = |DATA field ##NO_TEXT TYPE i.|.
          t191 = t195.
          DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t197.
          DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t201->has = abap_true.
          t201->value = |DATA field TYPE i ##NO_TEXT.|.
          t197 = t201.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          t168 = NEW zcl_lnt_irule_metadata( i_key = |pragma_style| i_title = |Pragma Style| i_short_description = |Check pragmas placement and case| i_bad_example = t191 i_good_example = t197 i_extended_information = t185 i_tags = t175 i_pragma = t203 i_pseudo_comment = t205 ).
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
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t215 ).
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t217 ).
          ENDIF.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t219 ).
          ENDIF.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t221 ).
          ENDIF.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t223 ).
          ENDIF.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t225 ).
          ENDIF.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t168->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t168->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t227 ).
          ENDIF.
          t167 = t168->key.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t228 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t230 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t230.
          t163 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t27 i_message_26cb = |Upper case pragmas| i_key = t167 i_severity = t228 i_fix = t230 ).
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
          DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t240->has = abap_true.
          t240->value = |lower|.
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
            DATA t245 TYPE string.
            t245 = t27->str.
            DATA t250 TYPE string.
            DATA t251 TYPE string.
            t251 = t27->str.
            DATA(t256) = strlen( t251 ).
            t250 = t251.
            TRANSLATE t250 TO LOWER CASE.
            t233 = xsdbool( t245 <> t250 ).
          ENDIF.
          IF t233 = abap_true.
            DATA t260 TYPE REF TO zcl_lnt_issue.
            CLEAR t260.
            DATA(t264) = VALUE string( ).
            DATA t265 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t265.
            DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t272.
            DATA t276 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t276.
            t276->load( ).
            APPEND |SingleFile| TO t276->items.
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
            DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t292->has = abap_true.
            t292->value = |DATA field ##NO_TEXT TYPE i.|.
            t288 = t292.
            DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t294.
            DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t298->has = abap_true.
            t298->value = |DATA field TYPE i ##NO_TEXT.|.
            t294 = t298.
            DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t300.
            DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t302.
            t265 = NEW zcl_lnt_irule_metadata( i_key = |pragma_style| i_title = |Pragma Style| i_short_description = |Check pragmas placement and case| i_bad_example = t288 i_good_example = t294 i_extended_information = t282 i_tags = t272 i_pragma = t300 i_pseudo_comment = t302 ).
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
            DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t312.
            t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t312 ).
            DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t314.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t314 ).
            ENDIF.
            DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t316.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t316 ).
            ENDIF.
            DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t318.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t318 ).
            ENDIF.
            DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t320.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t320 ).
            ENDIF.
            DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t322.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t322 ).
            ENDIF.
            DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t324.
            IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t324 ).
            ENDIF.
            t264 = t265->key.
            DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t325 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t327 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t327.
            t260 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t27 i_message_26cb = |Lower case pragmas| i_key = t264 i_severity = t325 i_fix = t327 ).
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
