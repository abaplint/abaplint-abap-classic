* TS: src/rules/prefer_corresponding.ts:12:1 PreferCorresponding
CLASS zcl_lnt_prefer_corresponding DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfr_crrspndng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_pr_cr_ts_pr_crr RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfr_crrspndng_cnf.
    METHODS st_cn_in_sr_rl_pr_cr_ts_pr_crr IMPORTING i_conf TYPE REF TO zcl_lnt_prfr_crrspndng_cnf.
    METHODS rn_pr_in_sr_rl_pr_cr_ts_pr_crr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_corresponding IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prfr_crrspndng_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |prefer_corresponding|.
    DATA t4 TYPE string.
    t4 = |Prefer corresponding( ) to MOVE-CORRESPONDING|.
    DATA t6 TYPE string.
    DATA(t7) = |Prefer corresponding( ) to MOVE-CORRESPONDING, from v740sp05|.
    t7 = t7 && | and up|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#prefer-functional-to-procedural-language-constructs|.
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
    DATA(t23) = |Upport|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |Styleguide|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |MOVE-CORRESPONDING foo TO bar.|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t37) = |bar = CORRESPONDING #( foo ).|.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = t37.
    t34 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_cr_ts_pr_crr.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_cr_ts_pr_crr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_pr_cr_ts_pr_crr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    DATA t7 TYPE REF TO zif_lnt_configuration.
    t7 = me->reg->get_config( ).
    t6 = t7->get_release( ).
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    DATA t11 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t11 = zcl_lnt_version_module=>release_b8cd.
    DATA(t12) = |v740sp05|.
    t10 = t11->get( p0 = t12 ).
    t9 = t10.
    t5 = zcl_lnt_version_module=>release_at_least( i_running = t6 i_required = t9 ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t14 TYPE string.
    t14 = |Use CORRESPONDING type( ... ) instead of MOVE-CORRESPONDING|.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t19 = t1->statements.
    t16 = t19.
    DATA t21 TYPE REF TO zcl_lnt_statement_node.
    DATA t22 TYPE REF TO object.
    DATA(t23) = VALUE i( ).
    DO.
      t16->load( ).
      IF t23 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t16->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE REF TO zif_lnt_statement.
      t28 = t21->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_move_corresponding ).
      t26 = t27.
      IF t27 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE i.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zcl_lnt_abstract_node.
        t34 = t21.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t36 = t34->children.
        t33 = t36.
        t32 ?= t33.
        t32->load( ).
        t31 = lines( t32->items ).
        DATA(t38) = 7.
        t30 = xsdbool( t31 = t38 ).
        t26 = t30.
      ENDIF.
      IF t26 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_issue.
        CLEAR t40.
        DATA(t44) = VALUE string( ).
        DATA t45 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t45.
        DATA t46 TYPE string.
        t46 = |prefer_corresponding|.
        DATA t48 TYPE string.
        t48 = |Prefer corresponding( ) to MOVE-CORRESPONDING|.
        DATA t50 TYPE string.
        DATA(t51) = |Prefer corresponding( ) to MOVE-CORRESPONDING, from v740sp05|.
        t51 = t51 && | and up|.
        t50 = t51.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA(t55) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t55 = t55 && |nABAP.md#prefer-functional-to-procedural-language-constructs|.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t55.
        t52 = t56.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t58.
        DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t63.
        t62 = t63.
        DATA(t65) = |SingleFile|.
        t62->load( ).
        APPEND t65 TO t62->items.
        t62->save( ).
        DATA(t67) = |Upport|.
        t62->load( ).
        APPEND t67 TO t62->items.
        t62->save( ).
        DATA(t69) = |Styleguide|.
        t62->load( ).
        APPEND t69 TO t62->items.
        t62->save( ).
        t58 = t62.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        DATA(t75) = |MOVE-CORRESPONDING foo TO bar.|.
        DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t76->has = abap_true.
        t76->value = t75.
        t72 = t76.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        DATA(t81) = |bar = CORRESPONDING #( foo ).|.
        DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t82->has = abap_true.
        t82->value = t81.
        t78 = t82.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        t45 = NEW zcl_lnt_irule_metadata( i_key = t46 i_title = t48 i_short_description = t50 i_bad_example = t72 i_good_example = t78 i_extended_information = t52 i_tags = t58 i_pragma = t84 i_pseudo_comment = t86 ).
        CREATE OBJECT t45->zlnt_view_ownkeys_b0e8086400eb.
        t45->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t88 ).
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t89 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t93 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t45->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t45->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t94 ).
        ENDIF.
        CREATE OBJECT t45->zlnt_json_ownkeys_70e5fd461788.
        t45->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t95) = |key|.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
        DATA(t97) = |title|.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
        ENDIF.
        DATA(t99) = |shortDescription|.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
        ENDIF.
        DATA(t101) = |extendedInformation|.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
        ENDIF.
        DATA(t103) = |tags|.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
        ENDIF.
        DATA(t105) = |badExample|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        DATA(t107) = |goodExample|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t45->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t45->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        t44 = t45->key.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t109 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t111 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t112.
        t40 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t21 i_message_26cb = t14 i_key = t44 i_severity = t109 i_fix = t111 i_alternative_fixes = t112 ).
        t2->load( ).
        APPEND t40 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prfr_crrspndng_cnf( me->gt_cn_in_sr_rl_pr_cr_ts_pr_crr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prfr_crrspndng_cnf( me->gt_cn_in_sr_rl_pr_cr_ts_pr_crr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfr_crrspndng_cnf.
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
        t1 = NEW zcl_lnt_prfr_crrspndng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_pr_cr_ts_pr_crr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_pr_cr_ts_pr_crr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1653_a5fe7da662e4.
  ENDMETHOD.
ENDCLASS.
