* TS: src/rules/local_class_naming.ts:19:1 LocalClassNaming
CLASS zcl_lnt_local_class_naming DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_lcl_clss_nmng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_lc_cl_nm_ts_lc_cl_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_lcl_clss_nmng_cnf.
    METHODS s_c_i_s_r_lc_cl_nm_ts_lc_cl_nm IMPORTING i_conf TYPE REF TO zcl_lnt_lcl_clss_nmng_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_local_class_naming IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_lcl_clss_nmng_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |local_class_naming|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Local class naming conventions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Allows you to enforce a pattern, such as a prefix, for local|.
    t7 = t7 && | class names.|.
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
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |CLASS helper DEFINITION.\nENDCLASS.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |CLASS lcl_helper DEFINITION.\nENDCLASS.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
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
      DATA(t17) = |Local class name does not match pattern |.
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
      DATA(t27) = |Local class name must not match pattern |.
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

  METHOD g_c_i_s_r_lc_cl_nm_ts_lc_cl_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_lc_cl_nm_ts_lc_cl_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t8) = me->conf.
    t7 = t8->zlnt_view_read_sr_ef452f77fd06( ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t6.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ELSEIF t12->has = abap_false.
      t11 = abap_true.
    ENDIF.
    t5 = t11.
    IF t5 = abap_true.
      DATA(t13) = me->conf.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = |required|.
        DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t17->has = abap_true.
        t17->value = t16.
        t14 = t17.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        t14 = t18.
      ENDIF.
      t13->zlnt_view_write_s_9ebcbca32e92( p0 = t14 ).
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_ddic.
    DATA t20 TYPE REF TO zcl_lnt_ddic.
    DATA(t21) = me->reg.
    t20 = NEW zcl_lnt_ddic( i_reg_f149 = t21 ).
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zif_lnt_abap_file_information.
    DATA t24 TYPE REF TO zcl_lnt_abap_file.
    DATA(t25) = t1.
    t24 = t25.
    DATA t26 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t27) = t24.
    t26 = t27->info.
    t23 = t26.
    t22 = t23->list_class_definitions( ).
    DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    DATA(t30) = VALUE i( ).
    DO.
      t22->load( ).
      IF t30 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t22->items INDEX t30 + 1 INTO t29.
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
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t35) = t28.
      t34 = t35->is_global.
      IF t34 IS BOUND.
        IF t34->has = abap_true.
          t33 = xsdbool( t34->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t33 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t36 TYPE string.
      DATA t37 TYPE string.
      DATA(t38) = t28.
      t37 = t38->name.
      t36 = t37.
      DATA t39 TYPE string.
      DATA(t40) = ||.
      t39 = t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t43) = t28.
      t42 = t43->is_for_testing.
      IF t42 IS BOUND.
        IF t42->has = abap_true.
          t41 = xsdbool( t42->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
      IF t41 = abap_true.
        DATA t44 TYPE string.
        DATA(t45) = me->conf.
        t44 = t45->zlnt_view_read_sr_36836f083356( ).
        t39 = t44.
      ELSE.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t19.
        DATA t48 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA(t50) = t28.
          t48 = t50.
        ELSE.
          DATA t51 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t51.
          t48 = t51.
        ENDIF.
        DATA(t52) = t2.
        t46 = t47->is_exception( i_def = t48 i_obj_ac26 = t52 ).
        IF t46 = abap_true.
          DATA t53 TYPE string.
          DATA(t54) = me->conf.
          t53 = t54->zlnt_view_read_sr_90291641a6c3( ).
          t39 = t53.
        ELSE.
          DATA t55 TYPE string.
          DATA(t56) = me->conf.
          t55 = t56->zlnt_view_read_sr_eaedc4fec3fa( ).
          t39 = t55.
        ENDIF.
      ENDIF.
      DATA t57 TYPE abap_bool.
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE string.
      DATA(t60) = t39.
      t59 = t60.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t61 = t62.
      DATA(t63) = abap_false.
      t58 = t63.
      t57 = t58.
      IF t58 = abap_false.
        DATA t64 TYPE abap_bool.
        DATA t65 TYPE i.
        DATA(t66) = t39.
        DATA(t67) = strlen( t66 ).
        t65 = t67.
        DATA(t68) = 0.
        t64 = xsdbool( t65 = t68 ).
        t57 = t64.
      ENDIF.
      IF t57 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t69 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t70 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t70.
      DATA(t71) = t39.
      DATA(t72) = |i|.
      CREATE OBJECT t70 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t71 flags = t72.
      t69 = t70.
      DATA(t73) = VALUE abap_bool( ).
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      DATA(t75) = abap_true.
      IF t75 = abap_true.
        DATA(t76) = t36.
        DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t77->has = abap_true.
        t77->value = t76.
        t74 = t77.
      ELSE.
        DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t78.
        t74 = t78.
      ENDIF.
      DATA(t79) = t69.
      DATA(t80) = me->conf.
      t73 = zcl_lnt_name_validator=>violates_rule( i_name = t74 i_pattern = t79 i_params_4c59 = t80 ).
      IF t73 = abap_true.
        DATA(t81) = t3.
        DATA t82 TYPE REF TO zcl_lnt_issue.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t84) = t28.
        t83 = t84->identifier.
        DATA(t85) = VALUE string( ).
        DATA t86 TYPE string.
        DATA(t87) = t39.
        t86 = t87.
        DATA t88 TYPE string.
        DATA(t89) = t36.
        t88 = t89.
        DATA(t90) = VALUE string( ).
        DATA(t91) = VALUE abap_bool( ).
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t93) = me->conf.
        t92 = t93->zlnt_view_read_sr_ef452f77fd06( ).
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        DATA(t95) = abap_true.
        IF t95 = abap_true.
          DATA(t96) = |required|.
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t96.
          t94 = t97.
        ELSE.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          t94 = t98.
        ENDIF.
        DATA(t99) = VALUE abap_bool( ).
        DATA(t100) = VALUE abap_bool( ).
        IF t92 IS BOUND.
          t99 = t92->has.
        ENDIF.
        IF t94 IS BOUND.
          t100 = t94->has.
        ENDIF.
        IF t99 = t100.
          IF t99 = abap_false.
            t91 = abap_true.
          ELSEIF t92->value = t94->value.
            t91 = abap_true.
          ENDIF.
        ENDIF.
        IF t91 = abap_true.
          DATA t101 TYPE string.
          DATA t102 TYPE string.
          DATA t103 TYPE string.
          DATA(t104) = |Local class name does not match pattern |.
          DATA(t105) = t86.
          DATA(t106) = strlen( t104 ).
          t103 = |{ t104 }{ t105 }|.
          DATA(t107) = |: |.
          DATA(t108) = strlen( t103 ).
          t102 = |{ t103 }{ t107 }|.
          DATA(t109) = t88.
          DATA(t110) = strlen( t102 ).
          t101 = |{ t102 }{ t109 }|.
          t90 = t101.
        ELSE.
          DATA t111 TYPE string.
          DATA t112 TYPE string.
          DATA t113 TYPE string.
          DATA(t114) = |Local class name must not match pattern |.
          DATA(t115) = t86.
          DATA(t116) = strlen( t114 ).
          t113 = |{ t114 }{ t115 }|.
          DATA(t117) = |: |.
          DATA(t118) = strlen( t113 ).
          t112 = |{ t113 }{ t117 }|.
          DATA(t119) = t88.
          DATA(t120) = strlen( t112 ).
          t111 = |{ t112 }{ t119 }|.
          t90 = t111.
        ENDIF.
        t85 = t90.
        DATA(t121) = VALUE string( ).
        DATA t122 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t122.
        DATA t123 TYPE string.
        DATA(t124) = |local_class_naming|.
        t123 = t124.
        DATA t125 TYPE string.
        DATA(t126) = |Local class naming conventions|.
        t125 = t126.
        DATA t127 TYPE string.
        DATA(t128) = |Allows you to enforce a pattern, such as a prefix, for local|.
        t128 = t128 && | class names.|.
        t127 = t128.
        DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t129.
        DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t130.
        DATA(t131) = abap_true.
        IF t131 = abap_true.
          DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t134.
          t133 = t134.
          DATA(t135) = t133.
          DATA(t136) = |Naming|.
          t135->load( ).
          APPEND t136 TO t135->items.
          t135->save( ).
          DATA(t137) = t133.
          DATA(t138) = |SingleFile|.
          t137->load( ).
          APPEND t138 TO t137->items.
          t137->save( ).
          DATA(t139) = t133.
          t132 = t139.
          t130 = t132.
        ELSE.
          DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t140.
          t130 = t140.
        ENDIF.
        t129 = t130.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        DATA(t143) = abap_true.
        IF t143 = abap_true.
          DATA(t144) = |CLASS helper DEFINITION.\nENDCLASS.|.
          DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t145->has = abap_true.
          t145->value = t144.
          t142 = t145.
        ELSE.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          t142 = t146.
        ENDIF.
        t141 = t142.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA(t149) = abap_true.
        IF t149 = abap_true.
          DATA(t150) = |CLASS lcl_helper DEFINITION.\nENDCLASS.|.
          DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t151->has = abap_true.
          t151->value = t150.
          t148 = t151.
        ELSE.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          t148 = t152.
        ENDIF.
        t147 = t148.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        t153 = t154.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        t157 = t158.
        t122 = NEW zcl_lnt_irule_metadata( i_key = t123 i_title = t125 i_short_description = t127 i_bad_example = t141 i_good_example = t147 i_extended_information = t153 i_tags = t129 i_pragma = t155 i_pseudo_comment = t157 ).
        CREATE OBJECT t122->zlnt_view_ownkeys_b0e8086400eb.
        t122->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
        ENDIF.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t164 ).
        ENDIF.
        CREATE OBJECT t122->zlnt_json_ownkeys_70e5fd461788.
        t122->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t165) = |key|.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
        ENDIF.
        DATA(t167) = |title|.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
        ENDIF.
        DATA(t169) = |shortDescription|.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
        ENDIF.
        DATA(t171) = |tags|.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
        ENDIF.
        DATA(t173) = |badExample|.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
        ENDIF.
        DATA(t175) = |goodExample|.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
        ENDIF.
        t121 = t122->key.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t178) = me->conf.
        t177 = t178->zlnt_view_read_sr_15c06369f827( ).
        DATA t179 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t179.
        t82 = zcl_lnt_issue=>at_identifier( i_identifier = t83 i_message_26cb = t85 i_key = t121 i_severity = t177 i_fix = t179 ).
        t81->load( ).
        APPEND t82 TO t81->items.
        t81->save( ).
      ENDIF.
    ENDDO.
    DATA(t180) = t3.
    result = t180.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_lcl_clss_nmng_cnf( me->g_c_i_s_r_lc_cl_nm_ts_lc_cl_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_lcl_clss_nmng_cnf( me->g_c_i_s_r_lc_cl_nm_ts_lc_cl_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_lcl_clss_nmng_cnf.
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
        t1 = NEW zcl_lnt_lcl_clss_nmng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_lc_cl_nm_ts_lc_cl_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1567_56e3793ba388.
  ENDMETHOD.
ENDCLASS.
