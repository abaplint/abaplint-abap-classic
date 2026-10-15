* TS: src/rules/cyclic_oo.ts:24:1 CyclicOO
CLASS zcl_lnt_cyclic_oo DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cyclic_oo_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA edges TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rls_cyc_o_ts_cyc_o RETURNING VALUE(result) TYPE REF TO zcl_lnt_cyclic_oo_conf.
    METHODS st_cn_in_sr_rls_cyc_o_ts_cyc_o IMPORTING i_conf TYPE REF TO zcl_lnt_cyclic_oo_conf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_cycle IMPORTING i_source_75cf TYPE string i_current TYPE string i_previous TYPE REF TO zlnt_runtime_map__45a2315f90b8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS build_edges IMPORTING i_from TYPE string i_node TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cyclic_oo IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cyclic_oo_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t2 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    DATA t3 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    DATA(t4) = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    t3 = t4.
    DATA(t5) = t3.
    t2 = t5.
    me->edges = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `edges`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |cyclic_oo|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Cyclic OO|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Finds cyclic/circular OO references|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Runs for global INTF + CLAS objects\n\nObjects must be without|.
      t11 = t11 && | syntax errors for this rule to take effect\n\nReferences in t|.
      t11 = t11 && |estclass includes are ignored|.
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
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t16 i_extended_information = t8 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |key|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |title|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = |shortDescription|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |extendedInformation|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rls_cyc_o_ts_cyc_o.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_cyc_o_ts_cyc_o.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_bab69e48acef( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_2f08c7c95a10( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA t3 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
    CLEAR t4.
    DATA(t5) = NEW zlnt_runtime_map__9f51cbbe9de8( ).
    t4 = t5.
    DATA(t6) = t4.
    t3 = t6.
    me->edges = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `edges`.
    DATA t7 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t9.
    DATA(t10) = me->reg.
    DATA(t11) = |CLAS|.
    t9 = t10->get_objects_by_type( i_type_9913 = t11 ).
    t8 = t9->iterate( ).
    t7 = t8.
    DO.
      DATA(t12) = abap_true.
      IF t12 = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t14.
      DATA(t15) = t7.
      t14 = t15->next( ).
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t13.
      t16 = t17->done.
      IF t16 = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_object.
      CLEAR t20.
      DATA(t21) = t13.
      t20 = t21->value.
      t19 = t20.
      t18 = t19.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = abap_false.
      t24 = t25.
      DATA t26 TYPE REF TO cx_root.
      CLEAR t26.
      TRY.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = me->reg.
          DATA(t29) = t18.
          t27 = t28->is_dependency( i_obj_1ed0 = t29 ).
          t23 = t27.
          DATA(t30) = abap_true.
          t24 = t30.
        CATCH cx_root INTO t26.
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = t24.
          t31 = xsdbool( t32 = abap_false ).
          IF t31 = abap_true.
            DATA(t33) = t7.
            t33->close( ).
          ENDIF.
          RAISE EXCEPTION t26.
      ENDTRY.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t24.
      t34 = xsdbool( t35 = abap_false ).
      IF t34 = abap_true.
        DATA(t36) = t7.
        t36->close( ).
      ENDIF.
      DATA(t37) = t23.
      t22 = t37.
      IF t22 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t38) = VALUE string( ).
      DATA(t39) = VALUE string( ).
      DATA(t40) = VALUE string( ).
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = abap_false.
      t41 = t42.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA(t44) = VALUE string( ).
          DATA(t45) = VALUE string( ).
          DATA(t46) = t18.
          t45 = t46->get_name( ).
          DATA(t47) = strlen( t45 ).
          t44 = t45.
          IF t44 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t44 TO UPPER CASE.
          ELSE.
            t44 = zlnt_runtime_uppe_91169605024d=>full( t44 ).
          ENDIF.
          t40 = t44.
          DATA(t48) = abap_true.
          t41 = t48.
        CATCH cx_root INTO t43.
          DATA(t49) = VALUE abap_bool( ).
          DATA(t50) = t41.
          t49 = xsdbool( t50 = abap_false ).
          IF t49 = abap_true.
            DATA(t51) = t7.
            t51->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = t41.
      t52 = xsdbool( t53 = abap_false ).
      IF t52 = abap_true.
        DATA(t54) = t7.
        t54->close( ).
      ENDIF.
      DATA(t55) = t40.
      t39 = t55.
      t38 = t39.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = abap_false.
      t58 = t59.
      DATA t60 TYPE REF TO cx_root.
      CLEAR t60.
      TRY.
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = t18.
          t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_class ).
          t61 = xsdbool( t62 = abap_false ).
          t57 = t61.
          DATA(t64) = abap_true.
          t58 = t64.
        CATCH cx_root INTO t60.
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = t58.
          t65 = xsdbool( t66 = abap_false ).
          IF t65 = abap_true.
            DATA(t67) = t7.
            t67->close( ).
          ENDIF.
          RAISE EXCEPTION t60.
      ENDTRY.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = t58.
      t68 = xsdbool( t69 = abap_false ).
      IF t68 = abap_true.
        DATA(t70) = t7.
        t70->close( ).
      ENDIF.
      DATA(t71) = t57.
      t56 = t71.
      IF t56 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = abap_false.
        t74 = t75.
        DATA t76 TYPE REF TO cx_root.
        CLEAR t76.
        TRY.
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = VALUE f( ).
            DATA(t79) = VALUE i( ).
            DATA t80 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t80.
            DATA(t81) = me->conf.
            t80 = t81->zlnt_view_read_sr_bab69e48acef( ).
            DATA(t82) = t38.
            t79 = t80->indexof( p0 = t82 ).
            t78 = t79.
            DATA(t83) = CONV f( 0 ).
            t77 = xsdbool( t78 >= t83 ).
            t73 = t77.
            DATA(t84) = abap_true.
            t74 = t84.
          CATCH cx_root INTO t76.
            DATA(t85) = VALUE abap_bool( ).
            DATA(t86) = t74.
            t85 = xsdbool( t86 = abap_false ).
            IF t85 = abap_true.
              DATA(t87) = t7.
              t87->close( ).
            ENDIF.
            RAISE EXCEPTION t76.
        ENDTRY.
        DATA(t88) = VALUE abap_bool( ).
        DATA(t89) = t74.
        t88 = xsdbool( t89 = abap_false ).
        IF t88 = abap_true.
          DATA(t90) = t7.
          t90->close( ).
        ENDIF.
        DATA(t91) = t73.
        t72 = t91.
        IF t72 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t92) = VALUE abap_bool( ).
          DATA(t93) = VALUE abap_bool( ).
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = abap_false.
          t94 = t95.
          DATA t96 TYPE REF TO cx_root.
          CLEAR t96.
          TRY.
              DATA(t97) = VALUE abap_bool( ).
              DATA(t98) = VALUE abap_bool( ).
              DATA(t99) = VALUE abap_bool( ).
              DATA(t100) = me->conf.
              t99 = t100->zlnt_view_read_sr_9d28e80cfea7( ).
              DATA(t101) = abap_true.
              t98 = xsdbool( t99 = t101 ).
              t97 = t98.
              IF t98 = abap_true.
                DATA(t102) = VALUE abap_bool( ).
                DATA t103 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t103.
                DATA t104 TYPE REF TO zcl_lnt_info_class_definition.
                CLEAR t104.
                DATA t105 TYPE REF TO zcl_lnt_info_class_definition.
                CLEAR t105.
                DATA t106 TYPE REF TO zcl_lnt_class.
                CLEAR t106.
                DATA t107 TYPE REF TO zcl_lnt_class.
                CLEAR t107.
                DATA(t108) = t18.
                DATA t109 TYPE REF TO object.
                CLEAR t109.
                t109 = t108.
                t107 ?= t109.
                t106 = t107.
                DATA t110 TYPE REF TO zcl_lnt_info_class_definition.
                CLEAR t110.
                DATA t111 TYPE REF TO zif_lnt_abap_file_information.
                CLEAR t111.
                DATA t112 TYPE REF TO zif_lnt_abap_file_information.
                CLEAR t112.
                DATA t113 TYPE REF TO zcl_lnt_abap_file.
                CLEAR t113.
                DATA t114 TYPE REF TO zcl_lnt_abap_file.
                CLEAR t114.
                DATA(t115) = t106.
                t114 = t115->get_main_abap_file( ).
                t113 = t114.
                DATA t116 TYPE REF TO zif_lnt_abap_file_information.
                CLEAR t116.
                DATA(t117) = VALUE abap_bool( ).
                DATA(t118) = t113.
                IF t118 IS INITIAL.
                  t117 = abap_true.
                ENDIF.
                IF t117 = abap_true.
                  DATA t119 TYPE REF TO zif_lnt_abap_file_information.
                  CLEAR t119.
                  t116 = t119.
                ELSE.
                  DATA t120 TYPE REF TO zif_lnt_abap_file_information.
                  CLEAR t120.
                  DATA t121 TYPE REF TO zcl_lnt_abap_file.
                  CLEAR t121.
                  DATA t122 TYPE REF TO zcl_lnt_abap_file.
                  CLEAR t122.
                  DATA(t123) = t113.
                  t122 = t123.
                  t121 = t122.
                  DATA t124 TYPE REF TO zif_lnt_abap_file_information.
                  CLEAR t124.
                  DATA(t125) = t121.
                  t124 = t125->info.
                  t120 = t124.
                  t116 = t120.
                ENDIF.
                t112 = t116.
                t111 = t112.
                DATA t126 TYPE REF TO zcl_lnt_info_class_definition.
                CLEAR t126.
                DATA(t127) = VALUE abap_bool( ).
                DATA(t128) = t111.
                IF t128 IS INITIAL.
                  t127 = abap_true.
                ENDIF.
                IF t127 = abap_true.
                  DATA t129 TYPE REF TO zcl_lnt_info_class_definition.
                  CLEAR t129.
                  t126 = t129.
                ELSE.
                  DATA t130 TYPE REF TO zcl_lnt_info_class_definition.
                  CLEAR t130.
                  DATA t131 TYPE REF TO zif_lnt_abap_file_information.
                  CLEAR t131.
                  DATA(t132) = t111.
                  t131 = t132.
                  DATA(t133) = VALUE string( ).
                  DATA t134 TYPE REF TO zcl_lnt_abstract_object.
                  CLEAR t134.
                  DATA(t135) = t106.
                  t134 = t135.
                  DATA(t136) = VALUE string( ).
                  DATA(t137) = t134.
                  t136 = t137->name.
                  t133 = t136.
                  t130 = t131->get_class_definition_by_name( i_name = t133 ).
                  t126 = t130.
                ENDIF.
                t110 = t126.
                t105 = t110.
                t104 = t105.
                DATA t138 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t138.
                DATA(t139) = VALUE abap_bool( ).
                DATA(t140) = t104.
                IF t140 IS INITIAL.
                  t139 = abap_true.
                ENDIF.
                IF t139 = abap_true.
                  DATA t141 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t141.
                  t138 = t141.
                ELSE.
                  DATA(t142) = VALUE abap_bool( ).
                  DATA t143 TYPE REF TO zcl_lnt_info_class_definition.
                  CLEAR t143.
                  DATA(t144) = t104.
                  t143 = t144.
                  t142 = t143->is_shared_memory.
                  DATA(t145) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t145->has = abap_true.
                  t145->value = t142.
                  t138 = t145.
                ENDIF.
                t103 = t138.
                DATA t146 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t146.
                DATA(t147) = abap_true.
                IF t147 = abap_true.
                  DATA(t148) = abap_true.
                  DATA(t149) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t149->has = abap_true.
                  t149->value = t148.
                  t146 = t149.
                ELSE.
                  DATA t150 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t150.
                  t146 = t150.
                ENDIF.
                DATA(t151) = VALUE abap_bool( ).
                DATA(t152) = VALUE abap_bool( ).
                IF t103 IS BOUND.
                  t151 = t103->has.
                ENDIF.
                IF t146 IS BOUND.
                  t152 = t146->has.
                ENDIF.
                IF t151 = t152.
                  IF t151 = abap_false.
                    t102 = abap_true.
                  ELSEIF t103->value = t146->value.
                    t102 = abap_true.
                  ENDIF.
                ENDIF.
                t97 = t102.
              ENDIF.
              t93 = t97.
              DATA(t153) = abap_true.
              t94 = t153.
            CATCH cx_root INTO t96.
              DATA(t154) = VALUE abap_bool( ).
              DATA(t155) = t94.
              t154 = xsdbool( t155 = abap_false ).
              IF t154 = abap_true.
                DATA(t156) = t7.
                t156->close( ).
              ENDIF.
              RAISE EXCEPTION t96.
          ENDTRY.
          DATA(t157) = VALUE abap_bool( ).
          DATA(t158) = t94.
          t157 = xsdbool( t158 = abap_false ).
          IF t157 = abap_true.
            DATA(t159) = t7.
            t159->close( ).
          ENDIF.
          DATA(t160) = t93.
          t92 = t160.
          IF t92 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t161 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t161.
      DATA t162 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t163.
      DATA(t164) = VALUE abap_bool( ).
      DATA(t165) = abap_false.
      t164 = t165.
      DATA t166 TYPE REF TO cx_root.
      CLEAR t166.
      TRY.
          DATA t167 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_syntax_logic.
          CLEAR t168.
          DATA(t169) = me->reg.
          DATA t170 TYPE REF TO zcl_lnt_class.
          CLEAR t170.
          DATA(t171) = t18.
          DATA t172 TYPE REF TO object.
          CLEAR t172.
          t172 = t171.
          t170 ?= t172.
          t168 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t169 i_object_19cd = t170 ).
          t167 = t168->run( ).
          t163 = t167.
          DATA(t173) = abap_true.
          t164 = t173.
        CATCH cx_root INTO t166.
          DATA(t174) = VALUE abap_bool( ).
          DATA(t175) = t164.
          t174 = xsdbool( t175 = abap_false ).
          IF t174 = abap_true.
            DATA(t176) = t7.
            t176->close( ).
          ENDIF.
          RAISE EXCEPTION t166.
      ENDTRY.
      DATA(t177) = VALUE abap_bool( ).
      DATA(t178) = t164.
      t177 = xsdbool( t178 = abap_false ).
      IF t177 = abap_true.
        DATA(t179) = t7.
        t179->close( ).
      ENDIF.
      DATA(t180) = t163.
      t162 = t180.
      t161 = t162.
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = VALUE abap_bool( ).
      DATA(t183) = VALUE abap_bool( ).
      DATA(t184) = abap_false.
      t183 = t184.
      DATA t185 TYPE REF TO cx_root.
      CLEAR t185.
      TRY.
          DATA(t186) = VALUE abap_bool( ).
          DATA(t187) = VALUE f( ).
          DATA(t188) = VALUE i( ).
          DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t189.
          DATA(t190) = t161.
          t189 = t190->zlnt_view_read_sr_bd188c319c03( ).
          t189->load( ).
          t188 = lines( t189->items ).
          t187 = t188.
          DATA(t191) = CONV f( 0 ).
          t186 = xsdbool( t187 > t191 ).
          t182 = t186.
          DATA(t192) = abap_true.
          t183 = t192.
        CATCH cx_root INTO t185.
          DATA(t193) = VALUE abap_bool( ).
          DATA(t194) = t183.
          t193 = xsdbool( t194 = abap_false ).
          IF t193 = abap_true.
            DATA(t195) = t7.
            t195->close( ).
          ENDIF.
          RAISE EXCEPTION t185.
      ENDTRY.
      DATA(t196) = VALUE abap_bool( ).
      DATA(t197) = t183.
      t196 = xsdbool( t197 = abap_false ).
      IF t196 = abap_true.
        DATA(t198) = t7.
        t198->close( ).
      ENDIF.
      DATA(t199) = t182.
      t181 = t199.
      IF t181 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t200) = VALUE abap_bool( ).
      DATA(t201) = abap_false.
      t200 = t201.
      DATA t202 TYPE REF TO cx_root.
      CLEAR t202.
      TRY.
          DATA(t203) = t38.
          DATA t204 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t204.
          DATA t205 TYPE REF TO zif_lnt_spaghetti_scope.
          CLEAR t205.
          DATA(t206) = t161.
          t205 = t206->zlnt_view_read_sr_b6b1d9e0c93e( ).
          t204 = t205->get_top( ).
          me->build_edges( i_from = t203 i_node = t204 ).
          DATA(t207) = abap_true.
          t200 = t207.
        CATCH cx_root INTO t202.
          DATA(t208) = VALUE abap_bool( ).
          DATA(t209) = t200.
          t208 = xsdbool( t209 = abap_false ).
          IF t208 = abap_true.
            DATA(t210) = t7.
            t210->close( ).
          ENDIF.
          RAISE EXCEPTION t202.
      ENDTRY.
      DATA(t211) = VALUE abap_bool( ).
      DATA(t212) = t200.
      t211 = xsdbool( t212 = abap_false ).
      IF t211 = abap_true.
        DATA(t213) = t7.
        t213->close( ).
      ENDIF.
    ENDDO.
    DATA t214 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t216.
    DATA(t217) = me->reg.
    DATA(t218) = |INTF|.
    t216 = t217->get_objects_by_type( i_type_9913 = t218 ).
    t215 = t216->iterate( ).
    t214 = t215.
    DO.
      DATA(t219) = abap_true.
      IF t219 = abap_false.
        EXIT.
      ENDIF.
      DATA t220 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t220.
      DATA t221 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t221.
      DATA(t222) = t214.
      t221 = t222->next( ).
      t220 = t221.
      DATA(t223) = VALUE abap_bool( ).
      DATA(t224) = t220.
      t223 = t224->done.
      IF t223 = abap_true.
        EXIT.
      ENDIF.
      DATA t225 TYPE REF TO zif_lnt_object.
      CLEAR t225.
      DATA t226 TYPE REF TO zif_lnt_object.
      CLEAR t226.
      DATA t227 TYPE REF TO zif_lnt_object.
      CLEAR t227.
      DATA(t228) = t220.
      t227 = t228->value.
      t226 = t227.
      t225 = t226.
      DATA(t229) = VALUE abap_bool( ).
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = VALUE abap_bool( ).
      DATA(t232) = abap_false.
      t231 = t232.
      DATA t233 TYPE REF TO cx_root.
      CLEAR t233.
      TRY.
          DATA(t234) = VALUE abap_bool( ).
          DATA(t235) = me->reg.
          DATA(t236) = t225.
          t234 = t235->is_dependency( i_obj_1ed0 = t236 ).
          t230 = t234.
          DATA(t237) = abap_true.
          t231 = t237.
        CATCH cx_root INTO t233.
          DATA(t238) = VALUE abap_bool( ).
          DATA(t239) = t231.
          t238 = xsdbool( t239 = abap_false ).
          IF t238 = abap_true.
            DATA(t240) = t214.
            t240->close( ).
          ENDIF.
          RAISE EXCEPTION t233.
      ENDTRY.
      DATA(t241) = VALUE abap_bool( ).
      DATA(t242) = t231.
      t241 = xsdbool( t242 = abap_false ).
      IF t241 = abap_true.
        DATA(t243) = t214.
        t243->close( ).
      ENDIF.
      DATA(t244) = t230.
      t229 = t244.
      IF t229 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t245) = VALUE string( ).
      DATA(t246) = VALUE string( ).
      DATA(t247) = VALUE string( ).
      DATA(t248) = VALUE abap_bool( ).
      DATA(t249) = abap_false.
      t248 = t249.
      DATA t250 TYPE REF TO cx_root.
      CLEAR t250.
      TRY.
          DATA(t251) = VALUE string( ).
          DATA(t252) = VALUE string( ).
          DATA(t253) = t225.
          t252 = t253->get_name( ).
          DATA(t254) = strlen( t252 ).
          t251 = t252.
          IF t251 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t251 TO UPPER CASE.
          ELSE.
            t251 = zlnt_runtime_uppe_91169605024d=>full( t251 ).
          ENDIF.
          t247 = t251.
          DATA(t255) = abap_true.
          t248 = t255.
        CATCH cx_root INTO t250.
          DATA(t256) = VALUE abap_bool( ).
          DATA(t257) = t248.
          t256 = xsdbool( t257 = abap_false ).
          IF t256 = abap_true.
            DATA(t258) = t214.
            t258->close( ).
          ENDIF.
          RAISE EXCEPTION t250.
      ENDTRY.
      DATA(t259) = VALUE abap_bool( ).
      DATA(t260) = t248.
      t259 = xsdbool( t260 = abap_false ).
      IF t259 = abap_true.
        DATA(t261) = t214.
        t261->close( ).
      ENDIF.
      DATA(t262) = t247.
      t246 = t262.
      t245 = t246.
      DATA(t263) = VALUE abap_bool( ).
      DATA(t264) = VALUE abap_bool( ).
      DATA(t265) = VALUE abap_bool( ).
      DATA(t266) = abap_false.
      t265 = t266.
      DATA t267 TYPE REF TO cx_root.
      CLEAR t267.
      TRY.
          DATA(t268) = VALUE abap_bool( ).
          DATA(t269) = VALUE abap_bool( ).
          DATA(t270) = t225.
          t269 = xsdbool( t270 IS BOUND AND t270 IS INSTANCE OF zcl_lnt_abap_object ).
          t268 = xsdbool( t269 = abap_false ).
          t264 = t268.
          DATA(t271) = abap_true.
          t265 = t271.
        CATCH cx_root INTO t267.
          DATA(t272) = VALUE abap_bool( ).
          DATA(t273) = t265.
          t272 = xsdbool( t273 = abap_false ).
          IF t272 = abap_true.
            DATA(t274) = t214.
            t274->close( ).
          ENDIF.
          RAISE EXCEPTION t267.
      ENDTRY.
      DATA(t275) = VALUE abap_bool( ).
      DATA(t276) = t265.
      t275 = xsdbool( t276 = abap_false ).
      IF t275 = abap_true.
        DATA(t277) = t214.
        t277->close( ).
      ENDIF.
      DATA(t278) = t264.
      t263 = t278.
      IF t263 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t279) = VALUE abap_bool( ).
        DATA(t280) = VALUE abap_bool( ).
        DATA(t281) = VALUE abap_bool( ).
        DATA(t282) = abap_false.
        t281 = t282.
        DATA t283 TYPE REF TO cx_root.
        CLEAR t283.
        TRY.
            DATA(t284) = VALUE abap_bool( ).
            DATA(t285) = VALUE f( ).
            DATA(t286) = VALUE i( ).
            DATA t287 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t287.
            DATA(t288) = me->conf.
            t287 = t288->zlnt_view_read_sr_bab69e48acef( ).
            DATA(t289) = t245.
            t286 = t287->indexof( p0 = t289 ).
            t285 = t286.
            DATA(t290) = CONV f( 0 ).
            t284 = xsdbool( t285 >= t290 ).
            t280 = t284.
            DATA(t291) = abap_true.
            t281 = t291.
          CATCH cx_root INTO t283.
            DATA(t292) = VALUE abap_bool( ).
            DATA(t293) = t281.
            t292 = xsdbool( t293 = abap_false ).
            IF t292 = abap_true.
              DATA(t294) = t214.
              t294->close( ).
            ENDIF.
            RAISE EXCEPTION t283.
        ENDTRY.
        DATA(t295) = VALUE abap_bool( ).
        DATA(t296) = t281.
        t295 = xsdbool( t296 = abap_false ).
        IF t295 = abap_true.
          DATA(t297) = t214.
          t297->close( ).
        ENDIF.
        DATA(t298) = t280.
        t279 = t298.
        IF t279 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t299 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t299.
      DATA t300 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t300.
      DATA t301 TYPE REF TO zcl_lnt_isyntax_result.
      CLEAR t301.
      DATA(t302) = VALUE abap_bool( ).
      DATA(t303) = abap_false.
      t302 = t303.
      DATA t304 TYPE REF TO cx_root.
      CLEAR t304.
      TRY.
          DATA t305 TYPE REF TO zcl_lnt_isyntax_result.
          CLEAR t305.
          DATA t306 TYPE REF TO zcl_lnt_syntax_logic.
          CLEAR t306.
          DATA(t307) = me->reg.
          DATA t308 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t308.
          DATA(t309) = t225.
          DATA t310 TYPE REF TO object.
          CLEAR t310.
          t310 = t309.
          t308 ?= t310.
          t306 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t307 i_object_19cd = t308 ).
          t305 = t306->run( ).
          t301 = t305.
          DATA(t311) = abap_true.
          t302 = t311.
        CATCH cx_root INTO t304.
          DATA(t312) = VALUE abap_bool( ).
          DATA(t313) = t302.
          t312 = xsdbool( t313 = abap_false ).
          IF t312 = abap_true.
            DATA(t314) = t214.
            t314->close( ).
          ENDIF.
          RAISE EXCEPTION t304.
      ENDTRY.
      DATA(t315) = VALUE abap_bool( ).
      DATA(t316) = t302.
      t315 = xsdbool( t316 = abap_false ).
      IF t315 = abap_true.
        DATA(t317) = t214.
        t317->close( ).
      ENDIF.
      DATA(t318) = t301.
      t300 = t318.
      t299 = t300.
      DATA(t319) = VALUE abap_bool( ).
      DATA(t320) = VALUE abap_bool( ).
      DATA(t321) = VALUE abap_bool( ).
      DATA(t322) = abap_false.
      t321 = t322.
      DATA t323 TYPE REF TO cx_root.
      CLEAR t323.
      TRY.
          DATA(t324) = VALUE abap_bool( ).
          DATA(t325) = VALUE f( ).
          DATA(t326) = VALUE i( ).
          DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t327.
          DATA(t328) = t299.
          t327 = t328->zlnt_view_read_sr_bd188c319c03( ).
          t327->load( ).
          t326 = lines( t327->items ).
          t325 = t326.
          DATA(t329) = CONV f( 0 ).
          t324 = xsdbool( t325 > t329 ).
          t320 = t324.
          DATA(t330) = abap_true.
          t321 = t330.
        CATCH cx_root INTO t323.
          DATA(t331) = VALUE abap_bool( ).
          DATA(t332) = t321.
          t331 = xsdbool( t332 = abap_false ).
          IF t331 = abap_true.
            DATA(t333) = t214.
            t333->close( ).
          ENDIF.
          RAISE EXCEPTION t323.
      ENDTRY.
      DATA(t334) = VALUE abap_bool( ).
      DATA(t335) = t321.
      t334 = xsdbool( t335 = abap_false ).
      IF t334 = abap_true.
        DATA(t336) = t214.
        t336->close( ).
      ENDIF.
      DATA(t337) = t320.
      t319 = t337.
      IF t319 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t338) = VALUE abap_bool( ).
      DATA(t339) = abap_false.
      t338 = t339.
      DATA t340 TYPE REF TO cx_root.
      CLEAR t340.
      TRY.
          DATA(t341) = t245.
          DATA t342 TYPE REF TO zif_lnt_spaghetti_scope_node.
          CLEAR t342.
          DATA t343 TYPE REF TO zif_lnt_spaghetti_scope.
          CLEAR t343.
          DATA(t344) = t299.
          t343 = t344->zlnt_view_read_sr_b6b1d9e0c93e( ).
          t342 = t343->get_top( ).
          me->build_edges( i_from = t341 i_node = t342 ).
          DATA(t345) = abap_true.
          t338 = t345.
        CATCH cx_root INTO t340.
          DATA(t346) = VALUE abap_bool( ).
          DATA(t347) = t338.
          t346 = xsdbool( t347 = abap_false ).
          IF t346 = abap_true.
            DATA(t348) = t214.
            t348->close( ).
          ENDIF.
          RAISE EXCEPTION t340.
      ENDTRY.
      DATA(t349) = VALUE abap_bool( ).
      DATA(t350) = t338.
      t349 = xsdbool( t350 = abap_false ).
      IF t349 = abap_true.
        DATA(t351) = t214.
        t351->close( ).
      ENDIF.
    ENDDO.
    DATA(t352) = me.
    result = t352.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_ob_interface ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t1.
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_class ).
      t6 = xsdbool( t7 = abap_false ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t12 TYPE REF TO zif_lnt_union_291f04b3.
    DATA(t13) = t1.
    t12 ?= t13.
    t11 = t12->get_identifier( ).
    t10 = t11.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t16) = t10.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t15.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t21.
      result = t21.
      RETURN.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t23 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA t24 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t25) = NEW zlnt_runtime_map__45a2315f90b8( ).
    t24 = t25.
    DATA(t26) = t24.
    t23 = t26.
    t22 = t23.
    DATA t27 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
    DATA(t28) = t22.
    DATA t29 TYPE string.
    DATA t30 TYPE REF TO zif_lnt_union_291f04b3.
    DATA(t31) = t1.
    t30 ?= t31.
    t29 = t30->get_name( ).
    DATA(t32) = abap_true.
    t27 = t28->set( p0 = t29 p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE string.
    DATA t36 TYPE REF TO zif_lnt_union_291f04b3.
    DATA(t37) = t1.
    t36 ?= t37.
    t35 = t36->get_name( ).
    DATA t38 TYPE string.
    DATA t39 TYPE REF TO zif_lnt_union_291f04b3.
    DATA(t40) = t1.
    t39 ?= t40.
    t38 = t39->get_name( ).
    DATA(t41) = t22.
    t34 = me->find_cycle( i_source_75cf = t35 i_current = t38 i_previous = t41 ).
    t33 = t34.
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = t33.
    IF t43 IS BOUND.
      IF t43->has = abap_true.
        t42 = xsdbool( strlen( t43->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t42 = abap_true.
      DATA t44 TYPE string.
      DATA t45 TYPE string.
      DATA t46 TYPE string.
      DATA t47 TYPE string.
      DATA(t48) = |Cyclic definition/usage: |.
      DATA t49 TYPE string.
      DATA t50 TYPE REF TO zif_lnt_union_291f04b3.
      DATA(t51) = t1.
      t50 ?= t51.
      t49 = t50->get_name( ).
      DATA(t52) = strlen( t48 ).
      t47 = |{ t48 }{ t49 }|.
      DATA(t53) = | -> |.
      DATA(t54) = strlen( t47 ).
      t46 = |{ t47 }{ t53 }|.
      DATA t55 TYPE string.
      DATA(t56) = t33.
      t55 = t56->value.
      DATA(t57) = strlen( t46 ).
      t45 = |{ t46 }{ t55 }|.
      t44 = t45.
      DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t58.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t60.
      t59 = t60.
      DATA(t61) = t59.
      DATA t62 TYPE REF TO zcl_lnt_issue.
      CLEAR t62.
      DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t64) = t10.
      t63 = t64.
      DATA(t65) = t44.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t67.
      DATA t68 TYPE string.
      DATA(t69) = |cyclic_oo|.
      t68 = t69.
      DATA t70 TYPE string.
      DATA(t71) = |Cyclic OO|.
      t70 = t71.
      DATA t72 TYPE string.
      DATA(t73) = |Finds cyclic/circular OO references|.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t75.
      DATA(t76) = abap_true.
      IF t76 = abap_true.
        DATA(t77) = |Runs for global INTF + CLAS objects\n\nObjects must be without|.
        t77 = t77 && | syntax errors for this rule to take effect\n\nReferences in t|.
        t77 = t77 && |estclass includes are ignored|.
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
      DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t85.
      t84 = t85.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      t86 = t87.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      t88 = t89.
      t67 = NEW zcl_lnt_irule_metadata( i_key = t68 i_title = t70 i_short_description = t72 i_bad_example = t80 i_good_example = t82 i_extended_information = t74 i_tags = t84 i_pragma = t86 i_pseudo_comment = t88 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t90.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t90 ).
      ENDIF.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t91 ).
      ENDIF.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t92 ).
      ENDIF.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t93 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t94) = |key|.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
      ENDIF.
      DATA(t96) = |title|.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
      ENDIF.
      DATA(t98) = |shortDescription|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      ENDIF.
      DATA(t100) = |extendedInformation|.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
      ENDIF.
      t66 = t67->key.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t103) = me->conf.
      t102 = t103->zlnt_view_read_sr_15c06369f827( ).
      DATA t104 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t104.
      t62 = zcl_lnt_issue=>at_identifier( i_identifier = t63 i_message_26cb = t65 i_key = t66 i_severity = t102 i_fix = t104 ).
      t61->load( ).
      APPEND t62 TO t61->items.
      t61->save( ).
      DATA(t105) = t59.
      t58 = t105.
      result = t58.
      RETURN.
    ENDIF.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    result = t106.

  ENDMETHOD.

  METHOD find_cycle.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_current.
    DATA(t3) = i_previous.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t7) = me->edges.
    DATA(t8) = t2.
    t6 = t7->get( p0 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t5.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t4 = t11.
    IF t4 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      result = t13.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t16) = me->edges.
    DATA(t17) = t2.
    t15 = t16->get( p0 = t17 ).
    t14 = t15.
    DATA(t18) = VALUE string( ).
    t14->dense( ).
    DATA(t19) = VALUE i( ).
    DO.
      t14->load( ).
      IF t19 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t14->items INDEX t19 + 1 INTO t18.
      IF t14->has( t19 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t19 = t19 + 1.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t18.
      DATA(t22) = t1.
      t20 = xsdbool( t21 = t22 ).
      IF t20 = abap_true.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        DATA(t24) = abap_true.
        IF t24 = abap_true.
          DATA(t25) = t18.
          DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t26->has = abap_true.
          t26->value = t25.
          t23 = t26.
        ELSE.
          DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t27.
          t23 = t27.
        ENDIF.
        result = t23.
        RETURN.
      ENDIF.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t31) = t3.
      DATA(t32) = t18.
      t30 = t31->get( p0 = t32 ).
      t29 = t30.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t33 = t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = t29.
      IF t36 IS INITIAL.
        t35 = abap_true.
      ELSEIF t36->has = abap_false.
        t35 = abap_true.
      ENDIF.
      t28 = t35.
      IF t28 = abap_true.
        DATA t37 TYPE REF TO zlnt_runtime_map__45a2315f90b8.
        DATA(t38) = t3.
        DATA(t39) = t18.
        DATA(t40) = abap_true.
        t37 = t38->set( p0 = t39 p1 = t40 ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t43) = t1.
        DATA(t44) = t18.
        DATA(t45) = t3.
        t42 = me->find_cycle( i_source_75cf = t43 i_current = t44 i_previous = t45 ).
        t41 = t42.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = t41.
        IF t47 IS BOUND.
          IF t47->has = abap_true.
            t46 = xsdbool( strlen( t47->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t46 = abap_true.
          DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t48.
          DATA(t49) = abap_true.
          IF t49 = abap_true.
            DATA t50 TYPE string.
            DATA t51 TYPE string.
            DATA(t52) = t18.
            DATA(t53) = | -> |.
            DATA(t54) = strlen( t52 ).
            t51 = |{ t52 }{ t53 }|.
            DATA t55 TYPE string.
            DATA(t56) = t41.
            t55 = t56->value.
            DATA(t57) = strlen( t51 ).
            t50 = |{ t51 }{ t55 }|.
            DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t58->has = abap_true.
            t58->value = t50.
            t48 = t58.
          ELSE.
            DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t59.
            t48 = t59.
          ENDIF.
          result = t48.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t60.
    result = t60.

  ENDMETHOD.

  METHOD build_edges.
    DATA(t1) = i_from.
    DATA(t2) = i_node.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t5) = t2.
    t4 = t5->get_data( ).
    t3 = t4->references.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t15 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t16) = t6.
      t15 = t16->resolved.
      t14 = t15.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t14.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t13 = t19.
      t12 = t13.
      IF t13 = abap_false.
        DATA t21 TYPE abap_bool.
        DATA t22 TYPE string.
        DATA t23 TYPE REF TO zcl_lnt_iscope_identifier.
        DATA(t24) = t2.
        t23 = t24->get_identifier( ).
        t22 = t23->filename.
        DATA t25 TYPE string.
        DATA t26 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t28 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t29) = t6.
        t28 = t29->resolved.
        t27 = t28.
        t26 = t27.
        DATA t30 TYPE string.
        DATA(t31) = t26.
        t30 = t31->filename.
        t25 = t30.
        t21 = xsdbool( t22 = t25 ).
        t12 = t21.
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE string.
        DATA t34 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t35 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t37) = t6.
        t36 = t37->resolved.
        t35 = t36.
        t34 = t35.
        DATA t38 TYPE string.
        DATA(t39) = t34.
        t38 = t39->filename.
        t33 = t38.
        DATA(t40) = CONV string( zcl_lnt_built_in=>filename ).
        t32 = xsdbool( t33 = t40 ).
        t11 = t32.
      ENDIF.
      IF t11 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE abap_bool.
      DATA t43 TYPE abap_bool.
      DATA(t44) = me->conf.
      t43 = t44->zlnt_view_read_sr_a5a0cef6220d( ).
      DATA(t45) = abap_true.
      t42 = xsdbool( t43 = t45 ).
      t41 = t42.
      IF t42 = abap_true.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = VALUE i( ).
        DATA t49 TYPE string.
        DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t52) = t6.
        t51 = t52->position_7b94.
        t50 = t51.
        DATA t53 TYPE string.
        DATA(t54) = t50.
        t53 = t54->filename.
        t49 = t53.
        DATA(t55) = |.testclasses.|.
        DATA(t56) = strlen( t49 ).
        IF t55 IS INITIAL.
          t48 = 0.
        ELSE.
          FIND t55 IN t49 MATCH OFFSET t48.
          IF sy-subrc <> 0.
            t48 = -1.
          ENDIF.
        ENDIF.
        DATA(t57) = 0.
        t47 = xsdbool( t48 >= t57 ).
        t46 = t47.
        IF t47 = abap_false.
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE i( ).
          DATA t60 TYPE string.
          DATA t61 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t62 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t64) = t6.
          t63 = t64->resolved.
          t62 = t63.
          t61 = t62.
          DATA t65 TYPE string.
          DATA(t66) = t61.
          t65 = t66->filename.
          t60 = t65.
          DATA(t67) = |.testclasses.|.
          DATA(t68) = strlen( t60 ).
          IF t67 IS INITIAL.
            t59 = 0.
          ELSE.
            FIND t67 IN t60 MATCH OFFSET t59.
            IF sy-subrc <> 0.
              t59 = -1.
            ENDIF.
          ENDIF.
          DATA(t69) = 0.
          t58 = xsdbool( t59 >= t69 ).
          t46 = t58.
        ENDIF.
        t41 = t46.
      ENDIF.
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE abap_bool.
      DATA t72 TYPE string.
      DATA(t73) = t6.
      t72 = t73->reference_type.
      DATA(t74) = |Object|.
      t71 = xsdbool( t72 = t74 ).
      t70 = t71.
      IF t71 = abap_true.
        DATA(t75) = VALUE abap_bool( ).
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t78 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t79) = t6.
        t78 = t79->extra.
        t77 = t78.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = VALUE abap_bool( ).
        DATA(t82) = t77.
        IF t82 IS INITIAL.
          t81 = abap_true.
        ENDIF.
        IF t81 = abap_true.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          t80 = t83.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t85 TYPE REF TO zcl_lnt_ireference_extras.
          DATA(t86) = t77.
          t85 = t86.
          t84 = t85->oo_name.
          t80 = t84.
        ENDIF.
        t76 = t80.
        IF t76 IS BOUND.
          IF t76->has = abap_true.
            t75 = xsdbool( strlen( t76->value ) > 0 ).
          ENDIF.
        ENDIF.
        t70 = t75.
      ENDIF.
      IF t70 = abap_true.
        DATA(t87) = VALUE abap_bool( ).
        DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t90) = me->edges.
        DATA(t91) = t1.
        t89 = t90->get( p0 = t91 ).
        t88 = t89.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t92 = t93.
        DATA(t94) = VALUE abap_bool( ).
        DATA(t95) = t88.
        IF t95 IS INITIAL.
          t94 = abap_true.
        ENDIF.
        t87 = t94.
        IF t87 = abap_true.
          DATA t96 TYPE REF TO zlnt_runtime_map__9f51cbbe9de8.
          DATA(t97) = me->edges.
          DATA(t98) = t1.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t99.
          t96 = t97->set( p0 = t98 p1 = t99 ).
        ENDIF.
        DATA(t100) = VALUE string( ).
        DATA t101 TYPE string.
        DATA t102 TYPE string.
        DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t104 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t105 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t106) = t6.
        t105 = t106->extra.
        t104 = t105.
        t103 = t104->oo_name.
        t102 = t103->value.
        DATA(t107) = strlen( t102 ).
        t101 = t102.
        IF t101 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t101 TO UPPER CASE.
        ELSE.
          t101 = zlnt_runtime_uppe_91169605024d=>full( t101 ).
        ENDIF.
        t100 = t101.
        DATA t108 TYPE abap_bool.
        DATA t109 TYPE abap_bool.
        DATA(t110) = t100.
        DATA(t111) = t1.
        t109 = xsdbool( t110 <> t111 ).
        t108 = t109.
        IF t109 = abap_true.
          DATA t112 TYPE abap_bool.
          DATA t113 TYPE i.
          DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t116) = me->edges.
          DATA(t117) = t1.
          t115 = t116->get( p0 = t117 ).
          t114 = t115.
          DATA(t118) = t100.
          t113 = t114->indexof( p0 = t118 ).
          DATA(t119) = 0.
          t112 = xsdbool( t113 < t119 ).
          t108 = t112.
        ENDIF.
        IF t108 = abap_true.
          DATA t120 TYPE REF TO zif_lnt_object.
          CLEAR t120.
          DATA t121 TYPE REF TO zif_lnt_object.
          CLEAR t121.
          DATA t122 TYPE REF TO zif_lnt_object.
          CLEAR t122.
          DATA t123 TYPE REF TO zif_lnt_object.
          CLEAR t123.
          DATA(t124) = me->reg.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          DATA(t126) = abap_true.
          IF t126 = abap_true.
            DATA(t127) = |INTF|.
            DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t128->has = abap_true.
            t128->value = t127.
            t125 = t128.
          ELSE.
            DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t129.
            t125 = t129.
          ENDIF.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t131) = abap_true.
          IF t131 = abap_true.
            DATA(t132) = t100.
            DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t133->has = abap_true.
            t133->value = t132.
            t130 = t133.
          ELSE.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t134.
            t130 = t134.
          ENDIF.
          t123 = t124->get_object( i_type_9913 = t125 i_name = t130 ).
          t122 = t123.
          DATA t135 TYPE REF TO zif_lnt_object.
          CLEAR t135.
          DATA t136 TYPE abap_bool.
          DATA(t137) = t122.
          t136 = xsdbool( t137 IS BOUND ).
          IF t136 = abap_true.
            DATA(t138) = t122.
            t135 = t138.
          ELSE.
            DATA t139 TYPE REF TO zif_lnt_object.
            CLEAR t139.
            DATA(t140) = me->reg.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            DATA(t142) = abap_true.
            IF t142 = abap_true.
              DATA(t143) = |CLAS|.
              DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t144->has = abap_true.
              t144->value = t143.
              t141 = t144.
            ELSE.
              DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t145.
              t141 = t145.
            ENDIF.
            DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t146.
            DATA(t147) = abap_true.
            IF t147 = abap_true.
              DATA(t148) = t100.
              DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t149->has = abap_true.
              t149->value = t148.
              t146 = t149.
            ELSE.
              DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t150.
              t146 = t150.
            ENDIF.
            t139 = t140->get_object( i_type_9913 = t141 i_name = t146 ).
            t135 = t139.
          ENDIF.
          t121 = t135.
          t120 = t121.
          DATA t151 TYPE abap_bool.
          DATA t152 TYPE abap_bool.
          DATA(t153) = t120.
          t152 = xsdbool( t153 IS BOUND ).
          t151 = t152.
          IF t152 = abap_true.
            DATA t154 TYPE abap_bool.
            DATA(t155) = me->reg.
            DATA t156 TYPE REF TO zif_lnt_object.
            DATA(t157) = t120.
            t156 = t157.
            t154 = t155->is_dependency( i_obj_1ed0 = t156 ).
            t151 = t154.
          ENDIF.
          IF t151 = abap_true.
            CONTINUE.
          ENDIF.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t160) = me->edges.
          DATA(t161) = t1.
          t159 = t160->get( p0 = t161 ).
          t158 = t159.
          DATA(t162) = t100.
          t158->load( ).
          APPEND t162 TO t158->items.
          t158->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t164) = t2.
    t163 = t164->get_children( ).
    DATA t165 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t165.
    DATA t166 TYPE REF TO object.
    CLEAR t166.
    DATA(t167) = VALUE i( ).
    DO.
      t163->load( ).
      IF t167 >= lines( t163->items ).
        EXIT.
      ENDIF.
      CLEAR t166.
      READ TABLE t163->items INDEX t167 + 1 INTO t166.
      t167 = t167 + 1.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      CLEAR t165.
      IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t168 ?= t166.
        DATA t169 TYPE REF TO object.
        t169 = t168->as_ref( ).
        t165 ?= t169.
      ELSE.
        t165 ?= t166.
      ENDIF.
      DATA(t170) = t1.
      DATA(t171) = t165.
      me->build_edges( i_from = t170 i_node = t171 ).
    ENDDO.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cyclic_oo_conf( me->gt_cn_in_sr_rls_cyc_o_ts_cyc_o( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cyclic_oo_conf( me->gt_cn_in_sr_rls_cyc_o_ts_cyc_o( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cyclic_oo_conf.
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
        t2 = NEW zcl_lnt_cyclic_oo_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_cyc_o_ts_cyc_o( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1469_f021bc5eb53b.
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
