* TS: src/rules/prefer_returning_to_exporting.ts:12:1 PreferReturningToExporting
CLASS zcl_lnt_prfr_rtrnng_t_exprtng DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfr_rtrnn_t_exprt_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_r_t_e_t_pr_rt_t_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfr_rtrnn_t_exprt_cnf.
    METHODS s_c_i_s_r_p_r_t_e_t_pr_rt_t_ex IMPORTING i_conf TYPE REF TO zcl_lnt_prfr_rtrnn_t_exprt_cnf.
    METHODS r_p_i_s_r_p_r_t_e_t_pr_rt_t_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfr_rtrnng_t_exprtng IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prfr_rtrnn_t_exprt_cnf(  ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = CONV string( |prefer_returning_to_exporting| ).
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = CONV string( |Prefer RETURNING to EXPORTING| ).
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = CONV string( |Prefer RETURNING to EXPORTING. Generic types cannot be RETUR| ).
    t7 = t7 && |NING.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = CONV abap_bool( abap_true ).
    IF t10 = abap_true.
      DATA(t11) = CONV string( |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea| ).
      t11 = t11 && |nABAP.md#prefer-returning-to-exporting\nhttps://docs.abapopen|.
      t11 = t11 && |checks.org/checks/44/|.
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
    DATA(t16) = CONV abap_bool( abap_true ).
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t18 ).
      DATA(t21) = CONV string( |Styleguide| ).
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t18 ).
      DATA(t23) = CONV string( |SingleFile| ).
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t18 ).
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
    DATA(t28) = CONV abap_bool( abap_true ).
    IF t28 = abap_true.
      DATA(t29) = CONV string( |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS test EXP| ).
      t29 = t29 && |ORTING ev_foo TYPE i.\nENDCLASS.|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t34 i_pseudo_comment = t36 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = CONV string( |key| ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = CONV string( |title| ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = CONV string( |shortDescription| ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = CONV string( |extendedInformation| ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = CONV string( |tags| ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = CONV string( |badExample| ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD g_c_i_s_r_p_r_t_e_t_pr_rt_t_ex.
    DATA(t1) = CAST zcl_lnt_prfr_rtrnn_t_exprt_cnf( me->conf ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD s_c_i_s_r_p_r_t_e_t_pr_rt_t_ex.
    DATA(t1) = CAST zcl_lnt_prfr_rtrnn_t_exprt_cnf( i_conf ).
    DATA(t2) = CAST zcl_lnt_prfr_rtrnn_t_exprt_cnf( t1 ).
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.
  METHOD r_p_i_s_r_p_r_t_e_t_pr_rt_t_ex.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = CAST zcl_lnt_abap_file( t1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = CAST zcl_lnt_abap_file( t6 ).
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = CAST zcl_lnt_structure_node( t4 ).
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = CAST zcl_lnt_structure_node( t11 ).
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
    DATA(t20) = CAST zcl_lnt_structure_node( t4 ).
    t19 = t20.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58 ).
    t18 = t19->find_all_statements( i_type_9913 = t21 ).
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
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
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = CAST zcl_lnt_statement_node( t22 ).
      DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4 ).
      t28 = t29->find_first_expression( i_type_9913 = t30 ).
      t27 = xsdbool( t28 IS BOUND ).
      IF t27 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA(t33) = CAST zcl_lnt_statement_node( t22 ).
      DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0 ).
      t32 = t33->find_first_expression( i_type_9913 = t34 ).
      t31 = t32.
      DATA(t35) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = CAST zcl_lnt_expression_node( t31 ).
      t36 = t37.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      t38 = t39.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = CAST zcl_lnt_expression_node( t36 ).
      IF t41 IS INITIAL.
        t40 = abap_true.
      ENDIF.
      t35 = t40.
      IF t35 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA(t44) = CAST zcl_lnt_statement_node( t22 ).
      DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d235_40ca0b5f4dca ).
      t43 = t44->find_first_expression( i_type_9913 = t45 ).
      t42 = t43.
      DATA(t46) = VALUE abap_bool( ).
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      DATA(t48) = CAST zcl_lnt_expression_node( t42 ).
      t47 = t48.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      t49 = t50.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = CAST zcl_lnt_expression_node( t47 ).
      IF t53 IS INITIAL.
        t52 = abap_true.
      ENDIF.
      t51 = xsdbool( t52 = abap_false ).
      t46 = t51.
      IF t46 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE REF TO zcl_lnt_expression_node.
      DATA(t57) = CAST zcl_lnt_expression_node( t31 ).
      t56 = t57.
      DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81 ).
      t55 = t56->find_direct_expressions( i_type_9913 = t58 ).
      t54 = t55.
      DATA t59 TYPE abap_bool.
      DATA t60 TYPE i.
      DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
      t61->load( ).
      t60 = lines( t61->items ).
      DATA(t62) = CONV i( 1 ).
      t59 = xsdbool( t60 <> t62 ).
      IF t59 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t63) = VALUE string( ).
      DATA(t64) = VALUE string( ).
      DATA(t65) = VALUE string( ).
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t66.
      DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      t67->load( ).
      CLEAR t68.
      READ TABLE t67->items INDEX 1 INTO t68.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      CLEAR t66.
      IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t69 ?= t68.
        DATA t70 TYPE REF TO object.
        t70 = t69->as_ref( ).
        t66 ?= t70.
      ELSE.
        t66 ?= t68.
      ENDIF.
      t65 = t66->concat_tokens(  ).
      DATA(t71) = CONV i( strlen( t65 ) ).
      t64 = t65.
      IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t64 TO UPPER CASE.
      ELSE.
        t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
      ENDIF.
      t63 = t64.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = VALUE abap_bool( ).
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = VALUE abap_bool( ).
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      DATA(t88) = VALUE abap_bool( ).
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = CONV string( t63 ).
      DATA(t92) = CONV string( |TYPE ANY| ).
      DATA(t93) = CONV i( strlen( t91 ) ).
      DATA t94 TYPE i.
      DATA(t95) = VALUE i( ).
      DATA(t96) = VALUE string( ).
      t94 = strlen( t92 ).
      IF t94 = 0.
        t90 = abap_true.
      ELSEIF t94 <= t93.
        t95 = 0.
        t95 = t93 - t94.
        t96 = t91+t95(t94).
        IF t96 = t92.
          t90 = abap_true.
        ENDIF.
      ENDIF.
      t89 = t90.
      IF t90 = abap_false.
        DATA(t97) = VALUE abap_bool( ).
        DATA(t98) = CONV string( t63 ).
        DATA(t99) = CONV string( |TYPE ANY TABLE| ).
        DATA(t100) = CONV i( strlen( t98 ) ).
        DATA t101 TYPE i.
        DATA(t102) = VALUE i( ).
        DATA(t103) = VALUE string( ).
        t101 = strlen( t99 ).
        IF t101 = 0.
          t97 = abap_true.
        ELSEIF t101 <= t100.
          t102 = 0.
          t102 = t100 - t101.
          t103 = t98+t102(t101).
          IF t103 = t99.
            t97 = abap_true.
          ENDIF.
        ENDIF.
        t89 = t97.
      ENDIF.
      t88 = t89.
      IF t89 = abap_false.
        DATA(t104) = VALUE abap_bool( ).
        DATA(t105) = CONV string( t63 ).
        DATA(t106) = CONV string( |TYPE C| ).
        DATA(t107) = CONV i( strlen( t105 ) ).
        DATA t108 TYPE i.
        DATA(t109) = VALUE i( ).
        DATA(t110) = VALUE string( ).
        t108 = strlen( t106 ).
        IF t108 = 0.
          t104 = abap_true.
        ELSEIF t108 <= t107.
          t109 = 0.
          t109 = t107 - t108.
          t110 = t105+t109(t108).
          IF t110 = t106.
            t104 = abap_true.
          ENDIF.
        ENDIF.
        t88 = t104.
      ENDIF.
      t87 = t88.
      IF t88 = abap_false.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = CONV string( t63 ).
        DATA(t113) = CONV string( |TYPE CLIKE| ).
        DATA(t114) = CONV i( strlen( t112 ) ).
        DATA t115 TYPE i.
        DATA(t116) = VALUE i( ).
        DATA(t117) = VALUE string( ).
        t115 = strlen( t113 ).
        IF t115 = 0.
          t111 = abap_true.
        ELSEIF t115 <= t114.
          t116 = 0.
          t116 = t114 - t115.
          t117 = t112+t116(t115).
          IF t117 = t113.
            t111 = abap_true.
          ENDIF.
        ENDIF.
        t87 = t111.
      ENDIF.
      t86 = t87.
      IF t87 = abap_false.
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = CONV string( t63 ).
        DATA(t120) = CONV string( |TYPE CSEQUENCE| ).
        DATA(t121) = CONV i( strlen( t119 ) ).
        DATA t122 TYPE i.
        DATA(t123) = VALUE i( ).
        DATA(t124) = VALUE string( ).
        t122 = strlen( t120 ).
        IF t122 = 0.
          t118 = abap_true.
        ELSEIF t122 <= t121.
          t123 = 0.
          t123 = t121 - t122.
          t124 = t119+t123(t122).
          IF t124 = t120.
            t118 = abap_true.
          ENDIF.
        ENDIF.
        t86 = t118.
      ENDIF.
      t85 = t86.
      IF t86 = abap_false.
        DATA(t125) = VALUE abap_bool( ).
        DATA(t126) = CONV string( t63 ).
        DATA(t127) = CONV string( |TYPE DATA| ).
        DATA(t128) = CONV i( strlen( t126 ) ).
        DATA t129 TYPE i.
        DATA(t130) = VALUE i( ).
        DATA(t131) = VALUE string( ).
        t129 = strlen( t127 ).
        IF t129 = 0.
          t125 = abap_true.
        ELSEIF t129 <= t128.
          t130 = 0.
          t130 = t128 - t129.
          t131 = t126+t130(t129).
          IF t131 = t127.
            t125 = abap_true.
          ENDIF.
        ENDIF.
        t85 = t125.
      ENDIF.
      t84 = t85.
      IF t85 = abap_false.
        DATA(t132) = VALUE abap_bool( ).
        DATA(t133) = CONV string( t63 ).
        DATA(t134) = CONV string( |TYPE DECFLOAT| ).
        DATA(t135) = CONV i( strlen( t133 ) ).
        DATA t136 TYPE i.
        DATA(t137) = VALUE i( ).
        DATA(t138) = VALUE string( ).
        t136 = strlen( t134 ).
        IF t136 = 0.
          t132 = abap_true.
        ELSEIF t136 <= t135.
          t137 = 0.
          t137 = t135 - t136.
          t138 = t133+t137(t136).
          IF t138 = t134.
            t132 = abap_true.
          ENDIF.
        ENDIF.
        t84 = t132.
      ENDIF.
      t83 = t84.
      IF t84 = abap_false.
        DATA(t139) = VALUE abap_bool( ).
        DATA(t140) = CONV string( t63 ).
        DATA(t141) = CONV string( |TYPE HASHED TABLE| ).
        DATA(t142) = CONV i( strlen( t140 ) ).
        DATA t143 TYPE i.
        DATA(t144) = VALUE i( ).
        DATA(t145) = VALUE string( ).
        t143 = strlen( t141 ).
        IF t143 = 0.
          t139 = abap_true.
        ELSEIF t143 <= t142.
          t144 = 0.
          t144 = t142 - t143.
          t145 = t140+t144(t143).
          IF t145 = t141.
            t139 = abap_true.
          ENDIF.
        ENDIF.
        t83 = t139.
      ENDIF.
      t82 = t83.
      IF t83 = abap_false.
        DATA(t146) = VALUE abap_bool( ).
        DATA(t147) = CONV string( t63 ).
        DATA(t148) = CONV string( |TYPE INDEX TABLE| ).
        DATA(t149) = CONV i( strlen( t147 ) ).
        DATA t150 TYPE i.
        DATA(t151) = VALUE i( ).
        DATA(t152) = VALUE string( ).
        t150 = strlen( t148 ).
        IF t150 = 0.
          t146 = abap_true.
        ELSEIF t150 <= t149.
          t151 = 0.
          t151 = t149 - t150.
          t152 = t147+t151(t150).
          IF t152 = t148.
            t146 = abap_true.
          ENDIF.
        ENDIF.
        t82 = t146.
      ENDIF.
      t81 = t82.
      IF t82 = abap_false.
        DATA(t153) = VALUE abap_bool( ).
        DATA(t154) = CONV string( t63 ).
        DATA(t155) = CONV string( |TYPE N| ).
        DATA(t156) = CONV i( strlen( t154 ) ).
        DATA t157 TYPE i.
        DATA(t158) = VALUE i( ).
        DATA(t159) = VALUE string( ).
        t157 = strlen( t155 ).
        IF t157 = 0.
          t153 = abap_true.
        ELSEIF t157 <= t156.
          t158 = 0.
          t158 = t156 - t157.
          t159 = t154+t158(t157).
          IF t159 = t155.
            t153 = abap_true.
          ENDIF.
        ENDIF.
        t81 = t153.
      ENDIF.
      t80 = t81.
      IF t81 = abap_false.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = CONV string( t63 ).
        DATA(t162) = CONV string( |TYPE NUMERIC| ).
        DATA(t163) = CONV i( strlen( t161 ) ).
        DATA t164 TYPE i.
        DATA(t165) = VALUE i( ).
        DATA(t166) = VALUE string( ).
        t164 = strlen( t162 ).
        IF t164 = 0.
          t160 = abap_true.
        ELSEIF t164 <= t163.
          t165 = 0.
          t165 = t163 - t164.
          t166 = t161+t165(t164).
          IF t166 = t162.
            t160 = abap_true.
          ENDIF.
        ENDIF.
        t80 = t160.
      ENDIF.
      t79 = t80.
      IF t80 = abap_false.
        DATA(t167) = VALUE abap_bool( ).
        DATA(t168) = CONV string( t63 ).
        DATA(t169) = CONV string( |TYPE OBJECT| ).
        DATA(t170) = CONV i( strlen( t168 ) ).
        DATA t171 TYPE i.
        DATA(t172) = VALUE i( ).
        DATA(t173) = VALUE string( ).
        t171 = strlen( t169 ).
        IF t171 = 0.
          t167 = abap_true.
        ELSEIF t171 <= t170.
          t172 = 0.
          t172 = t170 - t171.
          t173 = t168+t172(t171).
          IF t173 = t169.
            t167 = abap_true.
          ENDIF.
        ENDIF.
        t79 = t167.
      ENDIF.
      t78 = t79.
      IF t79 = abap_false.
        DATA(t174) = VALUE abap_bool( ).
        DATA(t175) = CONV string( t63 ).
        DATA(t176) = CONV string( |TYPE P| ).
        DATA(t177) = CONV i( strlen( t175 ) ).
        DATA t178 TYPE i.
        DATA(t179) = VALUE i( ).
        DATA(t180) = VALUE string( ).
        t178 = strlen( t176 ).
        IF t178 = 0.
          t174 = abap_true.
        ELSEIF t178 <= t177.
          t179 = 0.
          t179 = t177 - t178.
          t180 = t175+t179(t178).
          IF t180 = t176.
            t174 = abap_true.
          ENDIF.
        ENDIF.
        t78 = t174.
      ENDIF.
      t77 = t78.
      IF t78 = abap_false.
        DATA(t181) = VALUE abap_bool( ).
        DATA(t182) = CONV string( t63 ).
        DATA(t183) = CONV string( |TYPE SIMPLE| ).
        DATA(t184) = CONV i( strlen( t182 ) ).
        DATA t185 TYPE i.
        DATA(t186) = VALUE i( ).
        DATA(t187) = VALUE string( ).
        t185 = strlen( t183 ).
        IF t185 = 0.
          t181 = abap_true.
        ELSEIF t185 <= t184.
          t186 = 0.
          t186 = t184 - t185.
          t187 = t182+t186(t185).
          IF t187 = t183.
            t181 = abap_true.
          ENDIF.
        ENDIF.
        t77 = t181.
      ENDIF.
      t76 = t77.
      IF t77 = abap_false.
        DATA(t188) = VALUE abap_bool( ).
        DATA(t189) = CONV string( t63 ).
        DATA(t190) = CONV string( |TYPE SORTED TABLE| ).
        DATA(t191) = CONV i( strlen( t189 ) ).
        DATA t192 TYPE i.
        DATA(t193) = VALUE i( ).
        DATA(t194) = VALUE string( ).
        t192 = strlen( t190 ).
        IF t192 = 0.
          t188 = abap_true.
        ELSEIF t192 <= t191.
          t193 = 0.
          t193 = t191 - t192.
          t194 = t189+t193(t192).
          IF t194 = t190.
            t188 = abap_true.
          ENDIF.
        ENDIF.
        t76 = t188.
      ENDIF.
      t75 = t76.
      IF t76 = abap_false.
        DATA(t195) = VALUE abap_bool( ).
        DATA(t196) = CONV string( t63 ).
        DATA(t197) = CONV string( |TYPE STANDARD TABLE| ).
        DATA(t198) = CONV i( strlen( t196 ) ).
        DATA t199 TYPE i.
        DATA(t200) = VALUE i( ).
        DATA(t201) = VALUE string( ).
        t199 = strlen( t197 ).
        IF t199 = 0.
          t195 = abap_true.
        ELSEIF t199 <= t198.
          t200 = 0.
          t200 = t198 - t199.
          t201 = t196+t200(t199).
          IF t201 = t197.
            t195 = abap_true.
          ENDIF.
        ENDIF.
        t75 = t195.
      ENDIF.
      t74 = t75.
      IF t75 = abap_false.
        DATA(t202) = VALUE abap_bool( ).
        DATA(t203) = CONV string( t63 ).
        DATA(t204) = CONV string( |TYPE TABLE| ).
        DATA(t205) = CONV i( strlen( t203 ) ).
        DATA t206 TYPE i.
        DATA(t207) = VALUE i( ).
        DATA(t208) = VALUE string( ).
        t206 = strlen( t204 ).
        IF t206 = 0.
          t202 = abap_true.
        ELSEIF t206 <= t205.
          t207 = 0.
          t207 = t205 - t206.
          t208 = t203+t207(t206).
          IF t208 = t204.
            t202 = abap_true.
          ENDIF.
        ENDIF.
        t74 = t202.
      ENDIF.
      t73 = t74.
      IF t74 = abap_false.
        DATA(t209) = VALUE abap_bool( ).
        DATA(t210) = CONV string( t63 ).
        DATA(t211) = CONV string( |TYPE X| ).
        DATA(t212) = CONV i( strlen( t210 ) ).
        DATA t213 TYPE i.
        DATA(t214) = VALUE i( ).
        DATA(t215) = VALUE string( ).
        t213 = strlen( t211 ).
        IF t213 = 0.
          t209 = abap_true.
        ELSEIF t213 <= t212.
          t214 = 0.
          t214 = t212 - t213.
          t215 = t210+t214(t213).
          IF t215 = t211.
            t209 = abap_true.
          ENDIF.
        ENDIF.
        t73 = t209.
      ENDIF.
      t72 = t73.
      IF t73 = abap_false.
        DATA(t216) = VALUE abap_bool( ).
        DATA(t217) = CONV string( t63 ).
        DATA(t218) = CONV string( |TYPE XSEQUENCE| ).
        DATA(t219) = CONV i( strlen( t217 ) ).
        DATA t220 TYPE i.
        DATA(t221) = VALUE i( ).
        DATA(t222) = VALUE string( ).
        t220 = strlen( t218 ).
        IF t220 = 0.
          t216 = abap_true.
        ELSEIF t220 <= t219.
          t221 = 0.
          t221 = t219 - t220.
          t222 = t217+t221(t220).
          IF t222 = t218.
            t216 = abap_true.
          ENDIF.
        ENDIF.
        t72 = t216.
      ENDIF.
      IF t72 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t223 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t223.
      DATA t224 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t224.
      DATA t225 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t225.
      DATA(t226) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      t226->load( ).
      CLEAR t227.
      READ TABLE t226->items INDEX 1 INTO t227.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      CLEAR t225.
      IF t227 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t228 ?= t227.
        DATA t229 TYPE REF TO object.
        t229 = t228->as_ref( ).
        t225 ?= t229.
      ELSE.
        t225 ?= t227.
      ENDIF.
      t224 = t225->get_first_token(  ).
      t223 = t224.
      DATA t230 TYPE REF TO zcl_lnt_issue.
      CLEAR t230.
      DATA t231 TYPE REF TO zcl_lnt_issue.
      CLEAR t231.
      DATA(t232) = CAST zcl_lnt_abap_file( t1 ).
      DATA(t233) = CAST zcl_lnt_abstract_token( t223 ).
      DATA(t234) = CONV string( |Prefer RETURNING to EXPORTING| ).
      DATA(t235) = VALUE string( ).
      DATA t236 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t236.
      DATA t237 TYPE string.
      DATA(t238) = CONV string( |prefer_returning_to_exporting| ).
      t237 = t238.
      DATA t239 TYPE string.
      DATA(t240) = CONV string( |Prefer RETURNING to EXPORTING| ).
      t239 = t240.
      DATA t241 TYPE string.
      DATA(t242) = CONV string( |Prefer RETURNING to EXPORTING. Generic types cannot be RETUR| ).
      t242 = t242 && |NING.|.
      t241 = t242.
      DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t243.
      DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t244.
      DATA(t245) = CONV abap_bool( abap_true ).
      IF t245 = abap_true.
        DATA(t246) = CONV string( |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea| ).
        t246 = t246 && |nABAP.md#prefer-returning-to-exporting\nhttps://docs.abapopen|.
        t246 = t246 && |checks.org/checks/44/|.
        DATA(t247) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t247->has = abap_true.
        t247->value = t246.
        t244 = t247.
      ELSE.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t248.
        t244 = t248.
      ENDIF.
      t243 = t244.
      DATA t249 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t249.
      DATA t250 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t250.
      DATA(t251) = CONV abap_bool( abap_true ).
      IF t251 = abap_true.
        DATA t252 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t253 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t254.
        t253 = t254.
        DATA(t255) = CAST zlnt_runtime_arra_8ecd6afe19e0( t253 ).
        DATA(t256) = CONV string( |Styleguide| ).
        t255->load( ).
        APPEND t256 TO t255->items.
        t255->save( ).
        DATA(t257) = CAST zlnt_runtime_arra_8ecd6afe19e0( t253 ).
        DATA(t258) = CONV string( |SingleFile| ).
        t257->load( ).
        APPEND t258 TO t257->items.
        t257->save( ).
        DATA(t259) = CAST zlnt_runtime_arra_8ecd6afe19e0( t253 ).
        t252 = t259.
        t250 = t252.
      ELSE.
        DATA t260 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t260.
        t250 = t260.
      ENDIF.
      t249 = t250.
      DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t261.
      DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t262.
      DATA(t263) = CONV abap_bool( abap_true ).
      IF t263 = abap_true.
        DATA(t264) = CONV string( |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS test EXP| ).
        t264 = t264 && |ORTING ev_foo TYPE i.\nENDCLASS.|.
        DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t265->has = abap_true.
        t265->value = t264.
        t262 = t265.
      ELSE.
        DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t266.
        t262 = t266.
      ENDIF.
      t261 = t262.
      DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t268.
      t267 = t268.
      DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t270.
      t269 = t270.
      DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t272.
      t271 = t272.
      t236 = NEW zcl_lnt_irule_metadata( i_key = t237 i_title = t239 i_short_description = t241 i_bad_example = t261 i_good_example = t267 i_extended_information = t243 i_tags = t249 i_pragma = t269 i_pseudo_comment = t271 ).
      CREATE OBJECT t236->zlnt_view_ownkeys_b0e8086400eb.
      t236->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t273.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t273 ).
      ENDIF.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t274.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t274 ).
      ENDIF.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t275 ).
      ENDIF.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t276 ).
      ENDIF.
      DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t277.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t277 ).
      ENDIF.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t278.
      IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t278 ).
      ENDIF.
      CREATE OBJECT t236->zlnt_json_ownkeys_70e5fd461788.
      t236->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t279) = CONV string( |key| ).
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t280.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t279 p1 = t280 ).
      ENDIF.
      DATA(t281) = CONV string( |title| ).
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t282.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t281 p1 = t282 ).
      ENDIF.
      DATA(t283) = CONV string( |shortDescription| ).
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t284.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t283 p1 = t284 ).
      ENDIF.
      DATA(t285) = CONV string( |extendedInformation| ).
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t286.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t285 p1 = t286 ).
      ENDIF.
      DATA(t287) = CONV string( |tags| ).
      DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t288.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t287 p1 = t288 ).
      ENDIF.
      DATA(t289) = CONV string( |badExample| ).
      DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t290.
      IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t289 p1 = t290 ).
      ENDIF.
      t235 = t236->key.
      DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t292) = CAST zcl_lnt_prfr_rtrnn_t_exprt_cnf( me->conf ).
      t291 = t292->zlnt_view_read_sr_15c06369f827( ).
      DATA t293 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t293.
      t231 = zcl_lnt_issue=>at_token( i_file = t232 i_token = t233 i_message_26cb = t234 i_key = t235 i_severity = t291 i_fix = t293 ).
      t230 = t231.
      DATA(t294) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t295) = CAST zcl_lnt_issue( t230 ).
      t294->load( ).
      APPEND t295 TO t294->items.
      t294->save( ).
    ENDDO.
    DATA(t296) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t296.
    RETURN.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prfr_rtrnn_t_exprt_cnf( me->g_c_i_s_r_p_r_t_e_t_pr_rt_t_ex(  ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prfr_rtrnn_t_exprt_cnf( me->g_c_i_s_r_p_r_t_e_t_pr_rt_t_ex(  ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfr_rtrnn_t_exprt_cnf.
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
        t1 = NEW zcl_lnt_prfr_rtrnn_t_exprt_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_p_r_t_e_t_pr_rt_t_ex( i_conf = t1 ).
    RETURN.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_r_t_e_t_pr_rt_t_ex( i_file = i_file ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1666_aeed27749739.
  ENDMETHOD.
ENDCLASS.
