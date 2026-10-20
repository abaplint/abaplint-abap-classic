* TS: src/rules/prefer_pragmas.ts:29:1 PreferPragmas
CLASS zcl_lnt_prefer_pragmas DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prefer_pragmas_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_pr_pr_ts_pr_prg RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_pragmas_conf.
    METHODS st_cn_in_sr_rl_pr_pr_ts_pr_prg IMPORTING i_conf TYPE REF TO zcl_lnt_prefer_pragmas_conf.
    METHODS rn_pr_in_sr_rl_pr_pr_ts_pr_prg IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_pragmas IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prefer_pragmas_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#prefer-pragmas-to-pseudo-comments|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |DATA foo1 TYPE i. "#EC NEEDED|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |DATA foo2 TYPE i ##NEEDED.|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |prefer_pragmas| i_title = |prefer pragmas over pseudo comments | i_short_description = |prefer pragmas over pseudo comments | i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_pr_ts_pr_prg.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_pr_ts_pr_prg.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_pr_pr_ts_pr_prg.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_prefer_pragmas_conf.
    t4 = CAST zcl_lnt_prefer_pragmas_conf( me->gt_cn_in_sr_rl_pr_pr_ts_pr_prg( ) ).
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->statements.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_statement.
      t18 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_st_comment ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t20) = VALUE string( ).
      DATA(t21) = VALUE string( ).
      DATA(t22) = VALUE string( ).
      t22 = t11->concat_tokens( ).
      DATA(t24) = strlen( t22 ).
      t21 = t22.
      IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t21 TO UPPER CASE.
      ELSE.
        t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
      ENDIF.
      t20 = t21.
      DATA(t27) = VALUE i( ).
      DATA(t29) = |#EC|.
      DATA(t30) = strlen( t20 ).
      IF t29 IS INITIAL.
        t27 = 0.
      ELSE.
        FIND t29 IN t20 MATCH OFFSET t27.
        IF sy-subrc <> 0.
          t27 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( xsdbool( t27 >= 0 ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      t33 = t4->zlnt_view_read_sr_527943ee5149( ).
      DATA t35 TYPE REF TO zcl_lnt_shape_4696a092.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      DATA(t37) = VALUE i( ).
      DO.
        t33->load( ).
        IF t37 >= lines( t33->items ).
          EXIT.
        ENDIF.
        CLEAR t36.
        READ TABLE t33->items INDEX t37 + 1 INTO t36.
        t37 = t37 + 1.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t35.
        IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t36.
          CLEAR t35.
          IF t38 IS BOUND.
            IF t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t35 ?= t38->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t35 IS NOT BOUND.
              IF t38->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t39.
                IF t38->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t39 ?= t38->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t39->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              t35 = NEW zcl_lnt_shape_4696a092( view_source = t38 i_pseudo = VALUE string( ) i_pragma = VALUE string( ) ).
            ENDIF.
          ENDIF.
        ELSE.
          t35 ?= t36.
        ENDIF.
        DATA(t43) = VALUE i( ).
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE string( ).
        t46 = t35->zlnt_view_read_sh_44cc55f97120( ).
        DATA(t48) = strlen( t46 ).
        t45 = t46.
        IF t45 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t45 TO UPPER CASE.
        ELSE.
          t45 = zlnt_runtime_uppe_91169605024d=>full( t45 ).
        ENDIF.
        DATA(t49) = strlen( t20 ).
        IF t45 IS INITIAL.
          t43 = 0.
        ELSE.
          FIND t45 IN t20 MATCH OFFSET t43.
          IF sy-subrc <> 0.
            t43 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t43 >= 0 ) = abap_true.
          DATA(t51) = VALUE string( ).
          DATA(t53) = VALUE string( ).
          DATA(t54) = |Prefer pragma |.
          DATA(t55) = VALUE string( ).
          t55 = t35->zlnt_view_read_sh_5670a38998b6( ).
          DATA(t57) = strlen( t54 ).
          t53 = |{ t54 }{ t55 }|.
          DATA(t59) = strlen( t53 ).
          t51 = |{ t53 }{ || }|.
          DATA t61 TYPE REF TO zcl_lnt_issue.
          CLEAR t61.
          DATA(t65) = VALUE string( ).
          DATA t66 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          DATA(t76) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t76 = t76 && |nABAP.md#prefer-pragmas-to-pseudo-comments|.
          DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t77->has = abap_true.
          t77->value = t76.
          t73 = t77.
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t79.
          DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t83.
          t83->load( ).
          APPEND |SingleFile| TO t83->items.
          t83->save( ).
          t83->load( ).
          APPEND |Styleguide| TO t83->items.
          t83->save( ).
          t79 = t83.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t95->has = abap_true.
          t95->value = |DATA foo1 TYPE i. "#EC NEEDED|.
          t91 = t95.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t101->has = abap_true.
          t101->value = |DATA foo2 TYPE i ##NEEDED.|.
          t97 = t101.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t103.
          CLEAR t103.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          CLEAR t105.
          t66 = NEW zcl_lnt_irule_metadata( i_key = |prefer_pragmas| i_title = |prefer pragmas over pseudo comments | i_short_description = |prefer pragmas over pseudo comments | i_bad_example = t91 i_good_example = t97 i_extended_information = t73 i_tags = t79 i_pragma = t103 i_pseudo_comment = t105 ).
          CREATE OBJECT t66->zlnt_view_ownkeys_b0e8086400eb.
          t66->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t107 ).
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t108 ).
          ENDIF.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t109 ).
          ENDIF.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t110 ).
          ENDIF.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t111 ).
          ENDIF.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t112 ).
          ENDIF.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t113.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t113 ).
          ENDIF.
          CREATE OBJECT t66->zlnt_json_ownkeys_70e5fd461788.
          t66->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t115.
          t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t115 ).
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t117 ).
          ENDIF.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t119 ).
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t121 ).
          ENDIF.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t123 ).
          ENDIF.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t125 ).
          ENDIF.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t127 ).
          ENDIF.
          t65 = t66->key.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          t128 = CAST zcl_lnt_prefer_pragmas_conf( me->gt_cn_in_sr_rl_pr_pr_ts_pr_prg( ) )->zlnt_view_read_sr_15c06369f827( ).
          DATA t130 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t130.
          DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t131.
          t61 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t11 i_message_26cb = t51 i_key = t65 i_severity = t128 i_fix = t130 i_alternative_fixes = t131 ).
          t2->load( ).
          APPEND t61 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prefer_pragmas_conf( me->gt_cn_in_sr_rl_pr_pr_ts_pr_prg( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prefer_pragmas_conf( me->gt_cn_in_sr_rl_pr_pr_ts_pr_prg( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prefer_pragmas_conf.
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
        t1 = NEW zcl_lnt_prefer_pragmas_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_pr_pr_ts_pr_prg( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_pr_pr_ts_pr_prg( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1662_4d2a34a9534f.
  ENDMETHOD.
ENDCLASS.
