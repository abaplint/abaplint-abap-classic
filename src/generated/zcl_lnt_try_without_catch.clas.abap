* TS: src/rules/try_without_catch.ts:11:1 TryWithoutCatch
CLASS zcl_lnt_try_without_catch DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_try_without_catch_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_tr_wt_ct_ts_tr_wt_ct RETURNING VALUE(result) TYPE REF TO zcl_lnt_try_without_catch_conf.
    METHODS s_c_i_s_r_tr_wt_ct_ts_tr_wt_ct IMPORTING i_conf TYPE REF TO zcl_lnt_try_without_catch_conf.
    METHODS r_p_i_s_r_tr_wt_ct_ts_tr_wt_ct IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_try_without_catch IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_try_without_catch_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = VALUE string( ).
    DATA(t3) = |try_without_catch|.
    t2 = t3.
    DATA(t4) = VALUE string( ).
    DATA(t5) = |TRY without CATCH|.
    t4 = t5.
    DATA(t6) = VALUE string( ).
    DATA(t7) = |Checks for TRY blocks without a CATCH and CLEANUP block|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |TRY.\n  WRITE 'hello world'.\nENDTRY.|.
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
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
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
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t24 i_extended_information = t26 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |badExample|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |A TRY block must have a corresponding CATCH or CLEANUP block|.
    t1 = t1 && |.|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_tr_wt_ct_ts_tr_wt_ct.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_tr_wt_ct_ts_tr_wt_ct.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_tr_wt_ct_ts_tr_wt_ct.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t8.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t11.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
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
      CLEAR t17.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t20.
    DATA(t21) = t4.
    t20 = t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d744_dbdc6f78b1c3.
    t19 = t20->find_all_structures( i_type_9913 = t22 ).
    t18 = t19.
    DATA(t23) = t18.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t23->load( ).
      IF t26 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t23->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        CLEAR t28.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t30.
      DATA(t31) = t24.
      DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d722_b01ebc20127f.
      t30 = t31->find_direct_structure( i_type_9913 = t32 ).
      t29 = t30.
      DATA t33 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t34.
      DATA(t35) = t24.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
      t34 = t35->find_direct_structure( i_type_9913 = t36 ).
      t33 = t34.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t39.
      DATA(t40) = t33.
      t39 = t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      t41 = t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = t39.
      IF t44 IS INITIAL.
        t43 = abap_true.
      ENDIF.
      t38 = t43.
      t37 = t38.
      IF t38 = abap_true.
        DATA(t45) = VALUE abap_bool( ).
        DATA t46 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t46.
        DATA(t47) = t29.
        t46 = t47.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        t48 = t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = t46.
        IF t51 IS INITIAL.
          t50 = abap_true.
        ENDIF.
        t45 = t50.
        t37 = t45.
      ENDIF.
      IF t37 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_issue.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_issue.
        CLEAR t53.
        DATA(t54) = t1.
        DATA t55 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t55.
        DATA(t56) = t24.
        t55 = t56->get_first_token( ).
        DATA(t57) = |A TRY block must have a corresponding CATCH or CLEANUP block|.
        t57 = t57 && |.|.
        DATA(t58) = VALUE string( ).
        DATA t59 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t59.
        DATA(t60) = VALUE string( ).
        DATA(t61) = |try_without_catch|.
        t60 = t61.
        DATA(t62) = VALUE string( ).
        DATA(t63) = |TRY without CATCH|.
        t62 = t63.
        DATA(t64) = VALUE string( ).
        DATA(t65) = |Checks for TRY blocks without a CATCH and CLEANUP block|.
        t64 = t65.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA(t68) = abap_true.
        IF t68 = abap_true.
          DATA(t69) = |TRY.\n  WRITE 'hello world'.\nENDTRY.|.
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
        DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t72.
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t73.
        DATA(t74) = abap_true.
        IF t74 = abap_true.
          DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t75.
          DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t76.
          DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t77.
          CREATE OBJECT t77.
          t76 = t77.
          DATA(t78) = t76.
          DATA(t79) = |SingleFile|.
          t78->load( ).
          APPEND t79 TO t78->items.
          t78->save( ).
          DATA(t80) = t76.
          t75 = t80.
          t73 = t75.
        ELSE.
          DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t81.
          t73 = t81.
        ENDIF.
        t72 = t73.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        t82 = t83.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        t84 = t85.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t86 = t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        t88 = t89.
        t59 = NEW zcl_lnt_irule_metadata( i_key = t60 i_title = t62 i_short_description = t64 i_bad_example = t66 i_good_example = t82 i_extended_information = t84 i_tags = t72 i_pragma = t86 i_pseudo_comment = t88 ).
        CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
        t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t93 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t94 ).
        ENDIF.
        CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
        t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t95) = |key|.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
        ENDIF.
        DATA(t97) = |title|.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
        ENDIF.
        DATA(t99) = |shortDescription|.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
        ENDIF.
        DATA(t101) = |badExample|.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
        ENDIF.
        DATA(t103) = |tags|.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
        ENDIF.
        t58 = t59->key.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA(t106) = me->conf.
        t105 = t106->zlnt_view_read_sr_15c06369f827( ).
        DATA t107 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t107.
        t53 = zcl_lnt_issue=>at_token( i_file = t54 i_token = t55 i_message_26cb = t57 i_key = t58 i_severity = t105 i_fix = t107 ).
        t52 = t53.
        DATA(t108) = t2.
        DATA(t109) = t52.
        t108->load( ).
        APPEND t109 TO t108->items.
        t108->save( ).
      ENDIF.
    ENDDO.
    DATA(t110) = t2.
    result = t110.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_try_without_catch_conf( me->g_c_i_s_r_tr_wt_ct_ts_tr_wt_ct( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_try_without_catch_conf( me->g_c_i_s_r_tr_wt_ct_ts_tr_wt_ct( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_try_without_catch_conf.
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
        t1 = NEW zcl_lnt_try_without_catch_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_tr_wt_ct_ts_tr_wt_ct( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_tr_wt_ct_ts_tr_wt_ct( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1732_665a9671267d.
  ENDMETHOD.
ENDCLASS.
