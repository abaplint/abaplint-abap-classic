* TS: src/rules/start_at_tab.ts:13:1 StartAtTab
CLASS zcl_lnt_start_at_tab DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_start_at_tab_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_st_at_tb_ts_st_at_tb RETURNING VALUE(result) TYPE REF TO zcl_lnt_start_at_tab_conf.
    METHODS s_c_i_s_r_st_at_tb_ts_st_at_tb IMPORTING i_conf TYPE REF TO zcl_lnt_start_at_tab_conf.
    METHODS r_p_i_s_r_st_at_tb_ts_st_at_tb IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_start_at_tab IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_start_at_tab_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Reports max 100 issues per file\nhttps://github.com/SAP/style|.
    t11 = t11 && |guides/blob/main/clean-abap/CleanABAP.md#indent-and-snap-to-|.
    t11 = t11 && |tab|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Whitespace| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = | WRITE a.|.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |  WRITE a.|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |start_at_tab| i_title = |Start at tab| i_short_description = |Checks that statements start at tabstops.| i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Start statement at tab position|.

  ENDMETHOD.

  METHOD g_c_i_s_r_st_at_tb_ts_st_at_tb.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_st_at_tb_ts_st_at_tb.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_st_at_tb_ts_st_at_tb.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t8 = t1->file->get_raw_rows( ).
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t15 = t1->statements.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t15->load( ).
      IF t22 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t15->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t26 TYPE REF TO zif_lnt_statement.
      t26 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_comment ) = abap_true.
        CONTINUE.
      ELSE.
        DATA t29 TYPE REF TO zif_lnt_statement.
        t29 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_type_begin ) = abap_true.
          t4 = abap_true.
        ELSE.
          DATA t33 TYPE REF TO zif_lnt_statement.
          t33 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          IF xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_type_end ) = abap_true.
            t4 = abap_false.
          ELSE.
            IF t4 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t37 TYPE REF TO zcl_lnt_position.
      t37 = t20->get_first_token( )->start.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      t48 = xsdbool( xsdbool( t6 IS INITIAL ) = abap_false ).
      t47 = t48.
      IF t48 = abap_true.
        t47 = xsdbool( t37->row = t6->row ).
      ENDIF.
      IF t47 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t68 TYPE abap_bool.
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t72 = t37->col.
      DATA(t78) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t78->has = abap_true.
      t78->value = CONV f( 1 ).
      t71 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t72 right = t78 op = `-` ).
      DATA(t79) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t71 ) ).
      DATA t80 TYPE f.
      DATA(t82) = CONV f( t79 / 2 ).
      t82 = trunc( t82 ).
      t82 = t82 * 2.
      t80 = t79 - t82.
      DATA(t83) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t83->has = abap_true.
      t83->value = t80.
      t70 = t83.
      DATA(t85) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t85->has = abap_true.
      t85->value = CONV f( 0 ).
      t69 = zlnt_runtime_numb_290eb04a9758=>compare( left = t70 right = t85 op = `!=` ).
      t68 = t69.
      IF t69 = abap_true.
        DATA(t88) = VALUE i( ).
        DATA(t89) = VALUE string( ).
        DATA(t91) = VALUE i( ).
        DATA t92 TYPE f.
        DATA t93 TYPE f.
        t93 = t37->row.
        DATA(t98) = CONV f( 1 ).
        t92 = t93 - t98.
        IF t92 > range_i32_upper.
          t91 = range_i32_upper.
        ELSEIF t92 < range_i32_lower.
          t91 = range_i32_lower.
        ELSE.
          t91 = trunc( t92 ).
        ENDIF.
        t91 = t91 + 1.
        IF t8->has( t91 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t8->load( ).
        READ TABLE t8->items INDEX t91 INTO t89.
        DATA(t99) = |\t|.
        DATA(t100) = strlen( t89 ).
        IF t99 IS INITIAL.
          t88 = 0.
        ELSE.
          FIND t99 IN t89 MATCH OFFSET t88.
          IF sy-subrc <> 0.
            t88 = -1.
          ENDIF.
        ENDIF.
        t68 = xsdbool( xsdbool( t88 >= 0 ) = abap_false ).
      ENDIF.
      IF t68 = abap_true.
        DATA t104 TYPE REF TO zcl_lnt_issue.
        CLEAR t104.
        DATA(t108) = VALUE string( ).
        DATA t109 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t109.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA(t119) = |Reports max 100 issues per file\nhttps://github.com/SAP/style|.
        t119 = t119 && |guides/blob/main/clean-abap/CleanABAP.md#indent-and-snap-to-|.
        t119 = t119 && |tab|.
        DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t120->has = abap_true.
        t120->value = t119.
        t116 = t120.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t122.
        DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t126.
        t126->load( ).
        APPEND |Whitespace| TO t126->items.
        t126->save( ).
        t126->load( ).
        APPEND |Styleguide| TO t126->items.
        t126->save( ).
        t126->load( ).
        APPEND |SingleFile| TO t126->items.
        t126->save( ).
        t122 = t126.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t140->has = abap_true.
        t140->value = | WRITE a.|.
        t136 = t140.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t146->has = abap_true.
        t146->value = |  WRITE a.|.
        t142 = t146.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t150.
        t109 = NEW zcl_lnt_irule_metadata( i_key = |start_at_tab| i_title = |Start at tab| i_short_description = |Checks that statements start at tabstops.| i_bad_example = t136 i_good_example = t142 i_extended_information = t116 i_tags = t122 i_pragma = t148 i_pseudo_comment = t150 ).
        CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
        t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t152 ).
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t155 ).
        ENDIF.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t156 ).
        ENDIF.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t157 ).
        ENDIF.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t158 ).
        ENDIF.
        CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
        t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t160 ).
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t162 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t164 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t166 ).
        ENDIF.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t168 ).
        ENDIF.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t170 ).
        ENDIF.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t172 ).
        ENDIF.
        t108 = t109->key.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t173 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t175 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t175.
        t104 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t37 i_message_26cb = |Start statement at tab position| i_key = t108 i_severity = t173 i_fix = t175 ).
        t2->load( ).
        APPEND t104 TO t2->items.
        t2->save( ).
        t2->load( ).
        IF xsdbool( lines( t2->items ) >= 100 ) = abap_true.
          result = t2.
          RETURN.
        ENDIF.
      ENDIF.
      t6 = t37.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_start_at_tab_conf( me->g_c_i_s_r_st_at_tb_ts_st_at_tb( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_start_at_tab_conf( me->g_c_i_s_r_st_at_tb_ts_st_at_tb( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_start_at_tab_conf.
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
        t1 = NEW zcl_lnt_start_at_tab_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_st_at_tb_ts_st_at_tb( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_st_at_tb_ts_st_at_tb( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1714_65e7a3ea6de3.
  ENDMETHOD.
ENDCLASS.
