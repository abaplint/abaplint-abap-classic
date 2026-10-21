* TS: src/rules/max_one_statement.ts:13:1 MaxOneStatement
CLASS zcl_lnt_max_one_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_mx_on_st_ts_mx_on_st RETURNING VALUE(result) TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS s_c_i_s_r_mx_on_st_ts_mx_on_st IMPORTING i_conf TYPE REF TO zcl_lnt_max_one_statement_conf.
    METHODS r_p_i_s_r_mx_on_st_ts_mx_on_st IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_max_one_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_max_one_statement_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Does not report empty statements, use rule empty_statement f|.
    t11 = t11 && |or detecting empty statements.\n\nDoes not report anything for|.
    t11 = t11 && | chained statements.\n\nhttps://github.com/SAP/styleguides/blo|.
    t11 = t11 && |b/main/clean-abap/CleanABAP.md#no-more-than-one-statement-pe|.
    t11 = t11 && |r-line\nhttps://docs.abapopenchecks.org/checks/11/|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |WRITE foo. WRITE bar.|.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |WRITE foo.\nWRITE bar.|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |max_one_statement| i_title = |Max one statement per line| i_short_description = |Checks that each line contains only a single statement.| i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
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
    result = |Only one statement is allowed per line|.

  ENDMETHOD.

  METHOD g_c_i_s_r_mx_on_st_ts_mx_on_st.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_mx_on_st_ts_mx_on_st.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_mx_on_st_ts_mx_on_st.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE f.
    t4 = CONV f( 0 ).
    DATA t6 TYPE f.
    t6 = CONV f( 0 ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t1->statements.
    DATA t13 TYPE REF TO zcl_lnt_statement_node.
    DATA t14 TYPE REF TO object.
    DATA(t15) = VALUE i( ).
    DO.
      t8->load( ).
      IF t15 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t8->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t26 TYPE string.
      t26 = t13->get_last_token( )->str.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE REF TO zif_lnt_statement.
      t31 = t13->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_st_comment ).
      t29 = t30.
      IF t30 = abap_false.
        DATA t34 TYPE REF TO zif_lnt_statement.
        t34 = t13->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t29 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_native_sql ).
      ENDIF.
      t28 = t29.
      IF t29 = abap_false.
        t28 = xsdbool( t26 = |,| ).
      ENDIF.
      IF t28 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_position.
      t39 = t13->get_first_token( )->start.
      IF xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t51 TYPE f.
      t51 = t39->row.
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE abap_bool.
      t59 = xsdbool( t4 = t51 ).
      t58 = t59.
      IF t59 = abap_true.
        t58 = xsdbool( t51 <> t6 ).
      ENDIF.
      t57 = t58.
      IF t58 = abap_true.
        DATA t66 TYPE string.
        t66 = t13->get_first_token( )->str.
        t57 = xsdbool( t66 <> |.| ).
      ENDIF.
      IF t57 = abap_true.
        DATA t74 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t74 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t39 i_text = |\n| ).
        DATA t79 TYPE REF TO zcl_lnt_issue.
        CLEAR t79.
        DATA(t83) = VALUE string( ).
        DATA t84 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA(t94) = |Does not report empty statements, use rule empty_statement f|.
        t94 = t94 && |or detecting empty statements.\n\nDoes not report anything for|.
        t94 = t94 && | chained statements.\n\nhttps://github.com/SAP/styleguides/blo|.
        t94 = t94 && |b/main/clean-abap/CleanABAP.md#no-more-than-one-statement-pe|.
        t94 = t94 && |r-line\nhttps://docs.abapopenchecks.org/checks/11/|.
        DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t95->has = abap_true.
        t95->value = t94.
        t91 = t95.
        DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t97.
        DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t101.
        t101->load( ).
        APPEND |Styleguide| TO t101->items.
        t101->save( ).
        t101->load( ).
        APPEND |Quickfix| TO t101->items.
        t101->save( ).
        t101->load( ).
        APPEND |SingleFile| TO t101->items.
        t101->save( ).
        t97 = t101.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t115->has = abap_true.
        t115->value = |WRITE foo. WRITE bar.|.
        t111 = t115.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t121->has = abap_true.
        t121->value = |WRITE foo.\nWRITE bar.|.
        t117 = t121.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        t84 = NEW zcl_lnt_irule_metadata( i_key = |max_one_statement| i_title = |Max one statement per line| i_short_description = |Checks that each line contains only a single statement.| i_bad_example = t111 i_good_example = t117 i_extended_information = t91 i_tags = t97 i_pragma = t123 i_pseudo_comment = t125 ).
        CREATE OBJECT t84->zlnt_view_ownkeys_b0e8086400eb.
        t84->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t127 ).
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t128 ).
        ENDIF.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t129 ).
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t130 ).
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t132 ).
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t84->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t84->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t133 ).
        ENDIF.
        CREATE OBJECT t84->zlnt_json_ownkeys_70e5fd461788.
        t84->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t135 ).
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t137 ).
        ENDIF.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t139 ).
        ENDIF.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t141 ).
        ENDIF.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t143 ).
        ENDIF.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t145 ).
        ENDIF.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t84->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t84->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t147 ).
        ENDIF.
        t83 = t84->key.
        t79 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t39 i_message_26cb = |Only one statement is allowed per line| i_key = t83 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t74 ).
        t2->load( ).
        APPEND t79 TO t2->items.
        t2->save( ).
        t6 = t51.
      ENDIF.
      t4 = t51.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_max_one_statement_conf( me->g_c_i_s_r_mx_on_st_ts_mx_on_st( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_max_one_statement_conf( me->g_c_i_s_r_mx_on_st_ts_mx_on_st( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_max_one_statement_conf.
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
        t1 = NEW zcl_lnt_max_one_statement_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_mx_on_st_ts_mx_on_st( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_mx_on_st_ts_mx_on_st( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1581_6a63c297a6e1.
  ENDMETHOD.
ENDCLASS.
