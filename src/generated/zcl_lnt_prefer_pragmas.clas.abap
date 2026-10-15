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
    DATA(t1) = NEW zcl_lnt_prefer_pragmas_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |prefer_pragmas|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |prefer pragmas over pseudo comments |.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |prefer pragmas over pseudo comments |.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#prefer-pragmas-to-pseudo-comments|.
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
      DATA(t23) = |Styleguide|.
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
      DATA(t29) = |DATA foo1 TYPE i. "#EC NEEDED|.
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
      DATA(t35) = |DATA foo2 TYPE i ##NEEDED.|.
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

  METHOD gt_cn_in_sr_rl_pr_pr_ts_pr_prg.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_pr_ts_pr_prg.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_pr_pr_ts_pr_prg.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_prefer_pragmas_conf.
    CLEAR t4.
    DATA(t5) = CAST zcl_lnt_prefer_pragmas_conf( me->gt_cn_in_sr_rl_pr_pr_ts_pr_prg( ) ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = t7.
    t9 = t10->statements.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
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
        CLEAR t15.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zif_lnt_statement.
      CLEAR t18.
      DATA(t19) = t11.
      t18 = t19->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_st_comment ).
      t16 = xsdbool( t17 = abap_false ).
      IF t16 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t20) = VALUE string( ).
      DATA(t21) = VALUE string( ).
      DATA(t22) = VALUE string( ).
      DATA(t23) = t11.
      t22 = t23->concat_tokens( ).
      DATA(t24) = strlen( t22 ).
      t21 = t22.
      IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t21 TO UPPER CASE.
      ELSE.
        t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
      ENDIF.
      t20 = t21.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE i( ).
      DATA(t28) = t20.
      DATA(t29) = |#EC|.
      DATA(t30) = strlen( t28 ).
      IF t29 IS INITIAL.
        t27 = 0.
      ELSE.
        FIND t29 IN t28 MATCH OFFSET t27.
        IF sy-subrc <> 0.
          t27 = -1.
        ENDIF.
      ENDIF.
      DATA(t31) = 0.
      t26 = xsdbool( t27 >= t31 ).
      DATA(t32) = abap_false.
      t25 = xsdbool( t26 = t32 ).
      IF t25 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      DATA(t34) = t4.
      t33 = t34->zlnt_view_read_sr_527943ee5149( ).
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
              DATA(t40) = VALUE string( ).
              DATA(t41) = VALUE string( ).
              t35 = NEW zcl_lnt_shape_4696a092( view_source = t38 i_pseudo = t40 i_pragma = t41 ).
            ENDIF.
          ENDIF.
        ELSE.
          t35 ?= t36.
        ENDIF.
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = VALUE i( ).
        DATA(t44) = t20.
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE string( ).
        DATA(t47) = t35.
        t46 = t47->zlnt_view_read_sh_44cc55f97120( ).
        DATA(t48) = strlen( t46 ).
        t45 = t46.
        IF t45 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t45 TO UPPER CASE.
        ELSE.
          t45 = zlnt_runtime_uppe_91169605024d=>full( t45 ).
        ENDIF.
        DATA(t49) = strlen( t44 ).
        IF t45 IS INITIAL.
          t43 = 0.
        ELSE.
          FIND t45 IN t44 MATCH OFFSET t43.
          IF sy-subrc <> 0.
            t43 = -1.
          ENDIF.
        ENDIF.
        DATA(t50) = 0.
        t42 = xsdbool( t43 >= t50 ).
        IF t42 = abap_true.
          DATA(t51) = VALUE string( ).
          DATA(t52) = VALUE string( ).
          DATA(t53) = VALUE string( ).
          DATA(t54) = |Prefer pragma |.
          DATA(t55) = VALUE string( ).
          DATA(t56) = t35.
          t55 = t56->zlnt_view_read_sh_5670a38998b6( ).
          DATA(t57) = strlen( t54 ).
          t53 = |{ t54 }{ t55 }|.
          DATA(t58) = ||.
          DATA(t59) = strlen( t53 ).
          t52 = |{ t53 }{ t58 }|.
          t51 = t52.
          DATA(t60) = t2.
          DATA t61 TYPE REF TO zcl_lnt_issue.
          CLEAR t61.
          DATA(t62) = t1.
          DATA(t63) = t11.
          DATA(t64) = t51.
          DATA(t65) = VALUE string( ).
          DATA t66 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t66.
          DATA(t67) = VALUE string( ).
          DATA(t68) = |prefer_pragmas|.
          t67 = t68.
          DATA(t69) = VALUE string( ).
          DATA(t70) = |prefer pragmas over pseudo comments |.
          t69 = t70.
          DATA(t71) = VALUE string( ).
          DATA(t72) = |prefer pragmas over pseudo comments |.
          t71 = t72.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA(t75) = abap_true.
          IF t75 = abap_true.
            DATA(t76) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
            t76 = t76 && |nABAP.md#prefer-pragmas-to-pseudo-comments|.
            DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t77->has = abap_true.
            t77->value = t76.
            t74 = t77.
          ELSE.
            DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t78.
            t74 = t78.
          ENDIF.
          t73 = t74.
          DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t79.
          DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t82.
            DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t83.
            DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t84.
            CREATE OBJECT t84.
            t83 = t84.
            DATA(t85) = t83.
            DATA(t86) = |SingleFile|.
            t85->load( ).
            APPEND t86 TO t85->items.
            t85->save( ).
            DATA(t87) = t83.
            DATA(t88) = |Styleguide|.
            t87->load( ).
            APPEND t88 TO t87->items.
            t87->save( ).
            DATA(t89) = t83.
            t82 = t89.
            t80 = t82.
          ELSE.
            DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t90.
            t80 = t90.
          ENDIF.
          t79 = t80.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA(t94) = |DATA foo1 TYPE i. "#EC NEEDED|.
            DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t95->has = abap_true.
            t95->value = t94.
            t92 = t95.
          ELSE.
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t96.
            t92 = t96.
          ENDIF.
          t91 = t92.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          DATA(t99) = abap_true.
          IF t99 = abap_true.
            DATA(t100) = |DATA foo2 TYPE i ##NEEDED.|.
            DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t101->has = abap_true.
            t101->value = t100.
            t98 = t101.
          ELSE.
            DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t102.
            t98 = t102.
          ENDIF.
          t97 = t98.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t103.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t104.
          t103 = t104.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          t105 = t106.
          t66 = NEW zcl_lnt_irule_metadata( i_key = t67 i_title = t69 i_short_description = t71 i_bad_example = t91 i_good_example = t97 i_extended_information = t73 i_tags = t79 i_pragma = t103 i_pseudo_comment = t105 ).
          CREATE OBJECT t66->zlnt_view_ownkeys_b0e8086400eb.
          t66->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          IF t66->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t66->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t107 ).
          ENDIF.
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
          DATA(t114) = |key|.
          DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t115.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
          ENDIF.
          DATA(t116) = |title|.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
          ENDIF.
          DATA(t118) = |shortDescription|.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
          ENDIF.
          DATA(t120) = |extendedInformation|.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
          ENDIF.
          DATA(t122) = |tags|.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
          ENDIF.
          DATA(t124) = |badExample|.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
          ENDIF.
          DATA(t126) = |goodExample|.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t66->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t66->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
          ENDIF.
          t65 = t66->key.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA(t129) = CAST zcl_lnt_prefer_pragmas_conf( me->gt_cn_in_sr_rl_pr_pr_ts_pr_prg( ) ).
          t128 = t129->zlnt_view_read_sr_15c06369f827( ).
          DATA t130 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t130.
          DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t131.
          t61 = zcl_lnt_issue=>at_statement( i_file = t62 i_statement = t63 i_message_26cb = t64 i_key = t65 i_severity = t128 i_fix = t130 i_alternative_fixes = t131 ).
          t60->load( ).
          APPEND t61 TO t60->items.
          t60->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t132) = t2.
    result = t132.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prefer_pragmas_conf( me->gt_cn_in_sr_rl_pr_pr_ts_pr_prg( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prefer_pragmas_conf( me->gt_cn_in_sr_rl_pr_pr_ts_pr_prg( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prefer_pragmas_conf.
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
        t1 = NEW zcl_lnt_prefer_pragmas_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_pr_pr_ts_pr_prg( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_pr_pr_ts_pr_prg( i_file = i_file ) ).
    result = t1.

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
