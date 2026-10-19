* TS: src/rules/type_form_parameters.ts:13:1 TypeFormParameters
CLASS zcl_lnt_type_form_parameters DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_typ_frm_prmtrs_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_parameter_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_ty_fr_pr_ts_ty_fr_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_typ_frm_prmtrs_cnf.
    METHODS s_c_i_s_r_ty_fr_pr_ts_ty_fr_pr IMPORTING i_conf TYPE REF TO zcl_lnt_typ_frm_prmtrs_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_form_parameters IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_typ_frm_prmtrs_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |type_form_parameters|.
    DATA t4 TYPE string.
    t4 = |Type FORM parameters|.
    DATA t6 TYPE string.
    t6 = |Checks for untyped FORM parameters|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t21) = |FORM foo USING bar.\nENDFORM.|.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = t21.
    t18 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |FORM foo USING bar TYPE string.\nENDFORM.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = |Add TYPE for FORM parameter "|.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ i_parameter_name }|.
    DATA(t7) = |"|.
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t7 }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_ty_fr_pr_ts_ty_fr_pr.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_ty_fr_pr_ts_ty_fr_pr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    t9 = t1->structure.
    t5 = t9.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE abap_bool.
    t12 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class ).
    t11 = t12.
    IF t12 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t14 = xsdbool( t5 IS INITIAL ).
      t11 = t14.
    ENDIF.
    IF t11 = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_structure_node.
    t23 = t5.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c.
    t22 = t23->find_all_expressions( i_type_9913 = t25 ).
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA t27 TYPE REF TO object.
    DATA(t28) = VALUE i( ).
    DO.
      t22->load( ).
      IF t28 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t22->items INDEX t28 + 1 INTO t27.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t26.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t29 ?= t27.
        DATA t30 TYPE REF TO object.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA(t31) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
      t33 = t26->find_first_expression( i_type_9913 = t35 ).
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t31 = xsdbool( t33 IS INITIAL ).
      IF t31 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        t41 = t26->get_first_token( ).
        t40 = t41.
        DATA t44 TYPE REF TO zcl_lnt_issue.
        CLEAR t44.
        DATA t47 TYPE string.
        DATA t52 TYPE string.
        t52 = t40->str.
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        DATA(t56) = |Add TYPE for FORM parameter "|.
        DATA(t58) = strlen( t56 ).
        t55 = |{ t56 }{ t52 }|.
        DATA(t59) = |"|.
        DATA(t60) = strlen( t55 ).
        t54 = |{ t55 }{ t59 }|.
        t47 = t54.
        DATA(t61) = VALUE string( ).
        DATA t62 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t62.
        DATA t63 TYPE string.
        t63 = |type_form_parameters|.
        DATA t65 TYPE string.
        t65 = |Type FORM parameters|.
        DATA t67 TYPE string.
        t67 = |Checks for untyped FORM parameters|.
        DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t69.
        DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t74.
        t73 = t74.
        DATA(t76) = |SingleFile|.
        t73->load( ).
        APPEND t76 TO t73->items.
        t73->save( ).
        t69 = t73.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA(t82) = |FORM foo USING bar.\nENDFORM.|.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t82.
        t79 = t83.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA(t88) = |FORM foo USING bar TYPE string.\nENDFORM.|.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = t88.
        t85 = t89.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        t62 = NEW zcl_lnt_irule_metadata( i_key = t63 i_title = t65 i_short_description = t67 i_bad_example = t79 i_good_example = t85 i_extended_information = t91 i_tags = t69 i_pragma = t93 i_pseudo_comment = t95 ).
        CREATE OBJECT t62->zlnt_view_ownkeys_b0e8086400eb.
        t62->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t97 ).
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t98 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t99 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t101 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t102 ).
        ENDIF.
        CREATE OBJECT t62->zlnt_json_ownkeys_70e5fd461788.
        t62->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t103) = |key|.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
        DATA(t105) = |title|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        DATA(t107) = |shortDescription|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |tags|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        DATA(t111) = |badExample|.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
        ENDIF.
        DATA(t113) = |goodExample|.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
        ENDIF.
        t61 = t62->key.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t115 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t117 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t117.
        t44 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t40 i_message_26cb = t47 i_key = t61 i_severity = t115 i_fix = t117 ).
        t3->load( ).
        APPEND t44 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_typ_frm_prmtrs_cnf( me->g_c_i_s_r_ty_fr_pr_ts_ty_fr_pr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_typ_frm_prmtrs_cnf( me->g_c_i_s_r_ty_fr_pr_ts_ty_fr_pr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_typ_frm_prmtrs_cnf.
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
        t1 = NEW zcl_lnt_typ_frm_prmtrs_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ty_fr_pr_ts_ty_fr_pr( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1734_621b198c3f02.
  ENDMETHOD.
ENDCLASS.
