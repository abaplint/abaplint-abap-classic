* TS: src/rules/double_space.ts:27:1 DoubleSpace
CLASS zcl_lnt_double_space DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_double_space_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_db_sp_ts_db_spc RETURNING VALUE(result) TYPE REF TO zcl_lnt_double_space_conf.
    METHODS st_cn_in_sr_rl_db_sp_ts_db_spc IMPORTING i_conf TYPE REF TO zcl_lnt_double_space_conf.
    METHODS rn_pr_in_sr_rl_db_sp_ts_db_spc IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_after_colon IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_paren IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS pragma_in_range IMPORTING i_pragmas TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_keywords IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_double_space IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_double_space_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that only a single space follows certain common state|.
    t7 = t7 && |ments.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Whitespace| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Quickfix| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = |DATA  foo TYPE i.|.
    t22 = t26.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |DATA foo TYPE i.|.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |double_space| i_title = |Double space| i_short_description = t6 i_bad_example = t22 i_good_example = t32 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t55 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Remove double space|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_db_sp_ts_db_spc.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_db_sp_ts_db_spc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_b77f70a074af( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      me->conf->zlnt_view_write_s_37b40751ec20( p0 = NEW zcl_lnt_double_space_conf( )->zlnt_view_read_sr_b77f70a074af( ) ).
    ENDIF.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_db_sp_ts_db_spc.
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
      DATA t15 TYPE REF TO zif_lnt_statement.
      t15 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_native_sql ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE abap_bool.
      t23 = me->conf->zlnt_view_read_sr_abd40c6b7e93( ).
      t22 = xsdbool( t23 = abap_true ).
      t21 = t22.
      IF t22 = abap_true.
        DATA t28 TYPE REF TO zif_lnt_statement.
        t28 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t21 = xsdbool( xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_unknown ) = abap_false ).
      ENDIF.
      t20 = t21.
      IF t21 = abap_true.
        DATA t32 TYPE REF TO zif_lnt_statement.
        t32 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t20 = xsdbool( xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_method_def ) = abap_false ).
      ENDIF.
      t19 = t20.
      IF t20 = abap_true.
        DATA t36 TYPE REF TO zif_lnt_statement.
        t36 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t19 = xsdbool( xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_macro_call ) = abap_false ).
      ENDIF.
      t18 = t19.
      IF t19 = abap_true.
        DATA t40 TYPE REF TO zif_lnt_statement.
        t40 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t18 = xsdbool( xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_events ) = abap_false ).
      ENDIF.
      t17 = t18.
      IF t18 = abap_true.
        DATA t44 TYPE REF TO zif_lnt_statement.
        t44 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t17 = xsdbool( xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_macro_content ) = abap_false ).
      ENDIF.
      IF t17 = abap_true.
        t2 = t2->concat( p0 = me->check_keywords( i_s = t9 i_file = t1 ) ).
      ENDIF.
      t2 = t2->concat( p0 = me->check_paren( i_s = t9 i_file = t1 ) ).
    ENDDO.
    t2 = t2->concat( p0 = me->check_after_colon( i_file = t1 ) ).
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    DATA t63 TYPE REF TO zcl_lnt_issue.
    DATA t64 TYPE REF TO object.
    DATA(t65) = VALUE i( ).
    DO.
      t2->load( ).
      IF t65 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t64.
      READ TABLE t2->items INDEX t65 + 1 INTO t64.
      t65 = t65 + 1.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      CLEAR t63.
      IF t64 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t66 ?= t64.
        DATA t67 TYPE REF TO object.
        t67 = t66->as_ref( ).
        t63 ?= t67.
      ELSE.
        t63 ?= t64.
      ENDIF.
      DATA t70 TYPE f.
      t70 = CONV f( -1 ).
      DATA t72 TYPE f.
      t72 = CONV f( -1 ).
      DATA t75 TYPE REF TO zcl_lnt_issue.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      DATA(t77) = VALUE i( ).
      DO.
        t60->load( ).
        IF t77 >= lines( t60->items ).
          EXIT.
        ENDIF.
        CLEAR t76.
        READ TABLE t60->items INDEX t77 + 1 INTO t76.
        t77 = t77 + 1.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        CLEAR t75.
        IF t76 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t78 ?= t76.
          DATA t79 TYPE REF TO object.
          t79 = t78->as_ref( ).
          t75 ?= t79.
        ELSE.
          t75 ?= t76.
        ENDIF.
        DATA(t82) = CONV f( 1 ).
        t70 = t70 + t82.
        DATA t84 TYPE REF TO zcl_lnt_position.
        t84 = t75->data_56cc->start.
        DATA t90 TYPE REF TO zcl_lnt_position.
        t90 = t63->data_56cc->start.
        IF t84->equals( i_p = t90 ) = abap_true.
          t72 = t70.
          EXIT.
        ENDIF.
      ENDDO.
      IF xsdbool( t72 = CONV f( -1 ) ) = abap_true.
        t60->load( ).
        APPEND t63 TO t60->items.
        t60->save( ).
      ENDIF.
    ENDDO.
    result = t60.

  ENDMETHOD.

  METHOD check_after_colon.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE abap_bool.
    t7 = me->conf->zlnt_view_read_sr_d1ea83d4ea4d( ).
    IF xsdbool( t7 <> abap_true ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t11 = t1->statements.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    DATA t17 TYPE REF TO object.
    DATA(t18) = VALUE i( ).
    DO.
      t11->load( ).
      IF t18 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t11->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      t21 = t16->colon.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      IF xsdbool( t21 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      t35 = xsdbool( xsdbool( t4 IS INITIAL ) = abap_false ).
      t34 = t35.
      IF t35 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t44 = t4->col.
        DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t58 = t21->start->col.
        t34 = zlnt_runtime_numb_290eb04a9758=>compare( left = t44 right = t58 op = `==` ).
      ENDIF.
      IF t34 = abap_true.
        CONTINUE.
      ENDIF.

      t4 = t21->start.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t69 = t16->get_tokens( ).
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      DATA(t73) = VALUE i( ).
      DO.
        t69->load( ).
        IF t73 >= lines( t69->items ).
          EXIT.
        ENDIF.
        CLEAR t72.
        READ TABLE t69->items INDEX t73 + 1 INTO t72.
        t73 = t73 + 1.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        CLEAR t71.
        IF t72 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t72.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t71 ?= t75.
        ELSE.
          t71 ?= t72.
        ENDIF.
        IF xsdbool( t71->start->row <> t4->row ) = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t94 = t71->start->col.
        DATA t103 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t103 = t4->col.
        IF zlnt_runtime_numb_290eb04a9758=>compare( left = t94 right = t103 op = `<` ) = abap_true.
          CONTINUE.
        ENDIF.

        DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t110 = t71->start->col.
        DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t120 = t4->col.
        DATA(t127) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t127->has = abap_true.
        t127->value = CONV f( 2 ).
        IF zlnt_runtime_numb_290eb04a9758=>compare( left = t110 right = zlnt_runtime_numb_290eb04a9758=>calculate( left = t120 right = t127 op = `+` ) op = `>` ) = abap_true.
          DATA t128 TYPE REF TO zcl_lnt_position.
          DATA t130 TYPE f.
          t130 = t4->row.
          DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t137 = t4->col.
          DATA(t144) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t144->has = abap_true.
          t144->value = CONV f( 2 ).
          t128 = NEW zcl_lnt_position( i_row = t130 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t137 right = t144 op = `+` ) ).
          DATA t145 TYPE REF TO zcl_lnt_position.
          DATA t147 TYPE f.
          t147 = t71->start->row.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t163 = t71->start->col.
          t145 = NEW zcl_lnt_position( i_row = t147 i_col = t163 ).
          DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t166 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t128 i_end = t145 ).
          DATA t171 TYPE REF TO zcl_lnt_issue.
          CLEAR t171.
          DATA(t176) = VALUE string( ).
          DATA t177 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t182 TYPE string.
          DATA(t183) = |Checks that only a single space follows certain common state|.
          t183 = t183 && |ments.|.
          t182 = t183.
          DATA t184 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t184.
          DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t188.
          t188->load( ).
          APPEND |Whitespace| TO t188->items.
          t188->save( ).
          t188->load( ).
          APPEND |Quickfix| TO t188->items.
          t188->save( ).
          t188->load( ).
          APPEND |SingleFile| TO t188->items.
          t188->save( ).
          t184 = t188.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t198.
          DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t202->has = abap_true.
          t202->value = |DATA  foo TYPE i.|.
          t198 = t202.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          DATA(t208) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t208->has = abap_true.
          t208->value = |DATA foo TYPE i.|.
          t204 = t208.
          DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t210.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          t177 = NEW zcl_lnt_irule_metadata( i_key = |double_space| i_title = |Double space| i_short_description = t182 i_bad_example = t198 i_good_example = t204 i_extended_information = t210 i_tags = t184 i_pragma = t212 i_pseudo_comment = t214 ).
          CREATE OBJECT t177->zlnt_view_ownkeys_b0e8086400eb.
          t177->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t216.
          t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t216 ).
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t217 ).
          ENDIF.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t218 ).
          ENDIF.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t219 ).
          ENDIF.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t220 ).
          ENDIF.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t177->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t177->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t221 ).
          ENDIF.
          CREATE OBJECT t177->zlnt_json_ownkeys_70e5fd461788.
          t177->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t223 ).
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t225 ).
          ENDIF.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t227 ).
          ENDIF.
          DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t229.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t229 ).
          ENDIF.
          DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t231.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t231 ).
          ENDIF.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          IF t177->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t177->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t233 ).
          ENDIF.
          t176 = t177->key.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t234 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t236 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t236.
          t236 = t166.
          DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t240.
          t171 = zcl_lnt_issue=>at_range( i_file = t1 i_start = t128 i_end = t145 i_message_26cb = |Remove double space| i_key = t176 i_severity = t234 i_fix = t236 i_alternative_fixes = t240 ).
          t2->load( ).
          APPEND t171 TO t2->items.
          t2->save( ).
        ENDIF.
        EXIT.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD check_paren.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t1->get_tokens( ).
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t7->load( ).
      IF t11 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t7->items INDEX t11 + 1 INTO t10.
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
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      IF xsdbool( t5 IS INITIAL ) = abap_true.
        t5 = t9.
        CONTINUE.
      ENDIF.
      DATA(t25) = VALUE abap_bool( ).
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE abap_bool.
      DATA(t31) = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).
      t29 = xsdbool( t31->zlnt_view_read_sr_35380942de4b( ) = abap_true ).
      t28 = t29.
      IF t29 = abap_true.
        t28 = xsdbool( t5->start->row = t9->start->row ).
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        DATA(t54) = t5.
        t27 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_paren_left_w ).
      ENDIF.
      t26 = t27.
      IF t27 = abap_true.
        t26 = xsdbool( xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_lx_comment ) = abap_false ).
      ENDIF.
      t25 = t26.
      IF t26 = abap_true.
        DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t60 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        DATA t64 TYPE REF TO zcl_lnt_paren_left_w.
        t64 ?= t5.
        t63 = t64.
        DATA t67 TYPE f.
        t67 = t63->start->row.
        DATA t74 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t74 = t63->start->col.
        DATA t80 TYPE f.
        t80 = strlen( t63->str ).
        DATA(t85) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t85->has = abap_true.
        t85->value = t80.
        t60 = NEW zcl_lnt_position( i_row = t67 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t74 right = t85 op = `+` ) )->col.
        DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t89->has = abap_true.
        t89->value = CONV f( 1 ).
        t59 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t60 right = t89 op = `+` ).
        DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t97 = t9->start->col.
        t25 = zlnt_runtime_numb_290eb04a9758=>compare( left = t59 right = t97 op = `<` ).
      ENDIF.
      IF t25 = abap_true.
        DATA t99 TYPE REF TO zcl_lnt_position.
        DATA t101 TYPE f.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_paren_left_w.
        t103 ?= t5.
        t102 = t103.
        t101 = t102->start->row.
        DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t113 TYPE REF TO zcl_lnt_abstract_token.
        DATA t114 TYPE REF TO zcl_lnt_paren_left_w.
        t114 ?= t5.
        t113 = t114.
        t112 = t113->start->col.
        DATA(t123) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t123->has = abap_true.
        t123->value = CONV f( 2 ).
        t99 = NEW zcl_lnt_position( i_row = t101 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t112 right = t123 op = `+` ) ).
        DATA t124 TYPE REF TO zcl_lnt_position.
        DATA t126 TYPE f.
        t126 = t9->start->row.
        DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t142 = t9->start->col.
        t124 = NEW zcl_lnt_position( i_row = t126 i_col = t142 ).
        DATA t145 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t145 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t99 i_end = t124 ).
        DATA t150 TYPE abap_bool.
        DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t154 = t1->pragmas.
        t150 = me->pragma_in_range( i_pragmas = t154 i_start = t99 i_end = t124 ).
        IF xsdbool( t150 = abap_false ) = abap_true.
          DATA t160 TYPE REF TO zcl_lnt_issue.
          CLEAR t160.
          DATA(t165) = VALUE string( ).
          DATA t166 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t171 TYPE string.
          DATA(t172) = |Checks that only a single space follows certain common state|.
          t172 = t172 && |ments.|.
          t171 = t172.
          DATA t173 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t173.
          DATA t177 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t177.
          t177->load( ).
          APPEND |Whitespace| TO t177->items.
          t177->save( ).
          t177->load( ).
          APPEND |Quickfix| TO t177->items.
          t177->save( ).
          t177->load( ).
          APPEND |SingleFile| TO t177->items.
          t177->save( ).
          t173 = t177.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA(t191) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t191->has = abap_true.
          t191->value = |DATA  foo TYPE i.|.
          t187 = t191.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          DATA(t197) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t197->has = abap_true.
          t197->value = |DATA foo TYPE i.|.
          t193 = t197.
          DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t199.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          t166 = NEW zcl_lnt_irule_metadata( i_key = |double_space| i_title = |Double space| i_short_description = t171 i_bad_example = t187 i_good_example = t193 i_extended_information = t199 i_tags = t173 i_pragma = t201 i_pseudo_comment = t203 ).
          CREATE OBJECT t166->zlnt_view_ownkeys_b0e8086400eb.
          t166->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t205.
          t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t205 ).
          DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t206.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t206 ).
          ENDIF.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t207 ).
          ENDIF.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t208 ).
          ENDIF.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t209 ).
          ENDIF.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t166->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t166->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t210 ).
          ENDIF.
          CREATE OBJECT t166->zlnt_json_ownkeys_70e5fd461788.
          t166->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t212.
          t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t212 ).
          DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t214.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t214 ).
          ENDIF.
          DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t216.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t216 ).
          ENDIF.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t218 ).
          ENDIF.
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t220 ).
          ENDIF.
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          IF t166->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t166->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t222 ).
          ENDIF.
          t165 = t166->key.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t223 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t225 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t225.
          t225 = t145.
          DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t229.
          t160 = zcl_lnt_issue=>at_range( i_file = t2 i_start = t99 i_end = t124 i_message_26cb = |Remove double space| i_key = t165 i_severity = t223 i_fix = t225 i_alternative_fixes = t229 ).
          t3->load( ).
          APPEND t160 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDIF.
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = VALUE abap_bool( ).
      DATA(t232) = VALUE abap_bool( ).
      DATA t233 TYPE abap_bool.
      DATA t234 TYPE abap_bool.
      DATA(t236) = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).
      t234 = xsdbool( t236->zlnt_view_read_sr_d180c0b9d146( ) = abap_true ).
      t233 = t234.
      IF t234 = abap_true.
        t233 = xsdbool( t5->start->row = t9->start->row ).
      ENDIF.
      t232 = t233.
      IF t233 = abap_true.
        DATA(t260) = t5.
        t232 = xsdbool( xsdbool( t260 IS BOUND AND t260 IS INSTANCE OF zcl_lnt_paren_left_w ) = abap_false ).
      ENDIF.
      t231 = t232.
      IF t232 = abap_true.
        DATA t261 TYPE abap_bool.
        DATA t262 TYPE abap_bool.
        t262 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_w_paren_right_w ).
        t261 = t262.
        IF t262 = abap_false.
          t261 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_w_paren_right ).
        ENDIF.
        t231 = t261.
      ENDIF.
      t230 = t231.
      IF t231 = abap_true.
        DATA t267 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t268 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t271 TYPE REF TO zcl_lnt_abstract_token.
        t271 = t5.
        DATA t275 TYPE f.
        t275 = t271->start->row.
        DATA t282 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t282 = t271->start->col.
        DATA t288 TYPE f.
        t288 = strlen( t271->str ).
        DATA(t293) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t293->has = abap_true.
        t293->value = t288.
        t268 = NEW zcl_lnt_position( i_row = t275 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t282 right = t293 op = `+` ) )->col.
        DATA(t297) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t297->has = abap_true.
        t297->value = CONV f( 1 ).
        t267 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t268 right = t297 op = `+` ).
        DATA t299 TYPE REF TO zif_lnt_union_24b9bfb5.
        t299 ?= t9.
        t230 = zlnt_runtime_numb_290eb04a9758=>compare( left = t267 right = t299->get_col( ) op = `<` ).
      ENDIF.
      IF t230 = abap_true.
        DATA t301 TYPE REF TO zcl_lnt_position.
        DATA t303 TYPE f.
        DATA t306 TYPE REF TO zcl_lnt_abstract_token.
        t306 = t5.
        DATA t310 TYPE f.
        t310 = t306->start->row.
        DATA t317 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t317 = t306->start->col.
        DATA t323 TYPE f.
        t323 = strlen( t306->str ).
        DATA(t328) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t328->has = abap_true.
        t328->value = t323.
        t303 = NEW zcl_lnt_position( i_row = t310 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t317 right = t328 op = `+` ) )->row.
        DATA t332 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t335 TYPE REF TO zcl_lnt_abstract_token.
        t335 = t5.
        DATA t339 TYPE f.
        t339 = t335->start->row.
        DATA t346 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t346 = t335->start->col.
        DATA t352 TYPE f.
        t352 = strlen( t335->str ).
        DATA(t357) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t357->has = abap_true.
        t357->value = t352.
        t332 = NEW zcl_lnt_position( i_row = t339 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t346 right = t357 op = `+` ) )->col.
        DATA(t361) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t361->has = abap_true.
        t361->value = CONV f( 1 ).
        t301 = NEW zcl_lnt_position( i_row = t303 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t332 right = t361 op = `+` ) ).
        DATA t362 TYPE REF TO zcl_lnt_position.
        DATA t364 TYPE f.
        DATA t365 TYPE REF TO zif_lnt_union_24b9bfb5.
        t365 ?= t9.
        t364 = t365->get_row( ).
        DATA t368 TYPE REF TO zif_lnt_union_24b9bfb5.
        t368 ?= t9.
        t362 = NEW zcl_lnt_position( i_row = t364 i_col = t368->get_col( ) ).
        DATA t371 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t371 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t301 i_end = t362 ).
        DATA t376 TYPE abap_bool.
        DATA t380 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t380 = t1->pragmas.
        t376 = me->pragma_in_range( i_pragmas = t380 i_start = t301 i_end = t362 ).
        IF xsdbool( t376 = abap_false ) = abap_true.
          DATA t386 TYPE REF TO zcl_lnt_issue.
          CLEAR t386.
          DATA(t391) = VALUE string( ).
          DATA t392 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t397 TYPE string.
          DATA(t398) = |Checks that only a single space follows certain common state|.
          t398 = t398 && |ments.|.
          t397 = t398.
          DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t399.
          DATA t403 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t403.
          t403->load( ).
          APPEND |Whitespace| TO t403->items.
          t403->save( ).
          t403->load( ).
          APPEND |Quickfix| TO t403->items.
          t403->save( ).
          t403->load( ).
          APPEND |SingleFile| TO t403->items.
          t403->save( ).
          t399 = t403.
          DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t413.
          DATA(t417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t417->has = abap_true.
          t417->value = |DATA  foo TYPE i.|.
          t413 = t417.
          DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t419.
          DATA(t423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t423->has = abap_true.
          t423->value = |DATA foo TYPE i.|.
          t419 = t423.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t425.
          DATA t427 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t427.
          DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t429.
          t392 = NEW zcl_lnt_irule_metadata( i_key = |double_space| i_title = |Double space| i_short_description = t397 i_bad_example = t413 i_good_example = t419 i_extended_information = t425 i_tags = t399 i_pragma = t427 i_pseudo_comment = t429 ).
          CREATE OBJECT t392->zlnt_view_ownkeys_b0e8086400eb.
          t392->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t431.
          t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t431 ).
          DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t432.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t432 ).
          ENDIF.
          DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t433.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t433 ).
          ENDIF.
          DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t434.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t434 ).
          ENDIF.
          DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t435.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t435 ).
          ENDIF.
          DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t436.
          IF t392->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t392->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t436 ).
          ENDIF.
          CREATE OBJECT t392->zlnt_json_ownkeys_70e5fd461788.
          t392->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t438.
          t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t438 ).
          DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t440.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t440 ).
          ENDIF.
          DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t442.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t442 ).
          ENDIF.
          DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t444.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t444 ).
          ENDIF.
          DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t446.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t446 ).
          ENDIF.
          DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t448.
          IF t392->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t392->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t448 ).
          ENDIF.
          t391 = t392->key.
          DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t449 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t451 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t451.
          t451 = t371.
          DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t455.
          t386 = zcl_lnt_issue=>at_range( i_file = t2 i_start = t301 i_end = t362 i_message_26cb = |Remove double space| i_key = t391 i_severity = t449 i_fix = t451 i_alternative_fixes = t455 ).
          t3->load( ).
          APPEND t386 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDIF.
      t5 = t9.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD pragma_in_range.
    DATA(t1) = i_pragmas.
    DATA(t2) = i_start.
    DATA(t3) = i_end.
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t1->load( ).
      IF t9 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t1->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_position.
      t13 = t7->start.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      t24 = t13->is_after( i_p = t2 ).
      t23 = t24.
      IF t24 = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_position.
        t28 = t3.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        t31 = xsdbool( t13->row < t28->row ).
        t30 = t31.
        IF t31 = abap_false.
          DATA t36 TYPE abap_bool.
          DATA t37 TYPE abap_bool.
          t37 = xsdbool( t13->row = t28->row ).
          t36 = t37.
          IF t37 = abap_true.
            DATA t43 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t43 = t13->col.
            DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t45 = t28->col.
            t36 = zlnt_runtime_numb_290eb04a9758=>compare( left = t43 right = t45 op = `<` ).
          ENDIF.
          t30 = t36.
        ENDIF.
        t23 = t30.
      ENDIF.
      IF t23 = abap_true.
        t4 = abap_true.
      ENDIF.
    ENDDO.
    result = t4.

  ENDMETHOD.

  METHOD check_keywords.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_token_node.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    t13 = t1->colon.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t8 = xsdbool( xsdbool( t13 IS INITIAL ) = abap_false ).
    t7 = t8.
    IF t8 = abap_false.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t22 = t1->pragmas.
      t22->load( ).
      t7 = xsdbool( lines( t22->items ) > 0 ).
    ENDIF.
    IF t7 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t29 = t1->get_token_nodes( ).
    DATA t31 TYPE REF TO zcl_lnt_token_node.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t29->load( ).
      IF t33 >= lines( t29->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t29->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      IF xsdbool( t5 IS INITIAL ) = abap_true.
        t5 = t31.
        CONTINUE.
      ENDIF.
      DATA(t47) = VALUE string( ).
      DATA t48 TYPE string.
      DATA t49 TYPE string.
      t49 = t5->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
      DATA(t56) = strlen( t49 ).
      t48 = t49.
      IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t48 TO UPPER CASE.
      ELSE.
        t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
      ENDIF.
      t47 = t48.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = VALUE abap_bool( ).
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE abap_bool.
      DATA(t61) = t5.
      t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_token_node_regex ).
      t59 = t60.
      IF t60 = abap_false.
        t59 = xsdbool( t47 = |(| ).
      ENDIF.
      t58 = t59.
      IF t59 = abap_false.
        t58 = xsdbool( t47 = |)| ).
      ENDIF.
      t57 = t58.
      IF t58 = abap_false.
        DATA t69 TYPE abap_bool.
        t69 = abap_false.
        DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t71 = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) )->zlnt_view_read_sr_b77f70a074af( ).
        DATA(t74) = VALUE string( ).
        t71->dense( ).
        DATA(t75) = VALUE i( ).
        DO.
          t71->load( ).
          IF t75 >= lines( t71->items ).
            EXIT.
          ENDIF.
          CLEAR t74.
          READ TABLE t71->items INDEX t75 + 1 INTO t74.
          IF t71->has( t75 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t75 = t75 + 1.
          DATA t77 TYPE string.
          DATA(t79) = strlen( t74 ).
          t77 = t74.
          IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t77 TO UPPER CASE.
          ELSE.
            t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
          ENDIF.
          IF xsdbool( t77 = t47 ) = abap_true.
            t69 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        t57 = t69.
      ENDIF.
      IF t57 = abap_true.
        t5 = t31.
        CONTINUE.
      ENDIF.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE abap_bool.
      DATA t89 TYPE f.
      DATA t96 TYPE REF TO zcl_lnt_position.
      t96 = t5->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->start.
      t89 = t96->row.
      DATA t108 TYPE f.
      t108 = t31->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->start->row.
      t88 = xsdbool( t89 = t108 ).
      t87 = t88.
      IF t88 = abap_true.
        DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        t115 = t5->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t120 TYPE f.
        t120 = t115->start->row.
        DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t127 = t115->start->col.
        DATA t133 TYPE f.
        t133 = strlen( t115->str ).
        DATA(t138) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t138->has = abap_true.
        t138->value = t133.
        t112 = NEW zcl_lnt_position( i_row = t120 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t127 right = t138 op = `+` ) )->col.
        DATA(t142) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t142->has = abap_true.
        t142->value = CONV f( 1 ).
        t111 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t112 right = t142 op = `+` ).
        DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t149 TYPE REF TO zcl_lnt_position.
        t149 = t31->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->start.
        t143 = t149->col.
        t87 = zlnt_runtime_numb_290eb04a9758=>compare( left = t111 right = t143 op = `<` ).
      ENDIF.
      IF t87 = abap_true.
        DATA t153 TYPE REF TO zcl_lnt_position.
        DATA t155 TYPE f.
        DATA t158 TYPE REF TO zcl_lnt_abstract_token.
        t158 = t5->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t163 TYPE f.
        t163 = t158->start->row.
        DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t170 = t158->start->col.
        DATA t176 TYPE f.
        t176 = strlen( t158->str ).
        DATA(t181) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t181->has = abap_true.
        t181->value = t176.
        t155 = NEW zcl_lnt_position( i_row = t163 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t170 right = t181 op = `+` ) )->row.
        DATA t185 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t188 TYPE REF TO zcl_lnt_abstract_token.
        t188 = t5->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t193 TYPE f.
        t193 = t188->start->row.
        DATA t200 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t200 = t188->start->col.
        DATA t206 TYPE f.
        t206 = strlen( t188->str ).
        DATA(t211) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t211->has = abap_true.
        t211->value = t206.
        t185 = NEW zcl_lnt_position( i_row = t193 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t200 right = t211 op = `+` ) )->col.
        DATA(t215) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t215->has = abap_true.
        t215->value = CONV f( 1 ).
        t153 = NEW zcl_lnt_position( i_row = t155 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t185 right = t215 op = `+` ) ).
        DATA t216 TYPE REF TO zcl_lnt_position.
        DATA t218 TYPE f.
        DATA t224 TYPE REF TO zcl_lnt_position.
        t224 = t31->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->start.
        t218 = t224->row.
        DATA t228 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t234 TYPE REF TO zcl_lnt_position.
        t234 = t31->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->start.
        t228 = t234->col.
        t216 = NEW zcl_lnt_position( i_row = t218 i_col = t228 ).
        DATA t239 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t239 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t153 i_end = t216 ).
        DATA t244 TYPE REF TO zcl_lnt_issue.
        CLEAR t244.
        DATA(t249) = VALUE string( ).
        DATA t250 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t255 TYPE string.
        DATA(t256) = |Checks that only a single space follows certain common state|.
        t256 = t256 && |ments.|.
        t255 = t256.
        DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t257.
        DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t261.
        t261->load( ).
        APPEND |Whitespace| TO t261->items.
        t261->save( ).
        t261->load( ).
        APPEND |Quickfix| TO t261->items.
        t261->save( ).
        t261->load( ).
        APPEND |SingleFile| TO t261->items.
        t261->save( ).
        t257 = t261.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t275->has = abap_true.
        t275->value = |DATA  foo TYPE i.|.
        t271 = t275.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t281->has = abap_true.
        t281->value = |DATA foo TYPE i.|.
        t277 = t281.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t283.
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t285.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        t250 = NEW zcl_lnt_irule_metadata( i_key = |double_space| i_title = |Double space| i_short_description = t255 i_bad_example = t271 i_good_example = t277 i_extended_information = t283 i_tags = t257 i_pragma = t285 i_pseudo_comment = t287 ).
        CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
        t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t289 ).
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t290 ).
        ENDIF.
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t291.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t291 ).
        ENDIF.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t292.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t292 ).
        ENDIF.
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t293 ).
        ENDIF.
        DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t294.
        IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t294 ).
        ENDIF.
        CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
        t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t296.
        t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t296 ).
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t298.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t298 ).
        ENDIF.
        DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t300.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t300 ).
        ENDIF.
        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t302.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t302 ).
        ENDIF.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t304 ).
        ENDIF.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t306 ).
        ENDIF.
        t249 = t250->key.
        DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t307 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t309 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t309.
        t309 = t239.
        DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t313.
        t244 = zcl_lnt_issue=>at_range( i_file = t2 i_start = t153 i_end = t216 i_message_26cb = |Remove double space| i_key = t249 i_severity = t307 i_fix = t309 i_alternative_fixes = t313 ).
        t3->load( ).
        APPEND t244 TO t3->items.
        t3->save( ).
        result = t3.
        RETURN.
      ENDIF.
      t5 = t31.
    ENDDO.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_double_space_conf( me->gt_cn_in_sr_rl_db_sp_ts_db_spc( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_double_space_conf.
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
        t1 = NEW zcl_lnt_double_space_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_db_sp_ts_db_spc( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_db_sp_ts_db_spc( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1481_5489e72de330.
  ENDMETHOD.
ENDCLASS.
