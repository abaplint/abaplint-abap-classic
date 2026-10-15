* TS: src/rules/begin_single_include.ts:12:1 BeginSingleInclude
CLASS zcl_lnt_begin_single_include DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_bg_sn_in_ts_bg_sn_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS s_c_i_s_r_bg_sn_in_ts_bg_sn_in IMPORTING i_conf TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
    METHODS r_p_i_s_r_bg_sn_in_ts_bg_sn_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_begin_single_include IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_bgn_sngl_incld_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |begin_single_include|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |BEGIN contains single INCLUDE|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
    t7 = t7 && |ingle INCLUDE STRUCTURE|.
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
      DATA(t15) = |SingleFile|.
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
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = |TYPES: BEGIN OF dummy1.\n  INCLUDE TYPE dselc.\nTYPES: END OF |.
      t21 = t21 && |dummy1.\n\nDATA BEGIN OF foo.\nINCLUDE STRUCTURE syst.\nDATA END|.
      t21 = t21 && | OF foo.\n\nSTATICS BEGIN OF bar.\nINCLUDE STRUCTURE syst.\nSTAT|.
      t21 = t21 && |ICS END OF bar.|.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    t18 = t19.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |DATA BEGIN OF foo.\n  DATA field TYPE i.\n  INCLUDE STRUCTURE |.
      t27 = t27 && |dselc.\nDATA END OF foo.|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t18 i_good_example = t24 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
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
    DATA(t48) = |tags|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |badExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |goodExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_bg_sn_in_ts_bg_sn_in.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_bg_sn_in_ts_bg_sn_in.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_bg_sn_in_ts_bg_sn_in.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA(t20) = t4.
    t19 = t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t18 = t19->find_all_structures( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    DATA(t24) = VALUE i( ).
    DO.
      t18->load( ).
      IF t24 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t18->items INDEX t24 + 1 INTO t23.
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
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE i.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t31 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t32) = t22.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t34) = t31.
      t33 = t34->children.
      t30 = t33.
      t29 ?= t30.
      t29->load( ).
      t28 = lines( t29->items ).
      DATA(t35) = 3.
      t27 = xsdbool( t28 <> t35 ).
      IF t27 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE REF TO zcl_lnt_statement_node.
      DATA(t38) = t22.
      DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
      t37 = t38->find_first_statement( i_type_9913 = t39 ).
      t36 = xsdbool( t37 IS BOUND ).
      IF t36 = abap_true.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t42) = t22.
        t41 = t42->get_first_token( ).
        t40 = t41.
        DATA t43 TYPE string.
        DATA(t44) = |TYPE BEGIN with single INCLUDE|.
        t43 = t44.
        DATA t45 TYPE REF TO zcl_lnt_issue.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_issue.
        CLEAR t46.
        DATA(t47) = t1.
        DATA(t48) = t40.
        DATA(t49) = t43.
        DATA(t50) = VALUE string( ).
        DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t51.
        DATA t52 TYPE string.
        DATA(t53) = |begin_single_include|.
        t52 = t53.
        DATA t54 TYPE string.
        DATA(t55) = |BEGIN contains single INCLUDE|.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
        t57 = t57 && |ingle INCLUDE STRUCTURE|.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
          DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t63.
          t62 = t63.
          DATA(t64) = t62.
          DATA(t65) = |SingleFile|.
          t64->load( ).
          APPEND t65 TO t64->items.
          t64->save( ).
          DATA(t66) = t62.
          t61 = t66.
          t59 = t61.
        ELSE.
          DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t67.
          t59 = t67.
        ENDIF.
        t58 = t59.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA(t70) = abap_true.
        IF t70 = abap_true.
          DATA(t71) = |TYPES: BEGIN OF dummy1.\n  INCLUDE TYPE dselc.\nTYPES: END OF |.
          t71 = t71 && |dummy1.\n\nDATA BEGIN OF foo.\nINCLUDE STRUCTURE syst.\nDATA END|.
          t71 = t71 && | OF foo.\n\nSTATICS BEGIN OF bar.\nINCLUDE STRUCTURE syst.\nSTAT|.
          t71 = t71 && |ICS END OF bar.|.
          DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t72->has = abap_true.
          t72->value = t71.
          t69 = t72.
        ELSE.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          t69 = t73.
        ENDIF.
        t68 = t69.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA(t76) = abap_true.
        IF t76 = abap_true.
          DATA(t77) = |DATA BEGIN OF foo.\n  DATA field TYPE i.\n  INCLUDE STRUCTURE |.
          t77 = t77 && |dselc.\nDATA END OF foo.|.
          DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t78->has = abap_true.
          t78->value = t77.
          t75 = t78.
        ELSE.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          t75 = t79.
        ENDIF.
        t74 = t75.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        t80 = t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        t82 = t83.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        t84 = t85.
        t51 = NEW zcl_lnt_irule_metadata( i_key = t52 i_title = t54 i_short_description = t56 i_bad_example = t68 i_good_example = t74 i_extended_information = t80 i_tags = t58 i_pragma = t82 i_pseudo_comment = t84 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t86 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t87 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t88 ).
        ENDIF.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t89 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t91 ).
        ENDIF.
        CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
        t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t92) = |key|.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
        ENDIF.
        DATA(t94) = |title|.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
        ENDIF.
        DATA(t96) = |shortDescription|.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
        ENDIF.
        DATA(t98) = |tags|.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
        ENDIF.
        DATA(t100) = |badExample|.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
        ENDIF.
        DATA(t102) = |goodExample|.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
        ENDIF.
        t50 = t51->key.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t105) = me->conf.
        t104 = t105->zlnt_view_read_sr_15c06369f827( ).
        DATA t106 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t106.
        t46 = zcl_lnt_issue=>at_token( i_file = t47 i_token = t48 i_message_26cb = t49 i_key = t50 i_severity = t104 i_fix = t106 ).
        t45 = t46.
        DATA(t107) = t2.
        DATA(t108) = t45.
        t107->load( ).
        APPEND t108 TO t107->items.
        t107->save( ).
      ENDIF.
    ENDDO.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t110 TYPE REF TO zcl_lnt_structure_node.
    DATA(t111) = t4.
    t110 = t111.
    DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    t109 = t110->find_all_structures( i_type_9913 = t112 ).
    DATA t113 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t113.
    DATA t114 TYPE REF TO object.
    CLEAR t114.
    DATA(t115) = VALUE i( ).
    DO.
      t109->load( ).
      IF t115 >= lines( t109->items ).
        EXIT.
      ENDIF.
      CLEAR t114.
      READ TABLE t109->items INDEX t115 + 1 INTO t114.
      t115 = t115 + 1.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      CLEAR t113.
      IF t114 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t116 ?= t114.
        DATA t117 TYPE REF TO object.
        t117 = t116->as_ref( ).
        t113 ?= t117.
      ELSE.
        t113 ?= t114.
      ENDIF.
      DATA t118 TYPE abap_bool.
      DATA t119 TYPE i.
      DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t122 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t123) = t113.
      t122 = t123.
      DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t125) = t122.
      t124 = t125->children.
      t121 = t124.
      t120 ?= t121.
      t120->load( ).
      t119 = lines( t120->items ).
      DATA(t126) = 3.
      t118 = xsdbool( t119 <> t126 ).
      IF t118 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t127 TYPE REF TO zcl_lnt_statement_node.
      DATA t128 TYPE REF TO zcl_lnt_statement_node.
      DATA(t129) = t113.
      DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
      t128 = t129->find_first_statement( i_type_9913 = t130 ).
      t127 = t128.
      DATA(t131) = VALUE abap_bool( ).
      DATA t132 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t132.
      DATA t133 TYPE REF TO zcl_lnt_statement_node.
      DATA(t134) = t127.
      t133 = t134.
      DATA t135 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t135.
      DATA(t136) = VALUE abap_bool( ).
      DATA(t137) = t133.
      IF t137 IS INITIAL.
        t136 = abap_true.
      ENDIF.
      IF t136 = abap_true.
        DATA t138 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t138.
        t135 = t138.
      ELSE.
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        DATA t140 TYPE REF TO zcl_lnt_statement_node.
        DATA(t141) = t133.
        t140 = t141.
        DATA(t142) = |OCCURS|.
        t139 = t140->find_direct_token_by_text( i_text = t142 ).
        t135 = t139.
      ENDIF.
      t132 = t135.
      t131 = xsdbool( t132 IS BOUND ).
      IF t131 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t143 TYPE abap_bool.
      DATA t144 TYPE REF TO zcl_lnt_statement_node.
      DATA(t145) = t113.
      DATA(t146) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
      t144 = t145->find_first_statement( i_type_9913 = t146 ).
      t143 = xsdbool( t144 IS BOUND ).
      IF t143 = abap_true.
        DATA t147 TYPE REF TO zcl_lnt_abstract_token.
        DATA t148 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t149) = t113.
        t148 = t149->get_first_token( ).
        t147 = t148.
        DATA t150 TYPE string.
        DATA(t151) = |DATA BEGIN with single INCLUDE|.
        t150 = t151.
        DATA t152 TYPE REF TO zcl_lnt_issue.
        CLEAR t152.
        DATA t153 TYPE REF TO zcl_lnt_issue.
        CLEAR t153.
        DATA(t154) = t1.
        DATA(t155) = t147.
        DATA(t156) = t150.
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t158.
        DATA t159 TYPE string.
        DATA(t160) = |begin_single_include|.
        t159 = t160.
        DATA t161 TYPE string.
        DATA(t162) = |BEGIN contains single INCLUDE|.
        t161 = t162.
        DATA t163 TYPE string.
        DATA(t164) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
        t164 = t164 && |ingle INCLUDE STRUCTURE|.
        t163 = t164.
        DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t165.
        DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t166.
        DATA(t167) = abap_true.
        IF t167 = abap_true.
          DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t170.
          t169 = t170.
          DATA(t171) = t169.
          DATA(t172) = |SingleFile|.
          t171->load( ).
          APPEND t172 TO t171->items.
          t171->save( ).
          DATA(t173) = t169.
          t168 = t173.
          t166 = t168.
        ELSE.
          DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t174.
          t166 = t174.
        ENDIF.
        t165 = t166.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA(t177) = abap_true.
        IF t177 = abap_true.
          DATA(t178) = |TYPES: BEGIN OF dummy1.\n  INCLUDE TYPE dselc.\nTYPES: END OF |.
          t178 = t178 && |dummy1.\n\nDATA BEGIN OF foo.\nINCLUDE STRUCTURE syst.\nDATA END|.
          t178 = t178 && | OF foo.\n\nSTATICS BEGIN OF bar.\nINCLUDE STRUCTURE syst.\nSTAT|.
          t178 = t178 && |ICS END OF bar.|.
          DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t179->has = abap_true.
          t179->value = t178.
          t176 = t179.
        ELSE.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          t176 = t180.
        ENDIF.
        t175 = t176.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        DATA(t183) = abap_true.
        IF t183 = abap_true.
          DATA(t184) = |DATA BEGIN OF foo.\n  DATA field TYPE i.\n  INCLUDE STRUCTURE |.
          t184 = t184 && |dselc.\nDATA END OF foo.|.
          DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t185->has = abap_true.
          t185->value = t184.
          t182 = t185.
        ELSE.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          t182 = t186.
        ENDIF.
        t181 = t182.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t187 = t188.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t189 = t190.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t192.
        t191 = t192.
        t158 = NEW zcl_lnt_irule_metadata( i_key = t159 i_title = t161 i_short_description = t163 i_bad_example = t175 i_good_example = t181 i_extended_information = t187 i_tags = t165 i_pragma = t189 i_pseudo_comment = t191 ).
        CREATE OBJECT t158->zlnt_view_ownkeys_b0e8086400eb.
        t158->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t193 ).
        ENDIF.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t194 ).
        ENDIF.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t195 ).
        ENDIF.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t196 ).
        ENDIF.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t197 ).
        ENDIF.
        DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t198.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t198 ).
        ENDIF.
        CREATE OBJECT t158->zlnt_json_ownkeys_70e5fd461788.
        t158->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t199) = |key|.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
        ENDIF.
        DATA(t201) = |title|.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
        ENDIF.
        DATA(t203) = |shortDescription|.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
        ENDIF.
        DATA(t205) = |tags|.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
        ENDIF.
        DATA(t207) = |badExample|.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
        ENDIF.
        DATA(t209) = |goodExample|.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
        ENDIF.
        t157 = t158->key.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t212) = me->conf.
        t211 = t212->zlnt_view_read_sr_15c06369f827( ).
        DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t213.
        t153 = zcl_lnt_issue=>at_token( i_file = t154 i_token = t155 i_message_26cb = t156 i_key = t157 i_severity = t211 i_fix = t213 ).
        t152 = t153.
        DATA(t214) = t2.
        DATA(t215) = t152.
        t214->load( ).
        APPEND t215 TO t214->items.
        t214->save( ).
      ENDIF.
    ENDDO.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t217 TYPE REF TO zcl_lnt_structure_node.
    DATA(t218) = t4.
    t217 = t218.
    DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d750_2d45c5b37c94.
    t216 = t217->find_all_structures( i_type_9913 = t219 ).
    DATA t220 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t220.
    DATA t221 TYPE REF TO object.
    CLEAR t221.
    DATA(t222) = VALUE i( ).
    DO.
      t216->load( ).
      IF t222 >= lines( t216->items ).
        EXIT.
      ENDIF.
      CLEAR t221.
      READ TABLE t216->items INDEX t222 + 1 INTO t221.
      t222 = t222 + 1.
      DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t223.
      CLEAR t220.
      IF t221 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t223 ?= t221.
        DATA t224 TYPE REF TO object.
        t224 = t223->as_ref( ).
        t220 ?= t224.
      ELSE.
        t220 ?= t221.
      ENDIF.
      DATA t225 TYPE abap_bool.
      DATA t226 TYPE i.
      DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t229 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t230) = t220.
      t229 = t230.
      DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t232) = t229.
      t231 = t232->children.
      t228 = t231.
      t227 ?= t228.
      t227->load( ).
      t226 = lines( t227->items ).
      DATA(t233) = 3.
      t225 = xsdbool( t226 <> t233 ).
      IF t225 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t234 TYPE abap_bool.
      DATA t235 TYPE REF TO zcl_lnt_statement_node.
      DATA(t236) = t220.
      DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
      t235 = t236->find_first_statement( i_type_9913 = t237 ).
      t234 = xsdbool( t235 IS BOUND ).
      IF t234 = abap_true.
        DATA t238 TYPE REF TO zcl_lnt_abstract_token.
        DATA t239 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t240) = t220.
        t239 = t240->get_first_token( ).
        t238 = t239.
        DATA t241 TYPE string.
        DATA(t242) = |STATICS BEGIN with single INCLUDE|.
        t241 = t242.
        DATA t243 TYPE REF TO zcl_lnt_issue.
        CLEAR t243.
        DATA t244 TYPE REF TO zcl_lnt_issue.
        CLEAR t244.
        DATA(t245) = t1.
        DATA(t246) = t238.
        DATA(t247) = t241.
        DATA(t248) = VALUE string( ).
        DATA t249 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t249.
        DATA t250 TYPE string.
        DATA(t251) = |begin_single_include|.
        t250 = t251.
        DATA t252 TYPE string.
        DATA(t253) = |BEGIN contains single INCLUDE|.
        t252 = t253.
        DATA t254 TYPE string.
        DATA(t255) = |Finds TYPE BEGIN with just one INCLUDE TYPE, and DATA with s|.
        t255 = t255 && |ingle INCLUDE STRUCTURE|.
        t254 = t255.
        DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t256.
        DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t257.
        DATA(t258) = abap_true.
        IF t258 = abap_true.
          DATA t259 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t261.
          t260 = t261.
          DATA(t262) = t260.
          DATA(t263) = |SingleFile|.
          t262->load( ).
          APPEND t263 TO t262->items.
          t262->save( ).
          DATA(t264) = t260.
          t259 = t264.
          t257 = t259.
        ELSE.
          DATA t265 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t265.
          t257 = t265.
        ENDIF.
        t256 = t257.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t266.
        DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t267.
        DATA(t268) = abap_true.
        IF t268 = abap_true.
          DATA(t269) = |TYPES: BEGIN OF dummy1.\n  INCLUDE TYPE dselc.\nTYPES: END OF |.
          t269 = t269 && |dummy1.\n\nDATA BEGIN OF foo.\nINCLUDE STRUCTURE syst.\nDATA END|.
          t269 = t269 && | OF foo.\n\nSTATICS BEGIN OF bar.\nINCLUDE STRUCTURE syst.\nSTAT|.
          t269 = t269 && |ICS END OF bar.|.
          DATA(t270) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t270->has = abap_true.
          t270->value = t269.
          t267 = t270.
        ELSE.
          DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t271.
          t267 = t271.
        ENDIF.
        t266 = t267.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t273.
        DATA(t274) = abap_true.
        IF t274 = abap_true.
          DATA(t275) = |DATA BEGIN OF foo.\n  DATA field TYPE i.\n  INCLUDE STRUCTURE |.
          t275 = t275 && |dselc.\nDATA END OF foo.|.
          DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t276->has = abap_true.
          t276->value = t275.
          t273 = t276.
        ELSE.
          DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t277.
          t273 = t277.
        ENDIF.
        t272 = t273.
        DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t279.
        t278 = t279.
        DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t281.
        t280 = t281.
        DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t283.
        t282 = t283.
        t249 = NEW zcl_lnt_irule_metadata( i_key = t250 i_title = t252 i_short_description = t254 i_bad_example = t266 i_good_example = t272 i_extended_information = t278 i_tags = t256 i_pragma = t280 i_pseudo_comment = t282 ).
        CREATE OBJECT t249->zlnt_view_ownkeys_b0e8086400eb.
        t249->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t284.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t284 ).
        ENDIF.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t285 ).
        ENDIF.
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t286 ).
        ENDIF.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t287 ).
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t288 ).
        ENDIF.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        IF t249->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t249->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t289 ).
        ENDIF.
        CREATE OBJECT t249->zlnt_json_ownkeys_70e5fd461788.
        t249->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t290) = |key|.
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t291.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
        ENDIF.
        DATA(t292) = |title|.
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
        ENDIF.
        DATA(t294) = |shortDescription|.
        DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t295.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
        ENDIF.
        DATA(t296) = |tags|.
        DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t297.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
        ENDIF.
        DATA(t298) = |badExample|.
        DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t299.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t298 p1 = t299 ).
        ENDIF.
        DATA(t300) = |goodExample|.
        DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t301.
        IF t249->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t249->zlnt_json_ownkeys_70e5fd461788->put( p0 = t300 p1 = t301 ).
        ENDIF.
        t248 = t249->key.
        DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t303) = me->conf.
        t302 = t303->zlnt_view_read_sr_15c06369f827( ).
        DATA t304 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t304.
        t244 = zcl_lnt_issue=>at_token( i_file = t245 i_token = t246 i_message_26cb = t247 i_key = t248 i_severity = t302 i_fix = t304 ).
        t243 = t244.
        DATA(t305) = t2.
        DATA(t306) = t243.
        t305->load( ).
        APPEND t306 TO t305->items.
        t305->save( ).
      ENDIF.
    ENDDO.
    DATA(t307) = t2.
    result = t307.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_bgn_sngl_incld_cnf( me->g_c_i_s_r_bg_sn_in_ts_bg_sn_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_bgn_sngl_incld_cnf( me->g_c_i_s_r_bg_sn_in_ts_bg_sn_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_bgn_sngl_incld_cnf.
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
        t1 = NEW zcl_lnt_bgn_sngl_incld_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_bg_sn_in_ts_bg_sn_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_bg_sn_in_ts_bg_sn_in( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1410_14fefc162dda.
  ENDMETHOD.
ENDCLASS.
