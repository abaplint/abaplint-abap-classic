* TS: src/rules/function_module_recommendations.ts:99:1 FunctionModuleRecommendations
CLASS zcl_lnt_fnctn_mdl_rcmmndtns DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_fn_md_rc_ts_fn_md_rc RETURNING VALUE(result) TYPE REF TO zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
    METHODS s_c_i_s_r_fn_md_rc_ts_fn_md_rc IMPORTING i_conf TYPE REF TO zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
    METHODS r_p_i_s_r_fn_md_rc_ts_fn_md_rc IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_message IMPORTING i_index TYPE f RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS fn_callback_208245 IMPORTING i_config_release TYPE REF TO zcl_lnt_abap_release i_func_name TYPE REF TO zcl_lnt_closure_ba6c457f i_i TYPE REF TO zcl_lnt_recommendations RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnctn_mdl_rcmmndtns IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_fnctn_mdl_rcmmndtn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |function_module_recommendations|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Function Module Recommendations|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Suggests replacements for various function modules|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://docs.abapopenchecks.org/checks/53/|.
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
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |CALL FUNCTION 'GUID_CREATE'\n  IMPORTING\n    ev_guid_32 = gui|.
      t27 = t27 && |d.|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |guid = cl_system_uuid=>create_uuid_c32_static( ).|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_fn_md_rc_ts_fn_md_rc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_fn_md_rc_ts_fn_md_rc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_fn_md_rc_ts_fn_md_rc.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA(t7) = me->conf.
    t6 = t7->zlnt_view_read_sr_0a6bdd5621d6( ).
    t5 = xsdbool( t6 IS BOUND ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA(t8) = t2.
      result = t8.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_configuration.
    CLEAR t11.
    DATA(t12) = me->reg.
    t11 = t12->get_config( ).
    t10 = t11->get_release( ).
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t18.
    DATA(t19) = t1.
    t18 = t19.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t20.
    DATA(t21) = t18.
    t20 = t21->structure.
    t17 = t20.
    t16 = t17.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t16.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t27.
      DATA(t28) = t16.
      t27 = t28.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
      t26 = t27->find_all_expressions( i_type_9913 = t29 ).
      t22 = t26.
    ENDIF.
    t15 = t22.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t14.
    t31 = xsdbool( t32 IS BOUND ).
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t33.
      DATA(t34) = t14.
      t33 = t34.
      t30 = t33.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t35.
      CREATE OBJECT t35.
      t30 = t35.
    ENDIF.
    t13 = t30.
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
    DATA(t38) = VALUE i( ).
    DO.
      t13->load( ).
      IF t38 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t13->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t42.
      DATA(t43) = t36.
      t42 = t43->get_first_token( ).
      t41 = t42.
      DATA t44 TYPE REF TO zcl_lnt_closure_ba6c457f.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_closure_ba6c457f.
      CLEAR t45.
      DATA(t46) = VALUE string( ).
      DATA(t47) = VALUE string( ).
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t48.
      DATA(t49) = t41.
      t48 = t49.
      DATA(t50) = VALUE string( ).
      DATA(t51) = t48.
      t50 = t51->str.
      t47 = t50.
      DATA(t52) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      t45 = NEW zcl_lnt_closure_ba6c457f( i_value = t46 ).
      t44 = t45.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE string( ).
      DATA(t56) = t44.
      t55 = t56->value.
      DATA(t57) = |'|.
      DATA(t58) = strlen( t55 ).
      DATA(t59) = VALUE i( ).
      DATA(t60) = VALUE i( ).
      DATA(t61) = VALUE string( ).
      t59 = strlen( t57 ).
      IF t59 = 0.
        t54 = abap_true.
      ELSEIF t59 <= t58.
        t60 = 0.
        t61 = t55+t60(t59).
        IF t61 = t57.
          t54 = abap_true.
        ENDIF.
      ENDIF.
      t53 = xsdbool( t54 = abap_false ).
      IF t53 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t62) = t44.
      DATA(t63) = VALUE string( ).
      DATA(t64) = VALUE string( ).
      DATA(t65) = VALUE string( ).
      DATA(t66) = t44.
      t65 = t66->value.
      t64 = t65.
      DATA(t67) = VALUE string( ).
      DATA(t68) = t64.
      DATA(t69) = 1.
      DATA(t70) = VALUE i( ).
      DATA(t71) = VALUE i( ).
      DATA(t72) = VALUE string( ).
      DATA(t73) = t44.
      t72 = t73->value.
      DATA(t74) = strlen( t72 ).
      t71 = t74.
      DATA(t75) = 1.
      t70 = t71 - t75.
      DATA(t76) = strlen( t68 ).
      IF t69 < 0.
        t69 = t76 + t69.
      ENDIF.
      t69 = COND i( WHEN t69 < 0 THEN 0 WHEN t69 > t76 THEN t76 ELSE t69 ).
      IF t70 < 0.
        t70 = t76 + t70.
      ENDIF.
      t70 = COND i( WHEN t70 < 0 THEN 0 WHEN t70 > t76 THEN t76 ELSE t70 ).
      IF t70 > t69.
        t76 = t70 - t69.
        t67 = t68+t69(t76).
      ELSE.
        CLEAR t67.
      ENDIF.
      t63 = t67.
      t62->value = t63.
      DELETE t62->zlnt_record_delet_0597644d88b4 WHERE table_line = `value`.
      DATA(t77) = VALUE f( ).
      DATA(t78) = VALUE f( ).
      DATA(t79) = VALUE f( ).
      DATA(t80) = CONV f( -1 ).
      t79 = t80.
      DATA(t81) = VALUE f( ).
      DATA(t82) = CONV f( -1 ).
      t81 = t82.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t83.
      DATA(t84) = me->conf.
      t83 = t84->zlnt_view_read_sr_0a6bdd5621d6( ).
      DATA t85 TYPE REF TO zcl_lnt_recommendations.
      CLEAR t85.
      DATA t86 TYPE REF TO object.
      CLEAR t86.
      DATA(t87) = VALUE i( ).
      DO.
        t83->load( ).
        IF t87 >= lines( t83->items ).
          EXIT.
        ENDIF.
        CLEAR t86.
        READ TABLE t83->items INDEX t87 + 1 INTO t86.
        t87 = t87 + 1.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        CLEAR t85.
        IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t88 ?= t86.
          CLEAR t85.
          IF t88 IS BOUND.
            IF t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t85 ?= t88->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t85 IS NOT BOUND.
              IF t88->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t89.
                IF t88->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t89 ?= t88->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t89->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t90) = VALUE string( ).
              DATA(t91) = VALUE string( ).
              DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t92.
              t85 = NEW zcl_lnt_recommendations( view_source = t88 i_name = t90 i_replace_2bce = t91 i_from = t92 ).
            ENDIF.
          ENDIF.
        ELSE.
          t85 ?= t86.
        ENDIF.
        DATA(t93) = VALUE f( ).
        DATA(t94) = t79.
        DATA(t95) = CONV f( 1 ).
        t93 = t94 + t95.
        t79 = t93.
        DATA(t96) = VALUE abap_bool( ).
        DATA t97 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t97.
        DATA(t98) = t9.
        t97 = t98.
        DATA t99 TYPE REF TO zcl_lnt_closure_ba6c457f.
        CLEAR t99.
        DATA(t100) = t44.
        t99 = t100.
        DATA t101 TYPE REF TO zcl_lnt_recommendations.
        CLEAR t101.
        DATA(t102) = t85.
        t101 = t102.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        DATA(t107) = t101.
        t106 = t107->zlnt_view_read_sr_76927b478f89( ).
        DATA(t108) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        DATA(t109) = VALUE string( ).
        DATA(t110) = t99.
        t109 = t110->value.
        t104 = xsdbool( t105 <> t109 ).
        IF t104 = abap_true.
          DATA(t111) = abap_false.
          t103 = t111.
        ELSE.
          DATA(t112) = VALUE abap_bool( ).
          DATA(t113) = VALUE abap_bool( ).
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA(t116) = t101.
          t115 = t116->zlnt_view_read_sr_6d67e9b680e2( ).
          t114 = t115.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t118.
          t117 = t118.
          DATA(t119) = VALUE abap_bool( ).
          DATA(t120) = t114.
          IF t120 IS INITIAL.
            t119 = abap_true.
          ELSEIF t120->has = abap_false.
            t119 = abap_true.
          ENDIF.
          t113 = t119.
          IF t113 = abap_true.
            DATA(t121) = abap_true.
            t112 = t121.
          ELSE.
            DATA(t122) = VALUE abap_bool( ).
            DATA t123 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t123.
            DATA t124 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t124.
            DATA(t125) = VALUE string( ).
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t126.
            DATA(t127) = t101.
            t126 = t127->zlnt_view_read_sr_6d67e9b680e2( ).
            t125 = t126->value.
            t124 = zcl_lnt_fnctn_mdl_rcmmndtn_mdl=>resolve_release( i_from = t125 ).
            t123 = t124.
            DATA(t128) = VALUE abap_bool( ).
            DATA(t129) = VALUE abap_bool( ).
            DATA t130 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t130.
            DATA(t131) = t123.
            t130 = t131.
            DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t132.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            t132 = t133.
            DATA(t134) = VALUE abap_bool( ).
            DATA(t135) = VALUE abap_bool( ).
            DATA(t136) = t130.
            IF t136 IS INITIAL.
              t135 = abap_true.
            ENDIF.
            t134 = xsdbool( t135 = abap_false ).
            t129 = t134.
            t128 = t129.
            IF t129 = abap_true.
              DATA(t137) = VALUE abap_bool( ).
              DATA(t138) = t97.
              DATA t139 TYPE REF TO zcl_lnt_abap_release.
              CLEAR t139.
              DATA(t140) = t123.
              t139 = t140.
              t137 = zcl_lnt_version_module=>release_at_least( i_running = t138 i_required = t139 ).
              t128 = t137.
            ENDIF.
            t122 = t128.
            t112 = t122.
          ENDIF.
          t103 = t112.
        ENDIF.
        t96 = t103.
        IF t96 = abap_true.
          DATA(t141) = t79.
          t81 = t141.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t142) = t81.
      t78 = t142.
      t77 = t78.
      DATA(t143) = VALUE abap_bool( ).
      DATA(t144) = t77.
      DATA(t145) = CONV f( 0 ).
      t143 = xsdbool( t144 >= t145 ).
      IF t143 = abap_true.
        DATA(t146) = t2.
        DATA t147 TYPE REF TO zcl_lnt_issue.
        CLEAR t147.
        DATA(t148) = t1.
        DATA(t149) = t41.
        DATA(t150) = VALUE string( ).
        DATA(t151) = VALUE f( ).
        DATA(t152) = t77.
        t151 = t152.
        DATA(t153) = VALUE string( ).
        DATA(t154) = VALUE string( ).
        DATA(t155) = VALUE string( ).
        DATA(t156) = VALUE string( ).
        DATA(t157) = |Recommendation: Replace Function |.
        DATA(t158) = VALUE string( ).
        DATA t159 TYPE REF TO zcl_lnt_recommendations.
        CLEAR t159.
        DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t160.
        DATA(t161) = me->conf.
        t160 = t161->zlnt_view_read_sr_0a6bdd5621d6( ).
        DATA(t162) = VALUE i( ).
        DATA(t163) = t151.
        IF t163 > range_i32_upper.
          t162 = range_i32_upper.
        ELSEIF t163 < range_i32_lower.
          t162 = range_i32_lower.
        ELSE.
          t162 = trunc( t163 ).
        ENDIF.
        t162 = t162 + 1.
        DATA t164 TYPE REF TO object.
        CLEAR t164.
        t160->load( ).
        CLEAR t164.
        READ TABLE t160->items INDEX t162 INTO t164.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        CLEAR t159.
        IF t164 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t165 ?= t164.
          CLEAR t159.
          IF t165 IS BOUND.
            IF t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t159 ?= t165->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t159 IS NOT BOUND.
              IF t165->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t166.
                IF t165->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t166 ?= t165->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t166->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t167) = VALUE string( ).
              DATA(t168) = VALUE string( ).
              DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t169.
              t159 = NEW zcl_lnt_recommendations( view_source = t165 i_name = t167 i_replace_2bce = t168 i_from = t169 ).
            ENDIF.
          ENDIF.
        ELSE.
          t159 ?= t164.
        ENDIF.
        t158 = t159->zlnt_view_read_sr_76927b478f89( ).
        DATA(t170) = strlen( t157 ).
        t156 = |{ t157 }{ t158 }|.
        DATA(t171) = | with: |.
        DATA(t172) = strlen( t156 ).
        t155 = |{ t156 }{ t171 }|.
        DATA(t173) = VALUE string( ).
        DATA t174 TYPE REF TO zcl_lnt_recommendations.
        CLEAR t174.
        DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t175.
        DATA(t176) = me->conf.
        t175 = t176->zlnt_view_read_sr_0a6bdd5621d6( ).
        DATA(t177) = VALUE i( ).
        DATA(t178) = t151.
        IF t178 > range_i32_upper.
          t177 = range_i32_upper.
        ELSEIF t178 < range_i32_lower.
          t177 = range_i32_lower.
        ELSE.
          t177 = trunc( t178 ).
        ENDIF.
        t177 = t177 + 1.
        DATA t179 TYPE REF TO object.
        CLEAR t179.
        t175->load( ).
        CLEAR t179.
        READ TABLE t175->items INDEX t177 INTO t179.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        CLEAR t174.
        IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t180 ?= t179.
          CLEAR t174.
          IF t180 IS BOUND.
            IF t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t174 ?= t180->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t174 IS NOT BOUND.
              IF t180->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t181.
                IF t180->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t181 ?= t180->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t181->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t182) = VALUE string( ).
              DATA(t183) = VALUE string( ).
              DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t184.
              t174 = NEW zcl_lnt_recommendations( view_source = t180 i_name = t182 i_replace_2bce = t183 i_from = t184 ).
            ENDIF.
          ENDIF.
        ELSE.
          t174 ?= t179.
        ENDIF.
        t173 = t174->zlnt_view_read_sr_e143aed5d80b( ).
        DATA(t185) = strlen( t155 ).
        t154 = |{ t155 }{ t173 }|.
        DATA(t186) = ||.
        DATA(t187) = strlen( t154 ).
        t153 = |{ t154 }{ t186 }|.
        t150 = t153.
        DATA(t188) = VALUE string( ).
        DATA t189 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t189.
        DATA(t190) = VALUE string( ).
        DATA(t191) = |function_module_recommendations|.
        t190 = t191.
        DATA(t192) = VALUE string( ).
        DATA(t193) = |Function Module Recommendations|.
        t192 = t193.
        DATA(t194) = VALUE string( ).
        DATA(t195) = |Suggests replacements for various function modules|.
        t194 = t195.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t196.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        DATA(t198) = abap_true.
        IF t198 = abap_true.
          DATA(t199) = |https://docs.abapopenchecks.org/checks/53/|.
          DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t200->has = abap_true.
          t200->value = t199.
          t197 = t200.
        ELSE.
          DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t201.
          t197 = t201.
        ENDIF.
        t196 = t197.
        DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t202.
        DATA t203 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t203.
        DATA(t204) = abap_true.
        IF t204 = abap_true.
          DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t205.
          DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t206.
          DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t207.
          CREATE OBJECT t207.
          t206 = t207.
          DATA(t208) = t206.
          DATA(t209) = |SingleFile|.
          t208->load( ).
          APPEND t209 TO t208->items.
          t208->save( ).
          DATA(t210) = t206.
          t205 = t210.
          t203 = t205.
        ELSE.
          DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t211.
          t203 = t211.
        ENDIF.
        t202 = t203.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        DATA(t214) = abap_true.
        IF t214 = abap_true.
          DATA(t215) = |CALL FUNCTION 'GUID_CREATE'\n  IMPORTING\n    ev_guid_32 = gui|.
          t215 = t215 && |d.|.
          DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t216->has = abap_true.
          t216->value = t215.
          t213 = t216.
        ELSE.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          t213 = t217.
        ENDIF.
        t212 = t213.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t219.
        DATA(t220) = abap_true.
        IF t220 = abap_true.
          DATA(t221) = |guid = cl_system_uuid=>create_uuid_c32_static( ).|.
          DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t222->has = abap_true.
          t222->value = t221.
          t219 = t222.
        ELSE.
          DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t223.
          t219 = t223.
        ENDIF.
        t218 = t219.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t225.
        t224 = t225.
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t226.
        DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t227.
        t226 = t227.
        t189 = NEW zcl_lnt_irule_metadata( i_key = t190 i_title = t192 i_short_description = t194 i_bad_example = t212 i_good_example = t218 i_extended_information = t196 i_tags = t202 i_pragma = t224 i_pseudo_comment = t226 ).
        CREATE OBJECT t189->zlnt_view_ownkeys_b0e8086400eb.
        t189->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t228 ).
        ENDIF.
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t229 ).
        ENDIF.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t230 ).
        ENDIF.
        DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t231.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t231 ).
        ENDIF.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t232 ).
        ENDIF.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t233.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t233 ).
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t234 ).
        ENDIF.
        CREATE OBJECT t189->zlnt_json_ownkeys_70e5fd461788.
        t189->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t235) = |key|.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
        ENDIF.
        DATA(t237) = |title|.
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
        ENDIF.
        DATA(t239) = |shortDescription|.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t239 p1 = t240 ).
        ENDIF.
        DATA(t241) = |extendedInformation|.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t241 p1 = t242 ).
        ENDIF.
        DATA(t243) = |tags|.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
        ENDIF.
        DATA(t245) = |badExample|.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
        ENDIF.
        DATA(t247) = |goodExample|.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
        ENDIF.
        t188 = t189->key.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        DATA(t250) = me->conf.
        t249 = t250->zlnt_view_read_sr_15c06369f827( ).
        DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t251.
        t147 = zcl_lnt_issue=>at_token( i_file = t148 i_token = t149 i_message_26cb = t150 i_key = t188 i_severity = t249 i_fix = t251 ).
        t146->load( ).
        APPEND t147 TO t146->items.
        t146->save( ).
      ENDIF.
    ENDDO.
    DATA(t252) = t2.
    result = t252.

  ENDMETHOD.

  METHOD get_message.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_index.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |Recommendation: Replace Function |.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zcl_lnt_recommendations.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = me->conf.
    t9 = t10->zlnt_view_read_sr_0a6bdd5621d6( ).
    DATA(t11) = VALUE i( ).
    DATA(t12) = t1.
    IF t12 > range_i32_upper.
      t11 = range_i32_upper.
    ELSEIF t12 < range_i32_lower.
      t11 = range_i32_lower.
    ELSE.
      t11 = trunc( t12 ).
    ENDIF.
    t11 = t11 + 1.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    t9->load( ).
    CLEAR t13.
    READ TABLE t9->items INDEX t11 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    CLEAR t8.
    IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t14 ?= t13.
      CLEAR t8.
      IF t14 IS BOUND.
        IF t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t8 ?= t14->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t8 IS NOT BOUND.
          IF t14->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t15.
            IF t14->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t15 ?= t14->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t15->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA(t16) = VALUE string( ).
          DATA(t17) = VALUE string( ).
          DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t18.
          t8 = NEW zcl_lnt_recommendations( view_source = t14 i_name = t16 i_replace_2bce = t17 i_from = t18 ).
        ENDIF.
      ENDIF.
    ELSE.
      t8 ?= t13.
    ENDIF.
    t7 = t8->zlnt_view_read_sr_76927b478f89( ).
    DATA(t19) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    DATA(t20) = | with: |.
    DATA(t21) = strlen( t5 ).
    t4 = |{ t5 }{ t20 }|.
    DATA(t22) = VALUE string( ).
    DATA t23 TYPE REF TO zcl_lnt_recommendations.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA(t25) = me->conf.
    t24 = t25->zlnt_view_read_sr_0a6bdd5621d6( ).
    DATA(t26) = VALUE i( ).
    DATA(t27) = t1.
    IF t27 > range_i32_upper.
      t26 = range_i32_upper.
    ELSEIF t27 < range_i32_lower.
      t26 = range_i32_lower.
    ELSE.
      t26 = trunc( t27 ).
    ENDIF.
    t26 = t26 + 1.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    t24->load( ).
    CLEAR t28.
    READ TABLE t24->items INDEX t26 INTO t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    CLEAR t23.
    IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t29 ?= t28.
      CLEAR t23.
      IF t29 IS BOUND.
        IF t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t23 ?= t29->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t23 IS NOT BOUND.
          IF t29->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t30.
            IF t29->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t30 ?= t29->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t30->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA(t31) = VALUE string( ).
          DATA(t32) = VALUE string( ).
          DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t33.
          t23 = NEW zcl_lnt_recommendations( view_source = t29 i_name = t31 i_replace_2bce = t32 i_from = t33 ).
        ENDIF.
      ENDIF.
    ELSE.
      t23 ?= t28.
    ENDIF.
    t22 = t23->zlnt_view_read_sr_e143aed5d80b( ).
    DATA(t34) = strlen( t4 ).
    t3 = |{ t4 }{ t22 }|.
    DATA(t35) = ||.
    DATA(t36) = strlen( t3 ).
    t2 = |{ t3 }{ t35 }|.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_fnctn_mdl_rcmmndtn_cnf( me->g_c_i_s_r_fn_md_rc_ts_fn_md_rc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_fnctn_mdl_rcmmndtn_cnf( me->g_c_i_s_r_fn_md_rc_ts_fn_md_rc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
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
        t1 = NEW zcl_lnt_fnctn_mdl_rcmmndtn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_fn_md_rc_ts_fn_md_rc( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_fn_md_rc_ts_fn_md_rc( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD fn_callback_208245.
    DATA(t1) = i_config_release.
    DATA(t2) = i_func_name.
    DATA(t3) = i_i.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t3.
    t6 = t7->zlnt_view_read_sr_76927b478f89( ).
    DATA(t8) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    DATA t9 TYPE string.
    DATA(t10) = t2.
    t9 = t10->value.
    t4 = xsdbool( t5 <> t9 ).
    IF t4 = abap_true.
      DATA(t11) = abap_false.
      result = t11.
      RETURN.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t15) = t3.
    t14 = t15->zlnt_view_read_sr_6d67e9b680e2( ).
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t13.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ELSEIF t19->has = abap_false.
      t18 = abap_true.
    ENDIF.
    t12 = t18.
    IF t12 = abap_true.
      DATA(t20) = abap_true.
      result = t20.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    DATA t23 TYPE string.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = t3.
    t24 = t25->zlnt_view_read_sr_6d67e9b680e2( ).
    t23 = t24->value.
    t22 = zcl_lnt_fnctn_mdl_rcmmndtn_mdl=>resolve_release( i_from = t23 ).
    t21 = t22.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    DATA t28 TYPE REF TO zcl_lnt_abap_release.
    DATA(t29) = t21.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    t30 = t31.
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t28.
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t32 = xsdbool( t33 = abap_false ).
    t27 = t32.
    t26 = t27.
    IF t27 = abap_true.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t1.
      DATA t37 TYPE REF TO zcl_lnt_abap_release.
      DATA(t38) = t21.
      t37 = t38.
      t35 = zcl_lnt_version_module=>release_at_least( i_running = t36 i_required = t37 ).
      t26 = t35.
    ENDIF.
    result = t26.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1518_989ae5a8a0b8.
  ENDMETHOD.
ENDCLASS.
