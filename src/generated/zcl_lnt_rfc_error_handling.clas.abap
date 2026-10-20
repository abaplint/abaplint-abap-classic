* TS: src/rules/rfc_error_handling.ts:12:1 RFCErrorHandling
CLASS zcl_lnt_rfc_error_handling DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_rf_er_hn_ts_rf_er_hn RETURNING VALUE(result) TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
    METHODS s_c_i_s_r_rf_er_hn_ts_rf_er_hn IMPORTING i_conf TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
    METHODS r_p_i_s_r_rf_er_hn_ts_rf_er_hn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rfc_error_handling IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_rfc_errr_hndlng_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t10.
    t10->load( ).
    APPEND |SingleFile| TO t10->items.
    t10->save( ).
    t6 = t10.
    DATA t16 TYPE string.
    DATA(t17) = |Checks that exceptions 'system_failure' and 'communication_f|.
    t17 = t17 && |ailure' are handled in RFC calls|.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
    t21 = t21 && |-US/abenrfc_exception.html|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc.|.
    t24 = t28.
    DATA(t33) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc\n  EXCEPTIONS\n    s|.
    t33 = t33 && |ystem_failure        = 1 MESSAGE msg\n    communication_failu|.
    t33 = t33 && |re = 2 MESSAGE msg\n    resource_failure      = 3\n    OTHERS |.
    t33 = t33 && |               = 4.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |rfc_error_handling| i_title = |RFC error handling| i_short_description = t16 i_bad_example = t24 i_good_example = t34 i_extended_information = t18 i_tags = t6 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t43 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
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

  METHOD get_message.
    DATA(t1) = |RFC error handling: At least one unhandled exception from SY|.
    t1 = t1 && |STEM_FAILURE, COMMUNICATION_FAILURE, RESOURCE_FAILURE|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_rf_er_hn_ts_rf_er_hn.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_rf_er_hn_ts_rf_er_hn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_rf_er_hn_ts_rf_er_hn.
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
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      t14 = t9->get_first_token( ).
      DATA t19 TYPE REF TO zif_lnt_statement.
      t19 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_call_function ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
      t23 = t9->find_first_expression( i_type_9913 = t25 ).
      IF xsdbool( xsdbool( t23 IS BOUND ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
      t26 = t9->find_first_expression( i_type_9913 = t29 ).
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      IF xsdbool( t26 IS INITIAL ) = abap_true.
        DATA t38 TYPE REF TO zcl_lnt_issue.
        CLEAR t38.
        DATA(t41) = |RFC error handling: At least one unhandled exception from SY|.
        t41 = t41 && |STEM_FAILURE, COMMUNICATION_FAILURE, RESOURCE_FAILURE|.
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t48.
        DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t52.
        t52->load( ).
        APPEND |SingleFile| TO t52->items.
        t52->save( ).
        t48 = t52.
        DATA t58 TYPE string.
        DATA(t59) = |Checks that exceptions 'system_failure' and 'communication_f|.
        t59 = t59 && |ailure' are handled in RFC calls|.
        t58 = t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t63) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
        t63 = t63 && |-US/abenrfc_exception.html|.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t63.
        t60 = t64.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc.|.
        t66 = t70.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA(t75) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc\n  EXCEPTIONS\n    s|.
        t75 = t75 && |ystem_failure        = 1 MESSAGE msg\n    communication_failu|.
        t75 = t75 && |re = 2 MESSAGE msg\n    resource_failure      = 3\n    OTHERS |.
        t75 = t75 && |               = 4.|.
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t75.
        t72 = t76.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        t43 = NEW zcl_lnt_irule_metadata( i_key = |rfc_error_handling| i_title = |RFC error handling| i_short_description = t58 i_bad_example = t66 i_good_example = t72 i_extended_information = t60 i_tags = t48 i_pragma = t78 i_pseudo_comment = t80 ).
        CREATE OBJECT t43->zlnt_view_ownkeys_b0e8086400eb.
        t43->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t82 ).
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t83 ).
        ENDIF.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t84 ).
        ENDIF.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t85 ).
        ENDIF.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t86 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t87 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t88 ).
        ENDIF.
        CREATE OBJECT t43->zlnt_json_ownkeys_70e5fd461788.
        t43->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t90 ).
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t92 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t94 ).
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t96 ).
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t98 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t100 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t102 ).
        ENDIF.
        t42 = t43->key.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t103 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t105 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t105.
        t38 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t14 i_message_26cb = t41 i_key = t42 i_severity = t103 i_fix = t105 ).
        t2->load( ).
        APPEND t38 TO t2->items.
        t2->save( ).
        CONTINUE.
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t110 TYPE REF TO zcl_lnt_expression_node.
      t110 = t26.
      DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t108 = t110->find_all_expressions( i_type_9913 = t112 ).
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t113.
      DATA t116 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t116.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      DATA(t118) = VALUE i( ).
      DO.
        t108->load( ).
        IF t118 >= lines( t108->items ).
          EXIT.
        ENDIF.
        CLEAR t117.
        READ TABLE t108->items INDEX t118 + 1 INTO t117.
        t118 = t118 + 1.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        CLEAR t116.
        IF t117 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t119 ?= t117.
          DATA t120 TYPE REF TO object.
          t120 = t119->as_ref( ).
          t116 ?= t120.
        ELSE.
          t116 ?= t117.
        ENDIF.
        DATA t122 TYPE string.
        DATA t123 TYPE string.
        t123 = t116->get_first_token( )->str.
        DATA(t129) = strlen( t123 ).
        t122 = t123.
        IF t122 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t122 TO UPPER CASE.
        ELSE.
          t122 = zlnt_runtime_uppe_91169605024d=>full( t122 ).
        ENDIF.
        t113->load( ).
        APPEND t122 TO t113->items.
        t113->save( ).
      ENDDO.
      DATA(t130) = VALUE abap_bool( ).
      DATA t131 TYPE abap_bool.
      DATA t132 TYPE abap_bool.
      t132 = xsdbool( t113->indexof( p0 = |SYSTEM_FAILURE| ) < 0 ).
      t131 = t132.
      IF t132 = abap_false.
        t131 = xsdbool( t113->indexof( p0 = |COMMUNICATION_FAILURE| ) < 0 ).
      ENDIF.
      t130 = t131.
      IF t131 = abap_false.
        t130 = xsdbool( t113->indexof( p0 = |RESOURCE_FAILURE| ) < 0 ).
      ENDIF.
      IF t130 = abap_true.
        DATA t148 TYPE REF TO zcl_lnt_issue.
        CLEAR t148.
        DATA(t151) = |RFC error handling: At least one unhandled exception from SY|.
        t151 = t151 && |STEM_FAILURE, COMMUNICATION_FAILURE, RESOURCE_FAILURE|.
        DATA(t152) = VALUE string( ).
        DATA t153 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t158.
        DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t162.
        t162->load( ).
        APPEND |SingleFile| TO t162->items.
        t162->save( ).
        t158 = t162.
        DATA t168 TYPE string.
        DATA(t169) = |Checks that exceptions 'system_failure' and 'communication_f|.
        t169 = t169 && |ailure' are handled in RFC calls|.
        t168 = t169.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t170.
        DATA(t173) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
        t173 = t173 && |-US/abenrfc_exception.html|.
        DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t174->has = abap_true.
        t174->value = t173.
        t170 = t174.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t180->has = abap_true.
        t180->value = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc.|.
        t176 = t180.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        DATA(t185) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc\n  EXCEPTIONS\n    s|.
        t185 = t185 && |ystem_failure        = 1 MESSAGE msg\n    communication_failu|.
        t185 = t185 && |re = 2 MESSAGE msg\n    resource_failure      = 3\n    OTHERS |.
        t185 = t185 && |               = 4.|.
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t185.
        t182 = t186.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t153 = NEW zcl_lnt_irule_metadata( i_key = |rfc_error_handling| i_title = |RFC error handling| i_short_description = t168 i_bad_example = t176 i_good_example = t182 i_extended_information = t170 i_tags = t158 i_pragma = t188 i_pseudo_comment = t190 ).
        CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
        t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t192 ).
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t193 ).
        ENDIF.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t194 ).
        ENDIF.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t195 ).
        ENDIF.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t196 ).
        ENDIF.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t197 ).
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t198 ).
        ENDIF.
        CREATE OBJECT t153->zlnt_json_ownkeys_70e5fd461788.
        t153->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t200 ).
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t202 ).
        ENDIF.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t204 ).
        ENDIF.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t206 ).
        ENDIF.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t208 ).
        ENDIF.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t210 ).
        ENDIF.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t212 ).
        ENDIF.
        t152 = t153->key.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t213 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t215 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t215.
        t148 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t14 i_message_26cb = t151 i_key = t152 i_severity = t213 i_fix = t215 ).
        t2->load( ).
        APPEND t148 TO t2->items.
        t2->save( ).
        CONTINUE.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_rfc_errr_hndlng_cnf( me->g_c_i_s_r_rf_er_hn_ts_rf_er_hn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_rfc_errr_hndlng_cnf( me->g_c_i_s_r_rf_er_hn_ts_rf_er_hn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
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
        t1 = NEW zcl_lnt_rfc_errr_hndlng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_rf_er_hn_ts_rf_er_hn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rf_er_hn_ts_rf_er_hn( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1684_77b131f7340c.
  ENDMETHOD.
ENDCLASS.
