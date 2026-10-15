* TS: src/rules/names_no_dash.ts:15:1 NamesNoDash
CLASS zcl_lnt_names_no_dash DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds RETURNING VALUE(result) TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds IMPORTING i_conf TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_names_no_dash IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_names_no_dash_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |names_no_dash|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |No dashes in FORM and DATA names|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
    t7 = t7 && |names|.
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
      DATA(t17) = |Naming|.
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
      DATA(t23) = |DATA foo-bar TYPE i.|.
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
      DATA(t29) = |DATA foobar TYPE i.|.
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

  METHOD get_message.
    DATA(t1) = |No dash allowed in FORM and DATA names|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds.
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
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    DATA(t10) = t7.
    t9 = t10->structure.
    t6 = t9.
    t5 = t6.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA(t13) = t5.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t12.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t11 = t16.
    IF t11 = abap_true.
      DATA(t18) = t3.
      result = t18.
      RETURN.
    ENDIF.
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE string.
    DATA(t22) = t2.
    t21 = t22->get_type( ).
    DATA(t23) = |CLAS|.
    t20 = xsdbool( t21 <> t23 ).
    t19 = t20.
    IF t20 = abap_true.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE string.
      DATA(t26) = t2.
      t25 = t26->get_type( ).
      DATA(t27) = |INTF|.
      t24 = xsdbool( t25 <> t27 ).
      t19 = t24.
    ENDIF.
    IF t19 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      DATA(t30) = t5.
      t29 = t30.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d500_8dad0123027e.
      t28 = t29->find_all_statements( i_type_9913 = t31 ).
      DATA t32 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      DATA(t34) = VALUE i( ).
      DO.
        t28->load( ).
        IF t34 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t28->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        DATA(t39) = t32.
        DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
        t38 = t39->find_first_expression( i_type_9913 = t40 ).
        t37 = t38.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t41.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        DATA(t44) = t37.
        t43 = t44.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t45.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t43.
        IF t47 IS INITIAL.
          t46 = abap_true.
        ENDIF.
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t48.
          t45 = t48.
        ELSE.
          DATA t49 TYPE REF TO zcl_lnt_abstract_token.
          DATA t50 TYPE REF TO zcl_lnt_expression_node.
          DATA(t51) = t43.
          t50 = t51.
          DATA(t52) = |-|.
          t49 = t50->find_direct_token_by_text( i_text = t52 ).
          t45 = t49.
        ENDIF.
        t42 = t45.
        t41 = t42.
        DATA t53 TYPE abap_bool.
        DATA(t54) = t41.
        t53 = xsdbool( t54 IS BOUND ).
        IF t53 = abap_true.
          DATA t55 TYPE REF TO zcl_lnt_issue.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_issue.
          CLEAR t56.
          DATA(t57) = t1.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t59) = t41.
          t58 = t59.
          DATA(t60) = |No dash allowed in FORM and DATA names|.
          DATA(t61) = VALUE string( ).
          DATA t62 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t62.
          DATA t63 TYPE string.
          DATA(t64) = |names_no_dash|.
          t63 = t64.
          DATA t65 TYPE string.
          DATA(t66) = |No dashes in FORM and DATA names|.
          t65 = t66.
          DATA t67 TYPE string.
          DATA(t68) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
          t68 = t68 && |names|.
          t67 = t68.
          DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t69.
          DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t70.
          DATA(t71) = abap_true.
          IF t71 = abap_true.
            DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t74.
            t73 = t74.
            DATA(t75) = t73.
            DATA(t76) = |SingleFile|.
            t75->load( ).
            APPEND t76 TO t75->items.
            t75->save( ).
            DATA(t77) = t73.
            DATA(t78) = |Naming|.
            t77->load( ).
            APPEND t78 TO t77->items.
            t77->save( ).
            DATA(t79) = t73.
            t72 = t79.
            t70 = t72.
          ELSE.
            DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t80.
            t70 = t80.
          ENDIF.
          t69 = t70.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          DATA(t83) = abap_true.
          IF t83 = abap_true.
            DATA(t84) = |DATA foo-bar TYPE i.|.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t84.
            t82 = t85.
          ELSE.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            t82 = t86.
          ENDIF.
          t81 = t82.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          DATA(t89) = abap_true.
          IF t89 = abap_true.
            DATA(t90) = |DATA foobar TYPE i.|.
            DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t91->has = abap_true.
            t91->value = t90.
            t88 = t91.
          ELSE.
            DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t92.
            t88 = t92.
          ENDIF.
          t87 = t88.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t94.
          t93 = t94.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t95 = t96.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          t97 = t98.
          t62 = NEW zcl_lnt_irule_metadata( i_key = t63 i_title = t65 i_short_description = t67 i_bad_example = t81 i_good_example = t87 i_extended_information = t93 i_tags = t69 i_pragma = t95 i_pseudo_comment = t97 ).
          CREATE OBJECT t62->zlnt_view_ownkeys_b0e8086400eb.
          t62->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t99 ).
          ENDIF.
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t100 ).
          ENDIF.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t101 ).
          ENDIF.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t102 ).
          ENDIF.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t103 ).
          ENDIF.
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t104 ).
          ENDIF.
          CREATE OBJECT t62->zlnt_json_ownkeys_70e5fd461788.
          t62->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t105) = |key|.
          DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t106.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
          ENDIF.
          DATA(t107) = |title|.
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
          ENDIF.
          DATA(t109) = |shortDescription|.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
          ENDIF.
          DATA(t111) = |tags|.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
          ENDIF.
          DATA(t113) = |badExample|.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
          ENDIF.
          DATA(t115) = |goodExample|.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
          ENDIF.
          t61 = t62->key.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t118) = me->conf.
          t117 = t118->zlnt_view_read_sr_15c06369f827( ).
          DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t119.
          t56 = zcl_lnt_issue=>at_token( i_file = t57 i_token = t58 i_message_26cb = t60 i_key = t61 i_severity = t117 i_fix = t119 ).
          t55 = t56.
          DATA(t120) = t3.
          DATA(t121) = t55.
          t120->load( ).
          APPEND t121 TO t120->items.
          t120->save( ).
        ENDIF.
      ENDDO.
      DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t123 TYPE REF TO zcl_lnt_structure_node.
      DATA(t124) = t5.
      t123 = t124.
      DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d572_46882accee86.
      t122 = t123->find_all_statements( i_type_9913 = t125 ).
      DATA t126 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t126.
      DATA t127 TYPE REF TO object.
      CLEAR t127.
      DATA(t128) = VALUE i( ).
      DO.
        t122->load( ).
        IF t128 >= lines( t122->items ).
          EXIT.
        ENDIF.
        CLEAR t127.
        READ TABLE t122->items INDEX t128 + 1 INTO t127.
        t128 = t128 + 1.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        CLEAR t126.
        IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t129 ?= t127.
          DATA t130 TYPE REF TO object.
          t130 = t129->as_ref( ).
          t126 ?= t130.
        ELSE.
          t126 ?= t127.
        ENDIF.
        DATA t131 TYPE REF TO zcl_lnt_expression_node.
        DATA t132 TYPE REF TO zcl_lnt_expression_node.
        DATA(t133) = t126.
        DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t132 = t133->find_first_expression( i_type_9913 = t134 ).
        t131 = t132.
        DATA t135 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t135.
        DATA t136 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t136.
        DATA t137 TYPE REF TO zcl_lnt_expression_node.
        DATA(t138) = t131.
        t137 = t138.
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t139.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = t137.
        IF t141 IS INITIAL.
          t140 = abap_true.
        ENDIF.
        IF t140 = abap_true.
          DATA t142 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t142.
          t139 = t142.
        ELSE.
          DATA t143 TYPE REF TO zcl_lnt_abstract_token.
          DATA t144 TYPE REF TO zcl_lnt_expression_node.
          DATA(t145) = t137.
          t144 = t145.
          DATA(t146) = |-|.
          t143 = t144->find_direct_token_by_text( i_text = t146 ).
          t139 = t143.
        ENDIF.
        t136 = t139.
        t135 = t136.
        DATA t147 TYPE abap_bool.
        DATA(t148) = t135.
        t147 = xsdbool( t148 IS BOUND ).
        IF t147 = abap_true.
          DATA t149 TYPE REF TO zcl_lnt_issue.
          CLEAR t149.
          DATA t150 TYPE REF TO zcl_lnt_issue.
          CLEAR t150.
          DATA(t151) = t1.
          DATA t152 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t153) = t135.
          t152 = t153.
          DATA(t154) = |No dash allowed in FORM and DATA names|.
          DATA(t155) = VALUE string( ).
          DATA t156 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t156.
          DATA t157 TYPE string.
          DATA(t158) = |names_no_dash|.
          t157 = t158.
          DATA t159 TYPE string.
          DATA(t160) = |No dashes in FORM and DATA names|.
          t159 = t160.
          DATA t161 TYPE string.
          DATA(t162) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
          t162 = t162 && |names|.
          t161 = t162.
          DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t163.
          DATA t164 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t164.
          DATA(t165) = abap_true.
          IF t165 = abap_true.
            DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t168.
            t167 = t168.
            DATA(t169) = t167.
            DATA(t170) = |SingleFile|.
            t169->load( ).
            APPEND t170 TO t169->items.
            t169->save( ).
            DATA(t171) = t167.
            DATA(t172) = |Naming|.
            t171->load( ).
            APPEND t172 TO t171->items.
            t171->save( ).
            DATA(t173) = t167.
            t166 = t173.
            t164 = t166.
          ELSE.
            DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t174.
            t164 = t174.
          ENDIF.
          t163 = t164.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          DATA(t177) = abap_true.
          IF t177 = abap_true.
            DATA(t178) = |DATA foo-bar TYPE i.|.
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
            DATA(t184) = |DATA foobar TYPE i.|.
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
          t156 = NEW zcl_lnt_irule_metadata( i_key = t157 i_title = t159 i_short_description = t161 i_bad_example = t175 i_good_example = t181 i_extended_information = t187 i_tags = t163 i_pragma = t189 i_pseudo_comment = t191 ).
          CREATE OBJECT t156->zlnt_view_ownkeys_b0e8086400eb.
          t156->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t193 ).
          ENDIF.
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t194.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t194 ).
          ENDIF.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t195 ).
          ENDIF.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t196 ).
          ENDIF.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t197 ).
          ENDIF.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t198 ).
          ENDIF.
          CREATE OBJECT t156->zlnt_json_ownkeys_70e5fd461788.
          t156->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t199) = |key|.
          DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t200.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
          ENDIF.
          DATA(t201) = |title|.
          DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t202.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
          ENDIF.
          DATA(t203) = |shortDescription|.
          DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t204.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
          ENDIF.
          DATA(t205) = |tags|.
          DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t206.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
          ENDIF.
          DATA(t207) = |badExample|.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
          ENDIF.
          DATA(t209) = |goodExample|.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
          ENDIF.
          t155 = t156->key.
          DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t212) = me->conf.
          t211 = t212->zlnt_view_read_sr_15c06369f827( ).
          DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t213.
          t150 = zcl_lnt_issue=>at_token( i_file = t151 i_token = t152 i_message_26cb = t154 i_key = t155 i_severity = t211 i_fix = t213 ).
          t149 = t150.
          DATA(t214) = t3.
          DATA(t215) = t149.
          t214->load( ).
          APPEND t215 TO t214->items.
          t214->save( ).
        ENDIF.
      ENDDO.
      DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t217 TYPE REF TO zcl_lnt_structure_node.
      DATA(t218) = t5.
      t217 = t218.
      DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d614_0af6a2346fc7.
      t216 = t217->find_all_statements( i_type_9913 = t219 ).
      DATA t220 TYPE REF TO zcl_lnt_statement_node.
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
        DATA t225 TYPE REF TO zcl_lnt_expression_node.
        DATA t226 TYPE REF TO zcl_lnt_expression_node.
        DATA(t227) = t220.
        DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t226 = t227->find_first_expression( i_type_9913 = t228 ).
        t225 = t226.
        DATA t229 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t229.
        DATA t230 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t230.
        DATA t231 TYPE REF TO zcl_lnt_expression_node.
        DATA(t232) = t225.
        t231 = t232.
        DATA t233 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t233.
        DATA(t234) = VALUE abap_bool( ).
        DATA(t235) = t231.
        IF t235 IS INITIAL.
          t234 = abap_true.
        ENDIF.
        IF t234 = abap_true.
          DATA t236 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t236.
          t233 = t236.
        ELSE.
          DATA t237 TYPE REF TO zcl_lnt_abstract_token.
          DATA t238 TYPE REF TO zcl_lnt_expression_node.
          DATA(t239) = t231.
          t238 = t239.
          DATA(t240) = |-|.
          t237 = t238->find_direct_token_by_text( i_text = t240 ).
          t233 = t237.
        ENDIF.
        t230 = t233.
        t229 = t230.
        DATA t241 TYPE abap_bool.
        DATA(t242) = t229.
        t241 = xsdbool( t242 IS BOUND ).
        IF t241 = abap_true.
          DATA t243 TYPE REF TO zcl_lnt_issue.
          CLEAR t243.
          DATA t244 TYPE REF TO zcl_lnt_issue.
          CLEAR t244.
          DATA(t245) = t1.
          DATA t246 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t247) = t229.
          t246 = t247.
          DATA(t248) = |No dash allowed in FORM and DATA names|.
          DATA(t249) = VALUE string( ).
          DATA t250 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t250.
          DATA t251 TYPE string.
          DATA(t252) = |names_no_dash|.
          t251 = t252.
          DATA t253 TYPE string.
          DATA(t254) = |No dashes in FORM and DATA names|.
          t253 = t254.
          DATA t255 TYPE string.
          DATA(t256) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
          t256 = t256 && |names|.
          t255 = t256.
          DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t257.
          DATA t258 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t258.
          DATA(t259) = abap_true.
          IF t259 = abap_true.
            DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t262.
            t261 = t262.
            DATA(t263) = t261.
            DATA(t264) = |SingleFile|.
            t263->load( ).
            APPEND t264 TO t263->items.
            t263->save( ).
            DATA(t265) = t261.
            DATA(t266) = |Naming|.
            t265->load( ).
            APPEND t266 TO t265->items.
            t265->save( ).
            DATA(t267) = t261.
            t260 = t267.
            t258 = t260.
          ELSE.
            DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t268.
            t258 = t268.
          ENDIF.
          t257 = t258.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t269.
          DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t270.
          DATA(t271) = abap_true.
          IF t271 = abap_true.
            DATA(t272) = |DATA foo-bar TYPE i.|.
            DATA(t273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t273->has = abap_true.
            t273->value = t272.
            t270 = t273.
          ELSE.
            DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t274.
            t270 = t274.
          ENDIF.
          t269 = t270.
          DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t275.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          DATA(t277) = abap_true.
          IF t277 = abap_true.
            DATA(t278) = |DATA foobar TYPE i.|.
            DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t279->has = abap_true.
            t279->value = t278.
            t276 = t279.
          ELSE.
            DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t280.
            t276 = t280.
          ENDIF.
          t275 = t276.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t282.
          t281 = t282.
          DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t284.
          t283 = t284.
          DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          t285 = t286.
          t250 = NEW zcl_lnt_irule_metadata( i_key = t251 i_title = t253 i_short_description = t255 i_bad_example = t269 i_good_example = t275 i_extended_information = t281 i_tags = t257 i_pragma = t283 i_pseudo_comment = t285 ).
          CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
          t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t287.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t287 ).
          ENDIF.
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t288 ).
          ENDIF.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t289 ).
          ENDIF.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t290 ).
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t291 ).
          ENDIF.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t292.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t292 ).
          ENDIF.
          CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
          t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t293) = |key|.
          DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t294.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t293 p1 = t294 ).
          ENDIF.
          DATA(t295) = |title|.
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t295 p1 = t296 ).
          ENDIF.
          DATA(t297) = |shortDescription|.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t297 p1 = t298 ).
          ENDIF.
          DATA(t299) = |tags|.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t299 p1 = t300 ).
          ENDIF.
          DATA(t301) = |badExample|.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t301 p1 = t302 ).
          ENDIF.
          DATA(t303) = |goodExample|.
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t304.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t303 p1 = t304 ).
          ENDIF.
          t249 = t250->key.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t306) = me->conf.
          t305 = t306->zlnt_view_read_sr_15c06369f827( ).
          DATA t307 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t307.
          t244 = zcl_lnt_issue=>at_token( i_file = t245 i_token = t246 i_message_26cb = t248 i_key = t249 i_severity = t305 i_fix = t307 ).
          t243 = t244.
          DATA(t308) = t3.
          DATA(t309) = t243.
          t308->load( ).
          APPEND t309 TO t308->items.
          t308->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t311 TYPE REF TO zcl_lnt_structure_node.
    DATA(t312) = t5.
    t311 = t312.
    DATA(t313) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t310 = t311->find_all_expressions( i_type_9913 = t313 ).
    DATA t314 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t314.
    DATA t315 TYPE REF TO object.
    CLEAR t315.
    DATA(t316) = VALUE i( ).
    DO.
      t310->load( ).
      IF t316 >= lines( t310->items ).
        EXIT.
      ENDIF.
      CLEAR t315.
      READ TABLE t310->items INDEX t316 + 1 INTO t315.
      t316 = t316 + 1.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t317.
      CLEAR t314.
      IF t315 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t317 ?= t315.
        DATA t318 TYPE REF TO object.
        t318 = t317->as_ref( ).
        t314 ?= t318.
      ELSE.
        t314 ?= t315.
      ENDIF.
      DATA t319 TYPE string.
      DATA t320 TYPE string.
      DATA(t321) = t314.
      t320 = t321->concat_tokens( ).
      t319 = t320.
      DATA(t322) = VALUE abap_bool( ).
      DATA(t323) = VALUE i( ).
      DATA(t324) = t319.
      DATA(t325) = |-|.
      DATA(t326) = strlen( t324 ).
      IF t325 IS INITIAL.
        t323 = 0.
      ELSE.
        FIND t325 IN t324 MATCH OFFSET t323.
        IF sy-subrc <> 0.
          t323 = -1.
        ENDIF.
      ENDIF.
      DATA(t327) = 0.
      t322 = xsdbool( t323 >= t327 ).
      IF t322 = abap_true.
        DATA t328 TYPE REF TO zcl_lnt_issue.
        CLEAR t328.
        DATA t329 TYPE REF TO zcl_lnt_issue.
        CLEAR t329.
        DATA(t330) = t1.
        DATA t331 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t332) = t314.
        t331 = t332->get_first_token( ).
        DATA(t333) = |No dash allowed in FORM and DATA names|.
        DATA(t334) = VALUE string( ).
        DATA t335 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t335.
        DATA t336 TYPE string.
        DATA(t337) = |names_no_dash|.
        t336 = t337.
        DATA t338 TYPE string.
        DATA(t339) = |No dashes in FORM and DATA names|.
        t338 = t339.
        DATA t340 TYPE string.
        DATA(t341) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
        t341 = t341 && |names|.
        t340 = t341.
        DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t342.
        DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t343.
        DATA(t344) = abap_true.
        IF t344 = abap_true.
          DATA t345 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t347.
          t346 = t347.
          DATA(t348) = t346.
          DATA(t349) = |SingleFile|.
          t348->load( ).
          APPEND t349 TO t348->items.
          t348->save( ).
          DATA(t350) = t346.
          DATA(t351) = |Naming|.
          t350->load( ).
          APPEND t351 TO t350->items.
          t350->save( ).
          DATA(t352) = t346.
          t345 = t352.
          t343 = t345.
        ELSE.
          DATA t353 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t353.
          t343 = t353.
        ENDIF.
        t342 = t343.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t354.
        DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t355.
        DATA(t356) = abap_true.
        IF t356 = abap_true.
          DATA(t357) = |DATA foo-bar TYPE i.|.
          DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t358->has = abap_true.
          t358->value = t357.
          t355 = t358.
        ELSE.
          DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t359.
          t355 = t359.
        ENDIF.
        t354 = t355.
        DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t360.
        DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t361.
        DATA(t362) = abap_true.
        IF t362 = abap_true.
          DATA(t363) = |DATA foobar TYPE i.|.
          DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t364->has = abap_true.
          t364->value = t363.
          t361 = t364.
        ELSE.
          DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t365.
          t361 = t365.
        ENDIF.
        t360 = t361.
        DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t367.
        t366 = t367.
        DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t369.
        t368 = t369.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t371.
        t370 = t371.
        t335 = NEW zcl_lnt_irule_metadata( i_key = t336 i_title = t338 i_short_description = t340 i_bad_example = t354 i_good_example = t360 i_extended_information = t366 i_tags = t342 i_pragma = t368 i_pseudo_comment = t370 ).
        CREATE OBJECT t335->zlnt_view_ownkeys_b0e8086400eb.
        t335->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t372 ).
        ENDIF.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t373 ).
        ENDIF.
        DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t374.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t374 ).
        ENDIF.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t375 ).
        ENDIF.
        DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t376.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t376 ).
        ENDIF.
        DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t377.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t377 ).
        ENDIF.
        CREATE OBJECT t335->zlnt_json_ownkeys_70e5fd461788.
        t335->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t378) = |key|.
        DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t379.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t378 p1 = t379 ).
        ENDIF.
        DATA(t380) = |title|.
        DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t381.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t380 p1 = t381 ).
        ENDIF.
        DATA(t382) = |shortDescription|.
        DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t383.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t382 p1 = t383 ).
        ENDIF.
        DATA(t384) = |tags|.
        DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t385.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t384 p1 = t385 ).
        ENDIF.
        DATA(t386) = |badExample|.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t387.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t386 p1 = t387 ).
        ENDIF.
        DATA(t388) = |goodExample|.
        DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t389.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = t388 p1 = t389 ).
        ENDIF.
        t334 = t335->key.
        DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t391) = me->conf.
        t390 = t391->zlnt_view_read_sr_15c06369f827( ).
        DATA t392 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t392.
        t329 = zcl_lnt_issue=>at_token( i_file = t330 i_token = t331 i_message_26cb = t333 i_key = t334 i_severity = t390 i_fix = t392 ).
        t328 = t329.
        DATA(t393) = t3.
        DATA(t394) = t328.
        t393->load( ).
        APPEND t394 TO t393->items.
        t393->save( ).
      ENDIF.
    ENDDO.
    DATA(t395) = t3.
    result = t395.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_names_no_dash_conf( me->g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_names_no_dash_conf( me->g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_names_no_dash_conf.
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
        t1 = NEW zcl_lnt_names_no_dash_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1599_80b1056c54da.
  ENDMETHOD.
ENDCLASS.
