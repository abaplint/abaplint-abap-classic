* TS: src/rules/no_external_form_calls.ts:12:1 NoExternalFormCalls
CLASS zcl_lnt_no_external_form_calls DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
    METHODS s_c_i_s_r_n_e_f_c_t_n_ex_fr_cl IMPORTING i_conf TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
    METHODS r_p_i_s_r_n_e_f_c_t_n_ex_fr_cl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_external_form_calls IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_n_extrnl_frm_clls_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |PERFORM foo IN PROGRAM bar.\n\nPERFORM foo(bar).|.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |no_external_form_calls| i_title = |No external FORM calls| i_short_description = |Detect external form calls| i_bad_example = t8 i_good_example = t24 i_extended_information = t26 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
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
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_n_e_f_c_t_n_ex_fr_cl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_n_e_f_c_t_n_ex_fr_cl.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t4.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d573_76d229f1cfae.
    t18 = t19->find_all_statements( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
      t29 = t22->find_direct_expression( i_type_9913 = t31 ).
      t28 = xsdbool( t29 IS BOUND ).
      t27 = t28.
      IF t28 = abap_false.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        t33 = t22->find_direct_token_by_text( i_text = |PROGRAM| ).
        t27 = xsdbool( t33 IS BOUND ).
      ENDIF.
      IF t27 = abap_true.
        DATA t39 TYPE REF TO zcl_lnt_issue.
        CLEAR t39.
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t44.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t55->has = abap_true.
        t55->value = |PERFORM foo IN PROGRAM bar.\n\nPERFORM foo(bar).|.
        t51 = t55.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t57.
        DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t61.
        t61->load( ).
        APPEND |SingleFile| TO t61->items.
        t61->save( ).
        t57 = t61.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        t44 = NEW zcl_lnt_irule_metadata( i_key = |no_external_form_calls| i_title = |No external FORM calls| i_short_description = |Detect external form calls| i_bad_example = t51 i_good_example = t67 i_extended_information = t69 i_tags = t57 i_pragma = t71 i_pseudo_comment = t73 ).
        CREATE OBJECT t44->zlnt_view_ownkeys_b0e8086400eb.
        t44->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t75 ).
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t76 ).
        ENDIF.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t77 ).
        ENDIF.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t78 ).
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t79 ).
        ENDIF.
        CREATE OBJECT t44->zlnt_json_ownkeys_70e5fd461788.
        t44->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t81 ).
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t83 ).
        ENDIF.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t85 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t87 ).
        ENDIF.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t89 ).
        ENDIF.
        t43 = t44->key.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t90 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t92 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t92.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t93.
        t39 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t22 i_message_26cb = |No external FORM calls| i_key = t43 i_severity = t90 i_fix = t92 i_alternative_fixes = t93 ).
        t2->load( ).
        APPEND t39 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_n_extrnl_frm_clls_cnf( me->g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_n_extrnl_frm_clls_cnf( me->g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
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
        t1 = NEW zcl_lnt_n_extrnl_frm_clls_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_n_e_f_c_t_n_ex_fr_cl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_e_f_c_t_n_ex_fr_cl( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1615_f3c0e2c8d80f.
  ENDMETHOD.
ENDCLASS.
