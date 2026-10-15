* TS: src/rules/check_transformation_exists.ts:12:1 CheckTransformationExists
CLASS zcl_lnt_chck_trnsfrmtn_exsts DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_chck_trnsfrm_exsts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_ch_tr_ex_ts_ch_tr_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_chck_trnsfrm_exsts_cnf.
    METHODS s_c_i_s_r_ch_tr_ex_ts_ch_tr_ex IMPORTING i_conf TYPE REF TO zcl_lnt_chck_trnsfrm_exsts_cnf.
    METHODS r_p_i_s_r_ch_tr_ex_ts_ch_tr_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_chck_trnsfrmtn_exsts IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_chck_trnsfrm_exsts_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |check_transformation_exists|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check transformation exists|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that used XSLT transformations exist.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Syntax|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_name.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = |Transformation "|.
    DATA(t5) = t1.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ t5 }|.
    DATA(t7) = |" not found|.
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t7 }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_ch_tr_ex_ts_ch_tr_ex.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_ch_tr_ex_ts_ch_tr_ex.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ch_tr_ex_ts_ch_tr_ex.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    DATA(t20) = t1.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = t19.
    t21 = t22->statements.
    t18 = t21.
    DATA t23 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t23.
    DATA t24 TYPE REF TO object.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    DO.
      t18->load( ).
      IF t25 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t24.
      READ TABLE t18->items INDEX t25 + 1 INTO t24.
      t25 = t25 + 1.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      CLEAR t23.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t26 ?= t24.
        DATA t27 TYPE REF TO object.
        t27 = t26->as_ref( ).
        t23 ?= t27.
      ELSE.
        t23 ?= t24.
      ENDIF.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zif_lnt_statement.
      DATA(t30) = t23.
      t29 = t30->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_st_call_transformation ).
      IF t28 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_expression_node.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        DATA(t33) = t23.
        DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
        t32 = t33->find_first_expression( i_type_9913 = t34 ).
        t31 = t32.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zcl_lnt_expression_node.
        DATA(t37) = t31.
        t36 = t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        t38 = t39.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = t36.
        IF t41 IS INITIAL.
          t40 = abap_true.
        ENDIF.
        t35 = t40.
        IF t35 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        DATA(t45) = t31.
        t44 = t45.
        t43 = t44->get_first_token( ).
        t42 = t43.
        DATA t46 TYPE string.
        DATA t47 TYPE string.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t49) = t42.
        t48 = t49.
        DATA t50 TYPE string.
        DATA(t51) = t48.
        t50 = t51->str.
        t47 = t50.
        t46 = t47.
        DATA t52 TYPE abap_bool.
        DATA t53 TYPE abap_bool.
        DATA t54 TYPE abap_bool.
        DATA(t55) = me->reg.
        DATA(t56) = t46.
        t54 = t55->in_error_namespace( i_name = t56 ).
        DATA(t57) = abap_true.
        t53 = xsdbool( t54 = t57 ).
        t52 = t53.
        IF t53 = abap_true.
          DATA(t58) = VALUE abap_bool( ).
          DATA t59 TYPE REF TO zif_lnt_object.
          CLEAR t59.
          DATA t60 TYPE REF TO zif_lnt_object.
          CLEAR t60.
          DATA(t61) = me->reg.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t62.
          DATA(t63) = abap_true.
          IF t63 = abap_true.
            DATA(t64) = |XSLT|.
            DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t65->has = abap_true.
            t65->value = t64.
            t62 = t65.
          ELSE.
            DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t66.
            t62 = t66.
          ENDIF.
          DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t67.
          DATA(t68) = abap_true.
          IF t68 = abap_true.
            DATA(t69) = t46.
            DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t70->has = abap_true.
            t70->value = t69.
            t67 = t70.
          ELSE.
            DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t71.
            t67 = t71.
          ENDIF.
          t60 = t61->get_object( i_type_9913 = t62 i_name = t67 ).
          t59 = t60.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t73.
          t72 = t73.
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = t59.
          IF t75 IS INITIAL.
            t74 = abap_true.
          ENDIF.
          t58 = t74.
          t52 = t58.
        ENDIF.
        IF t52 = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_issue.
          CLEAR t76.
          DATA t77 TYPE REF TO zcl_lnt_issue.
          CLEAR t77.
          DATA(t78) = t1.
          DATA(t79) = t42.
          DATA t80 TYPE string.
          DATA t81 TYPE string.
          DATA(t82) = t46.
          t81 = t82.
          DATA t83 TYPE string.
          DATA t84 TYPE string.
          DATA(t85) = |Transformation "|.
          DATA(t86) = t81.
          DATA(t87) = strlen( t85 ).
          t84 = |{ t85 }{ t86 }|.
          DATA(t88) = |" not found|.
          DATA(t89) = strlen( t84 ).
          t83 = |{ t84 }{ t88 }|.
          t80 = t83.
          DATA(t90) = VALUE string( ).
          DATA t91 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t91.
          DATA t92 TYPE string.
          DATA(t93) = |check_transformation_exists|.
          t92 = t93.
          DATA t94 TYPE string.
          DATA(t95) = |Check transformation exists|.
          t94 = t95.
          DATA t96 TYPE string.
          DATA(t97) = |Checks that used XSLT transformations exist.|.
          t96 = t97.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t98.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t99.
          DATA(t100) = abap_true.
          IF t100 = abap_true.
            DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t103.
            t102 = t103.
            DATA(t104) = t102.
            DATA(t105) = |Syntax|.
            t104->load( ).
            APPEND t105 TO t104->items.
            t104->save( ).
            DATA(t106) = t102.
            t101 = t106.
            t99 = t101.
          ELSE.
            DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t107.
            t99 = t107.
          ENDIF.
          t98 = t99.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          t108 = t109.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          t110 = t111.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          t112 = t113.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          t114 = t115.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t116 = t117.
          t91 = NEW zcl_lnt_irule_metadata( i_key = t92 i_title = t94 i_short_description = t96 i_bad_example = t108 i_good_example = t110 i_extended_information = t112 i_tags = t98 i_pragma = t114 i_pseudo_comment = t116 ).
          CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
          t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t118.
          IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t118 ).
          ENDIF.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t119 ).
          ENDIF.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t120 ).
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t121 ).
          ENDIF.
          CREATE OBJECT t91->zlnt_json_ownkeys_70e5fd461788.
          t91->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t122) = |key|.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
          ENDIF.
          DATA(t124) = |title|.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
          ENDIF.
          DATA(t126) = |shortDescription|.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
          ENDIF.
          DATA(t128) = |tags|.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
          ENDIF.
          t90 = t91->key.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA t131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t131.
          t77 = zcl_lnt_issue=>at_token( i_file = t78 i_token = t79 i_message_26cb = t80 i_key = t90 i_severity = t130 i_fix = t131 ).
          t76 = t77.
          DATA(t132) = t2.
          DATA(t133) = t76.
          t132->load( ).
          APPEND t133 TO t132->items.
          t132->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t134) = t2.
    result = t134.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_chck_trnsfrm_exsts_cnf( me->g_c_i_s_r_ch_tr_ex_ts_ch_tr_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_chck_trnsfrm_exsts_cnf( me->g_c_i_s_r_ch_tr_ex_ts_ch_tr_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_chck_trnsfrm_exsts_cnf.
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
        t1 = NEW zcl_lnt_chck_trnsfrm_exsts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ch_tr_ex_ts_ch_tr_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ch_tr_ex_ts_ch_tr_ex( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1448_cee2d63097ce.
  ENDMETHOD.
ENDCLASS.
