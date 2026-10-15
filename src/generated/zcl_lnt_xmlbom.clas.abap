* TS: src/rules/xml_bom.ts:13:1 XMLBOM
CLASS zcl_lnt_xmlbom DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_xmlbom_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_src_rls_xml_bm_ts_xml RETURNING VALUE(result) TYPE REF TO zcl_lnt_xmlbom_conf.
    METHODS st_cn_in_src_rls_xml_bm_ts_xml IMPORTING i_conf TYPE REF TO zcl_lnt_xmlbom_conf.
    METHODS int_ins_src_rls_xml_bm_ts_xmlb IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_xmlbom.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS create_issue IMPORTING i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
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
CLASS zcl_lnt_xmlbom IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_xmlbom_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |xml_bom|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |XML UTF-8 byte order mark|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that XML files start with a UTF-8 byte order mark|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Checks that each XML file has a UTF-8 byte order mark (BOM) |.
      t11 = t11 && |at its beginning.|.
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
      DATA(t21) = |Syntax|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Quickfix|.
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
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_src_rls_xml_bm_ts_xml.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_src_rls_xml_bm_ts_xml.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD int_ins_src_rls_xml_bm_ts_xmlb.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zif_lnt_file.
    DATA t3 TYPE REF TO zif_lnt_file.
    DATA(t4) = t1.
    t3 = t4->get_xml_file( ).
    t2 = t3.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zif_lnt_file.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    t5 = t6.
    IF t6 = abap_false.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE string.
      DATA t15 TYPE REF TO zif_lnt_file.
      DATA(t16) = t2.
      t15 = t16.
      t14 = t15->get_raw( ).
      DATA(t17) = ||.
      DATA t18 TYPE c LENGTH 1.
      CLEAR t18.
      t18 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t17 t18 INTO t17 RESPECTING BLANKS.
      DATA(t19) = strlen( t14 ).
      DATA t20 TYPE i.
      DATA(t21) = VALUE i( ).
      DATA(t22) = VALUE string( ).
      t20 = strlen( t17 ).
      IF t20 = 0.
        t13 = abap_true.
      ELSEIF t20 <= t19.
        t21 = 0.
        t22 = t14+t21(t20).
        IF t22 = t17.
          t13 = abap_true.
        ENDIF.
      ENDIF.
      t5 = t13.
    ENDIF.
    IF t5 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA(t27) = t25.
    DATA t28 TYPE REF TO zcl_lnt_issue.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_file.
    DATA t30 TYPE REF TO zif_lnt_file.
    DATA(t31) = t2.
    t30 = t31.
    t29 = t30.
    DATA t32 TYPE REF TO zcl_lnt_issue.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_position.
    DATA t34 TYPE REF TO zcl_lnt_position.
    DATA(t35) = CONV f( 1 ).
    DATA(t36) = CONV f( 1 ).
    DATA(t37) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t37->has = abap_true.
    t37->value = t36.
    t34 = NEW zcl_lnt_position( i_row = t35 i_col = t37 ).
    t33 = t34.
    DATA t38 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t39 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t40) = t29.
    DATA(t41) = t33.
    DATA(t42) = ||.
    DATA t43 TYPE c LENGTH 1.
    CLEAR t43.
    t43 = cl_abap_conv_in_ce=>uccpi( 65279 ).
    CONCATENATE t42 t43 INTO t42 RESPECTING BLANKS.
    t39 = zcl_lnt_edit_helper=>insert_at( i_file = t40 i_pos = t41 i_text = t42 ).
    t38 = t39.
    DATA t44 TYPE REF TO zcl_lnt_issue.
    CLEAR t44.
    DATA(t45) = t29.
    DATA(t46) = t33.
    DATA(t47) = t33.
    DATA(t48) = |XML file must start with a UTF-8 byte order mark|.
    DATA(t49) = VALUE string( ).
    DATA t50 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t50.
    DATA t51 TYPE string.
    DATA(t52) = |xml_bom|.
    t51 = t52.
    DATA t53 TYPE string.
    DATA(t54) = |XML UTF-8 byte order mark|.
    t53 = t54.
    DATA t55 TYPE string.
    DATA(t56) = |Checks that XML files start with a UTF-8 byte order mark|.
    t55 = t56.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    DATA(t59) = abap_true.
    IF t59 = abap_true.
      DATA(t60) = |Checks that each XML file has a UTF-8 byte order mark (BOM) |.
      t60 = t60 && |at its beginning.|.
      DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t61->has = abap_true.
      t61->value = t60.
      t58 = t61.
    ELSE.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      t58 = t62.
    ENDIF.
    t57 = t58.
    DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t64.
    DATA(t65) = abap_true.
    IF t65 = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t68.
      t67 = t68.
      DATA(t69) = t67.
      DATA(t70) = |Syntax|.
      t69->load( ).
      APPEND t70 TO t69->items.
      t69->save( ).
      DATA(t71) = t67.
      DATA(t72) = |Quickfix|.
      t71->load( ).
      APPEND t72 TO t71->items.
      t71->save( ).
      DATA(t73) = t67.
      t66 = t73.
      t64 = t66.
    ELSE.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t74.
      t64 = t74.
    ENDIF.
    t63 = t64.
    DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t76.
    t75 = t76.
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t78.
    t77 = t78.
    DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t80.
    t79 = t80.
    DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    t81 = t82.
    t50 = NEW zcl_lnt_irule_metadata( i_key = t51 i_title = t53 i_short_description = t55 i_bad_example = t75 i_good_example = t77 i_extended_information = t57 i_tags = t63 i_pragma = t79 i_pseudo_comment = t81 ).
    CREATE OBJECT t50->zlnt_view_ownkeys_b0e8086400eb.
    t50->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t83 ).
    ENDIF.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t84 ).
    ENDIF.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t85 ).
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t86 ).
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    IF t50->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t50->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t87 ).
    ENDIF.
    CREATE OBJECT t50->zlnt_json_ownkeys_70e5fd461788.
    t50->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t88) = |key|.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
    ENDIF.
    DATA(t90) = |title|.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t90 p1 = t91 ).
    ENDIF.
    DATA(t92) = |shortDescription|.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
    ENDIF.
    DATA(t94) = |extendedInformation|.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
    ENDIF.
    DATA(t96) = |tags|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF t50->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t50->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
    ENDIF.
    t49 = t50->key.
    DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t99) = me->conf.
    t98 = t99->zlnt_view_read_sr_15c06369f827( ).
    DATA t100 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t100.
    DATA(t101) = abap_true.
    IF t101 = abap_true.
      DATA(t102) = t38.
      t100 = t102.
    ELSE.
      DATA t103 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t103.
      t100 = t103.
    ENDIF.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t104.
    t44 = zcl_lnt_issue=>at_range( i_file = t45 i_start = t46 i_end = t47 i_message_26cb = t48 i_key = t49 i_severity = t98 i_fix = t100 i_alternative_fixes = t104 ).
    t32 = t44.
    t28 = t32.
    t27->load( ).
    APPEND t28 TO t27->items.
    t27->save( ).
    DATA(t105) = t25.
    t24 = t105.
    result = t24.

  ENDMETHOD.

  METHOD create_issue.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA(t4) = CONV f( 1 ).
    DATA(t5) = CONV f( 1 ).
    DATA(t6) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t6->has = abap_true.
    t6->value = t5.
    t3 = NEW zcl_lnt_position( i_row = t4 i_col = t6 ).
    t2 = t3.
    DATA t7 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t8 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t9) = t1.
    DATA(t10) = t2.
    DATA(t11) = ||.
    DATA t12 TYPE c LENGTH 1.
    CLEAR t12.
    t12 = cl_abap_conv_in_ce=>uccpi( 65279 ).
    CONCATENATE t11 t12 INTO t11 RESPECTING BLANKS.
    t8 = zcl_lnt_edit_helper=>insert_at( i_file = t9 i_pos = t10 i_text = t11 ).
    t7 = t8.
    DATA t13 TYPE REF TO zcl_lnt_issue.
    CLEAR t13.
    DATA(t14) = t1.
    DATA(t15) = t2.
    DATA(t16) = t2.
    DATA(t17) = |XML file must start with a UTF-8 byte order mark|.
    DATA(t18) = VALUE string( ).
    DATA t19 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t19.
    DATA t20 TYPE string.
    DATA(t21) = |xml_bom|.
    t20 = t21.
    DATA t22 TYPE string.
    DATA(t23) = |XML UTF-8 byte order mark|.
    t22 = t23.
    DATA t24 TYPE string.
    DATA(t25) = |Checks that XML files start with a UTF-8 byte order mark|.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |Checks that each XML file has a UTF-8 byte order mark (BOM) |.
      t29 = t29 && |at its beginning.|.
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
    DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t37.
      t36 = t37.
      DATA(t38) = t36.
      DATA(t39) = |Syntax|.
      t38->load( ).
      APPEND t39 TO t38->items.
      t38->save( ).
      DATA(t40) = t36.
      DATA(t41) = |Quickfix|.
      t40->load( ).
      APPEND t41 TO t40->items.
      t40->save( ).
      DATA(t42) = t36.
      t35 = t42.
      t33 = t35.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t43.
      t33 = t43.
    ENDIF.
    t32 = t33.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t47.
    t46 = t47.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    t48 = t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t51.
    t50 = t51.
    t19 = NEW zcl_lnt_irule_metadata( i_key = t20 i_title = t22 i_short_description = t24 i_bad_example = t44 i_good_example = t46 i_extended_information = t26 i_tags = t32 i_pragma = t48 i_pseudo_comment = t50 ).
    CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
    t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t56 ).
    ENDIF.
    CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
    t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t57) = |key|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |title|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |shortDescription|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |extendedInformation|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |tags|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    t18 = t19->key.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t68) = me->conf.
    t67 = t68->zlnt_view_read_sr_15c06369f827( ).
    DATA t69 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t69.
    DATA(t70) = abap_true.
    IF t70 = abap_true.
      DATA(t71) = t7.
      t69 = t71.
    ELSE.
      DATA t72 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t72.
      t69 = t72.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    t13 = zcl_lnt_issue=>at_range( i_file = t14 i_start = t15 i_end = t16 i_message_26cb = t17 i_key = t18 i_severity = t67 i_fix = t69 i_alternative_fixes = t73 ).
    result = t13.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_xmlbom_conf( me->gt_cn_in_src_rls_xml_bm_ts_xml( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_xmlbom_conf( me->gt_cn_in_src_rls_xml_bm_ts_xml( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_xmlbom_conf.
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
        t2 = NEW zcl_lnt_xmlbom_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_src_rls_xml_bm_ts_xml( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_xmlbom.
    DATA(t3) = t1.
    t2 = me->int_ins_src_rls_xml_bm_ts_xmlb( i_reg_d009 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1779_f72fd60a552a.
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
