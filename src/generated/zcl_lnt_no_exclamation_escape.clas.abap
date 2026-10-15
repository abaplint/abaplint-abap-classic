* TS: src/rules/no_exclamation_escape.ts:12:1 NoExclamationEscape
CLASS zcl_lnt_no_exclamation_escape DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_exclmtn_escp_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_sr_rl_n_ex_es_ts_n_ex_es RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_exclmtn_escp_cnf.
    METHODS s_c_i_sr_rl_n_ex_es_ts_n_ex_es IMPORTING i_conf TYPE REF TO zcl_lnt_n_exclmtn_escp_cnf.
    METHODS r_p_i_sr_rl_n_ex_es_ts_n_ex_es IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_exclamation_escape IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_n_exclmtn_escp_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_exclamation_escape|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No exclamation escape|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects and removes exclamation marks (!) used to escape ide|.
    t7 = t7 && |ntifiers|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Exclamation marks are not needed when the identifier is not |.
      t11 = t11 && |a reserved keyword, or could be avoided by renaming.|.
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
      DATA(t23) = |Quickfix|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |methods CONVERT changing !CO_sdf type ref to ZCL_sdf optiona|.
      t29 = t29 && |l.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |methods CONVERT changing CO_sdf type ref to ZCL_sdf optional|.
      t35 = t35 && |.|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
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
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_sr_rl_n_ex_es_ts_n_ex_es.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_ex_es_ts_n_ex_es.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_sr_rl_n_ex_es_ts_n_ex_es.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t6.
    t4 = t5->get_tokens( i_with_pragmas = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t7.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_lx_identifier ).
      IF t12 = abap_true.
        DATA t14 TYPE string.
        DATA t15 TYPE string.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        DATA t17 TYPE REF TO zcl_lnt_lx_identifier.
        DATA(t18) = t7.
        t17 ?= t18.
        t16 = t17.
        DATA t19 TYPE string.
        DATA(t20) = t16.
        t19 = t20->str.
        t15 = t19.
        t14 = t15.
        DATA(t21) = VALUE abap_bool( ).
        DATA(t22) = t14.
        DATA(t23) = |!|.
        DATA(t24) = strlen( t22 ).
        DATA t25 TYPE i.
        DATA(t26) = VALUE i( ).
        DATA(t27) = VALUE string( ).
        t25 = strlen( t23 ).
        IF t25 = 0.
          t21 = abap_true.
        ELSEIF t25 <= t24.
          t26 = 0.
          t27 = t22+t26(t25).
          IF t27 = t23.
            t21 = abap_true.
          ENDIF.
        ENDIF.
        IF t21 = abap_true.
          DATA(t28) = VALUE string( ).
          DATA(t29) = VALUE string( ).
          DATA t30 TYPE string.
          DATA(t31) = t14.
          t30 = t31.
          DATA(t32) = VALUE string( ).
          DATA(t33) = t30.
          DATA(t34) = 1.
          DATA t35 TYPE i.
          DATA(t36) = t30.
          DATA(t37) = strlen( t36 ).
          t35 = t37.
          DATA(t38) = strlen( t33 ).
          t34 = COND i( WHEN t34 < 0 THEN 0 WHEN t34 > t38 THEN t38 ELSE t34 ).
          t35 = COND i( WHEN t35 < 0 THEN 0 WHEN t35 > t38 THEN t38 ELSE t35 ).
          IF t34 > t35.
            t38 = t34.
            t34 = t35.
            t35 = t38.
          ENDIF.
          t38 = t35 - t34.
          t32 = t33+t34(t38).
          t29 = t32.
          t28 = t29.
          DATA t39 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t40 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t41) = t1.
          DATA t42 TYPE REF TO zcl_lnt_lx_identifier.
          DATA(t43) = t7.
          t42 ?= t43.
          DATA(t44) = t28.
          t40 = zcl_lnt_edit_helper=>replace_token( i_file = t41 i_token = t42 i_text = t44 ).
          t39 = t40.
          DATA(t45) = t2.
          DATA t46 TYPE REF TO zcl_lnt_issue.
          CLEAR t46.
          DATA(t47) = t1.
          DATA t48 TYPE REF TO zcl_lnt_lx_identifier.
          DATA(t49) = t7.
          t48 ?= t49.
          DATA(t50) = |Do not use exclamation mark to escape identifiers|.
          DATA(t51) = VALUE string( ).
          DATA t52 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t52.
          DATA t53 TYPE string.
          DATA(t54) = |no_exclamation_escape|.
          t53 = t54.
          DATA t55 TYPE string.
          DATA(t56) = |No exclamation escape|.
          t55 = t56.
          DATA t57 TYPE string.
          DATA(t58) = |Detects and removes exclamation marks (!) used to escape ide|.
          t58 = t58 && |ntifiers|.
          t57 = t58.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          DATA(t61) = abap_true.
          IF t61 = abap_true.
            DATA(t62) = |Exclamation marks are not needed when the identifier is not |.
            t62 = t62 && |a reserved keyword, or could be avoided by renaming.|.
            DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t63->has = abap_true.
            t63->value = t62.
            t60 = t63.
          ELSE.
            DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t64.
            t60 = t64.
          ENDIF.
          t59 = t60.
          DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t65.
          DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t66.
          DATA(t67) = abap_true.
          IF t67 = abap_true.
            DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t70.
            t69 = t70.
            DATA(t71) = t69.
            DATA(t72) = |SingleFile|.
            t71->load( ).
            APPEND t72 TO t71->items.
            t71->save( ).
            DATA(t73) = t69.
            DATA(t74) = |Quickfix|.
            t73->load( ).
            APPEND t74 TO t73->items.
            t73->save( ).
            DATA(t75) = t69.
            t68 = t75.
            t66 = t68.
          ELSE.
            DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t76.
            t66 = t76.
          ENDIF.
          t65 = t66.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t78.
          DATA(t79) = abap_true.
          IF t79 = abap_true.
            DATA(t80) = |methods CONVERT changing !CO_sdf type ref to ZCL_sdf optiona|.
            t80 = t80 && |l.|.
            DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t81->has = abap_true.
            t81->value = t80.
            t78 = t81.
          ELSE.
            DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t82.
            t78 = t82.
          ENDIF.
          t77 = t78.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          DATA(t85) = abap_true.
          IF t85 = abap_true.
            DATA(t86) = |methods CONVERT changing CO_sdf type ref to ZCL_sdf optional|.
            t86 = t86 && |.|.
            DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t87->has = abap_true.
            t87->value = t86.
            t84 = t87.
          ELSE.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            t84 = t88.
          ENDIF.
          t83 = t84.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          t89 = t90.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          t91 = t92.
          t52 = NEW zcl_lnt_irule_metadata( i_key = t53 i_title = t55 i_short_description = t57 i_bad_example = t77 i_good_example = t83 i_extended_information = t59 i_tags = t65 i_pragma = t89 i_pseudo_comment = t91 ).
          CREATE OBJECT t52->zlnt_view_ownkeys_b0e8086400eb.
          t52->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t93 ).
          ENDIF.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t94 ).
          ENDIF.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t95 ).
          ENDIF.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t96 ).
          ENDIF.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t97 ).
          ENDIF.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t98 ).
          ENDIF.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t99 ).
          ENDIF.
          CREATE OBJECT t52->zlnt_json_ownkeys_70e5fd461788.
          t52->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t100) = |key|.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
          ENDIF.
          DATA(t102) = |title|.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
          ENDIF.
          DATA(t104) = |shortDescription|.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
          ENDIF.
          DATA(t106) = |extendedInformation|.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
          ENDIF.
          DATA(t108) = |tags|.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
          ENDIF.
          DATA(t110) = |badExample|.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
          ENDIF.
          DATA(t112) = |goodExample|.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t113.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
          ENDIF.
          t51 = t52->key.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t115) = me->conf.
          t114 = t115->zlnt_view_read_sr_15c06369f827( ).
          DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA(t118) = t39.
            t116 = t118.
          ELSE.
            DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t119.
            t116 = t119.
          ENDIF.
          t46 = zcl_lnt_issue=>at_token( i_file = t47 i_token = t48 i_message_26cb = t50 i_key = t51 i_severity = t114 i_fix = t116 ).
          t45->load( ).
          APPEND t46 TO t45->items.
          t45->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t120) = t2.
    result = t120.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_exclmtn_escp_cnf( me->g_c_i_sr_rl_n_ex_es_ts_n_ex_es( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_exclmtn_escp_cnf( me->g_c_i_sr_rl_n_ex_es_ts_n_ex_es( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_exclmtn_escp_cnf.
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
        t1 = NEW zcl_lnt_n_exclmtn_escp_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_n_ex_es_ts_n_ex_es( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_ex_es_ts_n_ex_es( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1613_f437d01b6342.
  ENDMETHOD.
ENDCLASS.
