* TS: src/rules/inline_data_old_versions.ts:12:1 InlineDataOldVersions
CLASS zcl_lnt_inln_dt_old_vrsns DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_inln_dt_old_vrsns_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_i_d_o_v_t_i_dt_ol_vr RETURNING VALUE(result) TYPE REF TO zcl_lnt_inln_dt_old_vrsns_cnf.
    METHODS s_c_i_s_r_i_d_o_v_t_i_dt_ol_vr IMPORTING i_conf TYPE REF TO zcl_lnt_inln_dt_old_vrsns_cnf.
    METHODS r_p_i_s_r_i_d_o_v_t_i_dt_ol_vr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_inln_dt_old_vrsns IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_inln_dt_old_vrsns_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for inline data declarations in older releases. Only |.
    t7 = t7 && |active for versions less than v740sp02|.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Syntax| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |inline_data_old_versions| i_title = |Inline data, old versions| i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t12 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t35 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_i_d_o_v_t_i_dt_ol_vr.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_i_d_o_v_t_i_dt_ol_vr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_i_d_o_v_t_i_dt_ol_vr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    t7 = me->reg->get_config( )->get_release( ).
    DATA t12 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t12 = zcl_lnt_version_module=>release_b8cd.
    t6 = zcl_lnt_version_module=>release_at_least( i_running = t7 i_required = t12->get( p0 = |v740sp02| ) ).
    t5 = t6.
    IF t6 = abap_false.
      t5 = me->reg->get_config( )->is_open_abap( ).
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t18 TYPE string.
      t18 = me->reg->get_config( )->get_language_version( ).
      t4 = xsdbool( t18 = |Cloud| ).
    ENDIF.
    IF t4 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t23 = t1->statements.
    DATA t28 TYPE REF TO zcl_lnt_statement_node.
    DATA t29 TYPE REF TO object.
    DATA(t30) = VALUE i( ).
    DO.
      t23->load( ).
      IF t30 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t23->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t33 = t28->find_all_expressions( i_type_9913 = t35 ).
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      DATA(t38) = VALUE i( ).
      DO.
        t33->load( ).
        IF t38 >= lines( t33->items ).
          EXIT.
        ENDIF.
        CLEAR t37.
        READ TABLE t33->items INDEX t38 + 1 INTO t37.
        t38 = t38 + 1.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        CLEAR t36.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t39 ?= t37.
          DATA t40 TYPE REF TO object.
          t40 = t39->as_ref( ).
          t36 ?= t40.
        ELSE.
          t36 ?= t37.
        ENDIF.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t41 = t36->get_all_tokens( ).
        t41->load( ).
        IF xsdbool( lines( t41->items ) <> 4 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t50) = VALUE string( ).
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t53.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t41->load( ).
        CLEAR t55.
        READ TABLE t41->items INDEX 1 INTO t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t53.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t53 ?= t57.
        ELSE.
          t53 ?= t55.
        ENDIF.
        t50 = t53->str.
        DATA t61 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t61 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |DATA| flags = |i|.
        IF xsdbool( t61->match_test( p0 = t50 ) = abap_false ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t68.
        DATA t70 TYPE REF TO object.
        CLEAR t70.
        t41->load( ).
        CLEAR t70.
        READ TABLE t41->items INDEX 2 INTO t70.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        CLEAR t68.
        IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t71 ?= t70.
          DATA t72 TYPE REF TO object.
          t72 = t71->as_ref( ).
          t68 ?= t72.
        ELSE.
          t68 ?= t70.
        ENDIF.
        IF xsdbool( t68->str <> |(| ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t79 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t79.
        DATA t81 TYPE REF TO object.
        CLEAR t81.
        t41->load( ).
        CLEAR t81.
        READ TABLE t41->items INDEX 4 INTO t81.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        CLEAR t79.
        IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t82 ?= t81.
          DATA t83 TYPE REF TO object.
          t83 = t82->as_ref( ).
          t79 ?= t83.
        ELSE.
          t79 ?= t81.
        ENDIF.
        IF xsdbool( t79->str <> |)| ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA t88 TYPE string.
        DATA(t89) = |Inline DATA not possible in |.
        DATA t90 TYPE string.
        t90 = me->reg->get_config( )->get_version( ).
        DATA(t93) = strlen( t89 ).
        t88 = |{ t89 }{ t90 }|.
        DATA t95 TYPE REF TO zcl_lnt_issue.
        CLEAR t95.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t97.
        DATA t99 TYPE REF TO object.
        CLEAR t99.
        t41->load( ).
        CLEAR t99.
        READ TABLE t41->items INDEX 1 INTO t99.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        CLEAR t97.
        IF t99 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t100 ?= t99.
          DATA t101 TYPE REF TO object.
          t101 = t100->as_ref( ).
          t97 ?= t101.
        ELSE.
          t97 ?= t99.
        ENDIF.
        DATA(t103) = VALUE string( ).
        DATA t104 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t109 TYPE string.
        DATA(t110) = |Checks for inline data declarations in older releases. Only |.
        t110 = t110 && |active for versions less than v740sp02|.
        t109 = t110.
        DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t111.
        DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t115.
        t115->load( ).
        APPEND |Syntax| TO t115->items.
        t115->save( ).
        t115->load( ).
        APPEND |SingleFile| TO t115->items.
        t115->save( ).
        t111 = t115.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t131.
        t104 = NEW zcl_lnt_irule_metadata( i_key = |inline_data_old_versions| i_title = |Inline data, old versions| i_short_description = t109 i_bad_example = t123 i_good_example = t125 i_extended_information = t127 i_tags = t111 i_pragma = t129 i_pseudo_comment = t131 ).
        CREATE OBJECT t104->zlnt_view_ownkeys_b0e8086400eb.
        t104->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t133 ).
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t134 ).
        ENDIF.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t135 ).
        ENDIF.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t104->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t104->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t136 ).
        ENDIF.
        CREATE OBJECT t104->zlnt_json_ownkeys_70e5fd461788.
        t104->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t138 ).
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t140 ).
        ENDIF.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t142 ).
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t104->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t104->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t144 ).
        ENDIF.
        t103 = t104->key.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t145 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t147 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t147.
        t95 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t97 i_message_26cb = t88 i_key = t103 i_severity = t145 i_fix = t147 ).
        t2->load( ).
        APPEND t95 TO t2->items.
        t2->save( ).
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_inln_dt_old_vrsns_cnf( me->g_c_i_s_r_i_d_o_v_t_i_dt_ol_vr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_inln_dt_old_vrsns_cnf( me->g_c_i_s_r_i_d_o_v_t_i_dt_ol_vr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_inln_dt_old_vrsns_cnf.
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
        t1 = NEW zcl_lnt_inln_dt_old_vrsns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_i_d_o_v_t_i_dt_ol_vr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_i_d_o_v_t_i_dt_ol_vr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1548_39412f673ae2.
  ENDMETHOD.
ENDCLASS.
