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
    DATA(t1) = NEW zcl_lnt_n_extrnl_frm_clls_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |no_external_form_calls|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No external FORM calls|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detect external form calls|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |PERFORM foo IN PROGRAM bar.\n\nPERFORM foo(bar).|.
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
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
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
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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

  METHOD g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_n_e_f_c_t_n_ex_fr_cl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_n_e_f_c_t_n_ex_fr_cl.
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
      DATA(t17) = t2.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA(t20) = t4.
    t19 = t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d573_76d229f1cfae.
    t18 = t19->find_all_statements( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
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
      DATA(t30) = t22.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
      t29 = t30->find_direct_expression( i_type_9913 = t31 ).
      t28 = xsdbool( t29 IS BOUND ).
      t27 = t28.
      IF t28 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t34) = t22.
        DATA(t35) = |PROGRAM|.
        t33 = t34->find_direct_token_by_text( i_text = t35 ).
        t32 = xsdbool( t33 IS BOUND ).
        t27 = t32.
      ENDIF.
      IF t27 = abap_true.
        DATA t36 TYPE string.
        DATA(t37) = |No external FORM calls|.
        t36 = t37.
        DATA(t38) = t2.
        DATA t39 TYPE REF TO zcl_lnt_issue.
        CLEAR t39.
        DATA(t40) = t1.
        DATA(t41) = t22.
        DATA(t42) = t36.
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t44.
        DATA t45 TYPE string.
        DATA(t46) = |no_external_form_calls|.
        t45 = t46.
        DATA t47 TYPE string.
        DATA(t48) = |No external FORM calls|.
        t47 = t48.
        DATA t49 TYPE string.
        DATA(t50) = |Detect external form calls|.
        t49 = t50.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA(t53) = abap_true.
        IF t53 = abap_true.
          DATA(t54) = |PERFORM foo IN PROGRAM bar.\n\nPERFORM foo(bar).|.
          DATA(t55) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t55->has = abap_true.
          t55->value = t54.
          t52 = t55.
        ELSE.
          DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t56.
          t52 = t56.
        ENDIF.
        t51 = t52.
        DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t57.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t58.
        DATA(t59) = abap_true.
        IF t59 = abap_true.
          DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t62.
          t61 = t62.
          DATA(t63) = t61.
          DATA(t64) = |SingleFile|.
          t63->load( ).
          APPEND t64 TO t63->items.
          t63->save( ).
          DATA(t65) = t61.
          t60 = t65.
          t58 = t60.
        ELSE.
          DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t66.
          t58 = t66.
        ENDIF.
        t57 = t58.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t71 = t72.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        t73 = t74.
        t44 = NEW zcl_lnt_irule_metadata( i_key = t45 i_title = t47 i_short_description = t49 i_bad_example = t51 i_good_example = t67 i_extended_information = t69 i_tags = t57 i_pragma = t71 i_pseudo_comment = t73 ).
        CREATE OBJECT t44->zlnt_view_ownkeys_b0e8086400eb.
        t44->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t44->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t44->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t75 ).
        ENDIF.
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
        DATA(t80) = |key|.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t80 p1 = t81 ).
        ENDIF.
        DATA(t82) = |title|.
        DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t83.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
        ENDIF.
        DATA(t84) = |shortDescription|.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
        ENDIF.
        DATA(t86) = |badExample|.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
        ENDIF.
        DATA(t88) = |tags|.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t44->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t44->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
        ENDIF.
        t43 = t44->key.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t91) = me->conf.
        t90 = t91->zlnt_view_read_sr_15c06369f827( ).
        DATA t92 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t92.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t93.
        t39 = zcl_lnt_issue=>at_statement( i_file = t40 i_statement = t41 i_message_26cb = t42 i_key = t43 i_severity = t90 i_fix = t92 i_alternative_fixes = t93 ).
        t38->load( ).
        APPEND t39 TO t38->items.
        t38->save( ).
      ENDIF.
    ENDDO.
    DATA(t94) = t2.
    result = t94.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_n_extrnl_frm_clls_cnf( me->g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_n_extrnl_frm_clls_cnf( me->g_c_i_s_r_n_e_f_c_t_n_ex_fr_cl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_extrnl_frm_clls_cnf.
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
        t1 = NEW zcl_lnt_n_extrnl_frm_clls_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_n_e_f_c_t_n_ex_fr_cl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_n_e_f_c_t_n_ex_fr_cl( i_file = i_file ) ).
    result = t1.

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
