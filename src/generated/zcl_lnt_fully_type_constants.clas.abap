* TS: src/rules/fully_type_constants.ts:15:1 FullyTypeConstants
CLASS zcl_lnt_fully_type_constants DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_flly_typ_cnsnts_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_type_9913 TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_fl_ty_cn_ts_fl_ty_cn RETURNING VALUE(result) TYPE REF TO zcl_lnt_flly_typ_cnsnts_cnf.
    METHODS s_c_i_s_r_fl_ty_cn_ts_fl_ty_cn IMPORTING i_conf TYPE REF TO zcl_lnt_flly_typ_cnsnts_cnf.
    METHODS r_p_i_s_r_fl_ty_cn_ts_fl_ty_cn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_typed IMPORTING i_stat TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fully_type_constants IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_flly_typ_cnsnts_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |fully_type_constants|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Fully type constants|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks constants for full typing - no implicit typing allowe|.
    t7 = t7 && |d.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |CONSTANTS foo VALUE 'a'.|.
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
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = |CONSTANTS foo TYPE c LENGTH 1 VALUE 'a'.|.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = t15.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t25.
      t24 = t25.
      DATA(t26) = t24.
      DATA(t27) = |SingleFile|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t24.
      t23 = t28.
      t21 = t23.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t21 = t29.
    ENDIF.
    t20 = t21.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t8 i_good_example = t14 i_extended_information = t30 i_tags = t20 i_pragma = t32 i_pseudo_comment = t34 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
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
    DATA(t48) = |badExample|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |goodExample|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = |Fully type |.
    DATA(t5) = t1.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ t5 }|.
    DATA(t7) = |, no implicit typing|.
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t7 }|.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_fl_ty_cn_ts_fl_ty_cn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_fl_ty_cn_ts_fl_ty_cn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_fl_ty_cn_ts_fl_ty_cn.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        CLEAR t13.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zif_lnt_statement.
      CLEAR t17.
      DATA(t18) = t9.
      t17 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_statem_constant ).
      t15 = t16.
      IF t16 = abap_false.
        DATA(t19) = VALUE abap_bool( ).
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = VALUE abap_bool( ).
        DATA(t22) = me->conf.
        t21 = t22->zlnt_view_read_sr_2d1dce4fd73b( ).
        DATA(t23) = abap_true.
        t20 = xsdbool( t21 = t23 ).
        t19 = t20.
        IF t20 = abap_true.
          DATA(t24) = VALUE abap_bool( ).
          DATA t25 TYPE REF TO zif_lnt_statement.
          CLEAR t25.
          DATA(t26) = t9.
          t25 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_data ).
          t19 = t24.
        ENDIF.
        t15 = t19.
      ENDIF.
      t14 = t15.
      IF t15 = abap_true.
        DATA(t27) = VALUE abap_bool( ).
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t29.
        DATA t30 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t30.
        DATA(t31) = t9.
        t30 = t31.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t34.
        DATA(t35) = t30.
        DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
        t34 = t35->find_first_expression( i_type_9913 = t36 ).
        t33 = t34.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t37.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t33.
        t38 = xsdbool( t39 IS BOUND ).
        IF t38 = abap_true.
          DATA(t40) = t33.
          t37 = t40.
        ELSE.
          DATA t41 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t41.
          DATA(t42) = t30.
          DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
          t41 = t42->find_first_expression( i_type_9913 = t43 ).
          t37 = t41.
        ENDIF.
        t32 = t37.
        t29 = t32.
        t28 = xsdbool( t29 IS BOUND ).
        t27 = xsdbool( t28 = abap_false ).
        t14 = t27.
      ENDIF.
      IF t14 = abap_true.
        DATA(t44) = VALUE string( ).
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE REF TO zif_lnt_statement.
        CLEAR t47.
        DATA(t48) = t9.
        t47 = t48->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_statem_constant ).
        IF t46 = abap_true.
          DATA(t49) = |constant definition|.
          t45 = t49.
        ELSE.
          DATA(t50) = |data definition|.
          t45 = t50.
        ENDIF.
        t44 = t45.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t54.
        DATA(t55) = t9.
        DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
        t54 = t55->find_first_expression( i_type_9913 = t56 ).
        t53 = t54.
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t53.
        IF t59 IS INITIAL.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          DATA t60 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t60.
          t57 = t60.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t62.
          DATA(t63) = t53.
          t62 = t63.
          t61 = t62->get_first_token( ).
          t57 = t61.
        ENDIF.
        t52 = t57.
        t51 = t52.
        DATA(t64) = VALUE abap_bool( ).
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t65.
        DATA(t66) = t51.
        t65 = t66.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        t67 = t68.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t65.
        IF t70 IS INITIAL.
          t69 = abap_true.
        ENDIF.
        t64 = t69.
        IF t64 = abap_true.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t72.
          DATA t73 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t73.
          DATA(t74) = t9.
          DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
          t73 = t74->find_first_expression( i_type_9913 = t75 ).
          t72 = t73.
          DATA t76 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t76.
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = t72.
          IF t78 IS INITIAL.
            t77 = abap_true.
          ENDIF.
          IF t77 = abap_true.
            DATA t79 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t79.
            t76 = t79.
          ELSE.
            DATA t80 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t80.
            DATA t81 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t81.
            DATA(t82) = t72.
            t81 = t82.
            t80 = t81->get_first_token( ).
            t76 = t80.
          ENDIF.
          t71 = t76.
          t51 = t71.
        ENDIF.
        DATA(t83) = VALUE abap_bool( ).
        DATA t84 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t84.
        DATA(t85) = t51.
        t84 = t85.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        t86 = t87.
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = t84.
        IF t89 IS INITIAL.
          t88 = abap_true.
        ENDIF.
        t83 = t88.
        IF t83 = abap_true.
          DATA t90 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA(t94) = |fully type constants, unexpected node|.
            DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t95->has = abap_true.
            t95->value = t94.
            t92 = t95.
          ELSE.
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t96.
            t92 = t96.
          ENDIF.
          t91 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t92 ).
          t90 = NEW #( ).
          t90->payload = t91.
          CLEAR t90->source_value.
          IF t91 IS BOUND.
            DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t97.
            DATA t98 TYPE REF TO object.
            CLEAR t98.
            CLEAR t97.
            t98 = t91.
            TRY.
                t90->source_value ?= t98.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t90->source_value IS NOT BOUND.
              TRY.
                  t97 ?= t91.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t97 IS BOUND.
                t90->source_value = t97->source( ).
              ENDIF.
              IF t90->source_value IS NOT BOUND.
                CREATE OBJECT t90->source_value.
                t90->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t90->source_value->oval = t91.
              ENDIF.
            ENDIF.
          ENDIF.
          RAISE EXCEPTION t90.
        ENDIF.
        DATA(t99) = t2.
        DATA t100 TYPE REF TO zcl_lnt_issue.
        CLEAR t100.
        DATA(t101) = t1.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t102.
        DATA(t103) = t51.
        t102 = t103.
        DATA(t104) = VALUE string( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = t44.
        t105 = t106.
        DATA(t107) = VALUE string( ).
        DATA(t108) = VALUE string( ).
        DATA(t109) = |Fully type |.
        DATA(t110) = t105.
        DATA(t111) = strlen( t109 ).
        t108 = |{ t109 }{ t110 }|.
        DATA(t112) = |, no implicit typing|.
        DATA(t113) = strlen( t108 ).
        t107 = |{ t108 }{ t112 }|.
        t104 = t107.
        DATA(t114) = VALUE string( ).
        DATA t115 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t115.
        DATA(t116) = VALUE string( ).
        DATA(t117) = |fully_type_constants|.
        t116 = t117.
        DATA(t118) = VALUE string( ).
        DATA(t119) = |Fully type constants|.
        t118 = t119.
        DATA(t120) = VALUE string( ).
        DATA(t121) = |Checks constants for full typing - no implicit typing allowe|.
        t121 = t121 && |d.|.
        t120 = t121.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA(t124) = abap_true.
        IF t124 = abap_true.
          DATA(t125) = |CONSTANTS foo VALUE 'a'.|.
          DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t126->has = abap_true.
          t126->value = t125.
          t123 = t126.
        ELSE.
          DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t127.
          t123 = t127.
        ENDIF.
        t122 = t123.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA(t131) = |CONSTANTS foo TYPE c LENGTH 1 VALUE 'a'.|.
          DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t132->has = abap_true.
          t132->value = t131.
          t129 = t132.
        ELSE.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          t129 = t133.
        ENDIF.
        t128 = t129.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t134.
        DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t135.
        DATA(t136) = abap_true.
        IF t136 = abap_true.
          DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t137.
          DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t138.
          DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t139.
          CREATE OBJECT t139.
          t138 = t139.
          DATA(t140) = t138.
          DATA(t141) = |SingleFile|.
          t140->load( ).
          APPEND t141 TO t140->items.
          t140->save( ).
          DATA(t142) = t138.
          t137 = t142.
          t135 = t137.
        ELSE.
          DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t143.
          t135 = t143.
        ENDIF.
        t134 = t135.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        t144 = t145.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        t146 = t147.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t148 = t149.
        t115 = NEW zcl_lnt_irule_metadata( i_key = t116 i_title = t118 i_short_description = t120 i_bad_example = t122 i_good_example = t128 i_extended_information = t144 i_tags = t134 i_pragma = t146 i_pseudo_comment = t148 ).
        CREATE OBJECT t115->zlnt_view_ownkeys_b0e8086400eb.
        t115->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t150 ).
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t155 ).
        ENDIF.
        CREATE OBJECT t115->zlnt_json_ownkeys_70e5fd461788.
        t115->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t156) = |key|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        DATA(t158) = |title|.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
        ENDIF.
        DATA(t160) = |shortDescription|.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
        ENDIF.
        DATA(t162) = |badExample|.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
        ENDIF.
        DATA(t164) = |goodExample|.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
        ENDIF.
        DATA(t166) = |tags|.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
        ENDIF.
        t114 = t115->key.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        DATA(t169) = me->conf.
        t168 = t169->zlnt_view_read_sr_15c06369f827( ).
        DATA t170 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t170.
        t100 = zcl_lnt_issue=>at_token( i_file = t101 i_token = t102 i_message_26cb = t104 i_key = t114 i_severity = t168 i_fix = t170 ).
        t99->load( ).
        APPEND t100 TO t99->items.
        t99->save( ).
      ENDIF.
    ENDDO.
    DATA(t171) = t2.
    result = t171.

  ENDMETHOD.

  METHOD is_typed.
    DATA(t1) = i_stat.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    t4 = t5->find_first_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t3.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA(t10) = t3.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = t1.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
      t11 = t12->find_first_expression( i_type_9913 = t13 ).
      t7 = t11.
    ENDIF.
    t2 = t7.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_flly_typ_cnsnts_cnf( me->g_c_i_s_r_fl_ty_cn_ts_fl_ty_cn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_flly_typ_cnsnts_cnf( me->g_c_i_s_r_fl_ty_cn_ts_fl_ty_cn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_flly_typ_cnsnts_cnf.
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
        t1 = NEW zcl_lnt_flly_typ_cnsnts_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_fl_ty_cn_ts_fl_ty_cn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_fl_ty_cn_ts_fl_ty_cn( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1514_3527bfefa2fa.
  ENDMETHOD.
ENDCLASS.
