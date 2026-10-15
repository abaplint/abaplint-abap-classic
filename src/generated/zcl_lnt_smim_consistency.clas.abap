* TS: src/rules/smim_consistency.ts:12:1 SMIMConsistency
CLASS zcl_lnt_smim_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_smim_consistency_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_sm_cn_ts_sm_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_smim_consistency_conf.
    METHODS st_cn_in_sr_rl_sm_cn_ts_sm_cns IMPORTING i_conf TYPE REF TO zcl_lnt_smim_consistency_conf.
    METHODS in_in_sr_rl_smm_cns_ts_smm_cns IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_smim_consistency.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS base IMPORTING i_full TYPE string RETURNING VALUE(result) TYPE string.
    METHODS find_folder IMPORTING i_base TYPE string RETURNING VALUE(result) TYPE abap_bool.
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
CLASS zcl_lnt_smim_consistency IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_smim_consistency_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |smim_consistency|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |SMIM consistency check|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |SMIM consistency check|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Checks that the parent folder of each MIME object exists in |.
      t11 = t11 && |the registry. The SAP system folder /SAP/PUBLIC is always al|.
      t11 = t11 && |lowed as a parent even if not present in the repository.|.
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t16 i_extended_information = t8 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |key|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |title|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = |shortDescription|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |extendedInformation|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sm_cn_ts_sm_cns.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sm_cn_ts_sm_cns.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_smm_cns_ts_smm_cns.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

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
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_mime_object ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA(t8) = VALUE string( ).
    DATA(t9) = VALUE string( ).
    DATA(t10) = VALUE string( ).
    DATA(t11) = VALUE string( ).
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_mime_object.
    DATA t15 TYPE REF TO zcl_lnt_mime_object.
    DATA(t16) = t1.
    DATA t17 TYPE REF TO object.
    t17 = t16.
    t15 ?= t17.
    t14 = t15.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t20) = t14.
    t19 = t20->pr_in_src_obj_mm_obj_ts_mm_obj( ).
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    DATA t23 TYPE REF TO zcl_lnt_shape_c0acc5f0.
    DATA(t24) = t14.
    t23 = t24->parsed_xml.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t22.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    IF t26 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t30 TYPE REF TO zcl_lnt_shape_c0acc5f0.
      DATA(t31) = t22.
      t30 = t31.
      t29 = t30->url_a050.
      t25 = t29.
    ENDIF.
    t21 = t25.
    t18 = t21.
    t13 = t18.
    t12 = t13.
    DATA(t32) = VALUE string( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t12.
    IF t34 IS BOUND.
      IF t34->has = abap_true.
        t33 = xsdbool( strlen( t34->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t33 = abap_true.
      DATA t35 TYPE string.
      DATA(t36) = t12.
      t35 = t36->value.
      t32 = t35.
    ELSE.
      DATA(t37) = ||.
      t32 = t37.
    ENDIF.
    t11 = t32.
    t10 = t11.
    DATA(t38) = VALUE string( ).
    DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t41) = t10.
    DATA(t42) = |/|.
    DATA(t43) = strlen( t41 ).
    DATA t44 TYPE i.
    DATA(t45) = VALUE i( ).
    DATA(t46) = VALUE i( ).
    DATA t47 TYPE i.
    DATA(t48) = VALUE string( ).
    CREATE OBJECT t40.
    t47 = strlen( t42 ).
    t44 = 0.
    IF t47 = 0.
      WHILE t44 < t43.
        t48 = t41+t44(1).
        APPEND t48 TO t40->items.
        t44 = t44 + 1.
      ENDWHILE.
    ELSE.
      WHILE t44 <= t43.
        FIND FIRST OCCURRENCE OF t42 IN SECTION OFFSET t44 OF t41 MATCH OFFSET t45.
        IF sy-subrc = 0.
          t46 = t45 - t44.
        ELSE.
          t45 = -1.
          t46 = t43 - t44.
        ENDIF.
        CLEAR t48.
        IF t46 > 0.
          t48 = t41+t44(t46).
        ENDIF.
        APPEND t48 TO t40->items.
        IF t45 < 0.
          EXIT.
        ENDIF.
        t44 = t45 + t47.
      ENDWHILE.
    ENDIF.
    t39 = t40.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t50) = t39.
    t49 = t50->pop( ).
    DATA t51 TYPE string.
    DATA(t52) = t39.
    DATA(t53) = |/|.
    DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t54->has = abap_true.
    t54->value = t53.
    t51 = t52->join( p0 = t54 ).
    t38 = t51.
    t9 = t38.
    t8 = t9.
    DATA(t55) = VALUE abap_bool( ).
    DATA t56 TYPE abap_bool.
    DATA t57 TYPE abap_bool.
    DATA(t58) = t8.
    DATA(t59) = ||.
    t57 = xsdbool( t58 <> t59 ).
    t56 = t57.
    IF t57 = abap_true.
      DATA t60 TYPE abap_bool.
      DATA(t61) = t8.
      DATA(t62) = |/SAP/PUBLIC|.
      t60 = xsdbool( t61 <> t62 ).
      t56 = t60.
    ENDIF.
    t55 = t56.
    IF t56 = abap_true.
      DATA t63 TYPE abap_bool.
      DATA t64 TYPE abap_bool.
      DATA(t65) = t8.
      t64 = me->find_folder( i_base = t65 ).
      DATA(t66) = abap_false.
      t63 = xsdbool( t64 = t66 ).
      t55 = t63.
    ENDIF.
    IF t55 = abap_true.
      DATA t67 TYPE string.
      DATA t68 TYPE string.
      DATA t69 TYPE string.
      DATA(t70) = |Parent folder "|.
      DATA(t71) = t8.
      DATA(t72) = strlen( t70 ).
      t69 = |{ t70 }{ t71 }|.
      DATA(t73) = |" not found|.
      DATA(t74) = strlen( t69 ).
      t68 = |{ t69 }{ t73 }|.
      t67 = t68.
      DATA t75 TYPE REF TO zcl_lnt_position.
      DATA t76 TYPE REF TO zcl_lnt_position.
      DATA(t77) = CONV f( 1 ).
      DATA(t78) = CONV f( 1 ).
      DATA(t79) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t79->has = abap_true.
      t79->value = t78.
      t76 = NEW zcl_lnt_position( i_row = t77 i_col = t79 ).
      t75 = t76.
      DATA t80 TYPE REF TO zcl_lnt_issue.
      CLEAR t80.
      DATA t81 TYPE REF TO zcl_lnt_issue.
      CLEAR t81.
      DATA t82 TYPE REF TO zif_lnt_file.
      CLEAR t82.
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t84 TYPE REF TO zcl_lnt_abstract_object.
      DATA t85 TYPE REF TO zcl_lnt_mime_object.
      DATA(t86) = t1.
      DATA t87 TYPE REF TO object.
      t87 = t86.
      t85 ?= t87.
      t84 = t85.
      DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t89) = t84.
      t88 = t89->files.
      t83 = t88.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      t83->load( ).
      CLEAR t90.
      READ TABLE t83->items INDEX 1 INTO t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      CLEAR t82.
      IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t91 ?= t90.
        DATA t92 TYPE REF TO object.
        t92 = t91->as_ref( ).
        t82 ?= t92.
      ELSE.
        t82 ?= t90.
      ENDIF.
      DATA(t93) = t75.
      DATA(t94) = t67.
      DATA(t95) = VALUE string( ).
      DATA t96 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t96.
      DATA t97 TYPE string.
      DATA(t98) = |smim_consistency|.
      t97 = t98.
      DATA t99 TYPE string.
      DATA(t100) = |SMIM consistency check|.
      t99 = t100.
      DATA t101 TYPE string.
      DATA(t102) = |SMIM consistency check|.
      t101 = t102.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t103.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t104.
      DATA(t105) = abap_true.
      IF t105 = abap_true.
        DATA(t106) = |Checks that the parent folder of each MIME object exists in |.
        t106 = t106 && |the registry. The SAP system folder /SAP/PUBLIC is always al|.
        t106 = t106 && |lowed as a parent even if not present in the repository.|.
        DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t107->has = abap_true.
        t107->value = t106.
        t104 = t107.
      ELSE.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        t104 = t108.
      ENDIF.
      t103 = t104.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t110.
      t109 = t110.
      DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      t111 = t112.
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t114.
      t113 = t114.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t116.
      t115 = t116.
      DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t118.
      t117 = t118.
      t96 = NEW zcl_lnt_irule_metadata( i_key = t97 i_title = t99 i_short_description = t101 i_bad_example = t109 i_good_example = t111 i_extended_information = t103 i_tags = t113 i_pragma = t115 i_pseudo_comment = t117 ).
      CREATE OBJECT t96->zlnt_view_ownkeys_b0e8086400eb.
      t96->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
      ENDIF.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t120 ).
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t121 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t96->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t96->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t122 ).
      ENDIF.
      CREATE OBJECT t96->zlnt_json_ownkeys_70e5fd461788.
      t96->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t123) = |key|.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
      ENDIF.
      DATA(t125) = |title|.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
      ENDIF.
      DATA(t127) = |shortDescription|.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
      ENDIF.
      DATA(t129) = |extendedInformation|.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      IF t96->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t96->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
      ENDIF.
      t95 = t96->key.
      DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t132) = me->conf.
      t131 = t132->zlnt_view_read_sr_15c06369f827( ).
      DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t133.
      t81 = zcl_lnt_issue=>at_position( i_file = t82 i_start = t93 i_message_26cb = t94 i_key = t95 i_severity = t131 i_fix = t133 ).
      t80 = t81.
      DATA(t134) = t2.
      DATA(t135) = t80.
      t134->load( ).
      APPEND t135 TO t134->items.
      t134->save( ).
    ENDIF.
    DATA(t136) = t2.
    result = t136.

  ENDMETHOD.

  METHOD base.
    DATA(t1) = i_full.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = t1.
    DATA(t5) = |/|.
    DATA(t6) = strlen( t4 ).
    DATA t7 TYPE i.
    DATA(t8) = VALUE i( ).
    DATA(t9) = VALUE i( ).
    DATA t10 TYPE i.
    DATA(t11) = VALUE string( ).
    CREATE OBJECT t3.
    t10 = strlen( t5 ).
    t7 = 0.
    IF t10 = 0.
      WHILE t7 < t6.
        t11 = t4+t7(1).
        APPEND t11 TO t3->items.
        t7 = t7 + 1.
      ENDWHILE.
    ELSE.
      WHILE t7 <= t6.
        FIND FIRST OCCURRENCE OF t5 IN SECTION OFFSET t7 OF t4 MATCH OFFSET t8.
        IF sy-subrc = 0.
          t9 = t8 - t7.
        ELSE.
          t8 = -1.
          t9 = t6 - t7.
        ENDIF.
        CLEAR t11.
        IF t9 > 0.
          t11 = t4+t7(t9).
        ENDIF.
        APPEND t11 TO t3->items.
        IF t8 < 0.
          EXIT.
        ENDIF.
        t7 = t8 + t10.
      ENDWHILE.
    ENDIF.
    t2 = t3.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t13) = t2.
    t12 = t13->pop( ).
    DATA t14 TYPE string.
    DATA(t15) = t2.
    DATA(t16) = |/|.
    DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t17->has = abap_true.
    t17->value = t16.
    t14 = t15->join( p0 = t17 ).
    result = t14.

  ENDMETHOD.

  METHOD find_folder.
    DATA(t1) = i_base.
    DATA t2 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t4.
    DATA(t5) = me->reg.
    DATA(t6) = |SMIM|.
    t4 = t5->get_objects_by_type( i_type_9913 = t6 ).
    t3 = t4->iterate( ).
    t2 = t3.
    DO.
      DATA(t7) = abap_true.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t8 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t9.
      DATA(t10) = t2.
      t9 = t10->next( ).
      t8 = t9.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t8.
      t11 = t12->done.
      IF t11 = abap_true.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_object.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_object.
      CLEAR t15.
      DATA(t16) = t8.
      t15 = t16->value.
      t14 = t15.
      t13 = t14.
      DATA t17 TYPE REF TO zcl_lnt_mime_object.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_mime_object.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_mime_object.
      CLEAR t19.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = abap_false.
      t20 = t21.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA t23 TYPE REF TO zcl_lnt_mime_object.
          CLEAR t23.
          DATA(t24) = t13.
          t23 ?= t24.
          t19 = t23.
          DATA(t25) = abap_true.
          t20 = t25.
        CATCH cx_root INTO t22.
          DATA(t26) = VALUE abap_bool( ).
          DATA(t27) = t20.
          t26 = xsdbool( t27 = abap_false ).
          IF t26 = abap_true.
            DATA(t28) = t2.
            t28->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t20.
      t29 = xsdbool( t30 = abap_false ).
      IF t29 = abap_true.
        DATA(t31) = t2.
        t31->close( ).
      ENDIF.
      DATA(t32) = t19.
      t18 = t32.
      t17 = t18.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = abap_false.
      t35 = t36.
      DATA t37 TYPE REF TO cx_root.
      CLEAR t37.
      TRY.
          DATA(t38) = VALUE abap_bool( ).
          DATA(t39) = VALUE abap_bool( ).
          DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t40.
          DATA(t41) = abap_true.
          IF t41 = abap_true.
            DATA(t42) = t1.
            DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t43->has = abap_true.
            t43->value = t42.
            t40 = t43.
          ELSE.
            DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t44.
            t40 = t44.
          ENDIF.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t45.
          DATA t46 TYPE REF TO zcl_lnt_mime_object.
          CLEAR t46.
          DATA(t47) = t17.
          t46 = t47.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          DATA t49 TYPE REF TO zcl_lnt_iparse_result.
          CLEAR t49.
          DATA(t50) = t46.
          t49 = t50->pr_in_src_obj_mm_obj_ts_mm_obj( ).
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t51.
          DATA t52 TYPE REF TO zcl_lnt_shape_c0acc5f0.
          CLEAR t52.
          DATA t53 TYPE REF TO zcl_lnt_shape_c0acc5f0.
          CLEAR t53.
          DATA(t54) = t46.
          t53 = t54->parsed_xml.
          t52 = t53.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = t52.
          IF t57 IS INITIAL.
            t56 = abap_true.
          ENDIF.
          IF t56 = abap_true.
            DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t58.
            t55 = t58.
          ELSE.
            DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t59.
            DATA t60 TYPE REF TO zcl_lnt_shape_c0acc5f0.
            CLEAR t60.
            DATA(t61) = t52.
            t60 = t61.
            t59 = t60->url_a050.
            t55 = t59.
          ENDIF.
          t51 = t55.
          t48 = t51.
          t45 = t48.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE abap_bool( ).
          IF t40 IS BOUND.
            t62 = t40->has.
          ENDIF.
          IF t45 IS BOUND.
            t63 = t45->has.
          ENDIF.
          IF t62 = t63.
            IF t62 = abap_false.
              t39 = abap_true.
            ELSEIF t40->value = t45->value.
              t39 = abap_true.
            ENDIF.
          ENDIF.
          t38 = t39.
          IF t39 = abap_true.
            DATA(t64) = VALUE abap_bool( ).
            DATA(t65) = VALUE abap_bool( ).
            DATA t66 TYPE REF TO zcl_lnt_mime_object.
            CLEAR t66.
            DATA(t67) = t17.
            t66 = t67.
            DATA(t68) = VALUE abap_bool( ).
            DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t69.
            DATA t70 TYPE REF TO zcl_lnt_shape_c0acc5f0.
            CLEAR t70.
            DATA t71 TYPE REF TO zcl_lnt_shape_c0acc5f0.
            CLEAR t71.
            DATA(t72) = t66.
            t71 = t72->parsed_xml.
            t70 = t71.
            DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t73.
            DATA(t74) = VALUE abap_bool( ).
            DATA(t75) = t70.
            IF t75 IS INITIAL.
              t74 = abap_true.
            ENDIF.
            IF t74 = abap_true.
              DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t76.
              t73 = t76.
            ELSE.
              DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t77.
              DATA t78 TYPE REF TO zcl_lnt_shape_c0acc5f0.
              CLEAR t78.
              DATA(t79) = t70.
              t78 = t79.
              t77 = t78->folder_6de9.
              t73 = t77.
            ENDIF.
            t69 = t73.
            DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t80.
            DATA(t81) = abap_true.
            IF t81 = abap_true.
              DATA(t82) = |X|.
              DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t83->has = abap_true.
              t83->value = t82.
              t80 = t83.
            ELSE.
              DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t84.
              t80 = t84.
            ENDIF.
            DATA(t85) = VALUE abap_bool( ).
            DATA(t86) = VALUE abap_bool( ).
            IF t69 IS BOUND.
              t85 = t69->has.
            ENDIF.
            IF t80 IS BOUND.
              t86 = t80->has.
            ENDIF.
            IF t85 = t86.
              IF t85 = abap_false.
                t68 = abap_true.
              ELSEIF t69->value = t80->value.
                t68 = abap_true.
              ENDIF.
            ENDIF.
            t65 = t68.
            DATA(t87) = abap_true.
            t64 = xsdbool( t65 = t87 ).
            t38 = t64.
          ENDIF.
          t34 = t38.
          DATA(t88) = abap_true.
          t35 = t88.
        CATCH cx_root INTO t37.
          DATA(t89) = VALUE abap_bool( ).
          DATA(t90) = t35.
          t89 = xsdbool( t90 = abap_false ).
          IF t89 = abap_true.
            DATA(t91) = t2.
            t91->close( ).
          ENDIF.
          RAISE EXCEPTION t37.
      ENDTRY.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = t35.
      t92 = xsdbool( t93 = abap_false ).
      IF t92 = abap_true.
        DATA(t94) = t2.
        t94->close( ).
      ENDIF.
      DATA(t95) = t34.
      t33 = t95.
      IF t33 = abap_true.
        DATA(t96) = VALUE abap_bool( ).
        DATA(t97) = abap_true.
        t96 = t97.
        DATA(t98) = t2.
        t98->close( ).
        DATA(t99) = t96.
        result = t99.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t100) = abap_false.
    result = t100.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_smim_consistency_conf( me->gt_cn_in_sr_rl_sm_cn_ts_sm_cns( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_smim_consistency_conf( me->gt_cn_in_sr_rl_sm_cn_ts_sm_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_smim_consistency_conf.
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
        t2 = NEW zcl_lnt_smim_consistency_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sm_cn_ts_sm_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_smim_consistency.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_smm_cns_ts_smm_cns( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1704_87980d34371a.
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
