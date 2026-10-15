* TS: src/rules/nrob_consistency.ts:11:1 NROBConsistency
CLASS zcl_lnt_nrob_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_nrob_consistency_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_nr_cn_ts_nr_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_nrob_consistency_conf.
    METHODS st_cn_in_sr_rl_nr_cn_ts_nr_cns IMPORTING i_conf TYPE REF TO zcl_lnt_nrob_consistency_conf.
    METHODS in_in_sr_rl_nrb_cns_ts_nrb_cns IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_nrob_consistency.
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
CLASS zcl_lnt_nrob_consistency IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_nrob_consistency_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |nrob_consistency|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Number range consistency|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Consistency checks for number ranges|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Issue reported if percentage warning is over 50%\n\nIssue repo|.
      t11 = t11 && |rted if the referenced domain is not found(taking error name|.
      t11 = t11 && |space into account)|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
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
    DATA(t43) = |extendedInformation|.
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

  METHOD gt_cn_in_sr_rl_nr_cn_ts_nr_cns.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_nr_cn_ts_nr_cns.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_nrb_cns_ts_nrb_cns.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_number_range ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abstract_object.
    DATA t11 TYPE REF TO zcl_lnt_number_range.
    DATA(t12) = t1.
    DATA t13 TYPE REF TO object.
    t13 = t12.
    t11 ?= t13.
    t10 = t11.
    DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_file.
    DATA t16 TYPE REF TO zif_lnt_file.
    DATA(t17) = t10.
    t16 = t17->get_xml_file( ).
    t15 = t16.
    DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE REF TO zif_lnt_file.
    DATA(t21) = t15.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    t22 = t23.
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t20.
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t19 = t24.
    IF t19 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t26.
      t18 = t26.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t30 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t31 TYPE REF TO zcl_lnt_position.
        DATA(t32) = CONV f( 1 ).
        DATA(t33) = CONV f( 1 ).
        DATA(t34) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t34->has = abap_true.
        t34->value = t33.
        t31 = NEW zcl_lnt_position( i_row = t32 i_col = t34 ).
        DATA t35 TYPE string.
        DATA(t36) = t10.
        t35 = t36->name.
        t30 = NEW zcl_lnt_lx_identifier( i_start = t31 i_str = t35 ).
        DATA t37 TYPE string.
        DATA t38 TYPE REF TO zif_lnt_file.
        DATA(t39) = t15.
        t38 = t39.
        t37 = t38->get_filename( ).
        t29 = NEW zcl_lnt_fi_identifier( i_token = t30 i_filename = t37 ).
        t27 = t29.
      ELSE.
        DATA t40 TYPE REF TO zcl_lnt_fi_identifier.
        CLEAR t40.
        t27 = t40.
      ENDIF.
      t18 = t27.
    ENDIF.
    t14 = t18.
    t9 = t14.
    t8 = t9.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t43) = t8.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = t42.
    IF t47 IS INITIAL.
      t46 = abap_true.
    ENDIF.
    t41 = t46.
    IF t41 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t48.
      result = t48.
      RETURN.
    ENDIF.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = VALUE abap_bool( ).
    DATA t51 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t51.
    DATA t52 TYPE REF TO zcl_lnt_number_range.
    DATA t53 TYPE REF TO zcl_lnt_number_range.
    DATA(t54) = t1.
    DATA t55 TYPE REF TO object.
    t55 = t54.
    t53 ?= t55.
    t52 = t53.
    DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t58) = t52.
    t57 = t58->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ).
    DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA t61 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA(t62) = t52.
    t61 = t62->parsed_xml.
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t63.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = t60.
    IF t65 IS INITIAL.
      t64 = abap_true.
    ENDIF.
    IF t64 = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t66.
      t63 = t66.
    ELSE.
      DATA t67 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t68 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      DATA(t69) = t60.
      t68 = t69.
      t67 = t68->percentage.
      t63 = t67.
    ENDIF.
    t59 = t63.
    t56 = t59.
    t51 = t56.
    IF t51 IS BOUND.
      IF t51->has = abap_true.
        IF t51->number_special <> 0.
          t50 = xsdbool( t51->number_special <> 1 ).
        ELSE.
          t50 = xsdbool( t51->value IS NOT INITIAL ).
        ENDIF.
      ENDIF.
    ENDIF.
    t49 = t50.
    IF t50 = abap_false.
      DATA t70 TYPE abap_bool.
      DATA(t71) = 0.
      DATA(t72) = 50.
      t70 = xsdbool( t71 > t72 ).
      t49 = t70.
    ENDIF.
    IF t49 = abap_true.
      DATA t73 TYPE string.
      DATA(t74) = |Percentage more than 50|.
      t73 = t74.
      DATA(t75) = t6.
      DATA t76 TYPE REF TO zcl_lnt_issue.
      CLEAR t76.
      DATA t77 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t78) = t8.
      t77 = t78.
      DATA(t79) = t73.
      DATA(t80) = VALUE string( ).
      DATA t81 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t81.
      DATA t82 TYPE string.
      DATA(t83) = |nrob_consistency|.
      t82 = t83.
      DATA t84 TYPE string.
      DATA(t85) = |Number range consistency|.
      t84 = t85.
      DATA t86 TYPE string.
      DATA(t87) = |Consistency checks for number ranges|.
      t86 = t87.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      DATA(t90) = abap_true.
      IF t90 = abap_true.
        DATA(t91) = |Issue reported if percentage warning is over 50%\n\nIssue repo|.
        t91 = t91 && |rted if the referenced domain is not found(taking error name|.
        t91 = t91 && |space into account)|.
        DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t92->has = abap_true.
        t92->value = t91.
        t89 = t92.
      ELSE.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        t89 = t93.
      ENDIF.
      t88 = t89.
      DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t95.
      DATA(t96) = abap_true.
      IF t96 = abap_true.
        DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t99.
        t98 = t99.
        DATA(t100) = t98.
        DATA(t101) = |SingleFile|.
        t100->load( ).
        APPEND t101 TO t100->items.
        t100->save( ).
        DATA(t102) = t98.
        t97 = t102.
        t95 = t97.
      ELSE.
        DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t103.
        t95 = t103.
      ENDIF.
      t94 = t95.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t105.
      t104 = t105.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t107.
      t106 = t107.
      DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t109.
      t108 = t109.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t111.
      t110 = t111.
      t81 = NEW zcl_lnt_irule_metadata( i_key = t82 i_title = t84 i_short_description = t86 i_bad_example = t104 i_good_example = t106 i_extended_information = t88 i_tags = t94 i_pragma = t108 i_pseudo_comment = t110 ).
      CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
      t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t112 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t113 ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t114 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t115 ).
      ENDIF.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t116 ).
      ENDIF.
      CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
      t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t117) = |key|.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
      ENDIF.
      DATA(t119) = |title|.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
      ENDIF.
      DATA(t121) = |shortDescription|.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
      ENDIF.
      DATA(t123) = |extendedInformation|.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
      ENDIF.
      DATA(t125) = |tags|.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
      ENDIF.
      t80 = t81->key.
      DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t128) = CAST zcl_lnt_nrob_consistency_conf( me->gt_cn_in_sr_rl_nr_cn_ts_nr_cns( ) ).
      t127 = t128->zlnt_view_read_sr_15c06369f827( ).
      DATA t129 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t129.
      t76 = zcl_lnt_issue=>at_identifier( i_identifier = t77 i_message_26cb = t79 i_key = t80 i_severity = t127 i_fix = t129 ).
      t75->load( ).
      APPEND t76 TO t75->items.
      t75->save( ).
    ENDIF.
    DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t131.
    DATA t132 TYPE REF TO zcl_lnt_number_range.
    DATA t133 TYPE REF TO zcl_lnt_number_range.
    DATA(t134) = t1.
    DATA t135 TYPE REF TO object.
    t135 = t134.
    t133 ?= t135.
    t132 = t133.
    DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t136.
    DATA t137 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t138) = t132.
    t137 = t138->pr_in_sr_ob_nmb_rng_ts_nmb_rng( ).
    DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t139.
    DATA t140 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA t141 TYPE REF TO zcl_lnt_shape_f96fb7aa.
    DATA(t142) = t132.
    t141 = t142->parsed_xml.
    t140 = t141.
    DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t143.
    DATA(t144) = VALUE abap_bool( ).
    DATA(t145) = t140.
    IF t145 IS INITIAL.
      t144 = abap_true.
    ENDIF.
    IF t144 = abap_true.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      t143 = t146.
    ELSE.
      DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t148 TYPE REF TO zcl_lnt_shape_f96fb7aa.
      DATA(t149) = t140.
      t148 = t149.
      t147 = t148->domain.
      t143 = t147.
    ENDIF.
    t139 = t143.
    t136 = t139.
    t131 = t136.
    t130 = t131.
    DATA(t150) = VALUE abap_bool( ).
    DATA(t151) = VALUE abap_bool( ).
    DATA(t152) = VALUE abap_bool( ).
    DATA(t153) = t130.
    IF t153 IS BOUND.
      IF t153->has = abap_true.
        t152 = xsdbool( strlen( t153->value ) > 0 ).
      ENDIF.
    ENDIF.
    t151 = t152.
    IF t152 = abap_true.
      DATA(t154) = VALUE abap_bool( ).
      DATA t155 TYPE REF TO zif_lnt_object.
      CLEAR t155.
      DATA t156 TYPE REF TO zif_lnt_object.
      CLEAR t156.
      DATA(t157) = me->reg.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      DATA(t159) = abap_true.
      IF t159 = abap_true.
        DATA(t160) = |DOMA|.
        DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t161->has = abap_true.
        t161->value = t160.
        t158 = t161.
      ELSE.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        t158 = t162.
      ENDIF.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t163.
      DATA(t164) = abap_true.
      IF t164 = abap_true.
        DATA t165 TYPE string.
        DATA(t166) = t130.
        t165 = t166->value.
        DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t167->has = abap_true.
        t167->value = t165.
        t163 = t167.
      ELSE.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        t163 = t168.
      ENDIF.
      t156 = t157->get_object( i_type_9913 = t158 i_name = t163 ).
      t155 = t156.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      t169 = t170.
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = t155.
      IF t172 IS INITIAL.
        t171 = abap_true.
      ENDIF.
      t154 = t171.
      t151 = t154.
    ENDIF.
    t150 = t151.
    IF t151 = abap_true.
      DATA t173 TYPE abap_bool.
      DATA t174 TYPE abap_bool.
      DATA(t175) = me->reg.
      DATA t176 TYPE string.
      DATA(t177) = t130.
      t176 = t177->value.
      t174 = t175->in_error_namespace( i_name = t176 ).
      DATA(t178) = abap_true.
      t173 = xsdbool( t174 = t178 ).
      t150 = t173.
    ENDIF.
    IF t150 = abap_true.
      DATA t179 TYPE string.
      DATA t180 TYPE string.
      DATA t181 TYPE string.
      DATA(t182) = |Domain |.
      DATA t183 TYPE string.
      DATA(t184) = t130.
      t183 = t184->value.
      DATA(t185) = strlen( t182 ).
      t181 = |{ t182 }{ t183 }|.
      DATA(t186) = | not found|.
      DATA(t187) = strlen( t181 ).
      t180 = |{ t181 }{ t186 }|.
      t179 = t180.
      DATA(t188) = t6.
      DATA t189 TYPE REF TO zcl_lnt_issue.
      CLEAR t189.
      DATA t190 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t191) = t8.
      t190 = t191.
      DATA(t192) = t179.
      DATA(t193) = VALUE string( ).
      DATA t194 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t194.
      DATA t195 TYPE string.
      DATA(t196) = |nrob_consistency|.
      t195 = t196.
      DATA t197 TYPE string.
      DATA(t198) = |Number range consistency|.
      t197 = t198.
      DATA t199 TYPE string.
      DATA(t200) = |Consistency checks for number ranges|.
      t199 = t200.
      DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t201.
      DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t202.
      DATA(t203) = abap_true.
      IF t203 = abap_true.
        DATA(t204) = |Issue reported if percentage warning is over 50%\n\nIssue repo|.
        t204 = t204 && |rted if the referenced domain is not found(taking error name|.
        t204 = t204 && |space into account)|.
        DATA(t205) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t205->has = abap_true.
        t205->value = t204.
        t202 = t205.
      ELSE.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t206.
        t202 = t206.
      ENDIF.
      t201 = t202.
      DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t207.
      DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t208.
      DATA(t209) = abap_true.
      IF t209 = abap_true.
        DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t212.
        t211 = t212.
        DATA(t213) = t211.
        DATA(t214) = |SingleFile|.
        t213->load( ).
        APPEND t214 TO t213->items.
        t213->save( ).
        DATA(t215) = t211.
        t210 = t215.
        t208 = t210.
      ELSE.
        DATA t216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t216.
        t208 = t216.
      ENDIF.
      t207 = t208.
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t218.
      t217 = t218.
      DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t220.
      t219 = t220.
      DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t222.
      t221 = t222.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      t223 = t224.
      t194 = NEW zcl_lnt_irule_metadata( i_key = t195 i_title = t197 i_short_description = t199 i_bad_example = t217 i_good_example = t219 i_extended_information = t201 i_tags = t207 i_pragma = t221 i_pseudo_comment = t223 ).
      CREATE OBJECT t194->zlnt_view_ownkeys_b0e8086400eb.
      t194->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t225.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t225 ).
      ENDIF.
      DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t226.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t226 ).
      ENDIF.
      DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t227.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t227 ).
      ENDIF.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t228 ).
      ENDIF.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t229 ).
      ENDIF.
      CREATE OBJECT t194->zlnt_json_ownkeys_70e5fd461788.
      t194->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t230) = |key|.
      DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t231.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
      ENDIF.
      DATA(t232) = |title|.
      DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t233.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t232 p1 = t233 ).
      ENDIF.
      DATA(t234) = |shortDescription|.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t235.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
      ENDIF.
      DATA(t236) = |extendedInformation|.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t237.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
      ENDIF.
      DATA(t238) = |tags|.
      DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t239.
      IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
      ENDIF.
      t193 = t194->key.
      DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t241) = CAST zcl_lnt_nrob_consistency_conf( me->gt_cn_in_sr_rl_nr_cn_ts_nr_cns( ) ).
      t240 = t241->zlnt_view_read_sr_15c06369f827( ).
      DATA t242 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t242.
      t189 = zcl_lnt_issue=>at_identifier( i_identifier = t190 i_message_26cb = t192 i_key = t193 i_severity = t240 i_fix = t242 ).
      t188->load( ).
      APPEND t189 TO t188->items.
      t188->save( ).
    ENDIF.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t243.
    result = t243.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_nrob_consistency_conf( me->gt_cn_in_sr_rl_nr_cn_ts_nr_cns( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_nrob_consistency_conf( me->gt_cn_in_sr_rl_nr_cn_ts_nr_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_nrob_consistency_conf.
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
        t2 = NEW zcl_lnt_nrob_consistency_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_nr_cn_ts_nr_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_nrob_consistency.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_nrb_cns_ts_nrb_cns( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1629_fd5859dfffea.
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
