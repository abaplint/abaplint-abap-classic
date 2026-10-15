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
    DATA(t1) = NEW zcl_lnt_rfc_errr_hndlng_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |rfc_error_handling|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |RFC error handling|.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t11.
      t10 = t11.
      DATA(t12) = t10.
      DATA(t13) = |SingleFile|.
      t12->load( ).
      APPEND t13 TO t12->items.
      t12->save( ).
      DATA(t14) = t10.
      t9 = t14.
      t7 = t9.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t15.
      t7 = t15.
    ENDIF.
    t6 = t7.
    DATA t16 TYPE string.
    DATA(t17) = |Checks that exceptions 'system_failure' and 'communication_f|.
    t17 = t17 && |ailure' are handled in RFC calls|.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t21 = t21 && |-US/abenrfc_exception.html|.
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
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc.|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc\n  EXCEPTIONS\n    s|.
      t33 = t33 && |ystem_failure        = 1 MESSAGE msg\n    communication_failu|.
      t33 = t33 && |re = 2 MESSAGE msg\n    resource_failure      = 3\n    OTHERS |.
      t33 = t33 && |               = 4.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t16 i_bad_example = t24 i_good_example = t30 i_extended_information = t18 i_tags = t6 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |tags|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |RFC error handling: At least one unhandled exception from SY|.
    t1 = t1 && |STEM_FAILURE, COMMUNICATION_FAILURE, RESOURCE_FAILURE|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_rf_er_hn_ts_rf_er_hn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_rf_er_hn_ts_rf_er_hn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_rf_er_hn_ts_rf_er_hn.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
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
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t16) = t9.
      t15 = t16->get_first_token( ).
      t14 = t15.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE REF TO zif_lnt_statement.
      DATA(t20) = t9.
      t19 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_st_call_function ).
      t17 = xsdbool( t18 = abap_false ).
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      DATA(t24) = t9.
      DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
      t23 = t24->find_first_expression( i_type_9913 = t25 ).
      t22 = xsdbool( t23 IS BOUND ).
      t21 = xsdbool( t22 = abap_false ).
      IF t21 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t28) = t9.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
      t27 = t28->find_first_expression( i_type_9913 = t29 ).
      t26 = t27.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      DATA(t32) = t26.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t33 = t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = t31.
      IF t36 IS INITIAL.
        t35 = abap_true.
      ENDIF.
      t30 = t35.
      IF t30 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_issue.
        CLEAR t37.
        DATA t38 TYPE REF TO zcl_lnt_issue.
        CLEAR t38.
        DATA(t39) = t1.
        DATA(t40) = t14.
        DATA(t41) = |RFC error handling: At least one unhandled exception from SY|.
        t41 = t41 && |STEM_FAILURE, COMMUNICATION_FAILURE, RESOURCE_FAILURE|.
        DATA(t42) = VALUE string( ).
        DATA t43 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t43.
        DATA t44 TYPE string.
        DATA(t45) = |rfc_error_handling|.
        t44 = t45.
        DATA t46 TYPE string.
        DATA(t47) = |RFC error handling|.
        t46 = t47.
        DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t48.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t49.
        DATA(t50) = abap_true.
        IF t50 = abap_true.
          DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t53.
          t52 = t53.
          DATA(t54) = t52.
          DATA(t55) = |SingleFile|.
          t54->load( ).
          APPEND t55 TO t54->items.
          t54->save( ).
          DATA(t56) = t52.
          t51 = t56.
          t49 = t51.
        ELSE.
          DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t57.
          t49 = t57.
        ENDIF.
        t48 = t49.
        DATA t58 TYPE string.
        DATA(t59) = |Checks that exceptions 'system_failure' and 'communication_f|.
        t59 = t59 && |ailure' are handled in RFC calls|.
        t58 = t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t62) = abap_true.
        IF t62 = abap_true.
          DATA(t63) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
          t63 = t63 && |-US/abenrfc_exception.html|.
          DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t64->has = abap_true.
          t64->value = t63.
          t61 = t64.
        ELSE.
          DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t65.
          t61 = t65.
        ENDIF.
        t60 = t61.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc.|.
          DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t70->has = abap_true.
          t70->value = t69.
          t67 = t70.
        ELSE.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          t67 = t71.
        ENDIF.
        t66 = t67.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA(t74) = abap_true.
        IF t74 = abap_true.
          DATA(t75) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc\n  EXCEPTIONS\n    s|.
          t75 = t75 && |ystem_failure        = 1 MESSAGE msg\n    communication_failu|.
          t75 = t75 && |re = 2 MESSAGE msg\n    resource_failure      = 3\n    OTHERS |.
          t75 = t75 && |               = 4.|.
          DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t76->has = abap_true.
          t76->value = t75.
          t73 = t76.
        ELSE.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          t73 = t77.
        ENDIF.
        t72 = t73.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        t78 = t79.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t80 = t81.
        t43 = NEW zcl_lnt_irule_metadata( i_key = t44 i_title = t46 i_short_description = t58 i_bad_example = t66 i_good_example = t72 i_extended_information = t60 i_tags = t48 i_pragma = t78 i_pseudo_comment = t80 ).
        CREATE OBJECT t43->zlnt_view_ownkeys_b0e8086400eb.
        t43->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t43->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t43->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t82 ).
        ENDIF.
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
        DATA(t89) = |key|.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
        ENDIF.
        DATA(t91) = |title|.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
        ENDIF.
        DATA(t93) = |tags|.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
        ENDIF.
        DATA(t95) = |shortDescription|.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
        ENDIF.
        DATA(t97) = |extendedInformation|.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
        ENDIF.
        DATA(t99) = |badExample|.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
        ENDIF.
        DATA(t101) = |goodExample|.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t43->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t43->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
        ENDIF.
        t42 = t43->key.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t104) = me->conf.
        t103 = t104->zlnt_view_read_sr_15c06369f827( ).
        DATA t105 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t105.
        t38 = zcl_lnt_issue=>at_token( i_file = t39 i_token = t40 i_message_26cb = t41 i_key = t42 i_severity = t103 i_fix = t105 ).
        t37 = t38.
        DATA(t106) = t2.
        DATA(t107) = t37.
        t106->load( ).
        APPEND t107 TO t106->items.
        t106->save( ).
        CONTINUE.
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t110 TYPE REF TO zcl_lnt_expression_node.
      DATA(t111) = t26.
      t110 = t111.
      DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
      t109 = t110->find_all_expressions( i_type_9913 = t112 ).
      t108 = t109.
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t114.
      t113 = t114.
      DATA(t115) = t108.
      DATA t116 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t116.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      DATA(t118) = VALUE i( ).
      DO.
        t115->load( ).
        IF t118 >= lines( t115->items ).
          EXIT.
        ENDIF.
        CLEAR t117.
        READ TABLE t115->items INDEX t118 + 1 INTO t117.
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
        DATA(t121) = t113.
        DATA t122 TYPE string.
        DATA t123 TYPE string.
        DATA t124 TYPE REF TO zcl_lnt_abstract_token.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t126) = t116.
        t125 = t126->get_first_token( ).
        t124 = t125.
        DATA t127 TYPE string.
        DATA(t128) = t124.
        t127 = t128->str.
        t123 = t127.
        DATA(t129) = strlen( t123 ).
        t122 = t123.
        IF t122 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t122 TO UPPER CASE.
        ELSE.
          t122 = zlnt_runtime_uppe_91169605024d=>full( t122 ).
        ENDIF.
        t121->load( ).
        APPEND t122 TO t121->items.
        t121->save( ).
      ENDDO.
      DATA(t130) = VALUE abap_bool( ).
      DATA t131 TYPE abap_bool.
      DATA t132 TYPE abap_bool.
      DATA t133 TYPE i.
      DATA(t134) = t113.
      DATA(t135) = |SYSTEM_FAILURE|.
      t133 = t134->indexof( p0 = t135 ).
      DATA(t136) = 0.
      t132 = xsdbool( t133 < t136 ).
      t131 = t132.
      IF t132 = abap_false.
        DATA t137 TYPE abap_bool.
        DATA t138 TYPE i.
        DATA(t139) = t113.
        DATA(t140) = |COMMUNICATION_FAILURE|.
        t138 = t139->indexof( p0 = t140 ).
        DATA(t141) = 0.
        t137 = xsdbool( t138 < t141 ).
        t131 = t137.
      ENDIF.
      t130 = t131.
      IF t131 = abap_false.
        DATA t142 TYPE abap_bool.
        DATA t143 TYPE i.
        DATA(t144) = t113.
        DATA(t145) = |RESOURCE_FAILURE|.
        t143 = t144->indexof( p0 = t145 ).
        DATA(t146) = 0.
        t142 = xsdbool( t143 < t146 ).
        t130 = t142.
      ENDIF.
      IF t130 = abap_true.
        DATA t147 TYPE REF TO zcl_lnt_issue.
        CLEAR t147.
        DATA t148 TYPE REF TO zcl_lnt_issue.
        CLEAR t148.
        DATA(t149) = t1.
        DATA(t150) = t14.
        DATA(t151) = |RFC error handling: At least one unhandled exception from SY|.
        t151 = t151 && |STEM_FAILURE, COMMUNICATION_FAILURE, RESOURCE_FAILURE|.
        DATA(t152) = VALUE string( ).
        DATA t153 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t153.
        DATA t154 TYPE string.
        DATA(t155) = |rfc_error_handling|.
        t154 = t155.
        DATA t156 TYPE string.
        DATA(t157) = |RFC error handling|.
        t156 = t157.
        DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t158.
        DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t159.
        DATA(t160) = abap_true.
        IF t160 = abap_true.
          DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t163.
          t162 = t163.
          DATA(t164) = t162.
          DATA(t165) = |SingleFile|.
          t164->load( ).
          APPEND t165 TO t164->items.
          t164->save( ).
          DATA(t166) = t162.
          t161 = t166.
          t159 = t161.
        ELSE.
          DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t167.
          t159 = t167.
        ENDIF.
        t158 = t159.
        DATA t168 TYPE string.
        DATA(t169) = |Checks that exceptions 'system_failure' and 'communication_f|.
        t169 = t169 && |ailure' are handled in RFC calls|.
        t168 = t169.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t170.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        DATA(t172) = abap_true.
        IF t172 = abap_true.
          DATA(t173) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
          t173 = t173 && |-US/abenrfc_exception.html|.
          DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t174->has = abap_true.
          t174->value = t173.
          t171 = t174.
        ELSE.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          t171 = t175.
        ENDIF.
        t170 = t171.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t177.
        DATA(t178) = abap_true.
        IF t178 = abap_true.
          DATA(t179) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc.|.
          DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t180->has = abap_true.
          t180->value = t179.
          t177 = t180.
        ELSE.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          t177 = t181.
        ENDIF.
        t176 = t177.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        DATA(t184) = abap_true.
        IF t184 = abap_true.
          DATA(t185) = |CALL FUNCTION 'ZRFC'\n  DESTINATION lv_rfc\n  EXCEPTIONS\n    s|.
          t185 = t185 && |ystem_failure        = 1 MESSAGE msg\n    communication_failu|.
          t185 = t185 && |re = 2 MESSAGE msg\n    resource_failure      = 3\n    OTHERS |.
          t185 = t185 && |               = 4.|.
          DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t186->has = abap_true.
          t186->value = t185.
          t183 = t186.
        ELSE.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          t183 = t187.
        ENDIF.
        t182 = t183.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t188 = t189.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        t190 = t191.
        t153 = NEW zcl_lnt_irule_metadata( i_key = t154 i_title = t156 i_short_description = t168 i_bad_example = t176 i_good_example = t182 i_extended_information = t170 i_tags = t158 i_pragma = t188 i_pseudo_comment = t190 ).
        CREATE OBJECT t153->zlnt_view_ownkeys_b0e8086400eb.
        t153->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        IF t153->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t153->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t192 ).
        ENDIF.
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
        DATA(t199) = |key|.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
        ENDIF.
        DATA(t201) = |title|.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
        ENDIF.
        DATA(t203) = |tags|.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
        ENDIF.
        DATA(t205) = |shortDescription|.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
        ENDIF.
        DATA(t207) = |extendedInformation|.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
        ENDIF.
        DATA(t209) = |badExample|.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
        ENDIF.
        DATA(t211) = |goodExample|.
        DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t212.
        IF t153->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t153->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
        ENDIF.
        t152 = t153->key.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t214) = me->conf.
        t213 = t214->zlnt_view_read_sr_15c06369f827( ).
        DATA t215 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t215.
        t148 = zcl_lnt_issue=>at_token( i_file = t149 i_token = t150 i_message_26cb = t151 i_key = t152 i_severity = t213 i_fix = t215 ).
        t147 = t148.
        DATA(t216) = t2.
        DATA(t217) = t147.
        t216->load( ).
        APPEND t217 TO t216->items.
        t216->save( ).
        CONTINUE.
      ENDIF.
    ENDDO.
    DATA(t218) = t2.
    result = t218.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rfc_errr_hndlng_cnf( me->g_c_i_s_r_rf_er_hn_ts_rf_er_hn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rfc_errr_hndlng_cnf( me->g_c_i_s_r_rf_er_hn_ts_rf_er_hn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rfc_errr_hndlng_cnf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rf_er_hn_ts_rf_er_hn( i_file = i_file ) ).
    result = t1.

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
