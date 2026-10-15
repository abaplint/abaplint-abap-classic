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
    DATA(t1) = NEW zcl_lnt_object_naming_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |object_naming|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Object naming conventions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for objec|.
    t7 = t7 && |t names|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Naming|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t9 = t11.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t17.
      t9 = t17.
    ENDIF.
    t8 = t9.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t20 i_extended_information = t22 i_tags = t8 i_pragma = t24 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
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
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |required|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
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
      DATA(t18) = t1.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t20) = |: |.
      DATA(t21) = strlen( t16 ).
      t15 = |{ t16 }{ t20 }|.
      DATA(t22) = t2.
      DATA(t23) = strlen( t15 ).
      t14 = |{ t15 }{ t22 }|.
      t3 = t14.
    ELSE.
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA(t27) = |Object name must not match pattern |.
      DATA(t28) = t1.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t28 }|.
      DATA(t30) = |: |.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ t30 }|.
      DATA(t32) = t2.
      DATA(t33) = strlen( t25 ).
      t24 = |{ t25 }{ t32 }|.
      t3 = t24.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ob_nm_ts_ob_nmn.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = me.
    DATA(t5) = |conf|.
    t3 = zlnt_property_loo_db26a22faa3b=>get( p0 = t4 key = t5 ).
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
    DATA(t9) = abap_false.
    t7 = t9.
    DATA(t10) = me->conf.
    result = t10.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ob_nm_ts_ob_nmn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_obj_nmn_ts_obj_nmn.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = me->conf.
    t6 = t7->zlnt_view_read_sr_ef452f77fd06( ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ELSEIF t11->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t4 = t10.
    IF t4 = abap_true.
      DATA(t12) = me->conf.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = |required|.
        DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t12->zlnt_view_write_s_9ebcbca32e92( p0 = t13 ).
    ENDIF.
    DATA t18 TYPE string.
    DATA t19 TYPE string.
    DATA t20 TYPE string.
    DATA(t21) = t1.
    t20 = t21->get_type( ).
    DATA(t22) = strlen( t20 ).
    t19 = t20.
    TRANSLATE t19 TO LOWER CASE.
    t18 = t19.
    DATA t23 TYPE REF TO zcl_lnt_object_naming_conf.
    DATA(t24) = CAST zcl_lnt_object_naming_conf( me->gt_cn_in_sr_rl_ob_nm_ts_ob_nmn( ) ).
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t27) = t23.
    DATA(t28) = t18.
    t26 = zlnt_property_loo_4fc4e3d24764=>get( p0 = t27 key = t28 ).
    t25 = t26.
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = t25.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    t32 = t33.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = t30.
    IF t35 IS INITIAL.
      t34 = abap_true.
    ENDIF.
    t29 = t34.
    IF t29 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t36.
      result = t36.
      RETURN.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t38.
    DATA t39 TYPE string.
    DATA(t40) = t25.
    t39 = t40->as_string( ).
    DATA(t41) = |i|.
    CREATE OBJECT t38 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t39 flags = t41.
    t37 = t38.
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    DATA(t44) = abap_true.
    IF t44 = abap_true.
      DATA t45 TYPE string.
      DATA(t46) = t1.
      t45 = t46->get_name( ).
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = t45.
      t43 = t47.
    ELSE.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      t43 = t48.
    ENDIF.
    DATA(t49) = t37.
    DATA(t50) = me->conf.
    t42 = zcl_lnt_name_validator=>violates_rule( i_name = t43 i_pattern = t49 i_params_4c59 = t50 ).
    IF t42 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      DATA(t52) = abap_true.
      IF t52 = abap_true.
        DATA(t53) = VALUE string( ).
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        DATA(t56) = t25.
        t55 = t56->as_string( ).
        t54 = t55.
        DATA t57 TYPE string.
        DATA t58 TYPE string.
        DATA(t59) = t1.
        t58 = t59->get_name( ).
        t57 = t58.
        DATA(t60) = VALUE string( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t63) = me->conf.
        t62 = t63->zlnt_view_read_sr_ef452f77fd06( ).
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        DATA(t65) = abap_true.
        IF t65 = abap_true.
          DATA(t66) = |required|.
          DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t67->has = abap_true.
          t67->value = t66.
          t64 = t67.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          t64 = t68.
        ENDIF.
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
          DATA(t75) = t54.
          DATA(t76) = strlen( t74 ).
          t73 = |{ t74 }{ t75 }|.
          DATA(t77) = |: |.
          DATA(t78) = strlen( t73 ).
          t72 = |{ t73 }{ t77 }|.
          DATA(t79) = t57.
          DATA(t80) = strlen( t72 ).
          t71 = |{ t72 }{ t79 }|.
          t60 = t71.
        ELSE.
          DATA t81 TYPE string.
          DATA t82 TYPE string.
          DATA t83 TYPE string.
          DATA(t84) = |Object name must not match pattern |.
          DATA(t85) = t54.
          DATA(t86) = strlen( t84 ).
          t83 = |{ t84 }{ t85 }|.
          DATA(t87) = |: |.
          DATA(t88) = strlen( t83 ).
          t82 = |{ t83 }{ t87 }|.
          DATA(t89) = t57.
          DATA(t90) = strlen( t82 ).
          t81 = |{ t82 }{ t89 }|.
          t60 = t81.
        ENDIF.
        t53 = t60.
        DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t91->has = abap_true.
        t91->value = t53.
        t51 = t91.
      ELSE.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        t51 = t92.
      ENDIF.
      t2 = t51.
    ENDIF.
    DATA(t93) = VALUE abap_bool( ).
    DATA(t94) = t2.
    IF t94 IS BOUND.
      IF t94->has = abap_true.
        t93 = xsdbool( strlen( t94->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t93 = abap_true.
      DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t95.
      DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t97.
      t96 = t97.
      DATA(t98) = t96.
      DATA t99 TYPE REF TO zcl_lnt_issue.
      CLEAR t99.
      DATA t100 TYPE REF TO zif_lnt_file.
      CLEAR t100.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t102) = t1.
      t101 = t102->get_files( ).
      DATA t103 TYPE REF TO object.
      CLEAR t103.
      t101->load( ).
      CLEAR t103.
      READ TABLE t101->items INDEX 1 INTO t103.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      CLEAR t100.
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
      DATA(t108) = t2.
      t107 = t108->value.
      DATA(t109) = VALUE string( ).
      DATA t110 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t110.
      DATA t111 TYPE string.
      DATA(t112) = |object_naming|.
      t111 = t112.
      DATA t113 TYPE string.
      DATA(t114) = |Object naming conventions|.
      t113 = t114.
      DATA t115 TYPE string.
      DATA(t116) = |Allows you to enforce a pattern, such as a prefix, for objec|.
      t116 = t116 && |t names|.
      t115 = t116.
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t117.
      DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t118.
      DATA(t119) = abap_true.
      IF t119 = abap_true.
        DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t121 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t122.
        t121 = t122.
        DATA(t123) = t121.
        DATA(t124) = |Naming|.
        t123->load( ).
        APPEND t124 TO t123->items.
        t123->save( ).
        DATA(t125) = t121.
        t120 = t125.
        t118 = t120.
      ELSE.
        DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t126.
        t118 = t126.
      ENDIF.
      t117 = t118.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      t127 = t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t130.
      t129 = t130.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t132.
      t131 = t132.
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      t133 = t134.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t136.
      t135 = t136.
      t110 = NEW zcl_lnt_irule_metadata( i_key = t111 i_title = t113 i_short_description = t115 i_bad_example = t127 i_good_example = t129 i_extended_information = t131 i_tags = t117 i_pragma = t133 i_pseudo_comment = t135 ).
      CREATE OBJECT t110->zlnt_view_ownkeys_b0e8086400eb.
      t110->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t137 ).
      ENDIF.
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t138 ).
      ENDIF.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t139 ).
      ENDIF.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      IF t110->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t110->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t140 ).
      ENDIF.
      CREATE OBJECT t110->zlnt_json_ownkeys_70e5fd461788.
      t110->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t141) = |key|.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
      ENDIF.
      DATA(t143) = |title|.
      DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t144.
      IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
      ENDIF.
      DATA(t145) = |shortDescription|.
      DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t146.
      IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
      ENDIF.
      DATA(t147) = |tags|.
      DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t148.
      IF t110->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t110->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
      ENDIF.
      t109 = t110->key.
      DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t150) = me->conf.
      t149 = t150->zlnt_view_read_sr_15c06369f827( ).
      t99 = zcl_lnt_issue=>at_row( i_file = t100 i_row = t106 i_message_26cb = t107 i_key = t109 i_severity = t149 ).
      t98->load( ).
      APPEND t99 TO t98->items.
      t98->save( ).
      DATA(t151) = t96.
      t95 = t151.
      result = t95.
      RETURN.
    ENDIF.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    result = t152.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_object_naming_conf( me->gt_cn_in_sr_rl_ob_nm_ts_ob_nmn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_object_naming_conf( me->gt_cn_in_sr_rl_ob_nm_ts_ob_nmn( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_object_naming_conf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_object_naming_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ob_nm_ts_ob_nmn( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_object_naming.
    DATA(t3) = t1.
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
