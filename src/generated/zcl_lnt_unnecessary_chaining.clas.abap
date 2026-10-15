* TS: src/rules/unnecessary_chaining.ts:19:1 UnnecessaryChaining
CLASS zcl_lnt_unnecessary_chaining DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_ch_ts_un_chn RETURNING VALUE(result) TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS st_cn_in_sr_rl_un_ch_ts_un_chn IMPORTING i_conf TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_unnecessary_chaining IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_unncssry_chnng_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unnecessary_chaining|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unnecessary Chaining|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Find unnecessary chaining, all statements are checked|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = ||.
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
      DATA(t29) = |WRITE: bar.|.
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
      DATA(t35) = |WRITE bar.|.
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

  METHOD gt_cn_in_sr_rl_un_ch_ts_un_chn.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_ch_ts_un_chn.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t2.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_class ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_class.
      DATA t10 TYPE REF TO zcl_lnt_class.
      DATA(t11) = t2.
      t10 ?= t11.
      t9 = t10.
      DATA t12 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t12.
      DATA t13 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_abap_file.
      DATA t16 TYPE REF TO zcl_lnt_abap_file.
      DATA(t17) = t9.
      t16 = t17->get_main_abap_file( ).
      t15 = t16.
      DATA t18 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t15.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      IF t19 = abap_true.
        DATA t21 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t21.
        t18 = t21.
      ELSE.
        DATA t22 TYPE REF TO zif_lnt_abap_file_information.
        DATA t23 TYPE REF TO zcl_lnt_abap_file.
        DATA t24 TYPE REF TO zcl_lnt_abap_file.
        DATA(t25) = t15.
        t24 = t25.
        t23 = t24.
        DATA t26 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t27) = t23.
        t26 = t27->info.
        t22 = t26.
        t18 = t22.
      ENDIF.
      t14 = t18.
      t13 = t14.
      DATA t28 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t28.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = t13.
      IF t30 IS INITIAL.
        t29 = abap_true.
      ENDIF.
      IF t29 = abap_true.
        DATA t31 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t31.
        t28 = t31.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t33 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t34) = t13.
        t33 = t34.
        DATA t35 TYPE string.
        DATA t36 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t37) = t9.
        t36 = t37.
        DATA t38 TYPE string.
        DATA(t39) = t36.
        t38 = t39->name.
        t35 = t38.
        t32 = t33->get_class_definition_by_name( i_name = t35 ).
        t28 = t32.
      ENDIF.
      t12 = t28.
      t8 = t12.
      t7 = t8.
      DATA t40 TYPE REF TO zcl_lnt_ddic.
      DATA t41 TYPE REF TO zcl_lnt_ddic.
      DATA(t42) = me->reg.
      t41 = NEW zcl_lnt_ddic( i_reg_f149 = t42 ).
      t40 = t41.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA(t46) = me->conf.
      t45 = t46->zlnt_view_read_sr_f1237ade84fb( ).
      DATA(t47) = abap_true.
      t44 = xsdbool( t45 = t47 ).
      t43 = t44.
      IF t44 = abap_true.
        DATA t48 TYPE abap_bool.
        DATA(t49) = t40.
        DATA(t50) = t7.
        DATA t51 TYPE REF TO zcl_lnt_class.
        DATA(t52) = t2.
        t51 ?= t52.
        t48 = t49->is_exception( i_def = t50 i_obj_ac26 = t51 ).
        t43 = t48.
      ENDIF.
      IF t43 = abap_true.
        DATA(t53) = t3.
        result = t53.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t55 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t56) = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn( ) ).
    t55 = t56->zlnt_view_read_sr_0513be74f25b( ).
    t54 = t55.
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = VALUE abap_bool( ).
    DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t60) = t54.
    t59 = t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    t61 = t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = t59.
    IF t64 IS INITIAL.
      t63 = abap_true.
    ELSEIF t64->has = abap_false.
      t63 = abap_true.
    ENDIF.
    t58 = t63.
    t57 = t58.
    IF t58 = abap_false.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE f( ).
      DATA(t67) = t54.
      IF t67->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t66 = t67->value.
      DATA(t68) = CONV f( 1 ).
      t65 = xsdbool( t66 < t68 ).
      t57 = t65.
    ENDIF.
    IF t57 = abap_true.
      DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t69.
      DATA(t70) = abap_true.
      IF t70 = abap_true.
        DATA(t71) = CONV f( 10 ).
        DATA(t72) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t72->has = abap_true.
        t72->value = t71.
        t69 = t72.
      ELSE.
        DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t73.
        t69 = t73.
      ENDIF.
      t54 = t69.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zcl_lnt_abap_file.
    DATA(t77) = t1.
    t76 = t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t79) = t76.
    t78 = t79->statements.
    t75 = t78.
    t74 = t75.
    DATA t80 TYPE i.
    DATA(t81) = 0.
    t80 = t81.
    DO.
      DATA t82 TYPE abap_bool.
      DATA(t83) = t80.
      DATA t84 TYPE i.
      DATA(t85) = t74.
      t85->load( ).
      t84 = lines( t85->items ).
      t82 = xsdbool( t83 < t84 ).
      IF t82 = abap_false.
        EXIT.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t86.
      DATA t87 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t87.
      DATA t88 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t88.
      DATA t89 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t89.
      DATA(t90) = t74.
      DATA(t91) = t80.
      t91 = t91 + 1.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      t90->load( ).
      CLEAR t92.
      READ TABLE t90->items INDEX t91 INTO t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      CLEAR t89.
      IF t92 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t93 ?= t92.
        DATA t94 TYPE REF TO object.
        t94 = t93->as_ref( ).
        t89 ?= t94.
      ELSE.
        t89 ?= t92.
      ENDIF.
      t88 = t89.
      DATA t95 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t96) = t88.
      t95 = t96->colon.
      t87 = t95.
      t86 = t87.
      DATA(t97) = VALUE abap_bool( ).
      DATA t98 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t99) = t86.
      t98 = t99.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      t100 = t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = t98.
      IF t103 IS INITIAL.
        t102 = abap_true.
      ENDIF.
      t97 = t102.
      IF t97 = abap_true.
        DATA t104 TYPE i.
        DATA(t105) = t80.
        DATA(t106) = 1.
        t104 = t105 + t106.
        t80 = t104.
        CONTINUE.
      ENDIF.
      DATA t107 TYPE f.
      DATA(t108) = CONV f( 1 ).
      t107 = t108.
      DATA t109 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t109.
      DATA t110 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t110.
      DATA(t111) = t74.
      DATA t112 TYPE i.
      DATA(t113) = t80.
      DATA t114 TYPE i.
      DATA(t115) = t107.
      t114 = t115.
      t112 = t113 + t114.
      t112 = t112 + 1.
      DATA t116 TYPE REF TO object.
      CLEAR t116.
      t111->load( ).
      CLEAR t116.
      READ TABLE t111->items INDEX t112 INTO t116.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      CLEAR t110.
      IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t117 ?= t116.
        DATA t118 TYPE REF TO object.
        t118 = t117->as_ref( ).
        t110 ?= t118.
      ELSE.
        t110 ?= t116.
      ENDIF.
      t109 = t110.
      DO.
        DATA(t119) = VALUE abap_bool( ).
        DATA t120 TYPE REF TO zif_lnt_statement.
        CLEAR t120.
        DATA t121 TYPE REF TO zcl_lnt_statement_node.
        DATA(t122) = t109.
        t121 = t122.
        DATA t123 TYPE REF TO zif_lnt_statement.
        CLEAR t123.
        DATA(t124) = VALUE abap_bool( ).
        DATA(t125) = t121.
        IF t125 IS INITIAL.
          t124 = abap_true.
        ENDIF.
        IF t124 = abap_true.
          DATA t126 TYPE REF TO zif_lnt_statement.
          CLEAR t126.
          t123 = t126.
        ELSE.
          DATA t127 TYPE REF TO zif_lnt_statement.
          DATA(t128) = t121.
          t127 = t128->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t123 = t127.
        ENDIF.
        t120 = t123.
        t119 = xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_st_comment ).
        IF t119 = abap_false.
          EXIT.
        ENDIF.
        DATA t129 TYPE f.
        DATA(t130) = t107.
        DATA(t131) = CONV f( 1 ).
        t129 = t130 + t131.
        t107 = t129.
        DATA t132 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t132.
        DATA(t133) = t74.
        DATA(t134) = VALUE i( ).
        DATA t135 TYPE f.
        DATA t136 TYPE f.
        DATA(t137) = t80.
        t136 = t137.
        DATA(t138) = t107.
        t135 = t136 + t138.
        IF t135 > range_i32_upper.
          t134 = range_i32_upper.
        ELSEIF t135 < range_i32_lower.
          t134 = range_i32_lower.
        ELSE.
          t134 = trunc( t135 ).
        ENDIF.
        t134 = t134 + 1.
        DATA t139 TYPE REF TO object.
        CLEAR t139.
        t133->load( ).
        CLEAR t139.
        READ TABLE t133->items INDEX t134 INTO t139.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        CLEAR t132.
        IF t139 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t140 ?= t139.
          DATA t141 TYPE REF TO object.
          t141 = t140->as_ref( ).
          t132 ?= t141.
        ELSE.
          t132 ?= t139.
        ENDIF.
        t109 = t132.
      ENDDO.
      DATA(t142) = CONV f( 1 ).
      t107 = t142.
      DATA t143 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t144.
      DATA(t145) = abap_true.
      IF t145 = abap_true.
        DATA t146 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t146.
        DATA(t147) = t74.
        DATA t148 TYPE i.
        DATA(t149) = t80.
        DATA t150 TYPE i.
        DATA(t151) = t107.
        t150 = t151.
        t148 = t149 - t150.
        t148 = t148 + 1.
        DATA t152 TYPE REF TO object.
        CLEAR t152.
        t147->load( ).
        CLEAR t152.
        READ TABLE t147->items INDEX t148 INTO t152.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        CLEAR t146.
        IF t152 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t153 ?= t152.
          DATA t154 TYPE REF TO object.
          t154 = t153->as_ref( ).
          t146 ?= t154.
        ELSE.
          t146 ?= t152.
        ENDIF.
        t144 = t146.
      ELSE.
        DATA t155 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t155.
        t144 = t155.
      ENDIF.
      t143 = t144.
      DO.
        DATA(t156) = VALUE abap_bool( ).
        DATA t157 TYPE REF TO zif_lnt_statement.
        CLEAR t157.
        DATA t158 TYPE REF TO zcl_lnt_statement_node.
        DATA t159 TYPE REF TO zcl_lnt_statement_node.
        DATA(t160) = t143.
        t159 = t160.
        t158 = t159.
        DATA t161 TYPE REF TO zif_lnt_statement.
        CLEAR t161.
        DATA(t162) = VALUE abap_bool( ).
        DATA(t163) = t158.
        IF t163 IS INITIAL.
          t162 = abap_true.
        ENDIF.
        IF t162 = abap_true.
          DATA t164 TYPE REF TO zif_lnt_statement.
          CLEAR t164.
          t161 = t164.
        ELSE.
          DATA t165 TYPE REF TO zif_lnt_statement.
          DATA(t166) = t158.
          t165 = t166->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t161 = t165.
        ENDIF.
        t157 = t161.
        t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_st_comment ).
        IF t156 = abap_false.
          EXIT.
        ENDIF.
        DATA t167 TYPE f.
        DATA(t168) = t107.
        DATA(t169) = CONV f( 1 ).
        t167 = t168 + t169.
        t107 = t167.
        DATA t170 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t170.
        DATA(t171) = abap_true.
        IF t171 = abap_true.
          DATA t172 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t172.
          DATA(t173) = t74.
          DATA(t174) = VALUE i( ).
          DATA t175 TYPE f.
          DATA t176 TYPE f.
          DATA(t177) = t80.
          t176 = t177.
          DATA(t178) = t107.
          t175 = t176 - t178.
          IF t175 > range_i32_upper.
            t174 = range_i32_upper.
          ELSEIF t175 < range_i32_lower.
            t174 = range_i32_lower.
          ELSE.
            t174 = trunc( t175 ).
          ENDIF.
          t174 = t174 + 1.
          DATA t179 TYPE REF TO object.
          CLEAR t179.
          t173->load( ).
          CLEAR t179.
          READ TABLE t173->items INDEX t174 INTO t179.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          CLEAR t172.
          IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t180 ?= t179.
            DATA t181 TYPE REF TO object.
            t181 = t180->as_ref( ).
            t172 ?= t181.
          ELSE.
            t172 ?= t179.
          ENDIF.
          t170 = t172.
        ELSE.
          DATA t182 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t182.
          t170 = t182.
        ENDIF.
        t143 = t170.
      ENDDO.
      DATA t183 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t183.
      DATA t184 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t184.
      DATA t185 TYPE REF TO zcl_lnt_statement_node.
      DATA(t186) = t109.
      t185 = t186.
      DATA t187 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t187.
      DATA(t188) = VALUE abap_bool( ).
      DATA(t189) = t185.
      IF t189 IS INITIAL.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
        DATA t190 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t190.
        t187 = t190.
      ELSE.
        DATA t191 TYPE REF TO zcl_lnt_abstract_token.
        DATA t192 TYPE REF TO zcl_lnt_statement_node.
        DATA(t193) = t185.
        t192 = t193.
        DATA t194 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t195) = t192.
        t194 = t195->colon.
        t191 = t194.
        t187 = t191.
      ENDIF.
      t184 = t187.
      t183 = t184.
      DATA t196 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t196.
      DATA t197 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t197.
      DATA t198 TYPE REF TO zcl_lnt_statement_node.
      DATA t199 TYPE REF TO zcl_lnt_statement_node.
      DATA(t200) = t143.
      t199 = t200.
      t198 = t199.
      DATA t201 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t201.
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = t198.
      IF t203 IS INITIAL.
        t202 = abap_true.
      ENDIF.
      IF t202 = abap_true.
        DATA t204 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t204.
        t201 = t204.
      ELSE.
        DATA t205 TYPE REF TO zcl_lnt_abstract_token.
        DATA t206 TYPE REF TO zcl_lnt_statement_node.
        DATA(t207) = t198.
        t206 = t207.
        DATA t208 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t209) = t206.
        t208 = t209->colon.
        t205 = t208.
        t201 = t205.
      ENDIF.
      t197 = t201.
      t196 = t197.
      DATA(t210) = VALUE abap_bool( ).
      DATA(t211) = VALUE abap_bool( ).
      DATA t212 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t213) = t183.
      t212 = t213.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t215.
      t214 = t215.
      DATA(t216) = VALUE abap_bool( ).
      DATA(t217) = VALUE abap_bool( ).
      DATA(t218) = t212.
      IF t218 IS INITIAL.
        t217 = abap_true.
      ENDIF.
      t216 = xsdbool( t217 = abap_false ).
      t211 = t216.
      t210 = t211.
      IF t211 = abap_true.
        DATA t219 TYPE abap_bool.
        DATA t220 TYPE REF TO zcl_lnt_position.
        DATA t221 TYPE REF TO zcl_lnt_abstract_token.
        DATA t222 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t223) = t86.
        t222 = t223.
        t221 = t222.
        DATA t224 TYPE REF TO zcl_lnt_position.
        DATA(t225) = t221.
        t224 = t225->start.
        t220 = t224.
        DATA t226 TYPE REF TO zcl_lnt_position.
        DATA t227 TYPE REF TO zcl_lnt_abstract_token.
        DATA t228 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t229) = t183.
        t228 = t229.
        t227 = t228.
        DATA t230 TYPE REF TO zcl_lnt_position.
        DATA(t231) = t227.
        t230 = t231->start.
        t226 = t230.
        t219 = t220->equals( i_p = t226 ).
        t210 = t219.
      ENDIF.
      IF t210 = abap_true.
        DATA t232 TYPE i.
        DATA(t233) = t80.
        DATA(t234) = 1.
        t232 = t233 + t234.
        t80 = t232.
        CONTINUE.
      ELSE.
        DATA(t235) = VALUE abap_bool( ).
        DATA(t236) = VALUE abap_bool( ).
        DATA t237 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t238) = t196.
        t237 = t238.
        DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        t239 = t240.
        DATA(t241) = VALUE abap_bool( ).
        DATA(t242) = VALUE abap_bool( ).
        DATA(t243) = t237.
        IF t243 IS INITIAL.
          t242 = abap_true.
        ENDIF.
        t241 = xsdbool( t242 = abap_false ).
        t236 = t241.
        t235 = t236.
        IF t236 = abap_true.
          DATA t244 TYPE abap_bool.
          DATA t245 TYPE REF TO zcl_lnt_position.
          DATA t246 TYPE REF TO zcl_lnt_abstract_token.
          DATA t247 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t248) = t86.
          t247 = t248.
          t246 = t247.
          DATA t249 TYPE REF TO zcl_lnt_position.
          DATA(t250) = t246.
          t249 = t250->start.
          t245 = t249.
          DATA t251 TYPE REF TO zcl_lnt_position.
          DATA t252 TYPE REF TO zcl_lnt_abstract_token.
          DATA t253 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t254) = t196.
          t253 = t254.
          t252 = t253.
          DATA t255 TYPE REF TO zcl_lnt_position.
          DATA(t256) = t252.
          t255 = t256->start.
          t251 = t255.
          t244 = t245->equals( i_p = t251 ).
          t235 = t244.
        ENDIF.
        IF t235 = abap_true.
          DATA t257 TYPE i.
          DATA(t258) = t80.
          DATA(t259) = 1.
          t257 = t258 + t259.
          t80 = t257.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t260 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t261 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t262) = t1.
      DATA t263 TYPE REF TO zcl_lnt_position.
      DATA t264 TYPE REF TO zcl_lnt_abstract_token.
      DATA t265 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t266) = t86.
      t265 = t266.
      t264 = t265.
      DATA t267 TYPE REF TO zcl_lnt_position.
      DATA(t268) = t264.
      t267 = t268->start.
      t263 = t267.
      DATA t269 TYPE REF TO zcl_lnt_position.
      DATA t270 TYPE REF TO zcl_lnt_abstract_token.
      DATA t271 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t272) = t86.
      t271 = t272.
      t270 = t271.
      DATA t273 TYPE REF TO zcl_lnt_position.
      DATA t274 TYPE f.
      DATA t275 TYPE REF TO zcl_lnt_position.
      DATA t276 TYPE REF TO zcl_lnt_position.
      DATA(t277) = t270.
      t276 = t277->start.
      t275 = t276.
      DATA t278 TYPE f.
      DATA(t279) = t275.
      t278 = t279->row.
      t274 = t278.
      DATA t280 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t281 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t282 TYPE REF TO zcl_lnt_position.
      DATA t283 TYPE REF TO zcl_lnt_position.
      DATA(t284) = t270.
      t283 = t284->start.
      t282 = t283.
      DATA t285 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t286) = t282.
      t285 = t286->col.
      t281 = t285.
      DATA t287 TYPE f.
      DATA t288 TYPE i.
      DATA t289 TYPE string.
      DATA(t290) = t270.
      t289 = t290->str.
      DATA(t291) = strlen( t289 ).
      t288 = t291.
      t287 = t288.
      DATA(t292) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t292->has = abap_true.
      t292->value = t287.
      t280 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t281 right = t292 op = `+` ).
      t273 = NEW zcl_lnt_position( i_row = t274 i_col = t280 ).
      t269 = t273.
      t261 = zcl_lnt_edit_helper=>delete_range( i_file = t262 i_start = t263 i_end = t269 ).
      t260 = t261.
      DATA t293 TYPE string.
      DATA(t294) = |Unnecessary chaining|.
      t293 = t294.
      DATA t295 TYPE REF TO zcl_lnt_issue.
      CLEAR t295.
      DATA t296 TYPE REF TO zcl_lnt_issue.
      CLEAR t296.
      DATA(t297) = t1.
      DATA t298 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t299) = t86.
      t298 = t299.
      DATA(t300) = t293.
      DATA(t301) = VALUE string( ).
      DATA t302 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t302.
      DATA t303 TYPE string.
      DATA(t304) = |unnecessary_chaining|.
      t303 = t304.
      DATA t305 TYPE string.
      DATA(t306) = |Unnecessary Chaining|.
      t305 = t306.
      DATA t307 TYPE string.
      DATA(t308) = |Find unnecessary chaining, all statements are checked|.
      t307 = t308.
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t309.
      DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t310.
      DATA(t311) = abap_true.
      IF t311 = abap_true.
        DATA(t312) = ||.
        DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t313->has = abap_true.
        t313->value = t312.
        t310 = t313.
      ELSE.
        DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t314.
        t310 = t314.
      ENDIF.
      t309 = t310.
      DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t315.
      DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t316.
      DATA(t317) = abap_true.
      IF t317 = abap_true.
        DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t320 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t320.
        t319 = t320.
        DATA(t321) = t319.
        DATA(t322) = |SingleFile|.
        t321->load( ).
        APPEND t322 TO t321->items.
        t321->save( ).
        DATA(t323) = t319.
        DATA(t324) = |Quickfix|.
        t323->load( ).
        APPEND t324 TO t323->items.
        t323->save( ).
        DATA(t325) = t319.
        t318 = t325.
        t316 = t318.
      ELSE.
        DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t326.
        t316 = t326.
      ENDIF.
      t315 = t316.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t327.
      DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t328.
      DATA(t329) = abap_true.
      IF t329 = abap_true.
        DATA(t330) = |WRITE: bar.|.
        DATA(t331) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t331->has = abap_true.
        t331->value = t330.
        t328 = t331.
      ELSE.
        DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t332.
        t328 = t332.
      ENDIF.
      t327 = t328.
      DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t333.
      DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t334.
      DATA(t335) = abap_true.
      IF t335 = abap_true.
        DATA(t336) = |WRITE bar.|.
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
      DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t340.
      t339 = t340.
      DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t342.
      t341 = t342.
      t302 = NEW zcl_lnt_irule_metadata( i_key = t303 i_title = t305 i_short_description = t307 i_bad_example = t327 i_good_example = t333 i_extended_information = t309 i_tags = t315 i_pragma = t339 i_pseudo_comment = t341 ).
      CREATE OBJECT t302->zlnt_view_ownkeys_b0e8086400eb.
      t302->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t343.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t343 ).
      ENDIF.
      DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t344.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t344 ).
      ENDIF.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t345.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t345 ).
      ENDIF.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t346.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t346 ).
      ENDIF.
      DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t347.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t347 ).
      ENDIF.
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t348.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t348 ).
      ENDIF.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t349.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t349 ).
      ENDIF.
      CREATE OBJECT t302->zlnt_json_ownkeys_70e5fd461788.
      t302->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t350) = |key|.
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
      ENDIF.
      DATA(t352) = |title|.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
      ENDIF.
      DATA(t354) = |shortDescription|.
      DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t355.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
      ENDIF.
      DATA(t356) = |extendedInformation|.
      DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t357.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t356 p1 = t357 ).
      ENDIF.
      DATA(t358) = |tags|.
      DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t359.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t358 p1 = t359 ).
      ENDIF.
      DATA(t360) = |badExample|.
      DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t361.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t360 p1 = t361 ).
      ENDIF.
      DATA(t362) = |goodExample|.
      DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t363.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t362 p1 = t363 ).
      ENDIF.
      t301 = t302->key.
      DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t365) = me->conf.
      t364 = t365->zlnt_view_read_sr_15c06369f827( ).
      DATA t366 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t366.
      DATA(t367) = abap_true.
      IF t367 = abap_true.
        DATA(t368) = t260.
        t366 = t368.
      ELSE.
        DATA t369 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t369.
        t366 = t369.
      ENDIF.
      t296 = zcl_lnt_issue=>at_token( i_file = t297 i_token = t298 i_message_26cb = t300 i_key = t301 i_severity = t364 i_fix = t366 ).
      t295 = t296.
      DATA(t370) = t3.
      DATA(t371) = t295.
      t370->load( ).
      APPEND t371 TO t370->items.
      t370->save( ).
      DATA(t372) = VALUE abap_bool( ).
      DATA t373 TYPE f.
      DATA t374 TYPE i.
      DATA(t375) = t3.
      t375->load( ).
      t374 = lines( t375->items ).
      t373 = t374.
      DATA(t376) = VALUE f( ).
      DATA(t377) = t54.
      IF t377->number_special <> 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t376 = t377->value.
      t372 = xsdbool( t373 >= t376 ).
      IF t372 = abap_true.
        EXIT.
      ENDIF.
      DATA t378 TYPE i.
      DATA(t379) = t80.
      DATA(t380) = 1.
      t378 = t379 + t380.
      t80 = t378.
    ENDDO.
    DATA(t381) = t3.
    result = t381.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unncssry_chnng_cnf( me->gt_cn_in_sr_rl_un_ch_ts_un_chn( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_unncssry_chnng_cnf.
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
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_unncssry_chnng_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_ch_ts_un_chn( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1742_357e9d8cda6c.
  ENDMETHOD.
ENDCLASS.
