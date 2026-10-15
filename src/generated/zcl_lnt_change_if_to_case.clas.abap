* TS: src/rules/change_if_to_case.ts:18:1 ChangeIfToCase
CLASS zcl_lnt_change_if_to_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_change_if_to_case_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_c_i_t_c_t_ch_if_t_cs RETURNING VALUE(result) TYPE REF TO zcl_lnt_change_if_to_case_conf.
    METHODS s_c_i_s_r_c_i_t_c_t_ch_if_t_cs IMPORTING i_conf TYPE REF TO zcl_lnt_change_if_to_case_conf.
    METHODS r_p_i_s_r_c_i_t_c_t_ch_if_t_cs IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze IMPORTING i_conds TYPE REF TO zlnt_runtime_arra_3615468a4bf8 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_change_if_to_case IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_change_if_to_case_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |change_if_to_case|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Change IF to CASE|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Finds IF constructs that can be changed to CASE|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#prefer-case-to-else-if-for-multiple-alternative-con|.
      t11 = t11 && |ditions\n\nIf the first comparison is a boolean compare, no is|.
      t11 = t11 && |sue is reported.|.
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
      DATA(t23) = |Styleguide|.
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
      DATA(t29) = |IF l_fcat-fieldname EQ 'FOO'.\nELSEIF l_fcat-fieldname = 'BAR|.
      t29 = t29 && |'\n    OR l_fcat-fieldname = 'MOO'.\nENDIF.|.
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
      DATA(t35) = |CASE l_fcat-fieldname.\n  WHEN 'FOO'.\n  WHEN 'BAR' OR 'MOO'.\n|.
      t35 = t35 && |ENDCASE.|.
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

  METHOD g_c_i_s_r_c_i_t_c_t_ch_if_t_cs.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_c_i_t_c_t_ch_if_t_cs.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_c_i_t_c_t_ch_if_t_cs.
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
      DATA(t17) = t2.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA(t20) = t4.
    t19 = t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
    t18 = t19->find_all_structures_recursive( i_type_9913 = t21 ).
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
      DATA t27 TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
      DATA t28 TYPE REF TO zlnt_runtime_arra_3615468a4bf8.
      CREATE OBJECT t28.
      t27 = t28.
      DATA t29 TYPE REF TO zcl_lnt_statement_node.
      DATA t30 TYPE REF TO zcl_lnt_statement_node.
      DATA(t31) = t22.
      DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d525_ab3a9a5b3f8b.
      t30 = t31->find_direct_statement( i_type_9913 = t32 ).
      t29 = t30.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zcl_lnt_statement_node.
      DATA(t35) = t29.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      t36 = t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t34.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ENDIF.
      t33 = t38.
      IF t33 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t40 TYPE abap_bool.
      DATA t41 TYPE string.
      DATA t42 TYPE string.
      DATA t43 TYPE REF TO zcl_lnt_statement_node.
      DATA(t44) = t29.
      t43 = t44.
      t42 = t43->concat_tokens( ).
      t41 = t42.
      DATA t45 TYPE abap_bool.
      DATA t46 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t46.
      DATA(t47) = ` (abap_true|abap_false)\s*\.`.
      DATA(t48) = | (abap_true\|abap_false)[\t\n|.
      DATA t49 TYPE c LENGTH 1.
      CLEAR t49.
      t49 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t48 t49 INTO t48 RESPECTING BLANKS.
      DATA t50 TYPE c LENGTH 1.
      CLEAR t50.
      t50 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t48 t50 INTO t48 RESPECTING BLANKS.
      t48 = t48 && |\r    - |.
      DATA t51 TYPE c LENGTH 1.
      CLEAR t51.
      t51 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t48 t51 INTO t48 RESPECTING BLANKS.
      DATA t52 TYPE c LENGTH 1.
      CLEAR t52.
      t52 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t48 t52 INTO t48 RESPECTING BLANKS.
      t48 = t48 && |  　|.
      DATA t53 TYPE c LENGTH 1.
      CLEAR t53.
      t53 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t48 t53 INTO t48 RESPECTING BLANKS.
      t48 = t48 && `]*\.`.
      DATA(t54) = |i|.
      CREATE OBJECT t46 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t48 flags = t54.
      t46->source = t47.
      DATA(t55) = t41.
      t45 = t46->match_test( p0 = t55 ).
      t40 = t45.
      IF t40 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t56) = t27.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t57.
      DATA t58 TYPE REF TO zcl_lnt_statement_node.
      DATA t59 TYPE REF TO zcl_lnt_statement_node.
      DATA(t60) = t29.
      t59 = t60.
      t58 = t59.
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t61.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t58.
      IF t63 IS INITIAL.
        t62 = abap_true.
      ENDIF.
      IF t62 = abap_true.
        DATA t64 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t64.
        t61 = t64.
      ELSE.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        DATA(t66) = t58.
        DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
        t65 = t66->find_direct_expression( i_type_9913 = t67 ).
        t61 = t65.
      ENDIF.
      t57 = t61.
      t56->load( ).
      APPEND t57 TO t56->items.
      t56->save( ).
      DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t69) = t22.
      DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
      t68 = t69->find_direct_structures( i_type_9913 = t70 ).
      DATA t71 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      DATA(t73) = VALUE i( ).
      DO.
        t68->load( ).
        IF t73 >= lines( t68->items ).
          EXIT.
        ENDIF.
        CLEAR t72.
        READ TABLE t68->items INDEX t73 + 1 INTO t72.
        t73 = t73 + 1.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        CLEAR t71.
        IF t72 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t72.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t71 ?= t75.
        ELSE.
          t71 ?= t72.
        ENDIF.
        DATA(t76) = t27.
        DATA t77 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_statement_node.
        DATA t79 TYPE REF TO zcl_lnt_statement_node.
        DATA(t80) = t71.
        DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d457_9791cc858be9.
        t79 = t80->find_direct_statement( i_type_9913 = t81 ).
        t78 = t79.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t82.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = t78.
        IF t84 IS INITIAL.
          t83 = abap_true.
        ENDIF.
        IF t83 = abap_true.
          DATA t85 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t85.
          t82 = t85.
        ELSE.
          DATA t86 TYPE REF TO zcl_lnt_expression_node.
          DATA t87 TYPE REF TO zcl_lnt_statement_node.
          DATA(t88) = t78.
          t87 = t88.
          DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
          t86 = t87->find_direct_expression( i_type_9913 = t89 ).
          t82 = t86.
        ENDIF.
        t77 = t82.
        t76->load( ).
        APPEND t77 TO t76->items.
        t76->save( ).
      ENDDO.
      DATA t90 TYPE abap_bool.
      DATA t91 TYPE i.
      DATA(t92) = t27.
      t92->load( ).
      t91 = lines( t92->items ).
      DATA(t93) = 1.
      t90 = xsdbool( t91 = t93 ).
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t94 TYPE abap_bool.
      DATA t95 TYPE abap_bool.
      DATA(t96) = t27.
      t95 = me->analyze( i_conds = t96 ).
      t94 = t95.
      DATA t97 TYPE abap_bool.
      DATA(t98) = t94.
      DATA(t99) = abap_true.
      t97 = xsdbool( t98 = t99 ).
      IF t97 = abap_true.
        DATA t100 TYPE string.
        DATA(t101) = |Change IF to CASE|.
        t100 = t101.
        DATA(t102) = t2.
        DATA t103 TYPE REF TO zcl_lnt_issue.
        CLEAR t103.
        DATA(t104) = t1.
        DATA t105 TYPE REF TO zcl_lnt_statement_node.
        DATA(t106) = t29.
        t105 = t106.
        DATA(t107) = t100.
        DATA(t108) = VALUE string( ).
        DATA t109 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t109.
        DATA t110 TYPE string.
        DATA(t111) = |change_if_to_case|.
        t110 = t111.
        DATA t112 TYPE string.
        DATA(t113) = |Change IF to CASE|.
        t112 = t113.
        DATA t114 TYPE string.
        DATA(t115) = |Finds IF constructs that can be changed to CASE|.
        t114 = t115.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA(t119) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t119 = t119 && |nABAP.md#prefer-case-to-else-if-for-multiple-alternative-con|.
          t119 = t119 && |ditions\n\nIf the first comparison is a boolean compare, no is|.
          t119 = t119 && |sue is reported.|.
          DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t120->has = abap_true.
          t120->value = t119.
          t117 = t120.
        ELSE.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          t117 = t121.
        ENDIF.
        t116 = t117.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t123.
        DATA(t124) = abap_true.
        IF t124 = abap_true.
          DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t127.
          t126 = t127.
          DATA(t128) = t126.
          DATA(t129) = |SingleFile|.
          t128->load( ).
          APPEND t129 TO t128->items.
          t128->save( ).
          DATA(t130) = t126.
          DATA(t131) = |Styleguide|.
          t130->load( ).
          APPEND t131 TO t130->items.
          t130->save( ).
          DATA(t132) = t126.
          t125 = t132.
          t123 = t125.
        ELSE.
          DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t133.
          t123 = t133.
        ENDIF.
        t122 = t123.
        DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA(t137) = |IF l_fcat-fieldname EQ 'FOO'.\nELSEIF l_fcat-fieldname = 'BAR|.
          t137 = t137 && |'\n    OR l_fcat-fieldname = 'MOO'.\nENDIF.|.
          DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t138->has = abap_true.
          t138->value = t137.
          t135 = t138.
        ELSE.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          t135 = t139.
        ENDIF.
        t134 = t135.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA(t142) = abap_true.
        IF t142 = abap_true.
          DATA(t143) = |CASE l_fcat-fieldname.\n  WHEN 'FOO'.\n  WHEN 'BAR' OR 'MOO'.\n|.
          t143 = t143 && |ENDCASE.|.
          DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t144->has = abap_true.
          t144->value = t143.
          t141 = t144.
        ELSE.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          t141 = t145.
        ENDIF.
        t140 = t141.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        t146 = t147.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t148 = t149.
        t109 = NEW zcl_lnt_irule_metadata( i_key = t110 i_title = t112 i_short_description = t114 i_bad_example = t134 i_good_example = t140 i_extended_information = t116 i_tags = t122 i_pragma = t146 i_pseudo_comment = t148 ).
        CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
        t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t150 ).
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t155 ).
        ENDIF.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t156 ).
        ENDIF.
        CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
        t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t157) = |key|.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
        ENDIF.
        DATA(t159) = |title|.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
        ENDIF.
        DATA(t161) = |shortDescription|.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
        ENDIF.
        DATA(t163) = |extendedInformation|.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
        ENDIF.
        DATA(t165) = |tags|.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
        ENDIF.
        DATA(t167) = |badExample|.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
        ENDIF.
        DATA(t169) = |goodExample|.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
        ENDIF.
        t108 = t109->key.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t172) = CAST zcl_lnt_change_if_to_case_conf( me->g_c_i_s_r_c_i_t_c_t_ch_if_t_cs( ) ).
        t171 = t172->zlnt_view_read_sr_15c06369f827( ).
        DATA t173 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t173.
        DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t174.
        t103 = zcl_lnt_issue=>at_statement( i_file = t104 i_statement = t105 i_message_26cb = t107 i_key = t108 i_severity = t171 i_fix = t173 i_alternative_fixes = t174 ).
        t102->load( ).
        APPEND t103 TO t102->items.
        t102->save( ).
      ENDIF.
    ENDDO.
    DATA(t175) = t2.
    result = t175.

  ENDMETHOD.

  METHOD analyze.
    DATA(t1) = i_conds.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA(t6) = VALUE i( ).
    DO.
      t4->load( ).
      IF t6 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t4->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA(t7) = VALUE abap_bool( ).
      DATA t8 TYPE REF TO zcl_lnt_expression_node.
      DATA(t9) = t5.
      t8 = t9.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      t10 = t11.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t8.
      IF t13 IS INITIAL.
        t12 = abap_true.
      ENDIF.
      t7 = t12.
      IF t7 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t17) = t5.
      t16 = t17.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054.
      t15 = t16->find_first_expression( i_type_9913 = t18 ).
      t14 = xsdbool( t15 IS BOUND ).
      IF t14 = abap_true.
        DATA(t19) = abap_false.
        result = t19.
        RETURN.
      ELSE.
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        DATA(t24) = t5.
        t23 = t24.
        DATA(t25) = |AND|.
        t22 = t23->find_direct_token_by_text( i_text = t25 ).
        t21 = xsdbool( t22 IS BOUND ).
        t20 = t21.
        IF t21 = abap_false.
          DATA t26 TYPE abap_bool.
          DATA t27 TYPE REF TO zcl_lnt_abstract_token.
          DATA t28 TYPE REF TO zcl_lnt_expression_node.
          DATA(t29) = t5.
          t28 = t29.
          DATA(t30) = |EQUIV|.
          t27 = t28->find_direct_token_by_text( i_text = t30 ).
          t26 = xsdbool( t27 IS BOUND ).
          t20 = t26.
        ENDIF.
        IF t20 = abap_true.
          DATA(t31) = abap_false.
          result = t31.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      DATA(t34) = t5.
      t33 = t34.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
      t32 = t33->find_all_expressions( i_type_9913 = t35 ).
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      DATA(t38) = VALUE i( ).
      DO.
        t32->load( ).
        IF t38 >= lines( t32->items ).
          EXIT.
        ENDIF.
        CLEAR t37.
        READ TABLE t32->items INDEX t38 + 1 INTO t37.
        t38 = t38 + 1.
        DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t39.
        CLEAR t36.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t39 ?= t37.
          DATA t40 TYPE REF TO object.
          t40 = t39->as_ref( ).
          t36 ?= t40.
        ELSE.
          t36 ?= t37.
        ENDIF.
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        DATA(t47) = t36.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
        t46 = t47->find_direct_expression( i_type_9913 = t48 ).
        t45 = t46.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = t45.
        IF t51 IS INITIAL.
          t50 = abap_true.
        ENDIF.
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t49 = t52.
        ELSE.
          DATA t53 TYPE string.
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          DATA(t55) = t45.
          t54 = t55.
          t53 = t54->concat_tokens( ).
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t53.
          t49 = t56.
        ENDIF.
        t44 = t49.
        t43 = t44.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t43.
        IF t59 IS INITIAL.
          t58 = abap_true.
        ELSEIF t59->has = abap_false.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t57 = t60.
        ELSE.
          DATA t61 TYPE string.
          DATA t62 TYPE string.
          DATA(t63) = t43.
          t62 = t63->value.
          DATA(t64) = strlen( t62 ).
          t61 = t62.
          IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t61 TO UPPER CASE.
          ELSE.
            t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
          ENDIF.
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t61.
          t57 = t65.
        ENDIF.
        t42 = t57.
        t41 = t42.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE i.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t70 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t71) = t36.
        t70 = t71.
        DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t73) = t70.
        t72 = t73->children.
        t69 = t72.
        t68 ?= t69.
        t68->load( ).
        t67 = lines( t68->items ).
        DATA(t74) = 3.
        t66 = xsdbool( t67 <> t74 ).
        IF t66 = abap_true.
          DATA(t75) = abap_false.
          result = t75.
          RETURN.
        ELSE.
          DATA(t76) = VALUE abap_bool( ).
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = t41.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          DATA(t80) = abap_true.
          IF t80 = abap_true.
            DATA(t81) = |=|.
            DATA(t82) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t82->has = abap_true.
            t82->value = t81.
            t79 = t82.
          ELSE.
            DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t83.
            t79 = t83.
          ENDIF.
          DATA(t84) = VALUE abap_bool( ).
          DATA(t85) = VALUE abap_bool( ).
          IF t78 IS BOUND.
            t84 = t78->has.
          ENDIF.
          IF t79 IS BOUND.
            t85 = t79->has.
          ENDIF.
          IF t84 = t85.
            IF t84 = abap_false.
              t77 = abap_true.
            ELSEIF t78->value = t79->value.
              t77 = abap_true.
            ENDIF.
          ENDIF.
          IF t77 = abap_true.
            t77 = abap_false.
          ELSE.
            t77 = abap_true.
          ENDIF.
          t76 = t77.
          IF t77 = abap_true.
            DATA(t86) = VALUE abap_bool( ).
            DATA(t87) = t41.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            DATA(t89) = abap_true.
            IF t89 = abap_true.
              DATA(t90) = |EQ|.
              DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t91->has = abap_true.
              t91->value = t90.
              t88 = t91.
            ELSE.
              DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t92.
              t88 = t92.
            ENDIF.
            DATA(t93) = VALUE abap_bool( ).
            DATA(t94) = VALUE abap_bool( ).
            IF t87 IS BOUND.
              t93 = t87->has.
            ENDIF.
            IF t88 IS BOUND.
              t94 = t88->has.
            ENDIF.
            IF t93 = t94.
              IF t93 = abap_false.
                t86 = abap_true.
              ELSEIF t87->value = t88->value.
                t86 = abap_true.
              ENDIF.
            ENDIF.
            IF t86 = abap_true.
              t86 = abap_false.
            ELSE.
              t86 = abap_true.
            ENDIF.
            t76 = t86.
          ENDIF.
          IF t76 = abap_true.
            DATA(t95) = abap_false.
            result = t95.
            RETURN.
          ENDIF.
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA t100 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t100.
        DATA t101 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t101.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t104 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t105) = t36.
        t104 = t105.
        DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t107) = t104.
        t106 = t107->children.
        t103 = t106.
        t102 ?= t103.
        DATA(t108) = 0.
        DATA t109 TYPE REF TO object.
        t109 = t102->get( p0 = t108 ).
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        CLEAR t101.
        IF t109 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t110 ?= t109.
          DATA t111 TYPE REF TO object.
          t111 = t110->as_ref( ).
          t101 ?= t111.
        ELSE.
          t101 ?= t109.
        ENDIF.
        t100 = t101.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = t100.
        IF t114 IS INITIAL.
          t113 = abap_true.
        ENDIF.
        IF t113 = abap_true.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          t112 = t115.
        ELSE.
          DATA t116 TYPE string.
          DATA t117 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t118) = t100.
          t117 = t118.
          t116 = t117->concat_tokens( ).
          DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t119->has = abap_true.
          t119->value = t116.
          t112 = t119.
        ENDIF.
        t99 = t112.
        t98 = t99.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t120.
        DATA(t121) = VALUE abap_bool( ).
        DATA(t122) = t98.
        IF t122 IS INITIAL.
          t121 = abap_true.
        ELSEIF t122->has = abap_false.
          t121 = abap_true.
        ENDIF.
        IF t121 = abap_true.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          t120 = t123.
        ELSE.
          DATA t124 TYPE string.
          DATA t125 TYPE string.
          DATA(t126) = t98.
          t125 = t126->value.
          DATA(t127) = strlen( t125 ).
          t124 = t125.
          IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t124 TO UPPER CASE.
          ELSE.
            t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
          ENDIF.
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = t124.
          t120 = t128.
        ENDIF.
        t97 = t120.
        t96 = t97.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t130.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t131.
        DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t132.
        DATA t133 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t133.
        DATA t134 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t137 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t138) = t36.
        t137 = t138.
        DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t140) = t137.
        t139 = t140->children.
        t136 = t139.
        t135 ?= t136.
        DATA(t141) = 2.
        DATA t142 TYPE REF TO object.
        t142 = t135->get( p0 = t141 ).
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        CLEAR t134.
        IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t143 ?= t142.
          DATA t144 TYPE REF TO object.
          t144 = t143->as_ref( ).
          t134 ?= t144.
        ELSE.
          t134 ?= t142.
        ENDIF.
        t133 = t134.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA(t146) = VALUE abap_bool( ).
        DATA(t147) = t133.
        IF t147 IS INITIAL.
          t146 = abap_true.
        ENDIF.
        IF t146 = abap_true.
          DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t148.
          t145 = t148.
        ELSE.
          DATA t149 TYPE string.
          DATA t150 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t151) = t133.
          t150 = t151.
          t149 = t150->concat_tokens( ).
          DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t152->has = abap_true.
          t152->value = t149.
          t145 = t152.
        ENDIF.
        t132 = t145.
        t131 = t132.
        DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t153.
        DATA(t154) = VALUE abap_bool( ).
        DATA(t155) = t131.
        IF t155 IS INITIAL.
          t154 = abap_true.
        ELSEIF t155->has = abap_false.
          t154 = abap_true.
        ENDIF.
        IF t154 = abap_true.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          t153 = t156.
        ELSE.
          DATA t157 TYPE string.
          DATA t158 TYPE string.
          DATA(t159) = t131.
          t158 = t159->value.
          DATA(t160) = strlen( t158 ).
          t157 = t158.
          IF t157 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t157 TO UPPER CASE.
          ELSE.
            t157 = zlnt_runtime_uppe_91169605024d=>full( t157 ).
          ENDIF.
          DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t161->has = abap_true.
          t161->value = t157.
          t153 = t161.
        ENDIF.
        t130 = t153.
        t129 = t130.
        DATA(t162) = t2.
        DATA t163 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
        DATA t164 TYPE string.
        DATA t165 TYPE string.
        DATA(t166) = t96.
        t165 = t166->value.
        t164 = t165.
        DATA t167 TYPE string.
        DATA t168 TYPE string.
        DATA(t169) = t129.
        t168 = t169->value.
        t167 = t168.
        t163 = NEW zcl_lnt_shape_c1ce1ff3( i_left = t164 i_right = t167 ).
        CREATE OBJECT t163->zlnt_view_ownkeys_b0e8086400eb.
        t163->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t163->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t163->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `left` p1 = t170 ).
        ENDIF.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t163->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t163->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `right` p1 = t171 ).
        ENDIF.
        CREATE OBJECT t163->zlnt_json_ownkeys_70e5fd461788.
        t163->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t172) = |left|.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t163->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t163->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
        ENDIF.
        DATA(t174) = |right|.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t163->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t163->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
        ENDIF.
        t162->load( ).
        APPEND t163 TO t162->items.
        t162->save( ).
      ENDDO.
    ENDDO.
    DATA t176 TYPE abap_bool.
    DATA t177 TYPE i.
    DATA(t178) = t2.
    t178->load( ).
    t177 = lines( t178->items ).
    DATA(t179) = 1.
    t176 = xsdbool( t177 = t179 ).
    IF t176 = abap_true.
      DATA(t180) = abap_false.
      result = t180.
      RETURN.
    ENDIF.
    DATA t181 TYPE string.
    DATA(t182) = ||.
    t181 = t182.
    DATA(t183) = VALUE abap_bool( ).
    DATA(t184) = VALUE string( ).
    DATA t185 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
    CLEAR t185.
    DATA(t186) = t2.
    DATA t187 TYPE REF TO object.
    CLEAR t187.
    t186->load( ).
    CLEAR t187.
    READ TABLE t186->items INDEX 1 INTO t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    CLEAR t185.
    IF t187 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t188 ?= t187.
      DATA t189 TYPE REF TO object.
      t189 = t188->as_ref( ).
      t185 ?= t189.
    ELSE.
      t185 ?= t187.
    ENDIF.
    t184 = t185->left.
    DATA(t190) = VALUE string( ).
    DATA t191 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
    CLEAR t191.
    DATA(t192) = t2.
    DATA t193 TYPE REF TO object.
    CLEAR t193.
    t192->load( ).
    CLEAR t193.
    READ TABLE t192->items INDEX 2 INTO t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    CLEAR t191.
    IF t193 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t194 ?= t193.
      DATA t195 TYPE REF TO object.
      t195 = t194->as_ref( ).
      t191 ?= t195.
    ELSE.
      t191 ?= t193.
    ENDIF.
    t190 = t191->left.
    t183 = xsdbool( t184 = t190 ).
    IF t183 = abap_true.
      DATA(t196) = VALUE string( ).
      DATA t197 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
      CLEAR t197.
      DATA(t198) = t2.
      DATA t199 TYPE REF TO object.
      CLEAR t199.
      t198->load( ).
      CLEAR t199.
      READ TABLE t198->items INDEX 1 INTO t199.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      CLEAR t197.
      IF t199 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t200 ?= t199.
        DATA t201 TYPE REF TO object.
        t201 = t200->as_ref( ).
        t197 ?= t201.
      ELSE.
        t197 ?= t199.
      ENDIF.
      t196 = t197->left.
      t181 = t196.
    ELSE.
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = VALUE string( ).
      DATA t204 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
      CLEAR t204.
      DATA(t205) = t2.
      DATA t206 TYPE REF TO object.
      CLEAR t206.
      t205->load( ).
      CLEAR t206.
      READ TABLE t205->items INDEX 1 INTO t206.
      DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t207.
      CLEAR t204.
      IF t206 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t207 ?= t206.
        DATA t208 TYPE REF TO object.
        t208 = t207->as_ref( ).
        t204 ?= t208.
      ELSE.
        t204 ?= t206.
      ENDIF.
      t203 = t204->left.
      DATA(t209) = VALUE string( ).
      DATA t210 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
      CLEAR t210.
      DATA(t211) = t2.
      DATA t212 TYPE REF TO object.
      CLEAR t212.
      t211->load( ).
      CLEAR t212.
      READ TABLE t211->items INDEX 2 INTO t212.
      DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t213.
      CLEAR t210.
      IF t212 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t213 ?= t212.
        DATA t214 TYPE REF TO object.
        t214 = t213->as_ref( ).
        t210 ?= t214.
      ELSE.
        t210 ?= t212.
      ENDIF.
      t209 = t210->right.
      t202 = xsdbool( t203 = t209 ).
      IF t202 = abap_true.
        DATA(t215) = VALUE string( ).
        DATA t216 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
        CLEAR t216.
        DATA(t217) = t2.
        DATA t218 TYPE REF TO object.
        CLEAR t218.
        t217->load( ).
        CLEAR t218.
        READ TABLE t217->items INDEX 1 INTO t218.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        CLEAR t216.
        IF t218 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t219 ?= t218.
          DATA t220 TYPE REF TO object.
          t220 = t219->as_ref( ).
          t216 ?= t220.
        ELSE.
          t216 ?= t218.
        ENDIF.
        t215 = t216->left.
        t181 = t215.
      ELSE.
        DATA(t221) = VALUE abap_bool( ).
        DATA(t222) = VALUE string( ).
        DATA t223 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
        CLEAR t223.
        DATA(t224) = t2.
        DATA t225 TYPE REF TO object.
        CLEAR t225.
        t224->load( ).
        CLEAR t225.
        READ TABLE t224->items INDEX 1 INTO t225.
        DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t226.
        CLEAR t223.
        IF t225 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t226 ?= t225.
          DATA t227 TYPE REF TO object.
          t227 = t226->as_ref( ).
          t223 ?= t227.
        ELSE.
          t223 ?= t225.
        ENDIF.
        t222 = t223->right.
        DATA(t228) = VALUE string( ).
        DATA t229 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
        CLEAR t229.
        DATA(t230) = t2.
        DATA t231 TYPE REF TO object.
        CLEAR t231.
        t230->load( ).
        CLEAR t231.
        READ TABLE t230->items INDEX 2 INTO t231.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        CLEAR t229.
        IF t231 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t232 ?= t231.
          DATA t233 TYPE REF TO object.
          t233 = t232->as_ref( ).
          t229 ?= t233.
        ELSE.
          t229 ?= t231.
        ENDIF.
        t228 = t229->right.
        t221 = xsdbool( t222 = t228 ).
        IF t221 = abap_true.
          DATA(t234) = VALUE string( ).
          DATA t235 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
          CLEAR t235.
          DATA(t236) = t2.
          DATA t237 TYPE REF TO object.
          CLEAR t237.
          t236->load( ).
          CLEAR t237.
          READ TABLE t236->items INDEX 1 INTO t237.
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t238.
          CLEAR t235.
          IF t237 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t238 ?= t237.
            DATA t239 TYPE REF TO object.
            t239 = t238->as_ref( ).
            t235 ?= t239.
          ELSE.
            t235 ?= t237.
          ENDIF.
          t234 = t235->right.
          t181 = t234.
        ELSE.
          DATA(t240) = VALUE abap_bool( ).
          DATA(t241) = VALUE string( ).
          DATA t242 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
          CLEAR t242.
          DATA(t243) = t2.
          DATA t244 TYPE REF TO object.
          CLEAR t244.
          t243->load( ).
          CLEAR t244.
          READ TABLE t243->items INDEX 1 INTO t244.
          DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t245.
          CLEAR t242.
          IF t244 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t245 ?= t244.
            DATA t246 TYPE REF TO object.
            t246 = t245->as_ref( ).
            t242 ?= t246.
          ELSE.
            t242 ?= t244.
          ENDIF.
          t241 = t242->right.
          DATA(t247) = VALUE string( ).
          DATA t248 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
          CLEAR t248.
          DATA(t249) = t2.
          DATA t250 TYPE REF TO object.
          CLEAR t250.
          t249->load( ).
          CLEAR t250.
          READ TABLE t249->items INDEX 2 INTO t250.
          DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t251.
          CLEAR t248.
          IF t250 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t251 ?= t250.
            DATA t252 TYPE REF TO object.
            t252 = t251->as_ref( ).
            t248 ?= t252.
          ELSE.
            t248 ?= t250.
          ENDIF.
          t247 = t248->left.
          t240 = xsdbool( t241 = t247 ).
          IF t240 = abap_true.
            DATA(t253) = VALUE string( ).
            DATA t254 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
            CLEAR t254.
            DATA(t255) = t2.
            DATA t256 TYPE REF TO object.
            CLEAR t256.
            t255->load( ).
            CLEAR t256.
            READ TABLE t255->items INDEX 1 INTO t256.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            CLEAR t254.
            IF t256 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t257 ?= t256.
              DATA t258 TYPE REF TO object.
              t258 = t257->as_ref( ).
              t254 ?= t258.
            ELSE.
              t254 ?= t256.
            ENDIF.
            t253 = t254->right.
            t181 = t253.
          ELSE.
            DATA(t259) = abap_false.
            result = t259.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t262 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t263) = CAST zcl_lnt_change_if_to_case_conf( me->g_c_i_s_r_c_i_t_c_t_ch_if_t_cs( ) ).
    t262 = t263->zlnt_view_read_sr_f278c155bea6( ).
    t261 = t262.
    DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t264.
    DATA t265 TYPE abap_bool.
    DATA(t266) = t261.
    t265 = xsdbool( t266 IS BOUND ).
    IF t265 = abap_true.
      DATA t267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t268) = t261.
      t267 = t268.
      t264 = t267.
    ELSE.
      DATA t269 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t269.
      t264 = t269.
    ENDIF.
    t260 = t264.
    DATA(t270) = VALUE string( ).
    t260->dense( ).
    DATA(t271) = VALUE i( ).
    DO.
      t260->load( ).
      IF t271 >= lines( t260->items ).
        EXIT.
      ENDIF.
      CLEAR t270.
      READ TABLE t260->items INDEX t271 + 1 INTO t270.
      IF t260->has( t271 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t271 = t271 + 1.
      DATA t272 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t273 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t273.
      DATA(t274) = t270.
      DATA(t275) = |i|.
      CREATE OBJECT t273 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t274 flags = t275.
      t272 = t273.
      DATA t276 TYPE abap_bool.
      DATA t277 TYPE string.
      DATA(t278) = t181.
      t277 = t278.
      DATA t279 TYPE abap_bool.
      DATA(t280) = t272.
      DATA(t281) = t277.
      t279 = t280->match_test( p0 = t281 ).
      t276 = t279.
      IF t276 = abap_true.
        DATA(t282) = abap_false.
        result = t282.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t283) = t2.
    DATA t284 TYPE REF TO zcl_lnt_shape_c1ce1ff3.
    CLEAR t284.
    DATA t285 TYPE REF TO object.
    CLEAR t285.
    DATA(t286) = VALUE i( ).
    DO.
      t283->load( ).
      IF t286 >= lines( t283->items ).
        EXIT.
      ENDIF.
      CLEAR t285.
      READ TABLE t283->items INDEX t286 + 1 INTO t285.
      t286 = t286 + 1.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t287.
      CLEAR t284.
      IF t285 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t287 ?= t285.
        DATA t288 TYPE REF TO object.
        t288 = t287->as_ref( ).
        t284 ?= t288.
      ELSE.
        t284 ?= t285.
      ENDIF.
      DATA t289 TYPE abap_bool.
      DATA t290 TYPE abap_bool.
      DATA t291 TYPE string.
      DATA(t292) = t284.
      t291 = t292->left.
      DATA(t293) = t181.
      t290 = xsdbool( t291 <> t293 ).
      t289 = t290.
      IF t290 = abap_true.
        DATA t294 TYPE abap_bool.
        DATA t295 TYPE string.
        DATA(t296) = t284.
        t295 = t296->right.
        DATA(t297) = t181.
        t294 = xsdbool( t295 <> t297 ).
        t289 = t294.
      ENDIF.
      IF t289 = abap_true.
        DATA(t298) = abap_false.
        result = t298.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t299) = abap_true.
    result = t299.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_change_if_to_case_conf( me->g_c_i_s_r_c_i_t_c_t_ch_if_t_cs( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_change_if_to_case_conf( me->g_c_i_s_r_c_i_t_c_t_ch_if_t_cs( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_change_if_to_case_conf.
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
        t1 = NEW zcl_lnt_change_if_to_case_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_c_i_t_c_t_ch_if_t_cs( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_c_i_t_c_t_ch_if_t_cs( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1432_0af7a1c2c068.
  ENDMETHOD.
ENDCLASS.
