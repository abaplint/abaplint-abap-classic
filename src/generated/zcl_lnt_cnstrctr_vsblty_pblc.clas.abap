* TS: src/rules/constructor_visibility_public.ts:12:1 ConstructorVisibilityPublic
CLASS zcl_lnt_cnstrctr_vsblty_pblc DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb RETURNING VALUE(result) TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS i_i_sr_rl_cn_vs_pb_ts_cn_vs_pb IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_cnstrctr_vsblty_pblc.
    METHODS s_c_i_s_r_cn_vs_pb_ts_cn_vs_pb IMPORTING i_conf TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cnstrctr_vsblty_pblc IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cnstrc_vsblty_pblc_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |constructor_visibility_public|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check constructor visibility is public|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Constructor must be placed in the public section, even if th|.
    t7 = t7 && |e class is not CREATE PUBLIC.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nThis only applies to global classes.\n\nhttps://github.com/SA|.
      t11 = t11 && |P/styleguides/blob/main/clean-abap/CleanABAP.md#if-your-glob|.
      t11 = t11 && |al-class-is-create-private-leave-the-constructor-public\nhttp|.
      t11 = t11 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
      t11 = t11 && |abeninstance_constructor_guidl.html|.
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
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.\n  PRIVATE SE|.
      t29 = t29 && |CTION.\n    METHODS constructor.\nENDCLASS.|.
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
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.\n  PUBLIC SEC|.
      t35 = t35 && |TION.\n    METHODS constructor.\nENDCLASS.|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Constructor visibility should be public|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD i_i_sr_rl_cn_vs_pb_ts_cn_vs_pb.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD s_c_i_s_r_cn_vs_pb_ts_cn_vs_pb.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_class ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_class.
    DATA t11 TYPE REF TO zcl_lnt_class.
    DATA(t12) = t1.
    DATA t13 TYPE REF TO object.
    t13 = t12.
    t11 ?= t13.
    t10 = t11.
    DATA t14 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    DATA t18 TYPE REF TO zcl_lnt_abap_file.
    DATA(t19) = t10.
    t18 = t19->get_main_abap_file( ).
    t17 = t18.
    DATA t20 TYPE REF TO zif_lnt_abap_file_information.
    CLEAR t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t23.
      t20 = t23.
    ELSE.
      DATA t24 TYPE REF TO zif_lnt_abap_file_information.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA t26 TYPE REF TO zcl_lnt_abap_file.
      DATA(t27) = t17.
      t26 = t27.
      t25 = t26.
      DATA t28 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t29) = t25.
      t28 = t29->info.
      t24 = t28.
      t20 = t24.
    ENDIF.
    t16 = t20.
    t15 = t16.
    DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = t15.
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t33.
      t30 = t33.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t35 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t36) = t15.
      t35 = t36.
      DATA t37 TYPE string.
      DATA t38 TYPE REF TO zcl_lnt_abstract_object.
      DATA(t39) = t10.
      t38 = t39.
      DATA t40 TYPE string.
      DATA(t41) = t38.
      t40 = t41->name.
      t37 = t40.
      t34 = t35->get_class_definition_by_name( i_name = t37 ).
      t30 = t34.
    ENDIF.
    t14 = t30.
    t9 = t14.
    t8 = t9.
    DATA(t42) = VALUE abap_bool( ).
    DATA t43 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t44) = t8.
    t43 = t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    t45 = t46.
    DATA(t47) = VALUE abap_bool( ).
    DATA(t48) = t43.
    IF t48 IS INITIAL.
      t47 = abap_true.
    ENDIF.
    t42 = t47.
    IF t42 = abap_true.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t49.
      result = t49.
      RETURN.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t52) = t8.
    t51 = t52.
    t50 = t51->methods.
    DATA t53 TYPE REF TO zcl_lnt_info_method_definition.
    CLEAR t53.
    DATA t54 TYPE REF TO object.
    CLEAR t54.
    DATA(t55) = VALUE i( ).
    DO.
      t50->load( ).
      IF t55 >= lines( t50->items ).
        EXIT.
      ENDIF.
      CLEAR t54.
      READ TABLE t50->items INDEX t55 + 1 INTO t54.
      t55 = t55 + 1.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      CLEAR t53.
      IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t56 ?= t54.
        DATA t57 TYPE REF TO object.
        t57 = t56->as_ref( ).
        t53 ?= t57.
      ELSE.
        t53 ?= t54.
      ENDIF.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE string.
      DATA t61 TYPE string.
      DATA(t62) = t53.
      t61 = t62->name.
      DATA(t63) = strlen( t61 ).
      t60 = t61.
      IF t60 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t60 TO UPPER CASE.
      ELSE.
        t60 = zlnt_runtime_uppe_91169605024d=>full( t60 ).
      ENDIF.
      DATA(t64) = |CONSTRUCTOR|.
      t59 = xsdbool( t60 = t64 ).
      t58 = t59.
      IF t59 = abap_true.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE f.
        DATA(t67) = t53.
        t66 = t67->visibility.
        DATA(t68) = CONV f( 3 ).
        t65 = xsdbool( t66 <> t68 ).
        t58 = t65.
      ENDIF.
      IF t58 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_issue.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_issue.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t72) = t53.
        t71 = t72->identifier.
        DATA(t73) = |Constructor visibility should be public|.
        DATA(t74) = VALUE string( ).
        DATA t75 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t75.
        DATA t76 TYPE string.
        DATA(t77) = |constructor_visibility_public|.
        t76 = t77.
        DATA t78 TYPE string.
        DATA(t79) = |Check constructor visibility is public|.
        t78 = t79.
        DATA t80 TYPE string.
        DATA(t81) = |Constructor must be placed in the public section, even if th|.
        t81 = t81 && |e class is not CREATE PUBLIC.|.
        t80 = t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA(t84) = abap_true.
        IF t84 = abap_true.
          DATA(t85) = |\nThis only applies to global classes.\n\nhttps://github.com/SA|.
          t85 = t85 && |P/styleguides/blob/main/clean-abap/CleanABAP.md#if-your-glob|.
          t85 = t85 && |al-class-is-create-private-leave-the-constructor-public\nhttp|.
          t85 = t85 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
          t85 = t85 && |abeninstance_constructor_guidl.html|.
          DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t86->has = abap_true.
          t86->value = t85.
          t83 = t86.
        ELSE.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          t83 = t87.
        ENDIF.
        t82 = t83.
        DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t89.
        DATA(t90) = abap_true.
        IF t90 = abap_true.
          DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t93.
          t92 = t93.
          DATA(t94) = t92.
          DATA(t95) = |Styleguide|.
          t94->load( ).
          APPEND t95 TO t94->items.
          t94->save( ).
          DATA(t96) = t92.
          DATA(t97) = |SingleFile|.
          t96->load( ).
          APPEND t97 TO t96->items.
          t96->save( ).
          DATA(t98) = t92.
          t91 = t98.
          t89 = t91.
        ELSE.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t99.
          t89 = t99.
        ENDIF.
        t88 = t89.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        DATA(t102) = abap_true.
        IF t102 = abap_true.
          DATA(t103) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.\n  PRIVATE SE|.
          t103 = t103 && |CTION.\n    METHODS constructor.\nENDCLASS.|.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t103.
          t101 = t104.
        ELSE.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t105.
          t101 = t105.
        ENDIF.
        t100 = t101.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA(t108) = abap_true.
        IF t108 = abap_true.
          DATA(t109) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.\n  PUBLIC SEC|.
          t109 = t109 && |TION.\n    METHODS constructor.\nENDCLASS.|.
          DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t110->has = abap_true.
          t110->value = t109.
          t107 = t110.
        ELSE.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          t107 = t111.
        ENDIF.
        t106 = t107.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        t112 = t113.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t114 = t115.
        t75 = NEW zcl_lnt_irule_metadata( i_key = t76 i_title = t78 i_short_description = t80 i_bad_example = t100 i_good_example = t106 i_extended_information = t82 i_tags = t88 i_pragma = t112 i_pseudo_comment = t114 ).
        CREATE OBJECT t75->zlnt_view_ownkeys_b0e8086400eb.
        t75->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t119 ).
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t120 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t121 ).
        ENDIF.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t122 ).
        ENDIF.
        CREATE OBJECT t75->zlnt_json_ownkeys_70e5fd461788.
        t75->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t123) = |key|.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
        ENDIF.
        DATA(t125) = |title|.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
        ENDIF.
        DATA(t127) = |shortDescription|.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
        ENDIF.
        DATA(t129) = |extendedInformation|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        DATA(t131) = |tags|.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
        ENDIF.
        DATA(t133) = |badExample|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        DATA(t135) = |goodExample|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        t74 = t75->key.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t138) = me->conf.
        t137 = t138->zlnt_view_read_sr_15c06369f827( ).
        DATA t139 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t139.
        t70 = zcl_lnt_issue=>at_identifier( i_identifier = t71 i_message_26cb = t73 i_key = t74 i_severity = t137 i_fix = t139 ).
        t69 = t70.
        DATA(t140) = t2.
        DATA(t141) = t69.
        t140->load( ).
        APPEND t141 TO t140->items.
        t140->save( ).
      ENDIF.
    ENDDO.
    DATA(t142) = t2.
    result = t142.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cnstrc_vsblty_pblc_cnf( me->g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cnstrc_vsblty_pblc_cnf( me->g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb( ) ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_cnstrctr_vsblty_pblc.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_cn_vs_pb_ts_cn_vs_pb( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
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
        t2 = NEW zcl_lnt_cnstrc_vsblty_pblc_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cn_vs_pb_ts_cn_vs_pb( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1465_1d098da1d2a1.
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
