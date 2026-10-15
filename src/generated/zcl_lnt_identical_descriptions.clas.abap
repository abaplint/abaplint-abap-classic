* TS: src/rules/identical_descriptions.ts:11:1 IdenticalDescriptions
CLASS zcl_lnt_identical_descriptions DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_idntcl_dscrptns_cnf.
    DATA descriptions TYPE REF TO zlnt_runtime_map__64c5859ed39f.
    DATA types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_id_ds_ts_id_dsc RETURNING VALUE(result) TYPE REF TO zcl_lnt_idntcl_dscrptns_cnf.
    METHODS st_cn_in_sr_rl_id_ds_ts_id_dsc IMPORTING i_conf TYPE REF TO zcl_lnt_idntcl_dscrptns_cnf.
    METHODS in_in_sr_rl_idn_dsc_ts_idn_dsc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_identical_descriptions.
    METHODS rn_in_sr_rl_idn_dsc_ts_idn_dsc IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_function_modules IMPORTING i_fugr TYPE REF TO zcl_lnt_function_group RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_identical_descriptions IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_idntcl_dscrptns_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |identical_descriptions|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Identical descriptions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Searches for objects with the same type and same description|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Case insensitive\n\nOnly checks the master language descriptio|.
      t11 = t11 && |ns\n\nDependencies are skipped\n\nWorks for: INTF, CLAS, DOMA, D|.
      t11 = t11 && |TEL, FUNC in same FUGR|.
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
      CREATE OBJECT t17.
      t15 = t17.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t18.
      t15 = t18.
    ENDIF.
    t14 = t15.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    t25 = t26.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t19 i_good_example = t21 i_extended_information = t8 i_tags = t14 i_pragma = t23 i_pseudo_comment = t25 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t27 ).
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t31 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t32) = |key|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |title|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |shortDescription|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |extendedInformation|.
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

  METHOD gt_cn_in_sr_rl_id_ds_ts_id_dsc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_id_ds_ts_id_dsc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_idn_dsc_ts_idn_dsc.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zlnt_runtime_map__64c5859ed39f.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__64c5859ed39f.
    CLEAR t3.
    DATA(t4) = NEW zlnt_runtime_map__64c5859ed39f( ).
    t3 = t4.
    DATA(t5) = t3.
    t2 = t5.
    me->descriptions = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `descriptions`.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = t7.
    DATA(t10) = |INTF|.
    t9->load( ).
    APPEND t10 TO t9->items.
    t9->save( ).
    DATA(t11) = t7.
    DATA(t12) = |CLAS|.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t13) = t7.
    DATA(t14) = |DOMA|.
    t13->load( ).
    APPEND t14 TO t13->items.
    t13->save( ).
    DATA(t15) = t7.
    DATA(t16) = |DTEL|.
    t15->load( ).
    APPEND t16 TO t15->items.
    t15->save( ).
    DATA(t17) = t7.
    t6 = t17.
    me->types = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
    DATA t18 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t20.
    DATA(t21) = t1.
    t20 = t21->get_objects( ).
    t19 = t20->iterate( ).
    t18 = t19.
    DO.
      DATA(t22) = abap_true.
      IF t22 = abap_false.
        EXIT.
      ENDIF.
      DATA t23 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t24.
      DATA(t25) = t18.
      t24 = t25->next( ).
      t23 = t24.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = t23.
      t26 = t27->done.
      IF t26 = abap_true.
        EXIT.
      ENDIF.
      DATA t28 TYPE REF TO zif_lnt_object.
      CLEAR t28.
      DATA t29 TYPE REF TO zif_lnt_object.
      CLEAR t29.
      DATA t30 TYPE REF TO zif_lnt_object.
      CLEAR t30.
      DATA(t31) = t23.
      t30 = t31->value.
      t29 = t30.
      t28 = t29.
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = abap_false.
      t34 = t35.
      DATA t36 TYPE REF TO cx_root.
      CLEAR t36.
      TRY.
          DATA(t37) = VALUE abap_bool( ).
          DATA(t38) = t1.
          DATA(t39) = t28.
          t37 = t38->is_dependency( i_obj_1ed0 = t39 ).
          t33 = t37.
          DATA(t40) = abap_true.
          t34 = t40.
        CATCH cx_root INTO t36.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = t34.
          t41 = xsdbool( t42 = abap_false ).
          IF t41 = abap_true.
            DATA(t43) = t18.
            t43->close( ).
          ENDIF.
          RAISE EXCEPTION t36.
      ENDTRY.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = t34.
      t44 = xsdbool( t45 = abap_false ).
      IF t44 = abap_true.
        DATA(t46) = t18.
        t46->close( ).
      ENDIF.
      DATA(t47) = t33.
      t32 = t47.
      IF t32 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t48) = VALUE string( ).
      DATA(t49) = VALUE string( ).
      DATA(t50) = VALUE string( ).
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = abap_false.
      t51 = t52.
      DATA t53 TYPE REF TO cx_root.
      CLEAR t53.
      TRY.
          DATA(t54) = VALUE string( ).
          DATA(t55) = t28.
          t54 = t55->get_type( ).
          t50 = t54.
          DATA(t56) = abap_true.
          t51 = t56.
        CATCH cx_root INTO t53.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = t51.
          t57 = xsdbool( t58 = abap_false ).
          IF t57 = abap_true.
            DATA(t59) = t18.
            t59->close( ).
          ENDIF.
          RAISE EXCEPTION t53.
      ENDTRY.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = t51.
      t60 = xsdbool( t61 = abap_false ).
      IF t60 = abap_true.
        DATA(t62) = t18.
        t62->close( ).
      ENDIF.
      DATA(t63) = t50.
      t49 = t63.
      t48 = t49.
      DATA(t64) = VALUE abap_bool( ).
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = abap_false.
      t66 = t67.
      DATA t68 TYPE REF TO cx_root.
      CLEAR t68.
      TRY.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = me->types.
          DATA(t71) = t48.
          t69 = t70->includes( p0 = t71 ).
          t65 = t69.
          DATA(t72) = abap_true.
          t66 = t72.
        CATCH cx_root INTO t68.
          DATA(t73) = VALUE abap_bool( ).
          DATA(t74) = t66.
          t73 = xsdbool( t74 = abap_false ).
          IF t73 = abap_true.
            DATA(t75) = t18.
            t75->close( ).
          ENDIF.
          RAISE EXCEPTION t68.
      ENDTRY.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = t66.
      t76 = xsdbool( t77 = abap_false ).
      IF t76 = abap_true.
        DATA(t78) = t18.
        t78->close( ).
      ENDIF.
      DATA(t79) = t65.
      t64 = t79.
      IF t64 = abap_true.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = abap_false.
        t83 = t84.
        DATA t85 TYPE REF TO cx_root.
        CLEAR t85.
        TRY.
            DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t86.
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            DATA(t89) = t28.
            t88 = t89->get_description( ).
            t87 = t88.
            DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t90.
            DATA(t91) = VALUE abap_bool( ).
            DATA(t92) = t87.
            IF t92 IS INITIAL.
              t91 = abap_true.
            ELSEIF t92->has = abap_false.
              t91 = abap_true.
            ENDIF.
            IF t91 = abap_true.
              DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t93.
              t90 = t93.
            ELSE.
              DATA(t94) = VALUE string( ).
              DATA(t95) = VALUE string( ).
              DATA(t96) = t87.
              t95 = t96->value.
              DATA(t97) = strlen( t95 ).
              t94 = t95.
              IF t94 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t94 TO UPPER CASE.
              ELSE.
                t94 = zlnt_runtime_uppe_91169605024d=>full( t94 ).
              ENDIF.
              DATA(t98) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t98->has = abap_true.
              t98->value = t94.
              t90 = t98.
            ENDIF.
            t86 = t90.
            t82 = t86.
            DATA(t99) = abap_true.
            t83 = t99.
          CATCH cx_root INTO t85.
            DATA(t100) = VALUE abap_bool( ).
            DATA(t101) = t83.
            t100 = xsdbool( t101 = abap_false ).
            IF t100 = abap_true.
              DATA(t102) = t18.
              t102->close( ).
            ENDIF.
            RAISE EXCEPTION t85.
        ENDTRY.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = t83.
        t103 = xsdbool( t104 = abap_false ).
        IF t103 = abap_true.
          DATA(t105) = t18.
          t105->close( ).
        ENDIF.
        DATA(t106) = t82.
        t81 = t106.
        t80 = t81.
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = abap_false.
        t109 = t110.
        DATA t111 TYPE REF TO cx_root.
        CLEAR t111.
        TRY.
            DATA(t112) = VALUE abap_bool( ).
            DATA(t113) = VALUE abap_bool( ).
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            DATA(t115) = t80.
            t114 = t115.
            DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t116.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t117.
            t116 = t117.
            DATA(t118) = VALUE abap_bool( ).
            DATA(t119) = t114.
            IF t119 IS INITIAL.
              t118 = abap_true.
            ELSEIF t119->has = abap_false.
              t118 = abap_true.
            ENDIF.
            t113 = t118.
            t112 = t113.
            IF t113 = abap_false.
              DATA(t120) = VALUE abap_bool( ).
              DATA(t121) = VALUE string( ).
              DATA(t122) = t80.
              t121 = t122->value.
              DATA(t123) = ||.
              t120 = xsdbool( t121 = t123 ).
              t112 = t120.
            ENDIF.
            t108 = t112.
            DATA(t124) = abap_true.
            t109 = t124.
          CATCH cx_root INTO t111.
            DATA(t125) = VALUE abap_bool( ).
            DATA(t126) = t109.
            t125 = xsdbool( t126 = abap_false ).
            IF t125 = abap_true.
              DATA(t127) = t18.
              t127->close( ).
            ENDIF.
            RAISE EXCEPTION t111.
        ENDTRY.
        DATA(t128) = VALUE abap_bool( ).
        DATA(t129) = t109.
        t128 = xsdbool( t129 = abap_false ).
        IF t128 = abap_true.
          DATA(t130) = t18.
          t130->close( ).
        ENDIF.
        DATA(t131) = t108.
        t107 = t131.
        IF t107 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t132) = VALUE abap_bool( ).
        DATA(t133) = VALUE abap_bool( ).
        DATA(t134) = VALUE abap_bool( ).
        DATA(t135) = abap_false.
        t134 = t135.
        DATA t136 TYPE REF TO cx_root.
        CLEAR t136.
        TRY.
            DATA(t137) = VALUE abap_bool( ).
            DATA t138 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t138.
            DATA t139 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t139.
            DATA(t140) = me->descriptions.
            DATA(t141) = t48.
            t139 = t140->get( p0 = t141 ).
            t138 = t139.
            DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t142.
            DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t143.
            t142 = t143.
            DATA(t144) = VALUE abap_bool( ).
            DATA(t145) = t138.
            IF t145 IS INITIAL.
              t144 = abap_true.
            ENDIF.
            t137 = t144.
            t133 = t137.
            DATA(t146) = abap_true.
            t134 = t146.
          CATCH cx_root INTO t136.
            DATA(t147) = VALUE abap_bool( ).
            DATA(t148) = t134.
            t147 = xsdbool( t148 = abap_false ).
            IF t147 = abap_true.
              DATA(t149) = t18.
              t149->close( ).
            ENDIF.
            RAISE EXCEPTION t136.
        ENDTRY.
        DATA(t150) = VALUE abap_bool( ).
        DATA(t151) = t134.
        t150 = xsdbool( t151 = abap_false ).
        IF t150 = abap_true.
          DATA(t152) = t18.
          t152->close( ).
        ENDIF.
        DATA(t153) = t133.
        t132 = t153.
        IF t132 = abap_true.
          DATA t154 TYPE REF TO zlnt_runtime_map__64c5859ed39f.
          CLEAR t154.
          DATA t155 TYPE REF TO zlnt_runtime_map__64c5859ed39f.
          CLEAR t155.
          DATA(t156) = VALUE abap_bool( ).
          DATA(t157) = abap_false.
          t156 = t157.
          DATA t158 TYPE REF TO cx_root.
          CLEAR t158.
          TRY.
              DATA t159 TYPE REF TO zlnt_runtime_map__64c5859ed39f.
              CLEAR t159.
              DATA(t160) = me->descriptions.
              DATA(t161) = t48.
              DATA t162 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
              CLEAR t162.
              DATA t163 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
              CLEAR t163.
              DATA(t164) = NEW zlnt_runtime_map__9f51cbbe9de8( ).
              t163 = t164.
              DATA(t165) = t163.
              t162 = t165.
              t159 = t160->set( p0 = t161 p1 = t162 ).
              t155 = t159.
              DATA(t166) = abap_true.
              t156 = t166.
            CATCH cx_root INTO t158.
              DATA(t167) = VALUE abap_bool( ).
              DATA(t168) = t156.
              t167 = xsdbool( t168 = abap_false ).
              IF t167 = abap_true.
                DATA(t169) = t18.
                t169->close( ).
              ENDIF.
              RAISE EXCEPTION t158.
          ENDTRY.
          DATA(t170) = VALUE abap_bool( ).
          DATA(t171) = t156.
          t170 = xsdbool( t171 = abap_false ).
          IF t170 = abap_true.
            DATA(t172) = t18.
            t172->close( ).
          ENDIF.
          DATA(t173) = t155.
          t154 = t173.
        ENDIF.
        DATA(t174) = VALUE abap_bool( ).
        DATA(t175) = VALUE abap_bool( ).
        DATA(t176) = VALUE abap_bool( ).
        DATA(t177) = abap_false.
        t176 = t177.
        DATA t178 TYPE REF TO cx_root.
        CLEAR t178.
        TRY.
            DATA(t179) = VALUE abap_bool( ).
            DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t180.
            DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t181.
            DATA t182 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t182.
            DATA t183 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t183.
            DATA(t184) = me->descriptions.
            DATA(t185) = t48.
            t183 = t184->get( p0 = t185 ).
            t182 = t183.
            DATA(t186) = VALUE string( ).
            DATA(t187) = t80.
            t186 = t187->value.
            t181 = t182->get( p0 = t186 ).
            t180 = t181.
            DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t188.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t189.
            t188 = t189.
            DATA(t190) = VALUE abap_bool( ).
            DATA(t191) = t180.
            IF t191 IS INITIAL.
              t190 = abap_true.
            ENDIF.
            t179 = t190.
            t175 = t179.
            DATA(t192) = abap_true.
            t176 = t192.
          CATCH cx_root INTO t178.
            DATA(t193) = VALUE abap_bool( ).
            DATA(t194) = t176.
            t193 = xsdbool( t194 = abap_false ).
            IF t193 = abap_true.
              DATA(t195) = t18.
              t195->close( ).
            ENDIF.
            RAISE EXCEPTION t178.
        ENDTRY.
        DATA(t196) = VALUE abap_bool( ).
        DATA(t197) = t176.
        t196 = xsdbool( t197 = abap_false ).
        IF t196 = abap_true.
          DATA(t198) = t18.
          t198->close( ).
        ENDIF.
        DATA(t199) = t175.
        t174 = t199.
        IF t174 = abap_true.
          DATA t200 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          CLEAR t200.
          DATA t201 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          CLEAR t201.
          DATA(t202) = VALUE abap_bool( ).
          DATA(t203) = abap_false.
          t202 = t203.
          DATA t204 TYPE REF TO cx_root.
          CLEAR t204.
          TRY.
              DATA t205 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
              CLEAR t205.
              DATA t206 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
              CLEAR t206.
              DATA t207 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
              CLEAR t207.
              DATA(t208) = me->descriptions.
              DATA(t209) = t48.
              t207 = t208->get( p0 = t209 ).
              t206 = t207.
              DATA(t210) = VALUE string( ).
              DATA(t211) = t80.
              t210 = t211->value.
              DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t212.
              CREATE OBJECT t212.
              t205 = t206->set( p0 = t210 p1 = t212 ).
              t201 = t205.
              DATA(t213) = abap_true.
              t202 = t213.
            CATCH cx_root INTO t204.
              DATA(t214) = VALUE abap_bool( ).
              DATA(t215) = t202.
              t214 = xsdbool( t215 = abap_false ).
              IF t214 = abap_true.
                DATA(t216) = t18.
                t216->close( ).
              ENDIF.
              RAISE EXCEPTION t204.
          ENDTRY.
          DATA(t217) = VALUE abap_bool( ).
          DATA(t218) = t202.
          t217 = xsdbool( t218 = abap_false ).
          IF t217 = abap_true.
            DATA(t219) = t18.
            t219->close( ).
          ENDIF.
          DATA(t220) = t201.
          t200 = t220.
        ENDIF.
        DATA(t221) = VALUE f( ).
        DATA(t222) = VALUE f( ).
        DATA(t223) = VALUE abap_bool( ).
        DATA(t224) = abap_false.
        t223 = t224.
        DATA t225 TYPE REF TO cx_root.
        CLEAR t225.
        TRY.
            DATA(t226) = VALUE f( ).
            DATA(t227) = VALUE i( ).
            DATA t228 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t228.
            DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t229.
            DATA t230 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t230.
            DATA t231 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
            CLEAR t231.
            DATA(t232) = me->descriptions.
            DATA(t233) = t48.
            t231 = t232->get( p0 = t233 ).
            t230 = t231.
            DATA(t234) = VALUE string( ).
            DATA(t235) = t80.
            t234 = t235->value.
            t229 = t230->get( p0 = t234 ).
            t228 = t229.
            DATA(t236) = VALUE string( ).
            DATA(t237) = t28.
            t236 = t237->get_name( ).
            t228->load( ).
            APPEND t236 TO t228->items.
            t227 = lines( t228->items ).
            t228->save( ).
            t226 = t227.
            t222 = t226.
            DATA(t238) = abap_true.
            t223 = t238.
          CATCH cx_root INTO t225.
            DATA(t239) = VALUE abap_bool( ).
            DATA(t240) = t223.
            t239 = xsdbool( t240 = abap_false ).
            IF t239 = abap_true.
              DATA(t241) = t18.
              t241->close( ).
            ENDIF.
            RAISE EXCEPTION t225.
        ENDTRY.
        DATA(t242) = VALUE abap_bool( ).
        DATA(t243) = t223.
        t242 = xsdbool( t243 = abap_false ).
        IF t242 = abap_true.
          DATA(t244) = t18.
          t244->close( ).
        ENDIF.
        DATA(t245) = t222.
        t221 = t245.
      ENDIF.
    ENDDO.
    DATA(t246) = me.
    result = t246.

  ENDMETHOD.

  METHOD rn_in_sr_rl_idn_dsc_ts_idn_dsc.
    DATA(t1) = i_o.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    t5 = t6->get_type( ).
    t4 = t5.
    DATA t7 TYPE abap_bool.
    DATA(t8) = me->types.
    DATA(t9) = t4.
    t7 = t8->includes( p0 = t9 ).
    IF t7 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t14) = t1.
      t13 = t14->get_description( ).
      t12 = t13.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      IF t16 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        t15 = t18.
      ELSE.
        DATA t19 TYPE string.
        DATA t20 TYPE string.
        DATA(t21) = t12.
        t20 = t21->value.
        DATA(t22) = strlen( t20 ).
        t19 = t20.
        IF t19 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t19 TO UPPER CASE.
        ELSE.
          t19 = zlnt_runtime_uppe_91169605024d=>full( t19 ).
        ENDIF.
        DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t23->has = abap_true.
        t23->value = t19.
        t15 = t23.
      ENDIF.
      t11 = t15.
      t10 = t11.
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = VALUE abap_bool( ).
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t27) = t10.
      t26 = t27.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      t28 = t29.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = t26.
      IF t31 IS INITIAL.
        t30 = abap_true.
      ELSEIF t31->has = abap_false.
        t30 = abap_true.
      ENDIF.
      t25 = t30.
      t24 = t25.
      IF t25 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE string.
        DATA(t34) = t10.
        t33 = t34->value.
        DATA(t35) = ||.
        t32 = xsdbool( t33 = t35 ).
        t24 = t32.
      ENDIF.
      IF t24 = abap_true.
        DATA(t36) = t2.
        result = t36.
        RETURN.
      ENDIF.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t40.
      t39 = t40.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t43 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      DATA t44 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
      DATA(t45) = me->descriptions.
      DATA(t46) = t4.
      t44 = t45->get( p0 = t46 ).
      t43 = t44.
      DATA t47 TYPE string.
      DATA(t48) = t10.
      t47 = t48->value.
      t42 = t43->get( p0 = t47 ).
      t41 = t42.
      DATA(t49) = VALUE string( ).
      t41->dense( ).
      DATA(t50) = VALUE i( ).
      DO.
        t41->load( ).
        IF t50 >= lines( t41->items ).
          EXIT.
        ENDIF.
        CLEAR t49.
        READ TABLE t41->items INDEX t50 + 1 INTO t49.
        IF t41->has( t50 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t50 = t50 + 1.
        DATA t51 TYPE abap_bool.
        DATA(t52) = t49.
        DATA t53 TYPE string.
        DATA(t54) = t1.
        t53 = t54->get_name( ).
        t51 = xsdbool( t52 <> t53 ).
        IF t51 = abap_true.
          DATA(t55) = t39.
          DATA(t56) = t49.
          t55->load( ).
          APPEND t56 TO t55->items.
          t55->save( ).
        ENDIF.
      ENDDO.
      DATA(t57) = t39.
      t38 = t57.
      t37 = t38.
      DATA t58 TYPE abap_bool.
      DATA t59 TYPE i.
      DATA(t60) = t37.
      t60->load( ).
      t59 = lines( t60->items ).
      DATA(t61) = 0.
      t58 = xsdbool( t59 > t61 ).
      IF t58 = abap_true.
        DATA(t62) = VALUE string( ).
        DATA(t63) = VALUE string( ).
        DATA(t64) = |Identical description: |.
        DATA(t65) = VALUE string( ).
        DATA(t66) = t37.
        IF t66->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t66->load( ).
        CLEAR t65.
        READ TABLE t66->items INDEX 1 INTO t65.
        DATA(t67) = strlen( t64 ).
        t63 = |{ t64 }{ t65 }|.
        t62 = t63.
        DATA(t68) = t2.
        DATA t69 TYPE REF TO zcl_lnt_issue.
        CLEAR t69.
        DATA t70 TYPE REF TO zif_lnt_file.
        DATA t71 TYPE REF TO zif_lnt_file.
        DATA(t72) = t1.
        t71 = t72->get_xml_file( ).
        t70 = t71.
        DATA(t73) = CONV f( 1 ).
        DATA(t74) = t62.
        DATA(t75) = VALUE string( ).
        DATA t76 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t76.
        DATA t77 TYPE string.
        DATA(t78) = |identical_descriptions|.
        t77 = t78.
        DATA t79 TYPE string.
        DATA(t80) = |Identical descriptions|.
        t79 = t80.
        DATA t81 TYPE string.
        DATA(t82) = |Searches for objects with the same type and same description|.
        t81 = t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA(t85) = abap_true.
        IF t85 = abap_true.
          DATA(t86) = |Case insensitive\n\nOnly checks the master language descriptio|.
          t86 = t86 && |ns\n\nDependencies are skipped\n\nWorks for: INTF, CLAS, DOMA, D|.
          t86 = t86 && |TEL, FUNC in same FUGR|.
          DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t87->has = abap_true.
          t87->value = t86.
          t84 = t87.
        ELSE.
          DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t88.
          t84 = t88.
        ENDIF.
        t83 = t84.
        DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t90.
        DATA(t91) = abap_true.
        IF t91 = abap_true.
          DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t92.
          t90 = t92.
        ELSE.
          DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t93.
          t90 = t93.
        ENDIF.
        t89 = t90.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        t94 = t95.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        t96 = t97.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        t98 = t99.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t101.
        t100 = t101.
        t76 = NEW zcl_lnt_irule_metadata( i_key = t77 i_title = t79 i_short_description = t81 i_bad_example = t94 i_good_example = t96 i_extended_information = t83 i_tags = t89 i_pragma = t98 i_pseudo_comment = t100 ).
        CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
        t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t102 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t103 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t104 ).
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t106 ).
        ENDIF.
        CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
        t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t107) = |key|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |title|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        DATA(t111) = |shortDescription|.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
        ENDIF.
        DATA(t113) = |extendedInformation|.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
        ENDIF.
        DATA(t115) = |tags|.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = t115 p1 = t116 ).
        ENDIF.
        t75 = t76->key.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t118) = CAST zcl_lnt_idntcl_dscrptns_cnf( me->gt_cn_in_sr_rl_id_ds_ts_id_dsc( ) ).
        t117 = t118->zlnt_view_read_sr_15c06369f827( ).
        t69 = zcl_lnt_issue=>at_row( i_file = t70 i_row = t73 i_message_26cb = t74 i_key = t75 i_severity = t117 ).
        t68->load( ).
        APPEND t69 TO t68->items.
        t68->save( ).
      ENDIF.
    ENDIF.
    DATA t119 TYPE abap_bool.
    DATA(t120) = t1.
    t119 = xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_function_group ).
    IF t119 = abap_true.
      DATA(t121) = VALUE i( ).
      DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t123 TYPE REF TO zcl_lnt_function_group.
      DATA(t124) = t1.
      DATA t125 TYPE REF TO object.
      t125 = t124.
      t123 ?= t125.
      t122 = me->check_function_modules( i_fugr = t123 ).
      DATA t126 TYPE REF TO zcl_lnt_issue.
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
        DATA(t131) = t2.
        DATA(t132) = t126.
        t131->load( ).
        APPEND t132 TO t131->items.
        t131->save( ).
      ENDDO.
      DATA t133 TYPE i.
      DATA(t134) = t2.
      t134->load( ).
      t133 = lines( t134->items ).
      t121 = t133.
    ENDIF.
    DATA(t135) = t2.
    result = t135.

  ENDMETHOD.

  METHOD check_function_modules.
    DATA(t1) = i_fugr.
    DATA t2 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t3 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t4 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t5) = NEW zlnt_runtime_map__45a2315f90b8( ).
    t4 = t5.
    DATA(t6) = t4.
    t3 = t6.
    t2 = t3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t1.
    t7 = t8->get_modules( ).
    DATA t9 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t7->load( ).
      IF t11 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t7->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t18 TYPE REF TO zcl_lnt_fnctn_mdl_dfntn.
      DATA(t19) = t9.
      t18 = t19.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t21) = t18.
      t20 = t21->description.
      t17 = t20.
      t16 = t17.
      DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = t16.
      IF t24 IS INITIAL.
        t23 = abap_true.
      ELSEIF t24->has = abap_false.
        t23 = abap_true.
      ENDIF.
      IF t23 = abap_true.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t25.
        t22 = t25.
      ELSE.
        DATA t26 TYPE string.
        DATA t27 TYPE string.
        DATA(t28) = t16.
        t27 = t28->value.
        DATA(t29) = strlen( t27 ).
        t26 = t27.
        IF t26 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t26 TO UPPER CASE.
        ELSE.
          t26 = zlnt_runtime_uppe_91169605024d=>full( t26 ).
        ENDIF.
        DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t30->has = abap_true.
        t30->value = t26.
        t22 = t30.
      ENDIF.
      t15 = t22.
      t14 = t15.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t34) = t14.
      t33 = t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t35 = t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t33.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ELSEIF t38->has = abap_false.
        t37 = abap_true.
      ENDIF.
      t32 = t37.
      t31 = t32.
      IF t32 = abap_false.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE string.
        DATA(t41) = t14.
        t40 = t41->value.
        DATA(t42) = ||.
        t39 = xsdbool( t40 = t42 ).
        t31 = t39.
      ENDIF.
      IF t31 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t43) = VALUE abap_bool( ).
      DATA t44 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t46) = t2.
      DATA t47 TYPE string.
      DATA(t48) = t14.
      t47 = t48->value.
      t45 = t46->get( p0 = t47 ).
      t44 = t45.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      t49 = t50.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t44.
      IF t53 IS INITIAL.
        t52 = abap_true.
      ELSEIF t53->has = abap_false.
        t52 = abap_true.
      ENDIF.
      t51 = xsdbool( t52 = abap_false ).
      t43 = t51.
      IF t43 = abap_true.
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA(t57) = |FUGR |.
        DATA t58 TYPE string.
        DATA t59 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t60) = t1.
        t59 = t60.
        DATA t61 TYPE string.
        DATA(t62) = t59.
        t61 = t62->name.
        t58 = t61.
        DATA(t63) = strlen( t57 ).
        t56 = |{ t57 }{ t58 }|.
        DATA(t64) = | contains function modules with identical descriptions|.
        DATA(t65) = strlen( t56 ).
        t55 = |{ t56 }{ t64 }|.
        t54 = t55.
        DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t66.
        DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t68.
        t67 = t68.
        DATA(t69) = t67.
        DATA t70 TYPE REF TO zcl_lnt_issue.
        CLEAR t70.
        DATA t71 TYPE REF TO zif_lnt_file.
        DATA t72 TYPE REF TO zif_lnt_file.
        DATA(t73) = t1.
        t72 = t73->get_xml_file( ).
        t71 = t72.
        DATA(t74) = CONV f( 1 ).
        DATA(t75) = t54.
        DATA(t76) = VALUE string( ).
        DATA t77 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t77.
        DATA t78 TYPE string.
        DATA(t79) = |identical_descriptions|.
        t78 = t79.
        DATA t80 TYPE string.
        DATA(t81) = |Identical descriptions|.
        t80 = t81.
        DATA t82 TYPE string.
        DATA(t83) = |Searches for objects with the same type and same description|.
        t82 = t83.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA(t86) = abap_true.
        IF t86 = abap_true.
          DATA(t87) = |Case insensitive\n\nOnly checks the master language descriptio|.
          t87 = t87 && |ns\n\nDependencies are skipped\n\nWorks for: INTF, CLAS, DOMA, D|.
          t87 = t87 && |TEL, FUNC in same FUGR|.
          DATA(t88) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t88->has = abap_true.
          t88->value = t87.
          t85 = t88.
        ELSE.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t89.
          t85 = t89.
        ENDIF.
        t84 = t85.
        DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t91.
        DATA(t92) = abap_true.
        IF t92 = abap_true.
          DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t93.
          t91 = t93.
        ELSE.
          DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t94.
          t91 = t94.
        ENDIF.
        t90 = t91.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t97 = t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        t99 = t100.
        DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t102.
        t101 = t102.
        t77 = NEW zcl_lnt_irule_metadata( i_key = t78 i_title = t80 i_short_description = t82 i_bad_example = t95 i_good_example = t97 i_extended_information = t84 i_tags = t90 i_pragma = t99 i_pseudo_comment = t101 ).
        CREATE OBJECT t77->zlnt_view_ownkeys_b0e8086400eb.
        t77->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t103 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t104 ).
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t105 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t106 ).
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        IF t77->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t77->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
        ENDIF.
        CREATE OBJECT t77->zlnt_json_ownkeys_70e5fd461788.
        t77->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t108) = |key|.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
        ENDIF.
        DATA(t110) = |title|.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        ENDIF.
        DATA(t112) = |shortDescription|.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
        ENDIF.
        DATA(t114) = |extendedInformation|.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
        ENDIF.
        DATA(t116) = |tags|.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t77->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t77->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
        ENDIF.
        t76 = t77->key.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t119) = CAST zcl_lnt_idntcl_dscrptns_cnf( me->gt_cn_in_sr_rl_id_ds_ts_id_dsc( ) ).
        t118 = t119->zlnt_view_read_sr_15c06369f827( ).
        t70 = zcl_lnt_issue=>at_row( i_file = t71 i_row = t74 i_message_26cb = t75 i_key = t76 i_severity = t118 ).
        t69->load( ).
        APPEND t70 TO t69->items.
        t69->save( ).
        DATA(t120) = t67.
        t66 = t120.
        result = t66.
        RETURN.
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
      DATA(t122) = t2.
      DATA t123 TYPE string.
      DATA(t124) = t14.
      t123 = t124->value.
      DATA(t125) = abap_true.
      t121 = t122->set( p0 = t123 p1 = t125 ).
    ENDDO.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t126.
    result = t126.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_idntcl_dscrptns_cnf( me->gt_cn_in_sr_rl_id_ds_ts_id_dsc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_idntcl_dscrptns_cnf( me->gt_cn_in_sr_rl_id_ds_ts_id_dsc( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_idntcl_dscrptns_cnf.
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
        t2 = NEW zcl_lnt_idntcl_dscrptns_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_id_ds_ts_id_dsc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_identical_descriptions.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_idn_dsc_ts_idn_dsc( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    t2 = me->rn_in_sr_rl_idn_dsc_ts_idn_dsc( i_o = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1529_0f0005c5004e.
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
