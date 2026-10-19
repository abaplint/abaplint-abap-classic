* TS: src/rules/identical_move.ts:13:1 IdenticalMove
CLASS zcl_lnt_identical_move DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_identical_move_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_id_mv_ts_idn_mv RETURNING VALUE(result) TYPE REF TO zcl_lnt_identical_move_conf.
    METHODS st_cn_in_sr_rl_id_mv_ts_idn_mv IMPORTING i_conf TYPE REF TO zcl_lnt_identical_move_conf.
    METHODS rn_pr_in_sr_rl_id_mv_ts_idn_mv IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_ac26 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_identical_move IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_identical_move_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Moving the same value from left to right or right to left is|.
    t7 = t7 && | redundant.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = |DATA lv_value TYPE i.\nlv_value = lv_value.|.
    t18 = t22.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |DATA lv_value TYPE i.\nlv_value = 5.|.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |identical_move| i_title = |Identical move| i_short_description = t6 i_bad_example = t18 i_good_example = t28 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t43 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t45 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_id_mv_ts_idn_mv.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_mv_ts_idn_mv.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_id_mv_ts_idn_mv.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_ac26.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->statements.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t5->load( ).
      IF t12 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t5->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_statement.
      t15 = t10->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_move ) = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        DATA t24 TYPE REF TO zcl_lnt_expression_node.
        DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t24 = t10->find_direct_expression( i_type_9913 = t27 ).
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        IF xsdbool( t24 IS INITIAL ) = abap_true.
          CLEAR t28.
        ELSE.
          DATA t32 TYPE string.
          t32 = t24->concat_tokens( ).
          DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t35->has = abap_true.
          t35->value = t32.
          t28 = t35.
        ENDIF.
        t22 = t28.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        DATA(t37) = VALUE abap_bool( ).
        IF t22 IS INITIAL.
          t37 = abap_true.
        ELSEIF t22->has = abap_false.
          t37 = abap_true.
        ENDIF.
        IF t37 = abap_true.
          CLEAR t36.
        ELSE.
          DATA t40 TYPE string.
          DATA t41 TYPE string.
          t41 = t22->value.
          DATA(t43) = strlen( t41 ).
          t40 = t41.
          IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t40 TO UPPER CASE.
          ELSE.
            t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
          ENDIF.
          DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t44->has = abap_true.
          t44->value = t40.
          t36 = t44.
        ENDIF.
        t20 = t36.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
        t49 = t10->find_direct_expression( i_type_9913 = t52 ).
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        IF xsdbool( t49 IS INITIAL ) = abap_true.
          CLEAR t53.
        ELSE.
          DATA t57 TYPE string.
          t57 = t49->concat_tokens( ).
          DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t60->has = abap_true.
          t60->value = t57.
          t53 = t60.
        ENDIF.
        t47 = t53.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t62) = VALUE abap_bool( ).
        IF t47 IS INITIAL.
          t62 = abap_true.
        ELSEIF t47->has = abap_false.
          t62 = abap_true.
        ENDIF.
        IF t62 = abap_true.
          CLEAR t61.
        ELSE.
          DATA t65 TYPE string.
          DATA t66 TYPE string.
          t66 = t47->value.
          DATA(t68) = strlen( t66 ).
          t65 = t66.
          IF t65 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t65 TO UPPER CASE.
          ELSE.
            t65 = zlnt_runtime_uppe_91169605024d=>full( t65 ).
          ENDIF.
          DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t69->has = abap_true.
          t69->value = t65.
          t61 = t69.
        ENDIF.
        t45 = t61.
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = VALUE abap_bool( ).
        IF t20 IS BOUND.
          t74 = t20->has.
        ENDIF.
        IF t45 IS BOUND.
          t75 = t45->has.
        ENDIF.
        IF t74 = t75.
          IF t74 = abap_false.
            t71 = abap_true.
          ELSEIF t20->value = t45->value.
            t71 = abap_true.
          ENDIF.
        ENDIF.
        t70 = t71.
        IF t71 = abap_true.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t77 = t20.
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t79.
          DATA(t82) = VALUE abap_bool( ).
          IF t77 IS INITIAL.
            t82 = abap_true.
          ELSEIF t77->has = abap_false.
            t82 = abap_true.
          ENDIF.
          t70 = xsdbool( t82 = abap_false ).
        ENDIF.
        IF t70 = abap_true.
          DATA(t84) = VALUE string( ).
          DATA(t86) = VALUE string( ).
          DATA t87 TYPE string.
          DATA t88 TYPE string.
          DATA(t89) = |Identical MOVE from "|.
          DATA t90 TYPE string.
          t90 = t20->value.
          DATA(t92) = strlen( t89 ).
          t88 = |{ t89 }{ t90 }|.
          DATA(t94) = strlen( t88 ).
          t87 = |{ t88 }{ |" to "| }|.
          DATA(t95) = VALUE string( ).
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t96 = t45.
          DATA(t98) = VALUE string( ).
          DATA(t99) = VALUE abap_bool( ).
          IF t96 IS INITIAL.
            t99 = abap_true.
          ELSEIF t96->has = abap_false.
            t99 = abap_true.
          ENDIF.
          IF t99 = abap_true.
            t98 = |undefined|.
          ELSE.
            t98 = t96->value.
          ENDIF.
          t95 = t98.
          DATA(t104) = strlen( t87 ).
          t86 = |{ t87 }{ t95 }|.
          DATA(t106) = strlen( t86 ).
          t84 = |{ t86 }{ |"| }|.
          DATA t108 TYPE REF TO zcl_lnt_issue.
          CLEAR t108.
          DATA(t112) = VALUE string( ).
          DATA t113 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t113.
          DATA t118 TYPE string.
          DATA(t119) = |Moving the same value from left to right or right to left is|.
          t119 = t119 && | redundant.|.
          t118 = t119.
          DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t120.
          DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t124.
          t124->load( ).
          APPEND |SingleFile| TO t124->items.
          t124->save( ).
          t120 = t124.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t134->has = abap_true.
          t134->value = |DATA lv_value TYPE i.\nlv_value = lv_value.|.
          t130 = t134.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t140->has = abap_true.
          t140->value = |DATA lv_value TYPE i.\nlv_value = 5.|.
          t136 = t140.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          t113 = NEW zcl_lnt_irule_metadata( i_key = |identical_move| i_title = |Identical move| i_short_description = t118 i_bad_example = t130 i_good_example = t136 i_extended_information = t142 i_tags = t120 i_pragma = t144 i_pseudo_comment = t146 ).
          CREATE OBJECT t113->zlnt_view_ownkeys_b0e8086400eb.
          t113->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t148 ).
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t149 ).
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t150 ).
          ENDIF.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t151 ).
          ENDIF.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t152 ).
          ENDIF.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t113->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t113->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t153 ).
          ENDIF.
          CREATE OBJECT t113->zlnt_json_ownkeys_70e5fd461788.
          t113->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t155 ).
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t157 ).
          ENDIF.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t159 ).
          ENDIF.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t161 ).
          ENDIF.
          DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t163.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t163 ).
          ENDIF.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t113->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t113->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t165 ).
          ENDIF.
          t112 = t113->key.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t166 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t168 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t168.
          DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t169.
          t108 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t10 i_message_26cb = t84 i_key = t112 i_severity = t166 i_fix = t168 i_alternative_fixes = t169 ).
          t3->load( ).
          APPEND t108 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_identical_move_conf( me->gt_cn_in_sr_rl_id_mv_ts_idn_mv( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_identical_move_conf( me->gt_cn_in_sr_rl_id_mv_ts_idn_mv( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_identical_move_conf.
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
        t1 = NEW zcl_lnt_identical_move_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_id_mv_ts_idn_mv( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_id_mv_ts_idn_mv( i_file = i_file i_obj_ac26 = i_obj_1ed0 ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1533_8526610ab6ad.
  ENDMETHOD.
ENDCLASS.
