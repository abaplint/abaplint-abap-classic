* TS: src/rules/sy_modification.ts:12:1 SyModification
CLASS zcl_lnt_sy_modification DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sy_modification_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_sy_md_ts_sy_mdf RETURNING VALUE(result) TYPE REF TO zcl_lnt_sy_modification_conf.
    METHODS st_cn_in_sr_rl_sy_md_ts_sy_mdf IMPORTING i_conf TYPE REF TO zcl_lnt_sy_modification_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_modification IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_sy_modification_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |sy_modification|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Modification of SY fields|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Finds modification of sy fields|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t11 = t11 && |-US/abensystem_fields.html\n\nChanges to SY-TVAR* fields are n|.
      t11 = t11 && |ot reported\n\nModification of SY fields is not allwed in ABAP|.
      t11 = t11 && | Cloud language version,\nhttps://help.sap.com/doc/abapdocu_c|.
      t11 = t11 && |p_index_htm/CLOUD/en-US/ABENSYSTEM_FIELDS.html|.
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
      DATA(t27) = |sy-uname = 2.\nsy = sy.|.
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
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t42) = |key|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = |title|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |shortDescription|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |extendedInformation|.
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
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sy_md_ts_sy_mdf.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sy_md_ts_sy_mdf.
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
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE string.
    DATA(t7) = t2.
    t6 = t7->get_type( ).
    DATA(t8) = |INTF|.
    t5 = xsdbool( t6 = t8 ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_structure_node.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    DATA(t16) = t1.
    t15 = t16.
    DATA t17 TYPE REF TO zcl_lnt_structure_node.
    DATA(t18) = t15.
    t17 = t18->structure.
    t14 = t17.
    t13 = t14.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t13.
    IF t21 IS INITIAL.
      t20 = abap_true.
    ENDIF.
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t24 TYPE REF TO zcl_lnt_structure_node.
      DATA(t25) = t13.
      t24 = t25.
      DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t23 = t24->find_all_expressions( i_type_9913 = t26 ).
      t19 = t23.
    ENDIF.
    t12 = t19.
    t11 = t12.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE abap_bool.
    DATA(t29) = t11.
    t28 = xsdbool( t29 IS BOUND ).
    IF t28 = abap_true.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t31) = t11.
      t30 = t31.
      t27 = t30.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t32.
      t27 = t32.
    ENDIF.
    t10 = t27.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t33.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
    DATA(t35) = VALUE i( ).
    DO.
      t10->load( ).
      IF t35 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t10->items INDEX t35 + 1 INTO t34.
      t35 = t35 + 1.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t33.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t34.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t33 ?= t37.
      ELSE.
        t33 ?= t34.
      ENDIF.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t38.
      DATA t39 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t42 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t43) = t33.
      t42 = t43.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t45) = t42.
      t44 = t45->children.
      t41 = t44.
      t40 ?= t41.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      t40->load( ).
      CLEAR t46.
      READ TABLE t40->items INDEX 1 INTO t46.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      CLEAR t39.
      IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t47 ?= t46.
        DATA t48 TYPE REF TO object.
        t48 = t47->as_ref( ).
        t39 ?= t48.
      ELSE.
        t39 ?= t46.
      ENDIF.
      t38 = t39.
      DATA t49 TYPE abap_bool.
      DATA t50 TYPE abap_bool.
      DATA t51 TYPE REF TO object.
      DATA(t52) = t38.
      t51 = t52->get_db65( ).
      t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_target_field ).
      t49 = t50.
      IF t50 = abap_true.
        DATA(t53) = VALUE abap_bool( ).
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        DATA t56 TYPE REF TO zcl_lnt_abstract_token.
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t58) = t38.
        t57 = t58->get_first_token( ).
        t56 = t57.
        DATA t59 TYPE string.
        DATA(t60) = t56.
        t59 = t60->str.
        t55 = t59.
        DATA(t61) = strlen( t55 ).
        t54 = t55.
        IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t54 TO UPPER CASE.
        ELSE.
          t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
        ENDIF.
        DATA(t62) = |SY|.
        t53 = xsdbool( t54 = t62 ).
        t49 = t53.
      ENDIF.
      IF t49 = abap_true.
        DATA(t63) = VALUE abap_bool( ).
        DATA t64 TYPE string.
        DATA t65 TYPE string.
        DATA(t66) = t33.
        t65 = t66->concat_tokens( ).
        DATA(t67) = strlen( t65 ).
        t64 = t65.
        IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t64 TO UPPER CASE.
        ELSE.
          t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
        ENDIF.
        DATA(t68) = |SY-TVAR|.
        DATA(t69) = strlen( t64 ).
        DATA t70 TYPE i.
        DATA(t71) = VALUE i( ).
        DATA(t72) = VALUE string( ).
        t70 = strlen( t68 ).
        IF t70 = 0.
          t63 = abap_true.
        ELSEIF t70 <= t69.
          t71 = 0.
          t72 = t64+t71(t70).
          IF t72 = t68.
            t63 = abap_true.
          ENDIF.
        ENDIF.
        IF t63 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t73 TYPE string.
        DATA(t74) = |Modification of SY field|.
        t73 = t74.
        DATA t75 TYPE REF TO zcl_lnt_issue.
        CLEAR t75.
        DATA t76 TYPE REF TO zcl_lnt_issue.
        CLEAR t76.
        DATA(t77) = t1.
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t79) = t38.
        t78 = t79->get_first_token( ).
        DATA(t80) = t73.
        DATA(t81) = VALUE string( ).
        DATA t82 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t82.
        DATA t83 TYPE string.
        DATA(t84) = |sy_modification|.
        t83 = t84.
        DATA t85 TYPE string.
        DATA(t86) = |Modification of SY fields|.
        t85 = t86.
        DATA t87 TYPE string.
        DATA(t88) = |Finds modification of sy fields|.
        t87 = t88.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA(t91) = abap_true.
        IF t91 = abap_true.
          DATA(t92) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
          t92 = t92 && |-US/abensystem_fields.html\n\nChanges to SY-TVAR* fields are n|.
          t92 = t92 && |ot reported\n\nModification of SY fields is not allwed in ABAP|.
          t92 = t92 && | Cloud language version,\nhttps://help.sap.com/doc/abapdocu_c|.
          t92 = t92 && |p_index_htm/CLOUD/en-US/ABENSYSTEM_FIELDS.html|.
          DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t93->has = abap_true.
          t93->value = t92.
          t90 = t93.
        ELSE.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          t90 = t94.
        ENDIF.
        t89 = t90.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t95.
        DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t96.
        DATA(t97) = abap_true.
        IF t97 = abap_true.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t100.
          t99 = t100.
          DATA(t101) = t99.
          DATA(t102) = |SingleFile|.
          t101->load( ).
          APPEND t102 TO t101->items.
          t101->save( ).
          DATA(t103) = t99.
          t98 = t103.
          t96 = t98.
        ELSE.
          DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t104.
          t96 = t104.
        ENDIF.
        t95 = t96.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t107) = abap_true.
        IF t107 = abap_true.
          DATA(t108) = |sy-uname = 2.\nsy = sy.|.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t108.
          t106 = t109.
        ELSE.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          t106 = t110.
        ENDIF.
        t105 = t106.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        t111 = t112.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        t113 = t114.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        t115 = t116.
        t82 = NEW zcl_lnt_irule_metadata( i_key = t83 i_title = t85 i_short_description = t87 i_bad_example = t105 i_good_example = t111 i_extended_information = t89 i_tags = t95 i_pragma = t113 i_pseudo_comment = t115 ).
        CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
        t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t119 ).
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t120 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t121 ).
        ENDIF.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t122 ).
        ENDIF.
        CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
        t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t123) = |key|.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
        ENDIF.
        DATA(t125) = |title|.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
        ENDIF.
        DATA(t127) = |shortDescription|.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
        ENDIF.
        DATA(t129) = |extendedInformation|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        DATA(t131) = |tags|.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
        ENDIF.
        DATA(t133) = |badExample|.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
        ENDIF.
        t81 = t82->key.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t136) = me->conf.
        t135 = t136->zlnt_view_read_sr_15c06369f827( ).
        DATA t137 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t137.
        t76 = zcl_lnt_issue=>at_token( i_file = t77 i_token = t78 i_message_26cb = t80 i_key = t81 i_severity = t135 i_fix = t137 ).
        t75 = t76.
        DATA(t138) = t3.
        DATA(t139) = t75.
        t138->load( ).
        APPEND t139 TO t138->items.
        t138->save( ).
      ENDIF.
    ENDDO.
    DATA(t140) = t3.
    result = t140.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_sy_modification_conf( me->gt_cn_in_sr_rl_sy_md_ts_sy_mdf( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sy_modification_conf( me->gt_cn_in_sr_rl_sy_md_ts_sy_mdf( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sy_modification_conf.
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
        t1 = NEW zcl_lnt_sy_modification_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sy_md_ts_sy_mdf( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1724_0c5cc4c83046.
  ENDMETHOD.
ENDCLASS.
