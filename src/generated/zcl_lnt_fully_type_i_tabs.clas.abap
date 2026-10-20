* TS: src/rules/fully_type_itabs.ts:12:1 FullyTypeITabs
CLASS zcl_lnt_fully_type_i_tabs DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_fully_type_i_tabs_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_f_t_it_ts_fl_ty_i_tb RETURNING VALUE(result) TYPE REF TO zcl_lnt_fully_type_i_tabs_conf.
    METHODS s_c_i_s_r_f_t_it_ts_fl_ty_i_tb IMPORTING i_conf TYPE REF TO zcl_lnt_fully_type_i_tabs_conf.
    METHODS r_p_i_s_r_f_t_it_ts_fl_ty_i_tb IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fully_type_i_tabs IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_fully_type_i_tabs_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#use-the-right-table-type\nhttps://github.com/SAP/sty|.
    t11 = t11 && |leguides/blob/main/clean-abap/CleanABAP.md#avoid-default-key|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t17) = |DATA lt_foo TYPE TABLE OF ty.\nDATA lt_bar TYPE STANDARD TABL|.
    t17 = t17 && |E OF ty.|.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = t17.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |DATA lt_foo TYPE STANDARD TABLE OF ty WITH EMPTY KEY.|.
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t30.
    t30->load( ).
    APPEND |SingleFile| TO t30->items.
    t30->save( ).
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |fully_type_itabs| i_title = |Fully type internal tables| i_short_description = |No implict table types or table keys| i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t30 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_f_t_it_ts_fl_ty_i_tb.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_f_t_it_ts_fl_ty_i_tb.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_f_t_it_ts_fl_ty_i_tb.
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
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE REF TO zif_lnt_statement.
      t17 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_data ).
      t15 = t16.
      IF t16 = abap_false.
        DATA t20 TYPE REF TO zif_lnt_statement.
        t20 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t15 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_st_statem_type ).
      ENDIF.
      IF xsdbool( t15 = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
      t22 = t9->find_first_expression( i_type_9913 = t25 ).
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF xsdbool( t22 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t33) = VALUE string( ).
      DATA t34 TYPE string.
      DATA t35 TYPE string.
      t35 = t22->concat_tokens( ).
      DATA(t38) = strlen( t35 ).
      t34 = t35.
      IF t34 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t34 TO UPPER CASE.
      ELSE.
        t34 = zlnt_runtime_uppe_91169605024d=>full( t34 ).
      ENDIF.
      t33 = t34.
      DATA(t40) = VALUE i( ).
      DATA(t42) = |TYPE TABLE OF|.
      DATA(t43) = strlen( t33 ).
      IF t42 IS INITIAL.
        t40 = 0.
      ELSE.
        FIND t42 IN t33 MATCH OFFSET t40.
        IF sy-subrc <> 0.
          t40 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t40 >= 0 ) = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_issue.
        CLEAR t48.
        DATA t50 TYPE REF TO zcl_lnt_position.
        t50 = t22->get_first_token( )->start.
        DATA(t58) = VALUE string( ).
        DATA t59 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t69) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t69 = t69 && |nABAP.md#use-the-right-table-type\nhttps://github.com/SAP/sty|.
        t69 = t69 && |leguides/blob/main/clean-abap/CleanABAP.md#avoid-default-key|.
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = t69.
        t66 = t70.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA(t75) = |DATA lt_foo TYPE TABLE OF ty.\nDATA lt_bar TYPE STANDARD TABL|.
        t75 = t75 && |E OF ty.|.
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t75.
        t72 = t76.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t82->has = abap_true.
        t82->value = |DATA lt_foo TYPE STANDARD TABLE OF ty WITH EMPTY KEY.|.
        t78 = t82.
        DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t84.
        DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t88.
        t88->load( ).
        APPEND |SingleFile| TO t88->items.
        t88->save( ).
        t84 = t88.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t59 = NEW zcl_lnt_irule_metadata( i_key = |fully_type_itabs| i_title = |Fully type internal tables| i_short_description = |No implict table types or table keys| i_bad_example = t72 i_good_example = t78 i_extended_information = t66 i_tags = t84 i_pragma = t94 i_pseudo_comment = t96 ).
        CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
        t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t98 ).
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t99 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t101 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t102 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t103 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t104 ).
        ENDIF.
        CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
        t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t106 ).
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t108 ).
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t110 ).
        ENDIF.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t112 ).
        ENDIF.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t114 ).
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t116 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t118 ).
        ENDIF.
        t58 = t59->key.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t119 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t121.
        t48 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t50 i_message_26cb = |Specify table type| i_key = t58 i_severity = t119 i_fix = t121 ).
        t2->load( ).
        APPEND t48 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t123) = VALUE i( ).
        DATA(t125) = | TABLE FOR |.
        DATA(t126) = strlen( t33 ).
        IF t125 IS INITIAL.
          t123 = 0.
        ELSE.
          FIND t125 IN t33 MATCH OFFSET t123.
          IF sy-subrc <> 0.
            t123 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t123 >= 0 ) = abap_true.
          CONTINUE.
        ELSE.
          DATA(t128) = VALUE abap_bool( ).
          DATA(t129) = VALUE abap_bool( ).
          DATA(t131) = VALUE i( ).
          DATA(t133) = | WITH |.
          DATA(t134) = strlen( t33 ).
          IF t133 IS INITIAL.
            t131 = 0.
          ELSE.
            FIND t133 IN t33 MATCH OFFSET t131.
            IF sy-subrc <> 0.
              t131 = -1.
            ENDIF.
          ENDIF.
          t129 = xsdbool( xsdbool( t131 >= 0 ) = abap_false ).
          t128 = t129.
          IF t129 = abap_true.
            DATA(t139) = VALUE i( ).
            DATA(t141) = | RANGE OF |.
            DATA(t142) = strlen( t33 ).
            IF t141 IS INITIAL.
              t139 = 0.
            ELSE.
              FIND t141 IN t33 MATCH OFFSET t139.
              IF sy-subrc <> 0.
                t139 = -1.
              ENDIF.
            ENDIF.
            t128 = xsdbool( xsdbool( t139 >= 0 ) = abap_false ).
          ENDIF.
          IF t128 = abap_true.
            DATA t148 TYPE REF TO zcl_lnt_issue.
            CLEAR t148.
            DATA t150 TYPE REF TO zcl_lnt_position.
            t150 = t22->get_first_token( )->start.
            DATA(t158) = VALUE string( ).
            DATA t159 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t166.
            DATA(t169) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t169 = t169 && |nABAP.md#use-the-right-table-type\nhttps://github.com/SAP/sty|.
            t169 = t169 && |leguides/blob/main/clean-abap/CleanABAP.md#avoid-default-key|.
            DATA(t170) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t170->has = abap_true.
            t170->value = t169.
            t166 = t170.
            DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t172.
            DATA(t175) = |DATA lt_foo TYPE TABLE OF ty.\nDATA lt_bar TYPE STANDARD TABL|.
            t175 = t175 && |E OF ty.|.
            DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t176->has = abap_true.
            t176->value = t175.
            t172 = t176.
            DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t178.
            DATA(t182) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t182->has = abap_true.
            t182->value = |DATA lt_foo TYPE STANDARD TABLE OF ty WITH EMPTY KEY.|.
            t178 = t182.
            DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t184.
            DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t188.
            t188->load( ).
            APPEND |SingleFile| TO t188->items.
            t188->save( ).
            t184 = t188.
            DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t194.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t196.
            t159 = NEW zcl_lnt_irule_metadata( i_key = |fully_type_itabs| i_title = |Fully type internal tables| i_short_description = |No implict table types or table keys| i_bad_example = t172 i_good_example = t178 i_extended_information = t166 i_tags = t184 i_pragma = t194 i_pseudo_comment = t196 ).
            CREATE OBJECT t159->zlnt_view_ownkeys_b0e8086400eb.
            t159->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t198.
            t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t198 ).
            DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t199.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t199 ).
            ENDIF.
            DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t200.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t200 ).
            ENDIF.
            DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t201.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t201 ).
            ENDIF.
            DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t202.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t202 ).
            ENDIF.
            DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t203.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t203 ).
            ENDIF.
            DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t204.
            IF t159->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t159->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t204 ).
            ENDIF.
            CREATE OBJECT t159->zlnt_json_ownkeys_70e5fd461788.
            t159->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t206.
            t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t206 ).
            DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t208.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t208 ).
            ENDIF.
            DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t210.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t210 ).
            ENDIF.
            DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t212.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t212 ).
            ENDIF.
            DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t214.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t214 ).
            ENDIF.
            DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t216.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t216 ).
            ENDIF.
            DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t218.
            IF t159->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t159->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t218 ).
            ENDIF.
            t158 = t159->key.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t219 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t221 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t221.
            t148 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t150 i_message_26cb = |Specify table key| i_key = t158 i_severity = t219 i_fix = t221 ).
            t2->load( ).
            APPEND t148 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_fully_type_i_tabs_conf( me->g_c_i_s_r_f_t_it_ts_fl_ty_i_tb( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_fully_type_i_tabs_conf( me->g_c_i_s_r_f_t_it_ts_fl_ty_i_tb( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_fully_type_i_tabs_conf.
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
        t1 = NEW zcl_lnt_fully_type_i_tabs_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_f_t_it_ts_fl_ty_i_tb( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_f_t_it_ts_fl_ty_i_tb( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1516_8d2e666f6124.
  ENDMETHOD.
ENDCLASS.
