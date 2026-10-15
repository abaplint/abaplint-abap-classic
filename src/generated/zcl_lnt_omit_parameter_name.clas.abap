* TS: src/rules/omit_parameter_name.ts:20:1 OmitParameterName
CLASS zcl_lnt_omit_parameter_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_omt_prmtr_nm_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS i_i_sr_rl_om_pr_nm_ts_om_pr_nm IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_omit_parameter_name.
    METHODS g_c_i_s_r_om_pr_nm_ts_om_pr_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_omt_prmtr_nm_cnf.
    METHODS s_c_i_s_r_om_pr_nm_ts_om_pr_nm IMPORTING i_conf TYPE REF TO zcl_lnt_omt_prmtr_nm_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_method_reference IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_spaghetti TYPE REF TO zif_lnt_spaghetti_scope i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_method_parameters.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_omit_parameter_name IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_omt_prmtr_nm_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |omit_parameter_name|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Omit parameter name|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Omit the parameter name in single parameter calls|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
      t11 = t11 && |anABAP.md#omit-the-parameter-name-in-single-parameter-calls\n|.
      t11 = t11 && |\nEXPORTING must already be omitted for this rule to take eff|.
      t11 = t11 && |ect, https://rules.abaplint.org/exporting/|.
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
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |method( param = 2 ).|.
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
      DATA(t35) = |method( 2 ).|.
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

  METHOD i_i_sr_rl_om_pr_nm_ts_om_pr_nm.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_om_pr_nm_ts_om_pr_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_om_pr_nm_ts_om_pr_nm.
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
    DATA t6 TYPE abap_bool.
    DATA(t7) = t1.
    t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_abap_object ).
    t5 = xsdbool( t6 = abap_false ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zcl_lnt_abap_object.
      DATA(t11) = t1.
      DATA t12 TYPE REF TO object.
      t12 = t11.
      t10 ?= t12.
      t9 = t10->get_type( ).
      DATA(t13) = |INTF|.
      t8 = xsdbool( t9 = t13 ).
      t4 = t8.
    ENDIF.
    IF t4 = abap_true.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      result = t14.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t16 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t17 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t18 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t19) = me->reg.
    DATA t20 TYPE REF TO zcl_lnt_abap_object.
    DATA(t21) = t1.
    DATA t22 TYPE REF TO object.
    t22 = t21.
    t20 ?= t22.
    t18 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t19 i_object_19cd = t20 ).
    t17 = t18->run( ).
    t16 = t17->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t15 = t16.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zcl_lnt_abap_object.
    DATA t25 TYPE REF TO zcl_lnt_abap_object.
    DATA(t26) = t1.
    DATA t27 TYPE REF TO object.
    t27 = t26.
    t25 ?= t27.
    t24 = t25.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t29) = t24.
    t28 = t29->parsed.
    t23 = t28.
    DATA t30 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    DATA(t32) = VALUE i( ).
    DO.
      t23->load( ).
      IF t32 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t23->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_structure_node.
      DATA t36 TYPE REF TO zcl_lnt_structure_node.
      DATA t37 TYPE REF TO zcl_lnt_abap_file.
      DATA(t38) = t30.
      t37 = t38.
      DATA t39 TYPE REF TO zcl_lnt_structure_node.
      DATA(t40) = t37.
      t39 = t40->structure.
      t36 = t39.
      t35 = t36.
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE REF TO zcl_lnt_structure_node.
      DATA(t43) = t35.
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
        CONTINUE.
      ENDIF.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t49 TYPE REF TO zcl_lnt_structure_node.
      DATA(t50) = t35.
      t49 = t50.
      DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
      t48 = t49->find_all_expressions( i_type_9913 = t51 ).
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      DATA(t54) = VALUE i( ).
      DO.
        t48->load( ).
        IF t54 >= lines( t48->items ).
          EXIT.
        ENDIF.
        CLEAR t53.
        READ TABLE t48->items INDEX t54 + 1 INTO t53.
        t54 = t54 + 1.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t55.
        CLEAR t52.
        IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t55 ?= t53.
          DATA t56 TYPE REF TO object.
          t56 = t55->as_ref( ).
          t52 ?= t56.
        ELSE.
          t52 ?= t53.
        ENDIF.
        DATA t57 TYPE abap_bool.
        DATA t58 TYPE REF TO zcl_lnt_expression_node.
        DATA(t59) = t52.
        DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
        t58 = t59->find_first_expression( i_type_9913 = t60 ).
        t57 = xsdbool( t58 IS BOUND ).
        IF t57 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t63) = t52.
        DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d242_5c40a9da79b4.
        t62 = t63->find_all_expressions( i_type_9913 = t64 ).
        t61 = t62.
        DATA t65 TYPE abap_bool.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE i.
        DATA(t68) = t61.
        t68->load( ).
        t67 = lines( t68->items ).
        DATA(t69) = 1.
        t66 = xsdbool( t67 > t69 ).
        t65 = t66.
        IF t66 = abap_false.
          DATA t70 TYPE abap_bool.
          DATA t71 TYPE i.
          DATA(t72) = t61.
          t72->load( ).
          t71 = lines( t72->items ).
          DATA(t73) = 0.
          t70 = xsdbool( t71 = t73 ).
          t65 = t70.
        ENDIF.
        IF t65 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t74 TYPE REF TO zcl_lnt_expression_node.
        DATA t75 TYPE REF TO zcl_lnt_expression_node.
        DATA(t76) = t52.
        DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t75 = t76->find_direct_expression( i_type_9913 = t77 ).
        t74 = t75.
        DATA(t78) = VALUE abap_bool( ).
        DATA t79 TYPE REF TO zcl_lnt_expression_node.
        DATA(t80) = t74.
        t79 = t80.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        t81 = t82.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = t79.
        IF t84 IS INITIAL.
          t83 = abap_true.
        ENDIF.
        t78 = t83.
        IF t78 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t85 TYPE REF TO zcl_lnt_expression_node.
        DATA t86 TYPE REF TO zcl_lnt_expression_node.
        DATA(t87) = t52.
        DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
        t86 = t87->find_direct_expression( i_type_9913 = t88 ).
        t85 = t86.
        DATA(t89) = VALUE abap_bool( ).
        DATA t90 TYPE REF TO zcl_lnt_expression_node.
        DATA(t91) = t85.
        t90 = t91.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t92 = t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = t90.
        IF t95 IS INITIAL.
          t94 = abap_true.
        ENDIF.
        t89 = t94.
        IF t89 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t96 TYPE REF TO zif_lnt_method_parameters.
        DATA t97 TYPE REF TO zif_lnt_method_parameters.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        DATA t99 TYPE REF TO zcl_lnt_expression_node.
        DATA(t100) = t74.
        t99 = t100.
        t98 = t99->get_first_token( ).
        DATA(t101) = t15.
        DATA t102 TYPE string.
        DATA t103 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t104) = t30.
        t103 = t104.
        DATA t105 TYPE string.
        DATA(t106) = t103.
        t105 = t106->filename.
        t102 = t105.
        t97 = me->find_method_reference( i_token = t98 i_spaghetti = t101 i_filename = t102 ).
        t96 = t97.
        DATA(t107) = VALUE abap_bool( ).
        DATA t108 TYPE REF TO zif_lnt_method_parameters.
        DATA(t109) = t96.
        t108 = t109.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        t110 = t111.
        DATA(t112) = VALUE abap_bool( ).
        DATA(t113) = t108.
        IF t113 IS INITIAL.
          t112 = abap_true.
        ENDIF.
        t107 = t112.
        IF t107 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t116 TYPE REF TO zif_lnt_method_parameters.
        DATA(t117) = t96.
        t116 = t117.
        t115 = t116->get_default_importing( ).
        t114 = t115.
        DATA(t118) = VALUE abap_bool( ).
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t120) = t114.
        t119 = t120.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        t121 = t122.
        DATA(t123) = VALUE abap_bool( ).
        DATA(t124) = t119.
        IF t124 IS INITIAL.
          t123 = abap_true.
        ELSEIF t124->has = abap_false.
          t123 = abap_true.
        ENDIF.
        t118 = t123.
        IF t118 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t125 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t125.
        DATA t126 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t126.
        DATA t127 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t127.
        DATA t128 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t128.
        DATA t129 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t129.
        DATA(t130) = t61.
        DATA t131 TYPE REF TO object.
        CLEAR t131.
        t130->load( ).
        CLEAR t131.
        READ TABLE t130->items INDEX 1 INTO t131.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        CLEAR t129.
        IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t132 ?= t131.
          DATA t133 TYPE REF TO object.
          t133 = t132->as_ref( ).
          t129 ?= t133.
        ELSE.
          t129 ?= t131.
        ENDIF.
        DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
        t128 = t129->find_direct_expression( i_type_9913 = t134 ).
        t127 = t128.
        DATA t135 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t135.
        DATA(t136) = VALUE abap_bool( ).
        DATA(t137) = t127.
        IF t137 IS INITIAL.
          t136 = abap_true.
        ENDIF.
        IF t136 = abap_true.
          DATA t138 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t138.
          t135 = t138.
        ELSE.
          DATA t139 TYPE REF TO zcl_lnt_abstract_token.
          DATA t140 TYPE REF TO zcl_lnt_expression_node.
          DATA(t141) = t127.
          t140 = t141.
          t139 = t140->get_first_token( ).
          t135 = t139.
        ENDIF.
        t126 = t135.
        t125 = t126.
        DATA(t142) = VALUE abap_bool( ).
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA t146 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t147) = t125.
        t146 = t147.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA(t149) = VALUE abap_bool( ).
        DATA(t150) = t146.
        IF t150 IS INITIAL.
          t149 = abap_true.
        ENDIF.
        IF t149 = abap_true.
          DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t151.
          t148 = t151.
        ELSE.
          DATA t152 TYPE string.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t155) = t146.
          t154 = t155.
          t153 = t154.
          DATA t156 TYPE string.
          DATA(t157) = t153.
          t156 = t157->str.
          t152 = t156.
          DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t158->has = abap_true.
          t158->value = t152.
          t148 = t158.
        ENDIF.
        t145 = t148.
        t144 = t145.
        DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t159.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = t144.
        IF t161 IS INITIAL.
          t160 = abap_true.
        ELSEIF t161->has = abap_false.
          t160 = abap_true.
        ENDIF.
        IF t160 = abap_true.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          t159 = t162.
        ELSE.
          DATA t163 TYPE string.
          DATA t164 TYPE string.
          DATA(t165) = t144.
          t164 = t165->value.
          DATA(t166) = strlen( t164 ).
          t163 = t164.
          IF t163 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t163 TO UPPER CASE.
          ELSE.
            t163 = zlnt_runtime_uppe_91169605024d=>full( t163 ).
          ENDIF.
          DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t167->has = abap_true.
          t167->value = t163.
          t159 = t167.
        ENDIF.
        t143 = t159.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        DATA(t169) = abap_true.
        IF t169 = abap_true.
          DATA t170 TYPE string.
          DATA t171 TYPE string.
          DATA(t172) = t114.
          t171 = t172->value.
          DATA(t173) = strlen( t171 ).
          t170 = t171.
          IF t170 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t170 TO UPPER CASE.
          ELSE.
            t170 = zlnt_runtime_uppe_91169605024d=>full( t170 ).
          ENDIF.
          DATA(t174) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t174->has = abap_true.
          t174->value = t170.
          t168 = t174.
        ELSE.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          t168 = t175.
        ENDIF.
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = VALUE abap_bool( ).
        IF t143 IS BOUND.
          t176 = t143->has.
        ENDIF.
        IF t168 IS BOUND.
          t177 = t168->has.
        ENDIF.
        IF t176 = t177.
          IF t176 = abap_false.
            t142 = abap_true.
          ELSEIF t143->value = t168->value.
            t142 = abap_true.
          ENDIF.
        ENDIF.
        IF t142 = abap_true.
          DATA t178 TYPE string.
          DATA t179 TYPE string.
          DATA t180 TYPE string.
          DATA(t181) = |Omit default parameter name "|.
          DATA t182 TYPE string.
          DATA(t183) = t114.
          t182 = t183->value.
          DATA(t184) = strlen( t181 ).
          t180 = |{ t181 }{ t182 }|.
          DATA(t185) = |"|.
          DATA(t186) = strlen( t180 ).
          t179 = |{ t180 }{ t185 }|.
          t178 = t179.
          DATA t187 TYPE REF TO zcl_lnt_position.
          CLEAR t187.
          DATA t188 TYPE REF TO zcl_lnt_position.
          CLEAR t188.
          DATA t189 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t189.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t190.
          DATA t191 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t191.
          DATA t192 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t192.
          DATA t193 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t193.
          DATA(t194) = t61.
          DATA t195 TYPE REF TO object.
          CLEAR t195.
          t194->load( ).
          CLEAR t195.
          READ TABLE t194->items INDEX 1 INTO t195.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          CLEAR t193.
          IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t196 ?= t195.
            DATA t197 TYPE REF TO object.
            t197 = t196->as_ref( ).
            t193 ?= t197.
          ELSE.
            t193 ?= t195.
          ENDIF.
          DATA(t198) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
          t192 = t193->find_direct_expression( i_type_9913 = t198 ).
          t191 = t192.
          DATA t199 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t199.
          DATA(t200) = VALUE abap_bool( ).
          DATA(t201) = t191.
          IF t201 IS INITIAL.
            t200 = abap_true.
          ENDIF.
          IF t200 = abap_true.
            DATA t202 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t202.
            t199 = t202.
          ELSE.
            DATA t203 TYPE REF TO zcl_lnt_abstract_token.
            DATA t204 TYPE REF TO zcl_lnt_expression_node.
            DATA(t205) = t191.
            t204 = t205.
            t203 = t204->get_first_token( ).
            t199 = t203.
          ENDIF.
          t190 = t199.
          t189 = t190.
          DATA t206 TYPE REF TO zcl_lnt_position.
          CLEAR t206.
          DATA(t207) = VALUE abap_bool( ).
          DATA(t208) = t189.
          IF t208 IS INITIAL.
            t207 = abap_true.
          ENDIF.
          IF t207 = abap_true.
            DATA t209 TYPE REF TO zcl_lnt_position.
            CLEAR t209.
            t206 = t209.
          ELSE.
            DATA t210 TYPE REF TO zcl_lnt_position.
            DATA t211 TYPE REF TO zcl_lnt_abstract_token.
            DATA t212 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t213) = t189.
            t212 = t213.
            t211 = t212.
            DATA t214 TYPE REF TO zcl_lnt_position.
            DATA(t215) = t211.
            t214 = t215->start.
            t210 = t214.
            t206 = t210.
          ENDIF.
          t188 = t206.
          t187 = t188.
          DATA t216 TYPE abap_bool.
          DATA(t217) = t187.
          t216 = xsdbool( t217 IS BOUND ).
          IF t216 = abap_true.
            DATA t218 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t219 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t220) = t30.
            DATA t221 TYPE REF TO zcl_lnt_position.
            DATA t222 TYPE REF TO zcl_lnt_abstract_token.
            DATA t223 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t224) = t125.
            t223 = t224.
            t222 = t223.
            DATA t225 TYPE REF TO zcl_lnt_position.
            DATA(t226) = t222.
            t225 = t226->start.
            t221 = t225.
            DATA t227 TYPE REF TO zcl_lnt_position.
            DATA(t228) = t187.
            t227 = t228.
            t219 = zcl_lnt_edit_helper=>delete_range( i_file = t220 i_start = t221 i_end = t227 ).
            t218 = t219.
            DATA(t229) = t2.
            DATA t230 TYPE REF TO zcl_lnt_issue.
            CLEAR t230.
            DATA(t231) = t30.
            DATA t232 TYPE REF TO zcl_lnt_position.
            DATA t233 TYPE REF TO zcl_lnt_abstract_token.
            DATA t234 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t235) = t125.
            t234 = t235.
            t233 = t234.
            DATA t236 TYPE REF TO zcl_lnt_position.
            DATA(t237) = t233.
            t236 = t237->start.
            t232 = t236.
            DATA t238 TYPE REF TO zcl_lnt_position.
            DATA(t239) = t187.
            t238 = t239.
            DATA(t240) = t178.
            DATA(t241) = VALUE string( ).
            DATA t242 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t242.
            DATA t243 TYPE string.
            DATA(t244) = |omit_parameter_name|.
            t243 = t244.
            DATA t245 TYPE string.
            DATA(t246) = |Omit parameter name|.
            t245 = t246.
            DATA t247 TYPE string.
            DATA(t248) = |Omit the parameter name in single parameter calls|.
            t247 = t248.
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            DATA(t251) = abap_true.
            IF t251 = abap_true.
              DATA(t252) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
              t252 = t252 && |anABAP.md#omit-the-parameter-name-in-single-parameter-calls\n|.
              t252 = t252 && |\nEXPORTING must already be omitted for this rule to take eff|.
              t252 = t252 && |ect, https://rules.abaplint.org/exporting/|.
              DATA(t253) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t253->has = abap_true.
              t253->value = t252.
              t250 = t253.
            ELSE.
              DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t254.
              t250 = t254.
            ENDIF.
            t249 = t250.
            DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t255.
            DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t256.
            DATA(t257) = abap_true.
            IF t257 = abap_true.
              DATA t258 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t259 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t260.
              t259 = t260.
              DATA(t261) = t259.
              DATA(t262) = |Styleguide|.
              t261->load( ).
              APPEND t262 TO t261->items.
              t261->save( ).
              DATA(t263) = t259.
              DATA(t264) = |Quickfix|.
              t263->load( ).
              APPEND t264 TO t263->items.
              t263->save( ).
              DATA(t265) = t259.
              t258 = t265.
              t256 = t258.
            ELSE.
              DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t266.
              t256 = t266.
            ENDIF.
            t255 = t256.
            DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t267.
            DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t268.
            DATA(t269) = abap_true.
            IF t269 = abap_true.
              DATA(t270) = |method( param = 2 ).|.
              DATA(t271) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t271->has = abap_true.
              t271->value = t270.
              t268 = t271.
            ELSE.
              DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t272.
              t268 = t272.
            ENDIF.
            t267 = t268.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t273.
            DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t274.
            DATA(t275) = abap_true.
            IF t275 = abap_true.
              DATA(t276) = |method( 2 ).|.
              DATA(t277) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t277->has = abap_true.
              t277->value = t276.
              t274 = t277.
            ELSE.
              DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t278.
              t274 = t278.
            ENDIF.
            t273 = t274.
            DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t280.
            t279 = t280.
            DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t282.
            t281 = t282.
            t242 = NEW zcl_lnt_irule_metadata( i_key = t243 i_title = t245 i_short_description = t247 i_bad_example = t267 i_good_example = t273 i_extended_information = t249 i_tags = t255 i_pragma = t279 i_pseudo_comment = t281 ).
            CREATE OBJECT t242->zlnt_view_ownkeys_b0e8086400eb.
            t242->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t283.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t283 ).
            ENDIF.
            DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t284.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t284 ).
            ENDIF.
            DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t285.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t285 ).
            ENDIF.
            DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t286.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t286 ).
            ENDIF.
            DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t287.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t287 ).
            ENDIF.
            DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t288.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t288 ).
            ENDIF.
            DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t289.
            IF t242->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t242->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t289 ).
            ENDIF.
            CREATE OBJECT t242->zlnt_json_ownkeys_70e5fd461788.
            t242->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t290) = |key|.
            DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t291.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
            ENDIF.
            DATA(t292) = |title|.
            DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t293.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
            ENDIF.
            DATA(t294) = |shortDescription|.
            DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t295.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
            ENDIF.
            DATA(t296) = |extendedInformation|.
            DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t297.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
            ENDIF.
            DATA(t298) = |tags|.
            DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t299.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t298 p1 = t299 ).
            ENDIF.
            DATA(t300) = |badExample|.
            DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t301.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t300 p1 = t301 ).
            ENDIF.
            DATA(t302) = |goodExample|.
            DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t303.
            IF t242->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t242->zlnt_json_ownkeys_70e5fd461788->put( p0 = t302 p1 = t303 ).
            ENDIF.
            t241 = t242->key.
            DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t305) = CAST zcl_lnt_omt_prmtr_nm_cnf( me->g_c_i_s_r_om_pr_nm_ts_om_pr_nm( ) ).
            t304 = t305->zlnt_view_read_sr_15c06369f827( ).
            DATA t306 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t306.
            DATA(t307) = abap_true.
            IF t307 = abap_true.
              DATA(t308) = t218.
              t306 = t308.
            ELSE.
              DATA t309 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t309.
              t306 = t309.
            ENDIF.
            DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t310.
            t230 = zcl_lnt_issue=>at_range( i_file = t231 i_start = t232 i_end = t238 i_message_26cb = t240 i_key = t241 i_severity = t304 i_fix = t306 i_alternative_fixes = t310 ).
            t229->load( ).
            APPEND t230 TO t229->items.
            t229->save( ).
          ELSE.
            DATA(t311) = t2.
            DATA t312 TYPE REF TO zcl_lnt_issue.
            CLEAR t312.
            DATA(t313) = t30.
            DATA t314 TYPE REF TO zcl_lnt_abstract_token.
            DATA t315 TYPE REF TO zcl_lnt_expression_node.
            DATA(t316) = t74.
            t315 = t316.
            t314 = t315->get_first_token( ).
            DATA(t317) = t178.
            DATA(t318) = VALUE string( ).
            DATA t319 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t319.
            DATA t320 TYPE string.
            DATA(t321) = |omit_parameter_name|.
            t320 = t321.
            DATA t322 TYPE string.
            DATA(t323) = |Omit parameter name|.
            t322 = t323.
            DATA t324 TYPE string.
            DATA(t325) = |Omit the parameter name in single parameter calls|.
            t324 = t325.
            DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t326.
            DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t327.
            DATA(t328) = abap_true.
            IF t328 = abap_true.
              DATA(t329) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
              t329 = t329 && |anABAP.md#omit-the-parameter-name-in-single-parameter-calls\n|.
              t329 = t329 && |\nEXPORTING must already be omitted for this rule to take eff|.
              t329 = t329 && |ect, https://rules.abaplint.org/exporting/|.
              DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t330->has = abap_true.
              t330->value = t329.
              t327 = t330.
            ELSE.
              DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t331.
              t327 = t331.
            ENDIF.
            t326 = t327.
            DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t332.
            DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t333.
            DATA(t334) = abap_true.
            IF t334 = abap_true.
              DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t336 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t337.
              t336 = t337.
              DATA(t338) = t336.
              DATA(t339) = |Styleguide|.
              t338->load( ).
              APPEND t339 TO t338->items.
              t338->save( ).
              DATA(t340) = t336.
              DATA(t341) = |Quickfix|.
              t340->load( ).
              APPEND t341 TO t340->items.
              t340->save( ).
              DATA(t342) = t336.
              t335 = t342.
              t333 = t335.
            ELSE.
              DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t343.
              t333 = t343.
            ENDIF.
            t332 = t333.
            DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t344.
            DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t345.
            DATA(t346) = abap_true.
            IF t346 = abap_true.
              DATA(t347) = |method( param = 2 ).|.
              DATA(t348) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t348->has = abap_true.
              t348->value = t347.
              t345 = t348.
            ELSE.
              DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t349.
              t345 = t349.
            ENDIF.
            t344 = t345.
            DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t350.
            DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t351.
            DATA(t352) = abap_true.
            IF t352 = abap_true.
              DATA(t353) = |method( 2 ).|.
              DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t354->has = abap_true.
              t354->value = t353.
              t351 = t354.
            ELSE.
              DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t355.
              t351 = t355.
            ENDIF.
            t350 = t351.
            DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t357.
            t356 = t357.
            DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t359.
            t358 = t359.
            t319 = NEW zcl_lnt_irule_metadata( i_key = t320 i_title = t322 i_short_description = t324 i_bad_example = t344 i_good_example = t350 i_extended_information = t326 i_tags = t332 i_pragma = t356 i_pseudo_comment = t358 ).
            CREATE OBJECT t319->zlnt_view_ownkeys_b0e8086400eb.
            t319->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t360.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t360 ).
            ENDIF.
            DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t361.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t361 ).
            ENDIF.
            DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t362.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t362 ).
            ENDIF.
            DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t363.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t363 ).
            ENDIF.
            DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t364.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t364 ).
            ENDIF.
            DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t365.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t365 ).
            ENDIF.
            DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t366.
            IF t319->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t319->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t366 ).
            ENDIF.
            CREATE OBJECT t319->zlnt_json_ownkeys_70e5fd461788.
            t319->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t367) = |key|.
            DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t368.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = t367 p1 = t368 ).
            ENDIF.
            DATA(t369) = |title|.
            DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t370.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = t369 p1 = t370 ).
            ENDIF.
            DATA(t371) = |shortDescription|.
            DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t372.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = t371 p1 = t372 ).
            ENDIF.
            DATA(t373) = |extendedInformation|.
            DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t374.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = t373 p1 = t374 ).
            ENDIF.
            DATA(t375) = |tags|.
            DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t376.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
            ENDIF.
            DATA(t377) = |badExample|.
            DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t378.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = t377 p1 = t378 ).
            ENDIF.
            DATA(t379) = |goodExample|.
            DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t380.
            IF t319->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t319->zlnt_json_ownkeys_70e5fd461788->put( p0 = t379 p1 = t380 ).
            ENDIF.
            t318 = t319->key.
            DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t382) = CAST zcl_lnt_omt_prmtr_nm_cnf( me->g_c_i_s_r_om_pr_nm_ts_om_pr_nm( ) ).
            t381 = t382->zlnt_view_read_sr_15c06369f827( ).
            DATA t383 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t383.
            t312 = zcl_lnt_issue=>at_token( i_file = t313 i_token = t314 i_message_26cb = t317 i_key = t318 i_severity = t381 i_fix = t383 ).
            t311->load( ).
            APPEND t312 TO t311->items.
            t311->save( ).
          ENDIF.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t384) = t2.
    result = t384.

  ENDMETHOD.

  METHOD find_method_reference.
    DATA(t1) = i_token.
    DATA(t2) = i_spaghetti.
    DATA(t3) = i_filename.
    DATA t4 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t5.
    DATA(t6) = t2.
    DATA t7 TYPE REF TO zcl_lnt_position.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_position.
      DATA t10 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t11) = t1.
      t10 = t11.
      DATA t12 TYPE REF TO zcl_lnt_position.
      DATA(t13) = t10.
      t12 = t13->start.
      t9 = t12.
      t7 = t9.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_position.
      CLEAR t14.
      t7 = t14.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = t3.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t5 = t6->lookup_position( i_p = t7 i_filename = t15 ).
    t4 = t5.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t22) = t4.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    IF t20 = abap_true.
      DATA t27 TYPE REF TO zif_lnt_method_parameters.
      CLEAR t27.
      result = t27.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zcl_lnt_iscope_data.
    DATA t30 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t31) = t4.
    t30 = t31.
    t29 = t30->get_data( ).
    t28 = t29->references.
    DATA t32 TYPE REF TO zcl_lnt_ireference.
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
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE string.
      DATA(t40) = t32.
      t39 = t40->reference_type.
      DATA(t41) = |Method|.
      t38 = xsdbool( t39 <> t41 ).
      t37 = t38.
      IF t38 = abap_true.
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE string.
        DATA(t44) = t32.
        t43 = t44->reference_type.
        DATA(t45) = |Builtin Method|.
        t42 = xsdbool( t43 <> t45 ).
        t37 = t42.
      ENDIF.
      IF t37 = abap_true.
        CONTINUE.
      ELSE.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE REF TO zcl_lnt_position.
        DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t49 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t50) = t32.
        t49 = t50->position_7b94.
        t48 = t49.
        DATA t51 TYPE REF TO zcl_lnt_position.
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = t48.
        t53 = t54->token.
        t52 = t53.
        DATA t55 TYPE REF TO zcl_lnt_position.
        DATA(t56) = t52.
        t55 = t56->start.
        t51 = t55.
        t47 = t51.
        DATA t57 TYPE REF TO zcl_lnt_position.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t59) = t1.
        t58 = t59.
        DATA t60 TYPE REF TO zcl_lnt_position.
        DATA(t61) = t58.
        t60 = t61->start.
        t57 = t60.
        t46 = t47->equals( i_p = t57 ).
        IF t46 = abap_true.
          DATA t62 TYPE abap_bool.
          DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t64) = t32.
          t63 = t64->resolved.
          t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_built_in_method ).
          IF t62 = abap_true.
            DATA t65 TYPE REF TO zcl_lnt_built_in_method.
            DATA t66 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t67) = t32.
            t66 = t67->resolved.
            t65 ?= t66.
            result = t65.
            RETURN.
          ELSE.
            DATA t68 TYPE abap_bool.
            DATA t69 TYPE REF TO zcl_lnt_fi_identifier.
            DATA(t70) = t32.
            t69 = t70->resolved.
            t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_method_definition ).
            IF t68 = abap_true.
              DATA t71 TYPE REF TO zcl_lnt_ty_method_parameters.
              DATA t72 TYPE REF TO zcl_lnt_method_definition.
              DATA t73 TYPE REF TO zcl_lnt_fi_identifier.
              DATA(t74) = t32.
              t73 = t74->resolved.
              t72 ?= t73.
              t71 = t72->g_p_in_sr_ab_ty_mt_df_ts_mt_df( ).
              result = t71.
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t75 TYPE REF TO zif_lnt_method_parameters.
    CLEAR t75.
    result = t75.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_omit_parameter_name.
    DATA(t3) = t1.
    t2 = me->i_i_sr_rl_om_pr_nm_ts_om_pr_nm( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_omt_prmtr_nm_cnf( me->g_c_i_s_r_om_pr_nm_ts_om_pr_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_omt_prmtr_nm_cnf( me->g_c_i_s_r_om_pr_nm_ts_om_pr_nm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_omt_prmtr_nm_cnf.
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
        t2 = NEW zcl_lnt_omt_prmtr_nm_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_om_pr_nm_ts_om_pr_nm( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1635_f8f587679206.
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
