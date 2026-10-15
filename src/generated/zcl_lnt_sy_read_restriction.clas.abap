* TS: src/rules/sy_read_restriction.ts:45:1 SyReadRestriction
CLASS zcl_lnt_sy_read_restriction DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs RETURNING VALUE(result) TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs IMPORTING i_conf TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
    METHODS r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_obj_ac26 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_read_restriction IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_sy_rd_rstrctn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |sy_read_restriction|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |SY field read restriction|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Finds reads of SY fields not allowed in the current language|.
    t7 = t7 && | version|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      DATA(t14) = |In ABAP Cloud, only 17 system fields may be read; reads of o|.
      t14 = t14 && |ther fields produce a warning.\n|.
      DATA(t15) = |In ABAP for Key Users, only 5 system fields may be read:\n|.
      DATA(t16) = strlen( t14 ).
      t13 = |{ t14 }{ t15 }|.
      DATA(t17) = |SY-DBCNT, SY-FDPOS, SY-INDEX, SY-SUBRC, SY-TABIX.\n|.
      DATA(t18) = strlen( t13 ).
      t12 = |{ t13 }{ t17 }|.
      DATA(t19) = |https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/A|.
      t19 = t19 && |BENSYSTEM_FIELDS.html|.
      DATA(t20) = strlen( t12 ).
      t11 = |{ t12 }{ t19 }|.
      DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t21->has = abap_true.
      t21->value = t11.
      t9 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      t9 = t22.
    ENDIF.
    t8 = t9.
    DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t24.
    DATA(t25) = abap_true.
    IF t25 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t28.
      t27 = t28.
      DATA(t29) = t27.
      DATA(t30) = |SingleFile|.
      t29->load( ).
      APPEND t30 TO t29->items.
      t29->save( ).
      DATA(t31) = t27.
      t26 = t31.
      t24 = t26.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t32.
      t24 = t32.
    ENDIF.
    t23 = t24.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA(t35) = abap_true.
    IF t35 = abap_true.
      DATA(t36) = |lv = sy-uname.|.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = t36.
      t34 = t37.
    ELSE.
      DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t38.
      t34 = t38.
    ENDIF.
    t33 = t34.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t40.
    DATA(t41) = abap_true.
    IF t41 = abap_true.
      DATA(t42) = |IF sy-subrc = 0. ENDIF.|.
      DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t43->has = abap_true.
      t43->value = t42.
      t40 = t43.
    ELSE.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      t40 = t44.
    ENDIF.
    t39 = t40.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t46.
    t45 = t46.
    DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t48.
    t47 = t48.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t33 i_good_example = t39 i_extended_information = t8 i_tags = t23 i_pragma = t45 i_pseudo_comment = t47 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t55 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t56) = |key|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    DATA(t58) = |title|.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t58 p1 = t59 ).
    ENDIF.
    DATA(t60) = |shortDescription|.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t60 p1 = t61 ).
    ENDIF.
    DATA(t62) = |extendedInformation|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t62 p1 = t63 ).
    ENDIF.
    DATA(t64) = |tags|.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t64 p1 = t65 ).
    ENDIF.
    DATA(t66) = |badExample|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
    ENDIF.
    DATA(t68) = |goodExample|.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t68 p1 = t69 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_ac26.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zif_lnt_configuration.
    DATA(t8) = me->reg.
    t7 = t8->get_config( ).
    t6 = t7->get_language_version( ).
    t5 = t6.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t5.
    DATA(t11) = |Normal|.
    t9 = xsdbool( t10 = t11 ).
    IF t9 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      result = t12.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    CLEAR t14.
    DATA t15 TYPE abap_bool.
    DATA(t16) = t5.
    DATA(t17) = |KeyUser|.
    t15 = xsdbool( t16 = t17 ).
    IF t15 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t18.
      IF zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_56bea28f17d9 = abap_false.
        zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_d81bf6eacb03( ).
      ENDIF.
      t18 = zcl_lnt_sy_rd_rstrctn_mdl=>keyuser_allowed.
      t14 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t19.
      IF zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_56bea28f17d9 = abap_false.
        zcl_lnt_sy_rd_rstrctn_mdl=>zlnt_builtin_init_d81bf6eacb03( ).
      ENDIF.
      t19 = zcl_lnt_sy_rd_rstrctn_mdl=>cloud_allowed.
      t14 = t19.
    ENDIF.
    t13 = t14.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE abap_bool.
    DATA(t23) = t5.
    DATA(t24) = |KeyUser|.
    t22 = xsdbool( t23 = t24 ).
    IF t22 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t26) = me->conf.
      t25 = t26->zlnt_view_read_sr_15c06369f827( ).
      t21 = t25.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA(t29) = |Warning|.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t29.
        t27 = t30.
      ELSE.
        DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t31.
        t27 = t31.
      ENDIF.
      t21 = t27.
    ENDIF.
    t20 = t21.
    DATA t32 TYPE REF TO zlnt_runtime_set__5db31b54602e.
    DATA(t33) = NEW zlnt_runtime_set__5db31b54602e( ).
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_structure_node.
    DATA t38 TYPE REF TO zcl_lnt_structure_node.
    DATA t39 TYPE REF TO zcl_lnt_abap_file.
    DATA(t40) = t1.
    t39 = t40.
    DATA t41 TYPE REF TO zcl_lnt_structure_node.
    DATA(t42) = t39.
    t41 = t42->structure.
    t38 = t41.
    t37 = t38.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = t37.
    IF t45 IS INITIAL.
      t44 = abap_true.
    ENDIF.
    IF t44 = abap_true.
      DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t46.
      t43 = t46.
    ELSE.
      DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t48 TYPE REF TO zcl_lnt_structure_node.
      DATA(t49) = t37.
      t48 = t49.
      DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t47 = t48->find_all_expressions_recursive( i_type_9913 = t50 ).
      t43 = t47.
    ENDIF.
    t36 = t43.
    t35 = t36.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE abap_bool.
    DATA(t53) = t35.
    t52 = xsdbool( t53 IS BOUND ).
    IF t52 = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = t35.
      t54 = t55.
      t51 = t54.
    ELSE.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t56.
      t51 = t56.
    ENDIF.
    t34 = t51.
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t57.
    DATA t58 TYPE REF TO object.
    CLEAR t58.
    DATA(t59) = VALUE i( ).
    DO.
      t34->load( ).
      IF t59 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t58.
      READ TABLE t34->items INDEX t59 + 1 INTO t58.
      t59 = t59 + 1.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      CLEAR t57.
      IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t60 ?= t58.
        DATA t61 TYPE REF TO object.
        t61 = t60->as_ref( ).
        t57 ?= t61.
      ELSE.
        t57 ?= t58.
      ENDIF.
      DATA(t62) = VALUE string( ).
      DATA t63 TYPE string.
      DATA t64 TYPE string.
      DATA(t65) = t57.
      t64 = t65->concat_tokens( ).
      DATA(t66) = strlen( t64 ).
      t63 = t64.
      IF t63 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t63 TO UPPER CASE.
      ELSE.
        t63 = zlnt_runtime_uppe_91169605024d=>full( t63 ).
      ENDIF.
      t62 = t63.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = t62.
      DATA(t70) = |SY-|.
      DATA(t71) = strlen( t69 ).
      DATA t72 TYPE i.
      DATA(t73) = VALUE i( ).
      DATA(t74) = VALUE string( ).
      t72 = strlen( t70 ).
      IF t72 = 0.
        t68 = abap_true.
      ELSEIF t72 <= t71.
        t73 = 0.
        t74 = t69+t73(t72).
        IF t74 = t70.
          t68 = abap_true.
        ENDIF.
      ENDIF.
      t67 = xsdbool( t68 = abap_false ).
      IF t67 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t75 TYPE REF TO zlnt_runtime_set__5db31b54602e.
      DATA(t76) = t32.
      DATA t77 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t78) = t57.
      t77 = t78->get_first_token( ).
      t75 = t76->add( p0 = t77 ).
    ENDDO.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t81) = t1.
    DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t82.
    t80 = t81->get_tokens( i_with_pragmas = t82 ).
    t79 = t80.
    DATA t83 TYPE f.
    DATA(t84) = CONV f( 0 ).
    t83 = t84.
    DO.
      DATA t85 TYPE abap_bool.
      DATA t86 TYPE f.
      DATA(t87) = t83.
      DATA(t88) = CONV f( 2 ).
      t86 = t87 + t88.
      DATA t89 TYPE f.
      DATA t90 TYPE i.
      DATA(t91) = t79.
      t91->load( ).
      t90 = lines( t91->items ).
      t89 = t90.
      t85 = xsdbool( t86 < t89 ).
      IF t85 = abap_false.
        EXIT.
      ENDIF.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t92.
      DATA t93 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t93.
      DATA(t94) = t79.
      DATA(t95) = VALUE i( ).
      DATA(t96) = t83.
      IF t96 > range_i32_upper.
        t95 = range_i32_upper.
      ELSEIF t96 < range_i32_lower.
        t95 = range_i32_lower.
      ELSE.
        t95 = trunc( t96 ).
      ENDIF.
      t95 = t95 + 1.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      t94->load( ).
      CLEAR t97.
      READ TABLE t94->items INDEX t95 INTO t97.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      CLEAR t93.
      IF t97 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t98 ?= t97.
        DATA t99 TYPE REF TO object.
        t99 = t98->as_ref( ).
        t93 ?= t99.
      ELSE.
        t93 ?= t97.
      ENDIF.
      t92 = t93.
      DATA t100 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t100.
      DATA t101 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t101.
      DATA(t102) = t79.
      DATA(t103) = VALUE i( ).
      DATA t104 TYPE f.
      DATA(t105) = t83.
      DATA(t106) = CONV f( 1 ).
      t104 = t105 + t106.
      IF t104 > range_i32_upper.
        t103 = range_i32_upper.
      ELSEIF t104 < range_i32_lower.
        t103 = range_i32_lower.
      ELSE.
        t103 = trunc( t104 ).
      ENDIF.
      t103 = t103 + 1.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      t102->load( ).
      CLEAR t107.
      READ TABLE t102->items INDEX t103 INTO t107.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      CLEAR t101.
      IF t107 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t108 ?= t107.
        DATA t109 TYPE REF TO object.
        t109 = t108->as_ref( ).
        t101 ?= t109.
      ELSE.
        t101 ?= t107.
      ENDIF.
      t100 = t101.
      DATA t110 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t110.
      DATA t111 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t111.
      DATA(t112) = t79.
      DATA(t113) = VALUE i( ).
      DATA t114 TYPE f.
      DATA(t115) = t83.
      DATA(t116) = CONV f( 2 ).
      t114 = t115 + t116.
      IF t114 > range_i32_upper.
        t113 = range_i32_upper.
      ELSEIF t114 < range_i32_lower.
        t113 = range_i32_lower.
      ELSE.
        t113 = trunc( t114 ).
      ENDIF.
      t113 = t113 + 1.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      t112->load( ).
      CLEAR t117.
      READ TABLE t112->items INDEX t113 INTO t117.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      CLEAR t111.
      IF t117 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t118 ?= t117.
        DATA t119 TYPE REF TO object.
        t119 = t118->as_ref( ).
        t111 ?= t119.
      ELSE.
        t111 ?= t117.
      ENDIF.
      t110 = t111.
      DATA(t120) = VALUE abap_bool( ).
      DATA t121 TYPE string.
      DATA t122 TYPE string.
      DATA t123 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t124) = t92.
      t123 = t124.
      DATA t125 TYPE string.
      DATA(t126) = t123.
      t125 = t126->str.
      t122 = t125.
      DATA(t127) = strlen( t122 ).
      t121 = t122.
      IF t121 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t121 TO UPPER CASE.
      ELSE.
        t121 = zlnt_runtime_uppe_91169605024d=>full( t121 ).
      ENDIF.
      DATA(t128) = |SY|.
      t120 = xsdbool( t121 <> t128 ).
      IF t120 = abap_true.
        DATA t129 TYPE f.
        DATA(t130) = t83.
        DATA(t131) = CONV f( 1 ).
        t129 = t130 + t131.
        t83 = t129.
        CONTINUE.
      ENDIF.
      DATA t132 TYPE abap_bool.
      DATA t133 TYPE string.
      DATA t134 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t135) = t100.
      t134 = t135.
      DATA t136 TYPE string.
      DATA(t137) = t134.
      t136 = t137->str.
      t133 = t136.
      DATA(t138) = |-|.
      t132 = xsdbool( t133 <> t138 ).
      IF t132 = abap_true.
        DATA t139 TYPE f.
        DATA(t140) = t83.
        DATA(t141) = CONV f( 1 ).
        t139 = t140 + t141.
        t83 = t139.
        CONTINUE.
      ENDIF.
      DATA(t142) = VALUE abap_bool( ).
      DATA(t143) = VALUE abap_bool( ).
      DATA t144 TYPE abap_bool.
      DATA t145 TYPE abap_bool.
      DATA t146 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t147 TYPE REF TO zcl_lnt_position.
      DATA t148 TYPE REF TO zcl_lnt_position.
      DATA t149 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t150) = t92.
      t149 = t150.
      DATA t151 TYPE REF TO zcl_lnt_position.
      DATA t152 TYPE f.
      DATA t153 TYPE REF TO zcl_lnt_position.
      DATA t154 TYPE REF TO zcl_lnt_position.
      DATA(t155) = t149.
      t154 = t155->start.
      t153 = t154.
      DATA t156 TYPE f.
      DATA(t157) = t153.
      t156 = t157->row.
      t152 = t156.
      DATA t158 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t159 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t160 TYPE REF TO zcl_lnt_position.
      DATA t161 TYPE REF TO zcl_lnt_position.
      DATA(t162) = t149.
      t161 = t162->start.
      t160 = t161.
      DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t164) = t160.
      t163 = t164->col.
      t159 = t163.
      DATA t165 TYPE f.
      DATA t166 TYPE i.
      DATA t167 TYPE string.
      DATA(t168) = t149.
      t167 = t168->str.
      DATA(t169) = strlen( t167 ).
      t166 = t169.
      t165 = t166.
      DATA(t170) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t170->has = abap_true.
      t170->value = t165.
      t158 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t159 right = t170 op = `+` ).
      t151 = NEW zcl_lnt_position( i_row = t152 i_col = t158 ).
      t148 = t151.
      t147 = t148.
      DATA t171 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t172) = t147.
      t171 = t172->col.
      t146 = t171.
      DATA t173 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t174 TYPE REF TO zcl_lnt_position.
      DATA t175 TYPE REF TO zcl_lnt_position.
      DATA t176 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t177) = t100.
      t176 = t177.
      DATA t178 TYPE REF TO zcl_lnt_position.
      DATA(t179) = t176.
      t178 = t179->start.
      t175 = t178.
      t174 = t175.
      DATA t180 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t181) = t174.
      t180 = t181->col.
      t173 = t180.
      t145 = zlnt_runtime_numb_290eb04a9758=>compare( left = t146 right = t173 op = `!=` ).
      t144 = t145.
      IF t145 = abap_false.
        DATA t182 TYPE abap_bool.
        DATA t183 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t184 TYPE REF TO zcl_lnt_position.
        DATA t185 TYPE REF TO zcl_lnt_position.
        DATA t186 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t187) = t100.
        t186 = t187.
        DATA t188 TYPE REF TO zcl_lnt_position.
        DATA t189 TYPE f.
        DATA t190 TYPE REF TO zcl_lnt_position.
        DATA t191 TYPE REF TO zcl_lnt_position.
        DATA(t192) = t186.
        t191 = t192->start.
        t190 = t191.
        DATA t193 TYPE f.
        DATA(t194) = t190.
        t193 = t194->row.
        t189 = t193.
        DATA t195 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t196 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t197 TYPE REF TO zcl_lnt_position.
        DATA t198 TYPE REF TO zcl_lnt_position.
        DATA(t199) = t186.
        t198 = t199->start.
        t197 = t198.
        DATA t200 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t201) = t197.
        t200 = t201->col.
        t196 = t200.
        DATA t202 TYPE f.
        DATA t203 TYPE i.
        DATA t204 TYPE string.
        DATA(t205) = t186.
        t204 = t205->str.
        DATA(t206) = strlen( t204 ).
        t203 = t206.
        t202 = t203.
        DATA(t207) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t207->has = abap_true.
        t207->value = t202.
        t195 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t196 right = t207 op = `+` ).
        t188 = NEW zcl_lnt_position( i_row = t189 i_col = t195 ).
        t185 = t188.
        t184 = t185.
        DATA t208 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t209) = t184.
        t208 = t209->col.
        t183 = t208.
        DATA t210 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t211 TYPE REF TO zcl_lnt_position.
        DATA t212 TYPE REF TO zcl_lnt_position.
        DATA t213 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t214) = t110.
        t213 = t214.
        DATA t215 TYPE REF TO zcl_lnt_position.
        DATA(t216) = t213.
        t215 = t216->start.
        t212 = t215.
        t211 = t212.
        DATA t217 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t218) = t211.
        t217 = t218->col.
        t210 = t217.
        t182 = zlnt_runtime_numb_290eb04a9758=>compare( left = t183 right = t210 op = `!=` ).
        t144 = t182.
      ENDIF.
      t143 = t144.
      IF t144 = abap_false.
        DATA t219 TYPE abap_bool.
        DATA t220 TYPE f.
        DATA t221 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t222) = t92.
        t221 = t222.
        DATA t223 TYPE f.
        DATA t224 TYPE REF TO zcl_lnt_position.
        DATA t225 TYPE REF TO zcl_lnt_position.
        DATA(t226) = t221.
        t225 = t226->start.
        t224 = t225.
        DATA t227 TYPE f.
        DATA(t228) = t224.
        t227 = t228->row.
        t223 = t227.
        t220 = t223.
        DATA t229 TYPE f.
        DATA t230 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t231) = t100.
        t230 = t231.
        DATA t232 TYPE f.
        DATA t233 TYPE REF TO zcl_lnt_position.
        DATA t234 TYPE REF TO zcl_lnt_position.
        DATA(t235) = t230.
        t234 = t235->start.
        t233 = t234.
        DATA t236 TYPE f.
        DATA(t237) = t233.
        t236 = t237->row.
        t232 = t236.
        t229 = t232.
        t219 = xsdbool( t220 <> t229 ).
        t143 = t219.
      ENDIF.
      t142 = t143.
      IF t143 = abap_false.
        DATA t238 TYPE abap_bool.
        DATA t239 TYPE f.
        DATA t240 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t241) = t100.
        t240 = t241.
        DATA t242 TYPE f.
        DATA t243 TYPE REF TO zcl_lnt_position.
        DATA t244 TYPE REF TO zcl_lnt_position.
        DATA(t245) = t240.
        t244 = t245->start.
        t243 = t244.
        DATA t246 TYPE f.
        DATA(t247) = t243.
        t246 = t247->row.
        t242 = t246.
        t239 = t242.
        DATA t248 TYPE f.
        DATA t249 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t250) = t110.
        t249 = t250.
        DATA t251 TYPE f.
        DATA t252 TYPE REF TO zcl_lnt_position.
        DATA t253 TYPE REF TO zcl_lnt_position.
        DATA(t254) = t249.
        t253 = t254->start.
        t252 = t253.
        DATA t255 TYPE f.
        DATA(t256) = t252.
        t255 = t256->row.
        t251 = t255.
        t248 = t251.
        t238 = xsdbool( t239 <> t248 ).
        t142 = t238.
      ENDIF.
      IF t142 = abap_true.
        DATA t257 TYPE f.
        DATA(t258) = t83.
        DATA(t259) = CONV f( 1 ).
        t257 = t258 + t259.
        t83 = t257.
        CONTINUE.
      ENDIF.
      DATA t260 TYPE abap_bool.
      DATA(t261) = t32.
      DATA(t262) = t92.
      t260 = t261->has( p0 = t262 ).
      IF t260 = abap_true.
        DATA t263 TYPE f.
        DATA(t264) = t83.
        DATA(t265) = CONV f( 1 ).
        t263 = t264 + t265.
        t83 = t263.
        CONTINUE.
      ENDIF.
      DATA(t266) = VALUE string( ).
      DATA(t267) = VALUE string( ).
      DATA(t268) = |SY-|.
      DATA t269 TYPE string.
      DATA t270 TYPE string.
      DATA t271 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t272) = t110.
      t271 = t272.
      DATA t273 TYPE string.
      DATA(t274) = t271.
      t273 = t274->str.
      t270 = t273.
      DATA(t275) = strlen( t270 ).
      t269 = t270.
      IF t269 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t269 TO UPPER CASE.
      ELSE.
        t269 = zlnt_runtime_uppe_91169605024d=>full( t269 ).
      ENDIF.
      DATA(t276) = strlen( t268 ).
      t267 = |{ t268 }{ t269 }|.
      t266 = t267.
      DATA t277 TYPE abap_bool.
      DATA t278 TYPE abap_bool.
      DATA(t279) = t13.
      DATA(t280) = t266.
      t278 = t279->has( p0 = t280 ).
      t277 = xsdbool( t278 = abap_false ).
      IF t277 = abap_true.
        DATA t281 TYPE string.
        DATA t282 TYPE string.
        DATA t283 TYPE string.
        DATA t284 TYPE string.
        DATA t285 TYPE string.
        DATA(t286) = |SY field "|.
        DATA(t287) = t266.
        DATA(t288) = strlen( t286 ).
        t285 = |{ t286 }{ t287 }|.
        DATA(t289) = |" cannot be read in language version |.
        DATA(t290) = strlen( t285 ).
        t284 = |{ t285 }{ t289 }|.
        DATA(t291) = t5.
        DATA(t292) = strlen( t284 ).
        t283 = |{ t284 }{ t291 }|.
        DATA(t293) = ||.
        DATA(t294) = strlen( t283 ).
        t282 = |{ t283 }{ t293 }|.
        t281 = t282.
        DATA(t295) = t3.
        DATA t296 TYPE REF TO zcl_lnt_issue.
        CLEAR t296.
        DATA(t297) = t1.
        DATA(t298) = t92.
        DATA(t299) = t281.
        DATA(t300) = VALUE string( ).
        DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t301.
        DATA t302 TYPE string.
        DATA(t303) = |sy_read_restriction|.
        t302 = t303.
        DATA t304 TYPE string.
        DATA(t305) = |SY field read restriction|.
        t304 = t305.
        DATA t306 TYPE string.
        DATA(t307) = |Finds reads of SY fields not allowed in the current language|.
        t307 = t307 && | version|.
        t306 = t307.
        DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t308.
        DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t309.
        DATA(t310) = abap_true.
        IF t310 = abap_true.
          DATA t311 TYPE string.
          DATA t312 TYPE string.
          DATA t313 TYPE string.
          DATA(t314) = |In ABAP Cloud, only 17 system fields may be read; reads of o|.
          t314 = t314 && |ther fields produce a warning.\n|.
          DATA(t315) = |In ABAP for Key Users, only 5 system fields may be read:\n|.
          DATA(t316) = strlen( t314 ).
          t313 = |{ t314 }{ t315 }|.
          DATA(t317) = |SY-DBCNT, SY-FDPOS, SY-INDEX, SY-SUBRC, SY-TABIX.\n|.
          DATA(t318) = strlen( t313 ).
          t312 = |{ t313 }{ t317 }|.
          DATA(t319) = |https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/A|.
          t319 = t319 && |BENSYSTEM_FIELDS.html|.
          DATA(t320) = strlen( t312 ).
          t311 = |{ t312 }{ t319 }|.
          DATA(t321) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t321->has = abap_true.
          t321->value = t311.
          t309 = t321.
        ELSE.
          DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t322.
          t309 = t322.
        ENDIF.
        t308 = t309.
        DATA t323 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t323.
        DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t324.
        DATA(t325) = abap_true.
        IF t325 = abap_true.
          DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t327 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t328.
          t327 = t328.
          DATA(t329) = t327.
          DATA(t330) = |SingleFile|.
          t329->load( ).
          APPEND t330 TO t329->items.
          t329->save( ).
          DATA(t331) = t327.
          t326 = t331.
          t324 = t326.
        ELSE.
          DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t332.
          t324 = t332.
        ENDIF.
        t323 = t324.
        DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t333.
        DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t334.
        DATA(t335) = abap_true.
        IF t335 = abap_true.
          DATA(t336) = |lv = sy-uname.|.
          DATA(t337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t337->has = abap_true.
          t337->value = t336.
          t334 = t337.
        ELSE.
          DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t338.
          t334 = t338.
        ENDIF.
        t333 = t334.
        DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t339.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t340.
        DATA(t341) = abap_true.
        IF t341 = abap_true.
          DATA(t342) = |IF sy-subrc = 0. ENDIF.|.
          DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t343->has = abap_true.
          t343->value = t342.
          t340 = t343.
        ELSE.
          DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t344.
          t340 = t344.
        ENDIF.
        t339 = t340.
        DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t346 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t346.
        t345 = t346.
        DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t348.
        t347 = t348.
        t301 = NEW zcl_lnt_irule_metadata( i_key = t302 i_title = t304 i_short_description = t306 i_bad_example = t333 i_good_example = t339 i_extended_information = t308 i_tags = t323 i_pragma = t345 i_pseudo_comment = t347 ).
        CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
        t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t349.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t349 ).
        ENDIF.
        DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t350.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t350 ).
        ENDIF.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t351 ).
        ENDIF.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t352 ).
        ENDIF.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t353.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t353 ).
        ENDIF.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t354 ).
        ENDIF.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t355 ).
        ENDIF.
        CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
        t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t356) = |key|.
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
        ENDIF.
        DATA(t358) = |title|.
        DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t359.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
        ENDIF.
        DATA(t360) = |shortDescription|.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t361.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t360 p1 = t361 ).
        ENDIF.
        DATA(t362) = |extendedInformation|.
        DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t363.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t362 p1 = t363 ).
        ENDIF.
        DATA(t364) = |tags|.
        DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t365.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t364 p1 = t365 ).
        ENDIF.
        DATA(t366) = |badExample|.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t366 p1 = t367 ).
        ENDIF.
        DATA(t368) = |goodExample|.
        DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t369.
        IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t368 p1 = t369 ).
        ENDIF.
        t300 = t301->key.
        DATA(t370) = t20.
        DATA t371 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t371.
        t296 = zcl_lnt_issue=>at_token( i_file = t297 i_token = t298 i_message_26cb = t299 i_key = t300 i_severity = t370 i_fix = t371 ).
        t295->load( ).
        APPEND t296 TO t295->items.
        t295->save( ).
      ENDIF.
      DATA t372 TYPE f.
      DATA(t373) = t83.
      DATA(t374) = CONV f( 1 ).
      t372 = t373 + t374.
      t83 = t372.
    ENDDO.
    DATA(t375) = t3.
    result = t375.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_sy_rd_rstrctn_cnf( me->g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sy_rd_rstrctn_cnf( me->g_c_i_s_r_sy_rd_rs_ts_sy_rd_rs( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sy_rd_rstrctn_cnf.
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
        t1 = NEW zcl_lnt_sy_rd_rstrctn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sy_rd_rs_ts_sy_rd_rs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sy_rd_rs_ts_sy_rd_rs( i_file = i_file i_obj_ac26 = i_obj_1ed0 ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1726_219608ca0d7a.
  ENDMETHOD.
ENDCLASS.
