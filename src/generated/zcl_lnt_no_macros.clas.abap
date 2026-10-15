* TS: src/rules/no_macros.ts:11:1 NoMacros
CLASS zcl_lnt_no_macros DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rls_n_mcr_ts_n_mcr RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS st_cn_in_sr_rls_n_mcr_ts_n_mcr IMPORTING i_conf TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS rn_pr_in_sr_rls_n_mcr_ts_n_mcr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_macros IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_no_macros_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_macros|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No macros|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that macros are not used|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Macros reduce readability and are difficult to debug, use me|.
      t11 = t11 && |thods or form routines instead.\n\nhttps://help.sap.com/doc/ab|.
      t11 = t11 && |apdocu_latest_index_htm/latest/en-US/abenmacros_guidl.html|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |DEFINE _macro.\n  WRITE 'hello'.\nEND-OF-DEFINITION.|.
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
      DATA(t33) = |WRITE 'hello'.|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
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
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
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

  METHOD gt_cn_in_sr_rls_n_mcr_ts_n_mcr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_n_mcr_ts_n_mcr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rls_n_mcr_ts_n_mcr.
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
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE REF TO zif_lnt_statement.
      DATA(t16) = t9.
      t15 = t16->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_define ).
      IF t14 = abap_true.
        DATA(t17) = t2.
        DATA t18 TYPE REF TO zcl_lnt_issue.
        CLEAR t18.
        DATA(t19) = t1.
        DATA(t20) = t9.
        DATA(t21) = |Do not define macros|.
        DATA(t22) = VALUE string( ).
        DATA t23 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t23.
        DATA t24 TYPE string.
        DATA(t25) = |no_macros|.
        t24 = t25.
        DATA t26 TYPE string.
        DATA(t27) = |No macros|.
        t26 = t27.
        DATA t28 TYPE string.
        DATA(t29) = |Checks that macros are not used|.
        t28 = t29.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        DATA(t32) = abap_true.
        IF t32 = abap_true.
          DATA(t33) = |Macros reduce readability and are difficult to debug, use me|.
          t33 = t33 && |thods or form routines instead.\n\nhttps://help.sap.com/doc/ab|.
          t33 = t33 && |apdocu_latest_index_htm/latest/en-US/abenmacros_guidl.html|.
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
        DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t36.
        DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t41.
          t40 = t41.
          DATA(t42) = t40.
          DATA(t43) = |SingleFile|.
          t42->load( ).
          APPEND t43 TO t42->items.
          t42->save( ).
          DATA(t44) = t40.
          t39 = t44.
          t37 = t39.
        ELSE.
          DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t45.
          t37 = t45.
        ENDIF.
        t36 = t37.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA(t48) = abap_true.
        IF t48 = abap_true.
          DATA(t49) = |DEFINE _macro.\n  WRITE 'hello'.\nEND-OF-DEFINITION.|.
          DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t50->has = abap_true.
          t50->value = t49.
          t47 = t50.
        ELSE.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          t47 = t51.
        ENDIF.
        t46 = t47.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA(t54) = abap_true.
        IF t54 = abap_true.
          DATA(t55) = |WRITE 'hello'.|.
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t55.
          t53 = t56.
        ELSE.
          DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t57.
          t53 = t57.
        ENDIF.
        t52 = t53.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        t58 = t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        t60 = t61.
        t23 = NEW zcl_lnt_irule_metadata( i_key = t24 i_title = t26 i_short_description = t28 i_bad_example = t46 i_good_example = t52 i_extended_information = t30 i_tags = t36 i_pragma = t58 i_pseudo_comment = t60 ).
        CREATE OBJECT t23->zlnt_view_ownkeys_b0e8086400eb.
        t23->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t62 ).
        ENDIF.
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t63 ).
        ENDIF.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t64 ).
        ENDIF.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t65 ).
        ENDIF.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t66 ).
        ENDIF.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t67 ).
        ENDIF.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t68 ).
        ENDIF.
        CREATE OBJECT t23->zlnt_json_ownkeys_70e5fd461788.
        t23->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t69) = |key|.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
        ENDIF.
        DATA(t71) = |title|.
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
        ENDIF.
        DATA(t73) = |shortDescription|.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t73 p1 = t74 ).
        ENDIF.
        DATA(t75) = |extendedInformation|.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t75 p1 = t76 ).
        ENDIF.
        DATA(t77) = |tags|.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
        ENDIF.
        DATA(t79) = |badExample|.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
        ENDIF.
        DATA(t81) = |goodExample|.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
        ENDIF.
        t22 = t23->key.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t84) = me->conf.
        t83 = t84->zlnt_view_read_sr_15c06369f827( ).
        DATA t85 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t86.
        t18 = zcl_lnt_issue=>at_statement( i_file = t19 i_statement = t20 i_message_26cb = t21 i_key = t22 i_severity = t83 i_fix = t85 i_alternative_fixes = t86 ).
        t17->load( ).
        APPEND t18 TO t17->items.
        t17->save( ).
      ENDIF.
    ENDDO.
    DATA(t87) = t2.
    result = t87.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_no_macros_conf( me->gt_cn_in_sr_rls_n_mcr_ts_n_mcr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_no_macros_conf( me->gt_cn_in_sr_rls_n_mcr_ts_n_mcr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_macros_conf.
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
        t1 = NEW zcl_lnt_no_macros_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_n_mcr_ts_n_mcr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rls_n_mcr_ts_n_mcr( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1619_81b56ad176aa.
  ENDMETHOD.
ENDCLASS.
