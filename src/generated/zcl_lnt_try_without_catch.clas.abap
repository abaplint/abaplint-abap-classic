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
    me->conf = NEW zcl_lnt_try_without_catch_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA(t2) = VALUE string( ).
    t2 = |try_without_catch|.
    DATA(t4) = VALUE string( ).
    t4 = |TRY without CATCH|.
    DATA(t6) = VALUE string( ).
    t6 = |Checks for TRY blocks without a CATCH and CLEANUP block|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |TRY.\n  WRITE 'hello world'.\nENDTRY.|.
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
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t24 i_extended_information = t26 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |badExample|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_tr_wt_ct_ts_tr_wt_ct.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_tr_wt_ct_ts_tr_wt_ct.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    t4 = t8.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t4 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t4.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d744_dbdc6f78b1c3.
    t19 = t20->find_all_structures( i_type_9913 = t22 ).
    t18 = t19.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    DATA t25 TYPE REF TO object.
    DATA(t26) = VALUE i( ).
    DO.
      t18->load( ).
      IF t26 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t18->items INDEX t26 + 1 INTO t25.
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
      DATA t30 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t30.
      DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d722_b01ebc20127f.
      t30 = t24->find_direct_structure( i_type_9913 = t32 ).
      DATA t34 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t34.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
      t34 = t24->find_direct_structure( i_type_9913 = t36 ).
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t41.
      t38 = xsdbool( t34 IS INITIAL ).
      t37 = t38.
      IF t38 = abap_true.
        DATA(t45) = VALUE abap_bool( ).
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t48.
        t45 = xsdbool( t30 IS INITIAL ).
        t37 = t45.
      ENDIF.
      IF t37 = abap_true.
        DATA t53 TYPE REF TO zcl_lnt_issue.
        CLEAR t53.
        DATA t55 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t55.
        t55 = t24->get_first_token( ).
        DATA(t57) = |A TRY block must have a corresponding CATCH or CLEANUP block|.
        t57 = t57 && |.|.
        DATA(t58) = VALUE string( ).
        DATA t59 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t59.
        DATA(t60) = VALUE string( ).
        t60 = |try_without_catch|.
        DATA(t62) = VALUE string( ).
        t62 = |TRY without CATCH|.
        DATA(t64) = VALUE string( ).
        t64 = |Checks for TRY blocks without a CATCH and CLEANUP block|.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t69) = |TRY.\n  WRITE 'hello world'.\nENDTRY.|.
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = t69.
        t66 = t70.
        DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t72.
        DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t77.
        CREATE OBJECT t77.
        t76 = t77.
        DATA(t79) = |SingleFile|.
        t76->load( ).
        APPEND t79 TO t76->items.
        t76->save( ).
        t72 = t76.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        CLEAR t82.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        CLEAR t84.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        CLEAR t86.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        CLEAR t88.
        t59 = NEW zcl_lnt_irule_metadata( i_key = t60 i_title = t62 i_short_description = t64 i_bad_example = t66 i_good_example = t82 i_extended_information = t84 i_tags = t72 i_pragma = t86 i_pseudo_comment = t88 ).
        CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
        t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t90 ).
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
        t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
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
        t105 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t107 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t107.
        t53 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t55 i_message_26cb = t57 i_key = t58 i_severity = t105 i_fix = t107 ).
        t2->load( ).
        APPEND t53 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_try_without_catch_conf( me->g_c_i_s_r_tr_wt_ct_ts_tr_wt_ct( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_try_without_catch_conf( me->g_c_i_s_r_tr_wt_ct_ts_tr_wt_ct( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_try_without_catch_conf.
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
        t1 = NEW zcl_lnt_try_without_catch_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_tr_wt_ct_ts_tr_wt_ct( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_tr_wt_ct_ts_tr_wt_ct( i_file = i_file ) ).

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
