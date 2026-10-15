* TS: src/rules/method_overwrites_builtin.ts:12:1 MethodOverwritesBuiltIn
CLASS zcl_lnt_mthd_ovrwrts_blt_in DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mthd_ovrwrt_blt_in_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_m_o_b_ts_mt_ov_bl_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_mthd_ovrwrt_blt_in_cnf.
    METHODS s_c_i_s_r_m_o_b_ts_mt_ov_bl_in IMPORTING i_conf TYPE REF TO zcl_lnt_mthd_ovrwrt_blt_in_cnf.
    METHODS r_p_i_s_r_m_o_b_ts_mt_ov_bl_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mthd_ovrwrts_blt_in IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_mthd_ovrwrt_blt_in_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |method_overwrites_builtin|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Method name overwrites builtin function|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks Method names that overwrite builtin SAP functions|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t11 = t11 && |-us/abenbuilt_in_functions_overview.html\n\nhttps://github.com|.
      t11 = t11 && |/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#avoid-obs|.
      t11 = t11 && |curing-built-in-functions\n\nInterface method names are ignore|.
      t11 = t11 && |d|.
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
      DATA(t21) = |Naming|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Styleguide|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS matches.|.
      t31 = t31 && |\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD matches.\n  EN|.
      t31 = t31 && |DMETHOD.\nENDCLASS.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |extendedInformation|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |tags|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |badExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_m_o_b_ts_mt_ov_bl_in.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_m_o_b_ts_mt_ov_bl_in.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_m_o_b_ts_mt_ov_bl_in.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zif_lnt_abap_file_information.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t11) = t8.
    t10 = t11->info.
    t7 = t10.
    t6 = t7->list_class_definitions( ).
    DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t6->load( ).
      IF t14 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t6->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t4.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = t12.
      t19 = t20->methods.
      t17 = t18->concat( p0 = t19 ).
      t4 = t17.
    ENDDO.
    DATA(t21) = t4.
    DATA t22 TYPE REF TO zcl_lnt_info_method_definition.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    DATA(t24) = VALUE i( ).
    DO.
      t21->load( ).
      IF t24 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t21->items INDEX t24 + 1 INTO t23.
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
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zif_lnt_method_definition.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA(t30) = abap_true.
      IF t30 = abap_true.
        DATA t31 TYPE string.
        DATA t32 TYPE string.
        DATA(t33) = t22.
        t32 = t33->name.
        DATA(t34) = strlen( t32 ).
        t31 = t32.
        IF t31 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t31 TO UPPER CASE.
        ELSE.
          t31 = zlnt_runtime_uppe_91169605024d=>full( t31 ).
        ENDIF.
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t31.
        t29 = t35.
      ELSE.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        t29 = t36.
      ENDIF.
      t28 = zcl_lnt_built_in=>search_builtin( i_name = t29 ).
      t27 = xsdbool( t28 IS BOUND ).
      IF t27 = abap_true.
        DATA t37 TYPE string.
        DATA t38 TYPE string.
        DATA t39 TYPE string.
        DATA(t40) = |Method name "|.
        DATA t41 TYPE string.
        DATA(t42) = t22.
        t41 = t42->name.
        DATA(t43) = strlen( t40 ).
        t39 = |{ t40 }{ t41 }|.
        DATA(t44) = |" overwrites built-in SAP function name|.
        DATA(t45) = strlen( t39 ).
        t38 = |{ t39 }{ t44 }|.
        t37 = t38.
        DATA(t46) = t2.
        DATA t47 TYPE REF TO zcl_lnt_issue.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t49) = t22.
        t48 = t49->identifier.
        DATA(t50) = t37.
        DATA(t51) = VALUE string( ).
        DATA t52 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t52.
        DATA t53 TYPE string.
        DATA(t54) = |method_overwrites_builtin|.
        t53 = t54.
        DATA t55 TYPE string.
        DATA(t56) = |Method name overwrites builtin function|.
        t55 = t56.
        DATA t57 TYPE string.
        DATA(t58) = |Checks Method names that overwrite builtin SAP functions|.
        t57 = t58.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA(t62) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
          t62 = t62 && |-us/abenbuilt_in_functions_overview.html\n\nhttps://github.com|.
          t62 = t62 && |/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#avoid-obs|.
          t62 = t62 && |curing-built-in-functions\n\nInterface method names are ignore|.
          t62 = t62 && |d|.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t62.
          t60 = t63.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t64.
          t60 = t64.
        ENDIF.
        t59 = t60.
        DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t65.
        DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t66.
        DATA(t67) = abap_true.
        IF t67 = abap_true.
          DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t70.
          t69 = t70.
          DATA(t71) = t69.
          DATA(t72) = |Naming|.
          t71->load( ).
          APPEND t72 TO t71->items.
          t71->save( ).
          DATA(t73) = t69.
          DATA(t74) = |SingleFile|.
          t73->load( ).
          APPEND t74 TO t73->items.
          t73->save( ).
          DATA(t75) = t69.
          DATA(t76) = |Styleguide|.
          t75->load( ).
          APPEND t76 TO t75->items.
          t75->save( ).
          DATA(t77) = t69.
          t68 = t77.
          t66 = t68.
        ELSE.
          DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t78.
          t66 = t78.
        ENDIF.
        t65 = t66.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = abap_true.
        IF t81 = abap_true.
          DATA(t82) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS matches.|.
          t82 = t82 && |\nENDCLASS.\n\nCLASS lcl IMPLEMENTATION.\n  METHOD matches.\n  EN|.
          t82 = t82 && |DMETHOD.\nENDCLASS.|.
          DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t83->has = abap_true.
          t83->value = t82.
          t80 = t83.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          t80 = t84.
        ENDIF.
        t79 = t80.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        t85 = t86.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        t87 = t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t89 = t90.
        t52 = NEW zcl_lnt_irule_metadata( i_key = t53 i_title = t55 i_short_description = t57 i_bad_example = t79 i_good_example = t85 i_extended_information = t59 i_tags = t65 i_pragma = t87 i_pseudo_comment = t89 ).
        CREATE OBJECT t52->zlnt_view_ownkeys_b0e8086400eb.
        t52->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t91 ).
        ENDIF.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t92 ).
        ENDIF.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t93 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t94 ).
        ENDIF.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t95 ).
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t96 ).
        ENDIF.
        CREATE OBJECT t52->zlnt_json_ownkeys_70e5fd461788.
        t52->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t97) = |key|.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t97 p1 = t98 ).
        ENDIF.
        DATA(t99) = |title|.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
        ENDIF.
        DATA(t101) = |shortDescription|.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
        ENDIF.
        DATA(t103) = |extendedInformation|.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
        ENDIF.
        DATA(t105) = |tags|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        DATA(t107) = |badExample|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        t51 = t52->key.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA t110 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t110.
        t47 = zcl_lnt_issue=>at_identifier( i_identifier = t48 i_message_26cb = t50 i_key = t51 i_severity = t109 i_fix = t110 ).
        t46->load( ).
        APPEND t47 TO t46->items.
        t46->save( ).
      ENDIF.
    ENDDO.
    DATA(t111) = t2.
    result = t111.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mthd_ovrwrt_blt_in_cnf( me->g_c_i_s_r_m_o_b_ts_mt_ov_bl_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mthd_ovrwrt_blt_in_cnf( me->g_c_i_s_r_m_o_b_ts_mt_ov_bl_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mthd_ovrwrt_blt_in_cnf.
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
        t1 = NEW zcl_lnt_mthd_ovrwrt_blt_in_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_m_o_b_ts_mt_ov_bl_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_m_o_b_ts_mt_ov_bl_in( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1589_0e25c77401f3.
  ENDMETHOD.
ENDCLASS.
