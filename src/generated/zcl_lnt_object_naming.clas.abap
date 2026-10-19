* TS: src/rules/object_naming.ts:75:1 ObjectNaming
CLASS zcl_lnt_object_naming DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_object_naming_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_ob_nm_ts_ob_nmn RETURNING VALUE(result) TYPE REF TO zcl_lnt_object_naming_conf.
    METHODS st_cn_in_sr_rl_ob_nm_ts_ob_nmn IMPORTING i_conf TYPE REF TO zcl_lnt_object_naming_conf.
    METHODS in_in_sr_rl_obj_nmn_ts_obj_nmn IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_object_naming.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_object_naming IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_object_naming_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |object_naming|.
    DATA t4 TYPE string.
    t4 = |Object naming conventions|.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for objec|.
    t7 = t7 && |t names|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Naming|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t5 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t9) = |required|.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = t9.
    t7 = t10.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t5 IS BOUND.
      t12 = t5->has.
    ENDIF.
    IF t7 IS BOUND.
      t13 = t7->has.
    ENDIF.
    IF t12 = t13.
      IF t12 = abap_false.
        t4 = abap_true.
      ELSEIF t5->value = t7->value.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    IF t4 = abap_true.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = |Object name does not match pattern |.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t1 }|.
      DATA(t20) = |: |.
      DATA(t21) = strlen( t16 ).
      t15 = |{ t16 }{ t20 }|.
      DATA(t23) = strlen( t15 ).
      t14 = |{ t15 }{ t2 }|.
      t3 = t14.
    ELSE.
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA(t27) = |Object name must not match pattern |.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t1 }|.
      DATA(t30) = |: |.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ t30 }|.
      DATA(t33) = strlen( t25 ).
      t24 = |{ t25 }{ t2 }|.
      t3 = t24.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ob_nm_ts_ob_nmn.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |conf|.
    t3 = zlnt_property_loo_db26a22faa3b=>get( p0 = me key = t5 ).
    IF t3 IS BOUND.
      t2 = t3->type_of( ).
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t3->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
        t2 = `function`.
      ENDIF.
    ELSE.
      t2 = `undefined`.
    ENDIF.
    DATA(t6) = |boolean|.
    t1 = xsdbool( t2 = t6 ).
    DATA t7 TYPE abap_bool.
    DATA(t8) = me->conf.
    t7 = abap_false.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ob_nm_ts_ob_nmn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_obj_nmn_ts_obj_nmn.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t6 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = VALUE abap_bool( ).
    IF t5 IS INITIAL.
      t10 = abap_true.
    ELSEIF t5->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t4 = t10.
    IF t4 = abap_true.
      DATA(t12) = me->conf.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t15) = |required|.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t15.
      t13 = t16.
      t12->zlnt_view_write_s_9ebcbca32e92( p0 = t13 ).
    ENDIF.
    DATA t19 TYPE string.
    DATA t20 TYPE string.
    t20 = t1->get_type( ).
    DATA(t22) = strlen( t20 ).
    t19 = t20.
    TRANSLATE t19 TO LOWER CASE.
    DATA(t24) = CAST zcl_lnt_object_naming_conf( me->gt_cn_in_sr_rl_ob_nm_ts_ob_nmn( ) ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26 = zlnt_property_loo_4fc4e3d24764=>get( p0 = t24 key = t19 ).
    t25 = t26.
    DATA(t29) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29 = xsdbool( t25 IS INITIAL ).
    IF t29 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t36.
      result = t36.
      RETURN.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t39 TYPE string.
    t39 = t25->as_string( ).
    DATA(t41) = |i|.
    CREATE OBJECT t38 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t39 flags = t41.
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE string.
    t45 = t1->get_name( ).
    DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t47->has = abap_true.
    t47->value = t45.
    t43 = t47.
    DATA(t50) = me->conf.
    t42 = zcl_lnt_name_validator=>violates_rule( i_name = t43 i_pattern = t38 i_params_4c59 = t50 ).
    IF t42 = abap_true.
      DATA(t53) = VALUE string( ).
      DATA t54 TYPE string.
      DATA t55 TYPE string.
      t55 = t25->as_string( ).
      t54 = t55.
      DATA t57 TYPE string.
      DATA t58 TYPE string.
      t58 = t1->get_name( ).
      t57 = t58.
      DATA(t60) = VALUE string( ).
      DATA(t61) = VALUE abap_bool( ).
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t62 = me->conf->zlnt_view_read_sr_ef452f77fd06( ).
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t66) = |required|.
      DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t67->has = abap_true.
      t67->value = t66.
      t64 = t67.
      DATA(t69) = VALUE abap_bool( ).
      DATA(t70) = VALUE abap_bool( ).
      IF t62 IS BOUND.
        t69 = t62->has.
      ENDIF.
      IF t64 IS BOUND.
        t70 = t64->has.
      ENDIF.
      IF t69 = t70.
        IF t69 = abap_false.
          t61 = abap_true.
        ELSEIF t62->value = t64->value.
          t61 = abap_true.
        ENDIF.
      ENDIF.
      IF t61 = abap_true.
        DATA t71 TYPE string.
        DATA t72 TYPE string.
        DATA t73 TYPE string.
        DATA(t74) = |Object name does not match pattern |.
        DATA(t76) = strlen( t74 ).
        t73 = |{ t74 }{ t54 }|.
        DATA(t77) = |: |.
        DATA(t78) = strlen( t73 ).
        t72 = |{ t73 }{ t77 }|.
        DATA(t80) = strlen( t72 ).
        t71 = |{ t72 }{ t57 }|.
        t60 = t71.
      ELSE.
        DATA t81 TYPE string.
        DATA t82 TYPE string.
        DATA t83 TYPE string.
        DATA(t84) = |Object name must not match pattern |.
        DATA(t86) = strlen( t84 ).
        t83 = |{ t84 }{ t54 }|.
        DATA(t87) = |: |.
        DATA(t88) = strlen( t83 ).
        t82 = |{ t83 }{ t87 }|.
        DATA(t90) = strlen( t82 ).
        t81 = |{ t82 }{ t57 }|.
        t60 = t81.
      ENDIF.
      t53 = t60.
      DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t91->has = abap_true.
      t91->value = t53.
      t2 = t91.
    ENDIF.
    DATA(t93) = VALUE abap_bool( ).
    IF t2 IS BOUND.
      IF t2->has = abap_true.
        t93 = xsdbool( strlen( t2->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t93 = abap_true.
      DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t97.
      t96 = t97.
      DATA t99 TYPE REF TO zcl_lnt_issue.
      DATA t100 TYPE REF TO zif_lnt_file.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t101 = t1->get_files( ).
      DATA t103 TYPE REF TO object.
      t101->load( ).
      READ TABLE t101->items INDEX 1 INTO t103.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t103 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t104 ?= t103.
        DATA t105 TYPE REF TO object.
        t105 = t104->as_ref( ).
        t100 ?= t105.
      ELSE.
        t100 ?= t103.
      ENDIF.
      DATA(t106) = CONV f( 1 ).
      DATA t107 TYPE string.
      t107 = t2->value.
      DATA(t109) = VALUE string( ).
      DATA t110 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t111 TYPE string.
      t111 = |object_naming|.
      DATA t113 TYPE string.
      t113 = |Object naming conventions|.
      DATA t115 TYPE string.
      DATA(t116) = |Allows you to enforce a pattern, such as a prefix, for objec|.
      t116 = t116 && |t names|.
      t115 = t116.
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t122.
      t121 = t122.
      DATA(t124) = |Naming|.
      t121->load( ).
      APPEND t124 TO t121->items.
      t121->save( ).
      t117 = t121.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t110 = NEW zcl_lnt_irule_metadata( i_key = t111 i_title = t113 i_short_description = t115 i_bad_example = t127 i_good_example = t129 i_extended_information = t131 i_tags = t117 i_pragma = t133 i_pseudo_comment = t135 ).
      CREATE OBJECT t110->zlnt_view_ownkeys_b0e8086400eb.
      t110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t137 ).
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t138 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t139 ).
      ENDIF.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t140 ).
      ENDIF.
      CREATE OBJECT t110->zlnt_json_ownkeys_70e5fd461788.
      t110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t141) = |key|.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
      DATA(t143) = |title|.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
      ENDIF.
      DATA(t145) = |shortDescription|.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
      ENDIF.
      DATA(t147) = |tags|.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
      ENDIF.
      t109 = t110->key.
      DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t149 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      t99 = zcl_lnt_issue=>at_row( i_file = t100 i_row = t106 i_message_26cb = t107 i_key = t109 i_severity = t149 ).
      t96->load( ).
      APPEND t99 TO t96->items.
      t96->save( ).
      result = t96.
      RETURN.
    ENDIF.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    result = t152.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_object_naming_conf( me->gt_cn_in_sr_rl_ob_nm_ts_ob_nmn( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_object_naming_conf( me->gt_cn_in_sr_rl_ob_nm_ts_ob_nmn( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_object_naming_conf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_object_naming_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ob_nm_ts_ob_nmn( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_object_naming.
    DATA(t3) = i_reg_f149.
    t2 = me->in_in_sr_rl_obj_nmn_ts_obj_nmn( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1631_be37e96d75cc.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
