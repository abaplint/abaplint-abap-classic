* TS: src/rules/forbidden_pseudo_and_pragma.ts:20:1 ForbiddenPseudoAndPragma
CLASS zcl_lnt_frbddn_psd_and_prgm DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_f_p_a_p_t_f_ps_an_pr RETURNING VALUE(result) TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS s_c_i_s_r_f_p_a_p_t_f_ps_an_pr IMPORTING i_conf TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
    METHODS r_p_i_s_r_f_p_a_p_t_f_ps_an_pr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_frbddn_psd_and_prgm IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_frbdd_psd_and_prgm_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |forbidden_pseudo_and_pragma|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Forbidden pseudo comments and pragma|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for unwanted pseudo comments and pragma|.
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
      DATA(t15) = |Quickfix|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
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
      DATA(t23) = |DATA i TYPE i. "#EC *|.
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
      DATA(t29) = |DATA i TYPE i.|.
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

  METHOD g_c_i_s_r_f_p_a_p_t_f_ps_an_pr.
    DATA(t1) = me->conf.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = me->conf.
    t4 = t5->zlnt_view_read_sr_21ada0793ffa( ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t3.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t2 = t8.
    IF t2 = abap_true.
      DATA(t10) = me->conf.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t11.
      t10->zlnt_view_write_s_e895eea6be84( p0 = t11 ).
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t15) = me->conf.
    t14 = t15->zlnt_view_read_sr_7e3130177b9e( ).
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = t13.
    IF t19 IS INITIAL.
      t18 = abap_true.
    ENDIF.
    t12 = t18.
    IF t12 = abap_true.
      DATA(t20) = me->conf.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t21.
      t20->zlnt_view_write_s_ebc42a547430( p0 = t21 ).
    ENDIF.
    DATA(t22) = me->conf.
    result = t22.

  ENDMETHOD.

  METHOD s_c_i_s_r_f_p_a_p_t_f_ps_an_pr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_f_p_a_p_t_f_ps_an_pr.
    DATA(t1) = i_file.
    DATA t2 TYPE abap_bool.
    DATA(t3) = abap_false.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t7) = me->conf.
    t6 = t7->zlnt_view_read_sr_7e3130177b9e( ).
    DATA(t8) = VALUE string( ).
    t6->dense( ).
    DATA(t9) = VALUE i( ).
    DO.
      t6->load( ).
      IF t9 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t6->items INDEX t9 + 1 INTO t8.
      IF t6->has( t9 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zcl_lnt_abap_file.
      DATA(t12) = t1.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t14) = t11.
      t13 = t14->statements.
      t10 = t13.
      DATA t15 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      DATA(t17) = VALUE i( ).
      DO.
        t10->load( ).
        IF t17 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t16.
        READ TABLE t10->items INDEX t17 + 1 INTO t16.
        t17 = t17 + 1.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t18.
        CLEAR t15.
        IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t18 ?= t16.
          DATA t19 TYPE REF TO object.
          t19 = t18->as_ref( ).
          t15 ?= t19.
        ELSE.
          t15 ?= t16.
        ENDIF.
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE abap_bool.
        DATA(t22) = me->conf.
        t21 = t22->zlnt_view_read_sr_493aa9b7723d( ).
        DATA(t23) = abap_true.
        t20 = xsdbool( t21 = t23 ).
        IF t20 = abap_true.
          DATA t24 TYPE abap_bool.
          DATA t25 TYPE abap_bool.
          DATA t26 TYPE REF TO zif_lnt_statement.
          DATA(t27) = t15.
          t26 = t27->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_class_definition ).
          t24 = t25.
          IF t25 = abap_true.
            DATA t28 TYPE abap_bool.
            DATA t29 TYPE REF TO zcl_lnt_expression_node.
            DATA(t30) = t15.
            DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
            t29 = t30->find_first_expression( i_type_9913 = t31 ).
            t28 = xsdbool( t29 IS BOUND ).
            t24 = t28.
          ENDIF.
          IF t24 = abap_true.
            DATA(t32) = abap_true.
            t2 = t32.
            CONTINUE.
          ELSE.
            DATA t33 TYPE abap_bool.
            DATA t34 TYPE abap_bool.
            DATA(t35) = t2.
            DATA(t36) = abap_true.
            t34 = xsdbool( t35 = t36 ).
            t33 = t34.
            IF t34 = abap_true.
              DATA t37 TYPE abap_bool.
              DATA t38 TYPE REF TO zif_lnt_statement.
              DATA(t39) = t15.
              t38 = t39->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_end_class ).
              t33 = t37.
            ENDIF.
            IF t33 = abap_true.
              DATA(t40) = abap_false.
              t2 = t40.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE abap_bool.
        DATA(t43) = me->conf.
        t42 = t43->zlnt_view_read_sr_2c496c208fd0( ).
        DATA(t44) = abap_true.
        t41 = xsdbool( t42 = t44 ).
        IF t41 = abap_true.
          DATA t45 TYPE abap_bool.
          DATA t46 TYPE abap_bool.
          DATA t47 TYPE REF TO zif_lnt_statement.
          DATA(t48) = t15.
          t47 = t48->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_interface ).
          t45 = t46.
          IF t46 = abap_true.
            DATA t49 TYPE abap_bool.
            DATA t50 TYPE REF TO zcl_lnt_expression_node.
            DATA(t51) = t15.
            DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
            t50 = t51->find_first_expression( i_type_9913 = t52 ).
            t49 = xsdbool( t50 IS BOUND ).
            t45 = t49.
          ENDIF.
          IF t45 = abap_true.
            DATA(t53) = abap_true.
            t2 = t53.
            CONTINUE.
          ELSE.
            DATA t54 TYPE abap_bool.
            DATA t55 TYPE abap_bool.
            DATA(t56) = t2.
            DATA(t57) = abap_true.
            t55 = xsdbool( t56 = t57 ).
            t54 = t55.
            IF t55 = abap_true.
              DATA t58 TYPE abap_bool.
              DATA t59 TYPE REF TO zif_lnt_statement.
              DATA(t60) = t15.
              t59 = t60->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_end_interface ).
              t54 = t58.
            ENDIF.
            IF t54 = abap_true.
              DATA(t61) = abap_false.
              t2 = t61.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t62 TYPE abap_bool.
        DATA(t63) = t2.
        DATA(t64) = abap_true.
        t62 = xsdbool( t63 = t64 ).
        IF t62 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t67 TYPE REF TO zcl_lnt_statement_node.
        DATA(t68) = t15.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t70) = t67.
        t69 = t70->pragmas.
        t66 = t69.
        t65 = t66.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t71.
        DATA t72 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t72.
        DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t74) = t65.
        t73 = t74.
        DATA t75 TYPE i.
        DATA t76 TYPE i.
        DATA(t77) = t73.
        t77->load( ).
        t76 = lines( t77->items ).
        t75 = t76.
        DATA t78 TYPE i.
        DATA(t79) = 0.
        t78 = t79.
        DATA t80 TYPE REF TO zcl_lnt_abstract_token.
        DATA t81 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t81.
        t80 = t81.
        DO.
          DATA t82 TYPE abap_bool.
          DATA(t83) = t78.
          DATA(t84) = t75.
          t82 = xsdbool( t83 < t84 ).
          IF t82 = abap_false.
            EXIT.
          ENDIF.
          DATA t85 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t85.
          DATA t86 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t86.
          DATA t87 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t87.
          DATA(t88) = t73.
          DATA(t89) = t78.
          DATA t90 TYPE REF TO object.
          t90 = t88->get( p0 = t89 ).
          DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t91.
          CLEAR t87.
          IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t91 ?= t90.
            DATA t92 TYPE REF TO object.
            t92 = t91->as_ref( ).
            t87 ?= t92.
          ELSE.
            t87 ?= t90.
          ENDIF.
          t86 = t87.
          t85 = t86.
          DATA(t93) = VALUE abap_bool( ).
          DATA t94 TYPE string.
          DATA t95 TYPE string.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t97) = t85.
          t96 = t97.
          DATA t98 TYPE string.
          DATA(t99) = t96.
          t98 = t99->str.
          t95 = t98.
          DATA(t100) = strlen( t95 ).
          t94 = t95.
          IF t94 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t94 TO UPPER CASE.
          ELSE.
            t94 = zlnt_runtime_uppe_91169605024d=>full( t94 ).
          ENDIF.
          DATA t101 TYPE string.
          DATA(t102) = t8.
          DATA(t103) = strlen( t102 ).
          t101 = t102.
          IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t101 TO UPPER CASE.
          ELSE.
            t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
          ENDIF.
          t93 = xsdbool( t94 = t101 ).
          IF t93 = abap_true.
            DATA t104 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t104.
            DATA(t105) = abap_true.
            IF t105 = abap_true.
              DATA(t106) = t85.
              t104 = t106.
            ELSE.
              DATA t107 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t107.
              t104 = t107.
            ENDIF.
            t80 = t104.
            EXIT.
          ENDIF.
          DATA t108 TYPE i.
          DATA(t109) = t78.
          DATA(t110) = 1.
          t108 = t109 + t110.
          t78 = t108.
        ENDDO.
        DATA(t111) = t80.
        t72 = t111.
        t71 = t72.
        DATA t112 TYPE abap_bool.
        DATA(t113) = t71.
        t112 = xsdbool( t113 IS BOUND ).
        IF t112 = abap_true.
          DATA t114 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t115 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t116) = t1.
          DATA t117 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t118) = t71.
          t117 = t118.
          t115 = zcl_lnt_edit_helper=>delete_token( i_file = t116 i_token = t117 ).
          t114 = t115.
          DATA t119 TYPE string.
          DATA(t120) = |Forbidden pragma|.
          t119 = t120.
          DATA(t121) = t4.
          DATA t122 TYPE REF TO zcl_lnt_issue.
          CLEAR t122.
          DATA(t123) = t1.
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t125) = t71.
          t124 = t125.
          DATA(t126) = t119.
          DATA(t127) = VALUE string( ).
          DATA t128 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t128.
          DATA t129 TYPE string.
          DATA(t130) = |forbidden_pseudo_and_pragma|.
          t129 = t130.
          DATA t131 TYPE string.
          DATA(t132) = |Forbidden pseudo comments and pragma|.
          t131 = t132.
          DATA t133 TYPE string.
          DATA(t134) = |Checks for unwanted pseudo comments and pragma|.
          t133 = t134.
          DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t135.
          DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t136.
          DATA(t137) = abap_true.
          IF t137 = abap_true.
            DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t140.
            t139 = t140.
            DATA(t141) = t139.
            DATA(t142) = |Quickfix|.
            t141->load( ).
            APPEND t142 TO t141->items.
            t141->save( ).
            DATA(t143) = t139.
            DATA(t144) = |SingleFile|.
            t143->load( ).
            APPEND t144 TO t143->items.
            t143->save( ).
            DATA(t145) = t139.
            t138 = t145.
            t136 = t138.
          ELSE.
            DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t146.
            t136 = t146.
          ENDIF.
          t135 = t136.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t148.
          DATA(t149) = abap_true.
          IF t149 = abap_true.
            DATA(t150) = |DATA i TYPE i. "#EC *|.
            DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t151->has = abap_true.
            t151->value = t150.
            t148 = t151.
          ELSE.
            DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t152.
            t148 = t152.
          ENDIF.
          t147 = t148.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t153.
          DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t154.
          DATA(t155) = abap_true.
          IF t155 = abap_true.
            DATA(t156) = |DATA i TYPE i.|.
            DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t157->has = abap_true.
            t157->value = t156.
            t154 = t157.
          ELSE.
            DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t158.
            t154 = t158.
          ENDIF.
          t153 = t154.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          t159 = t160.
          DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          t161 = t162.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          t163 = t164.
          t128 = NEW zcl_lnt_irule_metadata( i_key = t129 i_title = t131 i_short_description = t133 i_bad_example = t147 i_good_example = t153 i_extended_information = t159 i_tags = t135 i_pragma = t161 i_pseudo_comment = t163 ).
          CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
          t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t165.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t165 ).
          ENDIF.
          DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t166.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t166 ).
          ENDIF.
          DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t167.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t167 ).
          ENDIF.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t168 ).
          ENDIF.
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t169 ).
          ENDIF.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t170 ).
          ENDIF.
          CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
          t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t171) = |key|.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t172.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
          ENDIF.
          DATA(t173) = |title|.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
          ENDIF.
          DATA(t175) = |shortDescription|.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
          ENDIF.
          DATA(t177) = |tags|.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
          ENDIF.
          DATA(t179) = |badExample|.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
          ENDIF.
          DATA(t181) = |goodExample|.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
          ENDIF.
          t127 = t128->key.
          DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t184) = me->conf.
          t183 = t184->zlnt_view_read_sr_15c06369f827( ).
          DATA t185 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t185.
          DATA(t186) = abap_true.
          IF t186 = abap_true.
            DATA(t187) = t114.
            t185 = t187.
          ELSE.
            DATA t188 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t188.
            t185 = t188.
          ENDIF.
          t122 = zcl_lnt_issue=>at_token( i_file = t123 i_token = t124 i_message_26cb = t126 i_key = t127 i_severity = t183 i_fix = t185 ).
          t121->load( ).
          APPEND t122 TO t121->items.
          t121->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t189) = abap_false.
    t2 = t189.
    DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t191) = me->conf.
    t190 = t191->zlnt_view_read_sr_21ada0793ffa( ).
    DATA(t192) = VALUE string( ).
    t190->dense( ).
    DATA(t193) = VALUE i( ).
    DO.
      t190->load( ).
      IF t193 >= lines( t190->items ).
        EXIT.
      ENDIF.
      CLEAR t192.
      READ TABLE t190->items INDEX t193 + 1 INTO t192.
      IF t190->has( t193 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t193 = t193 + 1.
      DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t195 TYPE REF TO zcl_lnt_abap_file.
      DATA(t196) = t1.
      t195 = t196.
      DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t198) = t195.
      t197 = t198->statements.
      t194 = t197.
      DATA t199 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t199.
      DATA t200 TYPE REF TO object.
      CLEAR t200.
      DATA(t201) = VALUE i( ).
      DO.
        t194->load( ).
        IF t201 >= lines( t194->items ).
          EXIT.
        ENDIF.
        CLEAR t200.
        READ TABLE t194->items INDEX t201 + 1 INTO t200.
        t201 = t201 + 1.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        CLEAR t199.
        IF t200 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t202 ?= t200.
          DATA t203 TYPE REF TO object.
          t203 = t202->as_ref( ).
          t199 ?= t203.
        ELSE.
          t199 ?= t200.
        ENDIF.
        DATA t204 TYPE abap_bool.
        DATA t205 TYPE abap_bool.
        DATA(t206) = me->conf.
        t205 = t206->zlnt_view_read_sr_493aa9b7723d( ).
        DATA(t207) = abap_true.
        t204 = xsdbool( t205 = t207 ).
        IF t204 = abap_true.
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE abap_bool.
          DATA t210 TYPE REF TO zif_lnt_statement.
          DATA(t211) = t199.
          t210 = t211->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t209 = xsdbool( t210 IS BOUND AND t210 IS INSTANCE OF zcl_lnt_st_class_definition ).
          t208 = t209.
          IF t209 = abap_true.
            DATA t212 TYPE abap_bool.
            DATA t213 TYPE REF TO zcl_lnt_expression_node.
            DATA(t214) = t199.
            DATA(t215) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
            t213 = t214->find_first_expression( i_type_9913 = t215 ).
            t212 = xsdbool( t213 IS BOUND ).
            t208 = t212.
          ENDIF.
          IF t208 = abap_true.
            DATA(t216) = abap_true.
            t2 = t216.
            CONTINUE.
          ELSE.
            DATA t217 TYPE abap_bool.
            DATA t218 TYPE abap_bool.
            DATA(t219) = t2.
            DATA(t220) = abap_true.
            t218 = xsdbool( t219 = t220 ).
            t217 = t218.
            IF t218 = abap_true.
              DATA t221 TYPE abap_bool.
              DATA t222 TYPE REF TO zif_lnt_statement.
              DATA(t223) = t199.
              t222 = t223->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t221 = xsdbool( t222 IS BOUND AND t222 IS INSTANCE OF zcl_lnt_end_class ).
              t217 = t221.
            ENDIF.
            IF t217 = abap_true.
              DATA(t224) = abap_false.
              t2 = t224.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t225 TYPE abap_bool.
        DATA t226 TYPE abap_bool.
        DATA(t227) = me->conf.
        t226 = t227->zlnt_view_read_sr_2c496c208fd0( ).
        DATA(t228) = abap_true.
        t225 = xsdbool( t226 = t228 ).
        IF t225 = abap_true.
          DATA t229 TYPE abap_bool.
          DATA t230 TYPE abap_bool.
          DATA t231 TYPE REF TO zif_lnt_statement.
          DATA(t232) = t199.
          t231 = t232->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t230 = xsdbool( t231 IS BOUND AND t231 IS INSTANCE OF zcl_lnt_st_interface ).
          t229 = t230.
          IF t230 = abap_true.
            DATA t233 TYPE abap_bool.
            DATA t234 TYPE REF TO zcl_lnt_expression_node.
            DATA(t235) = t199.
            DATA(t236) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
            t234 = t235->find_first_expression( i_type_9913 = t236 ).
            t233 = xsdbool( t234 IS BOUND ).
            t229 = t233.
          ENDIF.
          IF t229 = abap_true.
            DATA(t237) = abap_true.
            t2 = t237.
            CONTINUE.
          ELSE.
            DATA t238 TYPE abap_bool.
            DATA t239 TYPE abap_bool.
            DATA(t240) = t2.
            DATA(t241) = abap_true.
            t239 = xsdbool( t240 = t241 ).
            t238 = t239.
            IF t239 = abap_true.
              DATA t242 TYPE abap_bool.
              DATA t243 TYPE REF TO zif_lnt_statement.
              DATA(t244) = t199.
              t243 = t244->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t242 = xsdbool( t243 IS BOUND AND t243 IS INSTANCE OF zcl_lnt_end_interface ).
              t238 = t242.
            ENDIF.
            IF t238 = abap_true.
              DATA(t245) = abap_false.
              t2 = t245.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t246 TYPE abap_bool.
        DATA(t247) = t2.
        DATA(t248) = abap_true.
        t246 = xsdbool( t247 = t248 ).
        IF t246 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t249 TYPE abap_bool.
        DATA t250 TYPE abap_bool.
        DATA t251 TYPE REF TO zif_lnt_statement.
        DATA(t252) = t199.
        t251 = t252->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t250 = xsdbool( t251 IS BOUND AND t251 IS INSTANCE OF zcl_lnt_st_comment ).
        t249 = xsdbool( t250 = abap_false ).
        IF t249 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t253) = VALUE abap_bool( ).
        DATA(t254) = VALUE i( ).
        DATA t255 TYPE string.
        DATA t256 TYPE string.
        DATA(t257) = t199.
        t256 = t257->concat_tokens( ).
        DATA(t258) = strlen( t256 ).
        t255 = t256.
        IF t255 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t255 TO UPPER CASE.
        ELSE.
          t255 = zlnt_runtime_uppe_91169605024d=>full( t255 ).
        ENDIF.
        DATA t259 TYPE string.
        DATA(t260) = t192.
        DATA(t261) = strlen( t260 ).
        t259 = t260.
        IF t259 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t259 TO UPPER CASE.
        ELSE.
          t259 = zlnt_runtime_uppe_91169605024d=>full( t259 ).
        ENDIF.
        DATA(t262) = strlen( t255 ).
        IF t259 IS INITIAL.
          t254 = 0.
        ELSE.
          FIND t259 IN t255 MATCH OFFSET t254.
          IF sy-subrc <> 0.
            t254 = -1.
          ENDIF.
        ENDIF.
        DATA(t263) = 0.
        t253 = xsdbool( t254 >= t263 ).
        IF t253 = abap_true.
          DATA t264 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t265 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t266) = t1.
          DATA(t267) = t199.
          t265 = zcl_lnt_edit_helper=>delete_statement( i_file = t266 i_statement = t267 ).
          t264 = t265.
          DATA t268 TYPE string.
          DATA(t269) = |Forbidden pseudo comment|.
          t268 = t269.
          DATA(t270) = t4.
          DATA t271 TYPE REF TO zcl_lnt_issue.
          CLEAR t271.
          DATA(t272) = t1.
          DATA(t273) = t199.
          DATA(t274) = t268.
          DATA(t275) = VALUE string( ).
          DATA t276 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t276.
          DATA t277 TYPE string.
          DATA(t278) = |forbidden_pseudo_and_pragma|.
          t277 = t278.
          DATA t279 TYPE string.
          DATA(t280) = |Forbidden pseudo comments and pragma|.
          t279 = t280.
          DATA t281 TYPE string.
          DATA(t282) = |Checks for unwanted pseudo comments and pragma|.
          t281 = t282.
          DATA t283 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t283.
          DATA t284 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t284.
          DATA(t285) = abap_true.
          IF t285 = abap_true.
            DATA t286 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t287 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t288 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t288.
            t287 = t288.
            DATA(t289) = t287.
            DATA(t290) = |Quickfix|.
            t289->load( ).
            APPEND t290 TO t289->items.
            t289->save( ).
            DATA(t291) = t287.
            DATA(t292) = |SingleFile|.
            t291->load( ).
            APPEND t292 TO t291->items.
            t291->save( ).
            DATA(t293) = t287.
            t286 = t293.
            t284 = t286.
          ELSE.
            DATA t294 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t294.
            t284 = t294.
          ENDIF.
          t283 = t284.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          DATA(t297) = abap_true.
          IF t297 = abap_true.
            DATA(t298) = |DATA i TYPE i. "#EC *|.
            DATA(t299) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t299->has = abap_true.
            t299->value = t298.
            t296 = t299.
          ELSE.
            DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t300.
            t296 = t300.
          ENDIF.
          t295 = t296.
          DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t301.
          DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t302.
          DATA(t303) = abap_true.
          IF t303 = abap_true.
            DATA(t304) = |DATA i TYPE i.|.
            DATA(t305) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t305->has = abap_true.
            t305->value = t304.
            t302 = t305.
          ELSE.
            DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t306.
            t302 = t306.
          ENDIF.
          t301 = t302.
          DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t308.
          t307 = t308.
          DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t310.
          t309 = t310.
          DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t312.
          t311 = t312.
          t276 = NEW zcl_lnt_irule_metadata( i_key = t277 i_title = t279 i_short_description = t281 i_bad_example = t295 i_good_example = t301 i_extended_information = t307 i_tags = t283 i_pragma = t309 i_pseudo_comment = t311 ).
          CREATE OBJECT t276->zlnt_view_ownkeys_b0e8086400eb.
          t276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t313 ).
          ENDIF.
          DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t314.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t314 ).
          ENDIF.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t315 ).
          ENDIF.
          DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t316.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t316 ).
          ENDIF.
          DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t317.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t317 ).
          ENDIF.
          DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t318.
          IF t276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t318 ).
          ENDIF.
          CREATE OBJECT t276->zlnt_json_ownkeys_70e5fd461788.
          t276->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t319) = |key|.
          DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t320.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
          ENDIF.
          DATA(t321) = |title|.
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t322.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
          ENDIF.
          DATA(t323) = |shortDescription|.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
          ENDIF.
          DATA(t325) = |tags|.
          DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t326.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
          ENDIF.
          DATA(t327) = |badExample|.
          DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t328.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t327 p1 = t328 ).
          ENDIF.
          DATA(t329) = |goodExample|.
          DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t330.
          IF t276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t329 p1 = t330 ).
          ENDIF.
          t275 = t276->key.
          DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t332) = me->conf.
          t331 = t332->zlnt_view_read_sr_15c06369f827( ).
          DATA t333 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t333.
          DATA(t334) = abap_true.
          IF t334 = abap_true.
            DATA(t335) = t264.
            t333 = t335.
          ELSE.
            DATA t336 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t336.
            t333 = t336.
          ENDIF.
          DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t337.
          t271 = zcl_lnt_issue=>at_statement( i_file = t272 i_statement = t273 i_message_26cb = t274 i_key = t275 i_severity = t331 i_fix = t333 i_alternative_fixes = t337 ).
          t270->load( ).
          APPEND t271 TO t270->items.
          t270->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t338) = t4.
    result = t338.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->g_c_i_s_r_f_p_a_p_t_f_ps_an_pr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_frbdd_psd_and_prgm_cnf( me->g_c_i_s_r_f_p_a_p_t_f_ps_an_pr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_frbdd_psd_and_prgm_cnf.
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
        t1 = NEW zcl_lnt_frbdd_psd_and_prgm_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_f_p_a_p_t_f_ps_an_pr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_f_p_a_p_t_f_ps_an_pr( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1508_76571cae9efb.
  ENDMETHOD.
ENDCLASS.
