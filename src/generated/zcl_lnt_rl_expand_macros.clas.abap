* TS: src/rules/expand_macros.ts:14:1 ExpandMacros
CLASS zcl_lnt_rl_expand_macros DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_expand_macros_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ex_mc_ts_ex_mcr RETURNING VALUE(result) TYPE REF TO zcl_lnt_expand_macros_conf.
    METHODS st_cn_in_sr_rl_ex_mc_ts_ex_mcr IMPORTING i_conf TYPE REF TO zcl_lnt_expand_macros_conf.
    METHODS rn_pr_in_sr_rl_ex_mc_ts_ex_mcr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_rl_expand_macros IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_expand_macros_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Macros: https://help.sap.com/doc/abapdocu_latest_index_htm/l|.
    t11 = t11 && |atest/en-US/abenmacros_guidl.html\n\nNote that macros/DEFINE c|.
    t11 = t11 && |annot be used in the ABAP Cloud programming model|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t18->has = abap_true.
    t18->value = |DEFINE _hello.\n  WRITE 'hello'.\nEND-OF-DEFINITION.\n_hello.|.
    t14 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |WRITE 'hello'.|.
    t20 = t24.
    DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t30.
    t30->load( ).
    APPEND |Styleguide| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Quickfix| TO t30->items.
    t30->save( ).
    t30->load( ).
    APPEND |Upport| TO t30->items.
    t30->save( ).
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |expand_macros| i_title = |Expand Macros| i_short_description = |Allows expanding macro calls with quick fixes| i_bad_example = t14 i_good_example = t20 i_extended_information = t8 i_tags = t30 i_pragma = t40 i_pseudo_comment = t42 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ex_mc_ts_ex_mcr.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ex_mc_ts_ex_mcr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ex_mc_ts_ex_mcr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = t1->statements.
    DATA t12 TYPE i.
    t12 = 0.
    DO.
      t6->load( ).
      IF xsdbool( t12 < lines( t6->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t19.
      DATA(t21) = t12.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      t6->load( ).
      CLEAR t22.
      READ TABLE t6->items INDEX t21 INTO t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t19.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t22.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t19 ?= t24.
      ELSE.
        t19 ?= t22.
      ENDIF.
      t18 = t19.
      DATA t25 TYPE REF TO zif_lnt_statement.
      t25 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_macro_call ) = abap_false ) = abap_true.
        DATA(t33) = 1.
        t12 = t12 + t33.
        CONTINUE.
      ENDIF.
      DATA t34 TYPE string.
      t34 = ||.
      DATA t36 TYPE i.
      DATA(t39) = 1.
      t36 = t12 + t39.
      DO.
        t6->load( ).
        IF xsdbool( t36 < lines( t6->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t44 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t45.
        DATA(t47) = t36.
        t47 = t47 + 1.
        DATA t48 TYPE REF TO object.
        CLEAR t48.
        t6->load( ).
        CLEAR t48.
        READ TABLE t6->items INDEX t47 INTO t48.
        DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t49.
        CLEAR t45.
        IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t49 ?= t48.
          DATA t50 TYPE REF TO object.
          t50 = t49->as_ref( ).
          t45 ?= t50.
        ELSE.
          t45 ?= t48.
        ENDIF.
        t44 = t45.
        DATA t52 TYPE REF TO zcl_lnt_position.
        t52 = t44->get_first_token( )->start.
        IF xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
          DATA t59 TYPE REF TO zif_lnt_statement.
          t59 = t44->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          IF xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_macro_call ) = abap_true.
            DATA(t63) = 1.
            t36 = t36 + t63.
            CONTINUE.
          ENDIF.
          IF xsdbool( t34 <> || ) = abap_true.
            DATA(t68) = t34.
            DATA(t70) = strlen( t68 ).
            t34 = |{ t68 }{ |\n| }|.
          ENDIF.
          DATA(t72) = t34.
          DATA t73 TYPE string.
          t73 = t44->concat_tokens_virtual( ).
          DATA(t75) = strlen( t72 ).
          t34 = |{ t72 }{ t73 }|.
        ELSE.
          EXIT.
        ENDIF.
        DATA(t78) = 1.
        t36 = t36 + t78.
      ENDDO.
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      t80 = t18->colon.
      IF xsdbool( t80 IS BOUND ) = abap_true.
        DATA(t86) = t34.
        DATA(t88) = strlen( t86 ).
        t34 = |{ t86 }{ |\n| }|.
      ENDIF.
      DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t90 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t18 ).
      DATA t103 TYPE REF TO zcl_lnt_position.
      t103 = t18->get_first_token( )->start.
      DATA t107 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t107 = zcl_lnt_edit_helper=>merge( i_fix1 = t90 i_fix2 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t103 i_text = t34 ) ).
      DATA t111 TYPE REF TO zcl_lnt_issue.
      CLEAR t111.
      DATA(t115) = VALUE string( ).
      DATA t116 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t116.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      DATA(t126) = |Macros: https://help.sap.com/doc/abapdocu_latest_index_htm/l|.
      t126 = t126 && |atest/en-US/abenmacros_guidl.html\n\nNote that macros/DEFINE c|.
      t126 = t126 && |annot be used in the ABAP Cloud programming model|.
      DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t127->has = abap_true.
      t127->value = t126.
      t123 = t127.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t133->has = abap_true.
      t133->value = |DEFINE _hello.\n  WRITE 'hello'.\nEND-OF-DEFINITION.\n_hello.|.
      t129 = t133.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t135.
      DATA(t139) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t139->has = abap_true.
      t139->value = |WRITE 'hello'.|.
      t135 = t139.
      DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t141.
      DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t145.
      t145->load( ).
      APPEND |Styleguide| TO t145->items.
      t145->save( ).
      t145->load( ).
      APPEND |Quickfix| TO t145->items.
      t145->save( ).
      t145->load( ).
      APPEND |Upport| TO t145->items.
      t145->save( ).
      t141 = t145.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t155.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t157.
      t116 = NEW zcl_lnt_irule_metadata( i_key = |expand_macros| i_title = |Expand Macros| i_short_description = |Allows expanding macro calls with quick fixes| i_bad_example = t129 i_good_example = t135 i_extended_information = t123 i_tags = t141 i_pragma = t155 i_pseudo_comment = t157 ).
      CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
      t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
      ENDIF.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t162 ).
      ENDIF.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t163 ).
      ENDIF.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t164 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t165 ).
      ENDIF.
      CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
      t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t167 ).
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t169 ).
      ENDIF.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t171 ).
      ENDIF.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t173 ).
      ENDIF.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t175 ).
      ENDIF.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t177 ).
      ENDIF.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t179 ).
      ENDIF.
      t115 = t116->key.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t180 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t182 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t182.
      t182 = t107.
      DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t186.
      t111 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t18 i_message_26cb = |Expand macro call| i_key = t115 i_severity = t180 i_fix = t182 i_alternative_fixes = t186 ).
      t2->load( ).
      APPEND t111 TO t2->items.
      t2->save( ).
      EXIT.
      DATA(t189) = 1.
      t12 = t12 + t189.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_expand_macros_conf( me->gt_cn_in_sr_rl_ex_mc_ts_ex_mcr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_expand_macros_conf( me->gt_cn_in_sr_rl_ex_mc_ts_ex_mcr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_expand_macros_conf.
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
        t1 = NEW zcl_lnt_expand_macros_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ex_mc_ts_ex_mcr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ex_mc_ts_ex_mcr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1500_b8c567c52dfd.
  ENDMETHOD.
ENDCLASS.
