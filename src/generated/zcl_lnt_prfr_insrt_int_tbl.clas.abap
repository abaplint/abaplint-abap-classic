* TS: src/rules/prefer_insert_into_table.ts:12:1 PreferInsertIntoTable
CLASS zcl_lnt_prfr_insrt_int_tbl DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfr_insrt_int_tbl_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_i_i_t_t_p_in_in_tb RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfr_insrt_int_tbl_cnf.
    METHODS s_c_i_s_r_p_i_i_t_t_p_in_in_tb IMPORTING i_conf TYPE REF TO zcl_lnt_prfr_insrt_int_tbl_cnf.
    METHODS r_p_i_s_r_p_i_i_t_t_p_in_in_tb IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_stat TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfr_insrt_int_tbl IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prfr_insrt_int_tbl_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |INSERT INTO TABLE respects the table type, while APPEND alwa|.
    t11 = t11 && |ys tries to add to the end. This will dump if the sort order|.
    t11 = t11 && | of a sorted table would change.\n\nhttps://github.com/SAP/sty|.
    t11 = t11 && |leguides/blob/main/clean-abap/CleanABAP.md#prefer-insert-int|.
    t11 = t11 && |o-table-to-append-to|.
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
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |APPEND row TO itab.|.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |INSERT row INTO TABLE itab.|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |prefer_insert_into_table| i_title = |Prefer INSERT INTO TABLE over APPEND| i_short_description = |Prefer INSERT INTO TABLE over APPEND| i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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

  METHOD g_c_i_s_r_p_i_i_t_t_p_in_in_tb.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_p_i_i_t_t_p_in_in_tb.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_p_i_i_t_t_p_in_in_tb.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
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
      DATA t16 TYPE REF TO zif_lnt_statement.
      t16 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_append ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t19) = VALUE i( ).
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      t21 = t9->concat_tokens( ).
      DATA(t23) = strlen( t21 ).
      t20 = t21.
      IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t20 TO UPPER CASE.
      ELSE.
        t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
      ENDIF.
      DATA(t24) = | SORTED BY |.
      DATA(t25) = strlen( t20 ).
      IF t24 IS INITIAL.
        t19 = 0.
      ELSE.
        FIND t24 IN t20 MATCH OFFSET t19.
        IF sy-subrc <> 0.
          t19 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t19 >= 0 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t28 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t28 = me->build_fix( i_file = t1 i_stat = t9 ).
      DATA t34 TYPE REF TO zcl_lnt_issue.
      CLEAR t34.
      DATA(t38) = VALUE string( ).
      DATA t39 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t39.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      DATA(t49) = |INSERT INTO TABLE respects the table type, while APPEND alwa|.
      t49 = t49 && |ys tries to add to the end. This will dump if the sort order|.
      t49 = t49 && | of a sorted table would change.\n\nhttps://github.com/SAP/sty|.
      t49 = t49 && |leguides/blob/main/clean-abap/CleanABAP.md#prefer-insert-int|.
      t49 = t49 && |o-table-to-append-to|.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t49.
      t46 = t50.
      DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t52.
      DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t56.
      t56->load( ).
      APPEND |SingleFile| TO t56->items.
      t56->save( ).
      t56->load( ).
      APPEND |Styleguide| TO t56->items.
      t56->save( ).
      t56->load( ).
      APPEND |Quickfix| TO t56->items.
      t56->save( ).
      t52 = t56.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t66.
      DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t70->has = abap_true.
      t70->value = |APPEND row TO itab.|.
      t66 = t70.
      DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t72.
      DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t76->has = abap_true.
      t76->value = |INSERT row INTO TABLE itab.|.
      t72 = t76.
      DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t78.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t80.
      t39 = NEW zcl_lnt_irule_metadata( i_key = |prefer_insert_into_table| i_title = |Prefer INSERT INTO TABLE over APPEND| i_short_description = |Prefer INSERT INTO TABLE over APPEND| i_bad_example = t66 i_good_example = t72 i_extended_information = t46 i_tags = t52 i_pragma = t78 i_pseudo_comment = t80 ).
      CREATE OBJECT t39->zlnt_view_ownkeys_b0e8086400eb.
      t39->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t82 ).
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t83 ).
      ENDIF.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t84 ).
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t85 ).
      ENDIF.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t86 ).
      ENDIF.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t87 ).
      ENDIF.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t88 ).
      ENDIF.
      CREATE OBJECT t39->zlnt_json_ownkeys_70e5fd461788.
      t39->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t90 ).
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t92 ).
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t94 ).
      ENDIF.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t96 ).
      ENDIF.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t98 ).
      ENDIF.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t100 ).
      ENDIF.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t102 ).
      ENDIF.
      t38 = t39->key.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t103 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t106.
      t34 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t9 i_message_26cb = |Prefer INSERT INTO TABLE over APPEND| i_key = t38 i_severity = t103 i_fix = t28 i_alternative_fixes = t106 ).
      t2->load( ).
      APPEND t34 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = i_stat->get_tokens( ).
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 1 INTO t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t10 ?= t9.
      DATA t11 TYPE REF TO object.
      t11 = t10->as_ref( ).
      t7 ?= t11.
    ELSE.
      t7 ?= t9.
    ENDIF.
    t6 = t7.
    DATA t13 TYPE string.
    DATA t14 TYPE string.
    t14 = t6->str.
    DATA(t19) = strlen( t14 ).
    t13 = t14.
    IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t13 TO UPPER CASE.
    ELSE.
      t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
    ENDIF.
    IF xsdbool( t13 <> |APPEND| ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t22 TYPE i.
    t22 = -1.
    DATA t24 TYPE i.
    DATA t26 TYPE i.
    t3->load( ).
    t26 = lines( t3->items ).
    DATA(t28) = 1.
    t24 = t26 - t28.
    DO.
      IF xsdbool( t24 >= 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA(t33) = VALUE string( ).
      DATA(t34) = VALUE string( ).
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t36.
      DATA(t38) = t24.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      t3->load( ).
      CLEAR t39.
      READ TABLE t3->items INDEX t38 INTO t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t36.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t39.
        DATA t41 TYPE REF TO object.
        t41 = t40->as_ref( ).
        t36 ?= t41.
      ELSE.
        t36 ?= t39.
      ENDIF.
      t34 = t36->str.
      DATA(t44) = strlen( t34 ).
      t33 = t34.
      IF t33 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t33 TO UPPER CASE.
      ELSE.
        t33 = zlnt_runtime_uppe_91169605024d=>full( t33 ).
      ENDIF.
      IF xsdbool( t33 = |TO| ) = abap_true.
        t22 = t24.
        EXIT.
      ENDIF.
      DATA(t49) = 1.
      t24 = t24 - t49.
    ENDDO.
    IF xsdbool( t22 < 0 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t55 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t57) = t22.
    t57 = t57 + 1.
    DATA t58 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX t57 INTO t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t59 ?= t58.
      DATA t60 TYPE REF TO object.
      t60 = t59->as_ref( ).
      t55 ?= t60.
    ELSE.
      t55 ?= t58.
    ENDIF.
    result = zcl_lnt_edit_helper=>merge( i_fix1 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t6 i_text = |INSERT| ) i_fix2 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t55 i_text = |INTO TABLE| ) ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prfr_insrt_int_tbl_cnf( me->g_c_i_s_r_p_i_i_t_t_p_in_in_tb( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prfr_insrt_int_tbl_cnf( me->g_c_i_s_r_p_i_i_t_t_p_in_in_tb( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfr_insrt_int_tbl_cnf.
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
        t1 = NEW zcl_lnt_prfr_insrt_int_tbl_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_p_i_i_t_t_p_in_in_tb( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_i_i_t_t_p_in_in_tb( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1658_a961490accb8.
  ENDMETHOD.
ENDCLASS.
