* TS: src/rules/method_implemented_twice.ts:10:1 MethodImplementedTwice
CLASS zcl_lnt_mthd_implmntd_twc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_mt_im_tw_ts_mt_im_tw RETURNING VALUE(result) TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS s_c_i_s_r_mt_im_tw_ts_mt_im_tw IMPORTING i_conf TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
    METHODS r_p_i_s_r_mt_im_tw_ts_mt_im_tw IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mthd_implmntd_twc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_mthd_implmntd_twc_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |method_implemented_twice|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Method implemented twice|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Reports an error if a method is implemented or defined twice|.
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
      DATA(t17) = |Syntax|.
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
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t8 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |key|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |title|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |shortDescription|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_mt_im_tw_ts_mt_im_tw.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_mt_im_tw_ts_mt_im_tw.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_mt_im_tw_ts_mt_im_tw.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zif_lnt_abap_file_information.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t9) = t6.
    t8 = t9->info.
    t5 = t8.
    t4 = t5->list_class_implementations( ).
    DATA t10 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t16 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t17 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t18) = NEW zlnt_runtime_map__45a2315f90b8( ).
      t17 = t18.
      DATA(t19) = t17.
      t16 = t19.
      t15 = t16.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = t10.
      t20 = t21->methods.
      DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      DATA(t24) = VALUE i( ).
      DO.
        t20->load( ).
        IF t24 >= lines( t20->items ).
          EXIT.
        ENDIF.
        CLEAR t23.
        READ TABLE t20->items INDEX t24 + 1 INTO t23.
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
        DATA(t27) = VALUE string( ).
        DATA(t28) = VALUE string( ).
        DATA(t29) = VALUE string( ).
        DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t31) = t22.
        t30 = t31.
        DATA(t32) = VALUE string( ).
        DATA t33 TYPE string.
        DATA t34 TYPE string.
        DATA t35 TYPE REF TO zcl_lnt_abstract_token.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t37) = t30.
        t36 = t37->token.
        t35 = t36.
        DATA t38 TYPE string.
        DATA(t39) = t35.
        t38 = t39->str.
        t34 = t38.
        t33 = t34.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE string( ).
        DATA(t42) = t33.
        DATA(t43) = 0.
        DATA(t44) = 1.
        DATA(t45) = strlen( t42 ).
        IF t43 < 0.
          t43 = t43 + t45.
          IF t43 < 0.
            t43 = 0.
          ENDIF.
        ENDIF.
        IF t43 > t45 OR t44 <= 0.
          CLEAR t41.
        ELSE.
          IF t44 > t45 - t43.
            t44 = t45 - t43.
          ENDIF.
          t41 = t42+t43(t44).
        ENDIF.
        DATA(t46) = |!|.
        t40 = xsdbool( t41 = t46 ).
        IF t40 = abap_true.
          DATA(t47) = VALUE string( ).
          DATA t48 TYPE string.
          DATA(t49) = t33.
          t48 = t49.
          DATA(t50) = VALUE string( ).
          DATA(t51) = t48.
          DATA(t52) = 1.
          DATA t53 TYPE i.
          DATA(t54) = t48.
          DATA(t55) = strlen( t54 ).
          t53 = t55.
          DATA(t56) = strlen( t51 ).
          IF t52 < 0.
            t52 = t52 + t56.
            IF t52 < 0.
              t52 = 0.
            ENDIF.
          ENDIF.
          IF t52 > t56 OR t53 <= 0.
            CLEAR t50.
          ELSE.
            IF t53 > t56 - t52.
              t53 = t56 - t52.
            ENDIF.
            t50 = t51+t52(t53).
          ENDIF.
          t47 = t50.
          t33 = t47.
        ENDIF.
        DATA(t57) = t33.
        t32 = t57.
        t29 = t32.
        DATA(t58) = strlen( t29 ).
        t28 = t29.
        IF t28 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t28 TO UPPER CASE.
        ELSE.
          t28 = zlnt_runtime_uppe_91169605024d=>full( t28 ).
        ENDIF.
        t27 = t28.
        DATA(t59) = VALUE abap_bool( ).
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t62) = t15.
        DATA(t63) = t27.
        t61 = t62->get( p0 = t63 ).
        t60 = t61.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        t64 = t65.
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = t60.
        IF t67 IS INITIAL.
          t66 = abap_true.
        ELSEIF t67->has = abap_false.
          t66 = abap_true.
        ENDIF.
        t59 = t66.
        IF t59 = abap_true.
          DATA t68 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          DATA(t69) = t15.
          DATA(t70) = t27.
          DATA(t71) = abap_true.
          t68 = t69->set( p0 = t70 p1 = t71 ).
        ELSE.
          DATA t72 TYPE string.
          DATA t73 TYPE string.
          DATA t74 TYPE string.
          DATA(t75) = |Method |.
          DATA(t76) = t27.
          DATA(t77) = strlen( t75 ).
          t74 = |{ t75 }{ t76 }|.
          DATA(t78) = | implemented twice|.
          DATA(t79) = strlen( t74 ).
          t73 = |{ t74 }{ t78 }|.
          t72 = t73.
          DATA(t80) = t2.
          DATA t81 TYPE REF TO zcl_lnt_issue.
          CLEAR t81.
          DATA(t82) = t1.
          DATA t83 TYPE REF TO zcl_lnt_abstract_token.
          DATA t84 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t85) = t22.
          t84 = t85.
          DATA t86 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t87) = t84.
          t86 = t87->token.
          t83 = t86.
          DATA(t88) = t72.
          DATA(t89) = VALUE string( ).
          DATA t90 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t90.
          DATA t91 TYPE string.
          DATA(t92) = |method_implemented_twice|.
          t91 = t92.
          DATA t93 TYPE string.
          DATA(t94) = |Method implemented twice|.
          t93 = t94.
          DATA t95 TYPE string.
          DATA(t96) = |Reports an error if a method is implemented or defined twice|.
          t95 = t96.
          DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t97.
          DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t98.
          DATA(t99) = abap_true.
          IF t99 = abap_true.
            DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t102.
            t101 = t102.
            DATA(t103) = t101.
            DATA(t104) = |SingleFile|.
            t103->load( ).
            APPEND t104 TO t103->items.
            t103->save( ).
            DATA(t105) = t101.
            DATA(t106) = |Syntax|.
            t105->load( ).
            APPEND t106 TO t105->items.
            t105->save( ).
            DATA(t107) = t101.
            t100 = t107.
            t98 = t100.
          ELSE.
            DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t108.
            t98 = t108.
          ENDIF.
          t97 = t98.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t110.
          t109 = t110.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          t111 = t112.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          t113 = t114.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          t115 = t116.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t117 = t118.
          t90 = NEW zcl_lnt_irule_metadata( i_key = t91 i_title = t93 i_short_description = t95 i_bad_example = t109 i_good_example = t111 i_extended_information = t113 i_tags = t97 i_pragma = t115 i_pseudo_comment = t117 ).
          CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
          t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
          ENDIF.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t120 ).
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t121 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t122 ).
          ENDIF.
          CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
          t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t123) = |key|.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
          ENDIF.
          DATA(t125) = |title|.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
          ENDIF.
          DATA(t127) = |shortDescription|.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
          ENDIF.
          DATA(t129) = |tags|.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
          ENDIF.
          t89 = t90->key.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t132) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).
          t131 = t132->zlnt_view_read_sr_15c06369f827( ).
          DATA t133 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t133.
          t81 = zcl_lnt_issue=>at_token( i_file = t82 i_token = t83 i_message_26cb = t88 i_key = t89 i_severity = t131 i_fix = t133 ).
          t80->load( ).
          APPEND t81 TO t80->items.
          t80->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t135 TYPE REF TO zif_lnt_abap_file_information.
    DATA t136 TYPE REF TO zcl_lnt_abap_file.
    DATA(t137) = t1.
    t136 = t137.
    DATA t138 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t139) = t136.
    t138 = t139->info.
    t135 = t138.
    t134 = t135->list_class_definitions( ).
    DATA t140 TYPE REF TO zcl_lnt_info_class_definition.
    CLEAR t140.
    DATA t141 TYPE REF TO object.
    CLEAR t141.
    DATA(t142) = VALUE i( ).
    DO.
      t134->load( ).
      IF t142 >= lines( t134->items ).
        EXIT.
      ENDIF.
      CLEAR t141.
      READ TABLE t134->items INDEX t142 + 1 INTO t141.
      t142 = t142 + 1.
      DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t143.
      CLEAR t140.
      IF t141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t143 ?= t141.
        DATA t144 TYPE REF TO object.
        t144 = t143->as_ref( ).
        t140 ?= t144.
      ELSE.
        t140 ?= t141.
      ENDIF.
      DATA t145 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t146 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t147 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t148) = NEW zlnt_runtime_map__45a2315f90b8( ).
      t147 = t148.
      DATA(t149) = t147.
      t146 = t149.
      t145 = t146.
      DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t151) = t140.
      t150 = t151->methods.
      DATA t152 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      DATA(t154) = VALUE i( ).
      DO.
        t150->load( ).
        IF t154 >= lines( t150->items ).
          EXIT.
        ENDIF.
        CLEAR t153.
        READ TABLE t150->items INDEX t154 + 1 INTO t153.
        t154 = t154 + 1.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        CLEAR t152.
        IF t153 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t155 ?= t153.
          DATA t156 TYPE REF TO object.
          t156 = t155->as_ref( ).
          t152 ?= t156.
        ELSE.
          t152 ?= t153.
        ENDIF.
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE string.
        DATA t159 TYPE string.
        DATA(t160) = t152.
        t159 = t160->name.
        DATA(t161) = strlen( t159 ).
        t158 = t159.
        IF t158 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t158 TO UPPER CASE.
        ELSE.
          t158 = zlnt_runtime_uppe_91169605024d=>full( t158 ).
        ENDIF.
        t157 = t158.
        DATA(t162) = VALUE abap_bool( ).
        DATA t163 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t164 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t165) = t145.
        DATA(t166) = t157.
        t164 = t165->get( p0 = t166 ).
        t163 = t164.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        t167 = t168.
        DATA(t169) = VALUE abap_bool( ).
        DATA(t170) = t163.
        IF t170 IS INITIAL.
          t169 = abap_true.
        ELSEIF t170->has = abap_false.
          t169 = abap_true.
        ENDIF.
        t162 = t169.
        IF t162 = abap_true.
          DATA t171 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          DATA(t172) = t145.
          DATA(t173) = t157.
          DATA(t174) = abap_true.
          t171 = t172->set( p0 = t173 p1 = t174 ).
        ELSE.
          DATA t175 TYPE string.
          DATA t176 TYPE string.
          DATA t177 TYPE string.
          DATA(t178) = |Method |.
          DATA(t179) = t157.
          DATA(t180) = strlen( t178 ).
          t177 = |{ t178 }{ t179 }|.
          DATA(t181) = | defined twice|.
          DATA(t182) = strlen( t177 ).
          t176 = |{ t177 }{ t181 }|.
          t175 = t176.
          DATA(t183) = t2.
          DATA t184 TYPE REF TO zcl_lnt_issue.
          CLEAR t184.
          DATA(t185) = t1.
          DATA t186 TYPE REF TO zcl_lnt_abstract_token.
          DATA t187 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t188 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t189) = t152.
          t188 = t189->identifier.
          t187 = t188.
          DATA t190 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t191) = t187.
          t190 = t191->token.
          t186 = t190.
          DATA(t192) = t175.
          DATA(t193) = VALUE string( ).
          DATA t194 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t194.
          DATA t195 TYPE string.
          DATA(t196) = |method_implemented_twice|.
          t195 = t196.
          DATA t197 TYPE string.
          DATA(t198) = |Method implemented twice|.
          t197 = t198.
          DATA t199 TYPE string.
          DATA(t200) = |Reports an error if a method is implemented or defined twice|.
          t199 = t200.
          DATA t201 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t201.
          DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t202.
          DATA(t203) = abap_true.
          IF t203 = abap_true.
            DATA t204 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t205 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t206.
            t205 = t206.
            DATA(t207) = t205.
            DATA(t208) = |SingleFile|.
            t207->load( ).
            APPEND t208 TO t207->items.
            t207->save( ).
            DATA(t209) = t205.
            DATA(t210) = |Syntax|.
            t209->load( ).
            APPEND t210 TO t209->items.
            t209->save( ).
            DATA(t211) = t205.
            t204 = t211.
            t202 = t204.
          ELSE.
            DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t212.
            t202 = t212.
          ENDIF.
          t201 = t202.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          t213 = t214.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t216.
          t215 = t216.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t218.
          t217 = t218.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t220.
          t219 = t220.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t222.
          t221 = t222.
          t194 = NEW zcl_lnt_irule_metadata( i_key = t195 i_title = t197 i_short_description = t199 i_bad_example = t213 i_good_example = t215 i_extended_information = t217 i_tags = t201 i_pragma = t219 i_pseudo_comment = t221 ).
          CREATE OBJECT t194->zlnt_view_ownkeys_b0e8086400eb.
          t194->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t223 ).
          ENDIF.
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t224 ).
          ENDIF.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t225 ).
          ENDIF.
          DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t226.
          IF t194->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t194->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t226 ).
          ENDIF.
          CREATE OBJECT t194->zlnt_json_ownkeys_70e5fd461788.
          t194->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t227) = |key|.
          DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t228.
          IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
          ENDIF.
          DATA(t229) = |title|.
          DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t230.
          IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
          ENDIF.
          DATA(t231) = |shortDescription|.
          DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t232.
          IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
          ENDIF.
          DATA(t233) = |tags|.
          DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t234.
          IF t194->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t194->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
          ENDIF.
          t193 = t194->key.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t236) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).
          t235 = t236->zlnt_view_read_sr_15c06369f827( ).
          DATA t237 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t237.
          t184 = zcl_lnt_issue=>at_token( i_file = t185 i_token = t186 i_message_26cb = t192 i_key = t193 i_severity = t235 i_fix = t237 ).
          t183->load( ).
          APPEND t184 TO t183->items.
          t183->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t239 TYPE REF TO zif_lnt_abap_file_information.
    DATA t240 TYPE REF TO zcl_lnt_abap_file.
    DATA(t241) = t1.
    t240 = t241.
    DATA t242 TYPE REF TO zif_lnt_abap_file_information.
    DATA(t243) = t240.
    t242 = t243->info.
    t239 = t242.
    t238 = t239->list_interface_definitions( ).
    DATA t244 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    CLEAR t244.
    DATA t245 TYPE REF TO object.
    CLEAR t245.
    DATA(t246) = VALUE i( ).
    DO.
      t238->load( ).
      IF t246 >= lines( t238->items ).
        EXIT.
      ENDIF.
      CLEAR t245.
      READ TABLE t238->items INDEX t246 + 1 INTO t245.
      t246 = t246 + 1.
      DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t247.
      CLEAR t244.
      IF t245 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t247 ?= t245.
        DATA t248 TYPE REF TO object.
        t248 = t247->as_ref( ).
        t244 ?= t248.
      ELSE.
        t244 ?= t245.
      ENDIF.
      DATA t249 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t250 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA t251 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t252) = NEW zlnt_runtime_map__45a2315f90b8( ).
      t251 = t252.
      DATA(t253) = t251.
      t250 = t253.
      t249 = t250.
      DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t255) = t244.
      t254 = t255->methods.
      DATA t256 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      DATA(t258) = VALUE i( ).
      DO.
        t254->load( ).
        IF t258 >= lines( t254->items ).
          EXIT.
        ENDIF.
        CLEAR t257.
        READ TABLE t254->items INDEX t258 + 1 INTO t257.
        t258 = t258 + 1.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        CLEAR t256.
        IF t257 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t259 ?= t257.
          DATA t260 TYPE REF TO object.
          t260 = t259->as_ref( ).
          t256 ?= t260.
        ELSE.
          t256 ?= t257.
        ENDIF.
        DATA(t261) = VALUE string( ).
        DATA t262 TYPE string.
        DATA t263 TYPE string.
        DATA(t264) = t256.
        t263 = t264->name.
        DATA(t265) = strlen( t263 ).
        t262 = t263.
        IF t262 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t262 TO UPPER CASE.
        ELSE.
          t262 = zlnt_runtime_uppe_91169605024d=>full( t262 ).
        ENDIF.
        t261 = t262.
        DATA(t266) = VALUE abap_bool( ).
        DATA t267 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t268 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t269) = t249.
        DATA(t270) = t261.
        t268 = t269->get( p0 = t270 ).
        t267 = t268.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t272.
        t271 = t272.
        DATA(t273) = VALUE abap_bool( ).
        DATA(t274) = t267.
        IF t274 IS INITIAL.
          t273 = abap_true.
        ELSEIF t274->has = abap_false.
          t273 = abap_true.
        ENDIF.
        t266 = t273.
        IF t266 = abap_true.
          DATA t275 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
          DATA(t276) = t249.
          DATA(t277) = t261.
          DATA(t278) = abap_true.
          t275 = t276->set( p0 = t277 p1 = t278 ).
        ELSE.
          DATA t279 TYPE string.
          DATA t280 TYPE string.
          DATA t281 TYPE string.
          DATA(t282) = |Method |.
          DATA(t283) = t261.
          DATA(t284) = strlen( t282 ).
          t281 = |{ t282 }{ t283 }|.
          DATA(t285) = | implemented twice|.
          DATA(t286) = strlen( t281 ).
          t280 = |{ t281 }{ t285 }|.
          t279 = t280.
          DATA(t287) = t2.
          DATA t288 TYPE REF TO zcl_lnt_issue.
          CLEAR t288.
          DATA t289 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t290) = t256.
          t289 = t290->identifier.
          DATA(t291) = t279.
          DATA(t292) = VALUE string( ).
          DATA t293 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t293.
          DATA t294 TYPE string.
          DATA(t295) = |method_implemented_twice|.
          t294 = t295.
          DATA t296 TYPE string.
          DATA(t297) = |Method implemented twice|.
          t296 = t297.
          DATA t298 TYPE string.
          DATA(t299) = |Reports an error if a method is implemented or defined twice|.
          t298 = t299.
          DATA t300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t300.
          DATA t301 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t301.
          DATA(t302) = abap_true.
          IF t302 = abap_true.
            DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t305.
            t304 = t305.
            DATA(t306) = t304.
            DATA(t307) = |SingleFile|.
            t306->load( ).
            APPEND t307 TO t306->items.
            t306->save( ).
            DATA(t308) = t304.
            DATA(t309) = |Syntax|.
            t308->load( ).
            APPEND t309 TO t308->items.
            t308->save( ).
            DATA(t310) = t304.
            t303 = t310.
            t301 = t303.
          ELSE.
            DATA t311 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t311.
            t301 = t311.
          ENDIF.
          t300 = t301.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t313.
          t312 = t313.
          DATA t314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t315.
          t314 = t315.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t317.
          t316 = t317.
          DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t319.
          t318 = t319.
          DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t321.
          t320 = t321.
          t293 = NEW zcl_lnt_irule_metadata( i_key = t294 i_title = t296 i_short_description = t298 i_bad_example = t312 i_good_example = t314 i_extended_information = t316 i_tags = t300 i_pragma = t318 i_pseudo_comment = t320 ).
          CREATE OBJECT t293->zlnt_view_ownkeys_b0e8086400eb.
          t293->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t322.
          IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t322 ).
          ENDIF.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t323.
          IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t323 ).
          ENDIF.
          DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t324.
          IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t324 ).
          ENDIF.
          DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t325.
          IF t293->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t293->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t325 ).
          ENDIF.
          CREATE OBJECT t293->zlnt_json_ownkeys_70e5fd461788.
          t293->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t326) = |key|.
          DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t327.
          IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t326 p1 = t327 ).
          ENDIF.
          DATA(t328) = |title|.
          DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t329.
          IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
          ENDIF.
          DATA(t330) = |shortDescription|.
          DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t331.
          IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t330 p1 = t331 ).
          ENDIF.
          DATA(t332) = |tags|.
          DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t333.
          IF t293->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t293->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
          ENDIF.
          t292 = t293->key.
          DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t335) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).
          t334 = t335->zlnt_view_read_sr_15c06369f827( ).
          DATA t336 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t336.
          t288 = zcl_lnt_issue=>at_identifier( i_identifier = t289 i_message_26cb = t291 i_key = t292 i_severity = t334 i_fix = t336 ).
          t287->load( ).
          APPEND t288 TO t287->items.
          t287->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t337) = t2.
    result = t337.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mthd_implmntd_twc_cnf( me->g_c_i_s_r_mt_im_tw_ts_mt_im_tw( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mthd_implmntd_twc_cnf.
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
        t1 = NEW zcl_lnt_mthd_implmntd_twc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_mt_im_tw_ts_mt_im_tw( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_mt_im_tw_ts_mt_im_tw( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1585_810423b1ed35.
  ENDMETHOD.
ENDCLASS.
