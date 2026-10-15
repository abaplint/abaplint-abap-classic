* TS: src/rules/intf_referencing_clas.ts:19:1 IntfReferencingClas
CLASS zcl_lnt_intf_referencing_clas DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_in_rf_cl_ts_in_rf_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    METHODS s_c_i_s_r_in_rf_cl_ts_in_rf_cl IMPORTING i_conf TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_intf_referencing_clas IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_intf_rfrncng_cls_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |intf_referencing_clas|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |INTF referencing CLAS|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Interface contains references to class|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Only global interfaces are checked.\n      Only first level r|.
      t11 = t11 && |eferences are checked.\n      Exception class references are |.
      t11 = t11 && |ignored.\n      Void references are ignored.|.
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

  METHOD g_c_i_s_r_in_rf_cl_ts_in_rf_cl.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = me->conf.
    t3 = t4->zlnt_view_read_sr_a9eb3807f218( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t2.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t1 = t7.
    IF t1 = abap_true.
      DATA(t9) = me->conf.
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t10.
      t9->zlnt_view_write_s_2213d8b7ea7f( p0 = t10 ).
    ENDIF.
    DATA(t11) = me->conf.
    result = t11.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_rf_cl_ts_in_rf_cl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_ob_interface ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t8 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t9 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t10 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t11) = me->reg.
    DATA t12 TYPE REF TO zcl_lnt_ob_interface.
    DATA(t13) = t1.
    DATA t14 TYPE REF TO object.
    t14 = t13.
    t12 ?= t14.
    t10 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t11 i_object_19cd = t12 ).
    t9 = t10->run( ).
    t8 = t9->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t7 = t8->get_top( ).
    t6 = me->traverse( i_node = t7 ).
    result = t6.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Referencing CLAS: |.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    DATA t7 TYPE REF TO zcl_lnt_ddic.
    DATA(t8) = me->reg.
    t7 = NEW zcl_lnt_ddic( i_reg_f149 = t8 ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t11) = t1.
    t10 = t11->get_data( ).
    t9 = t10->references.
    DATA t12 TYPE REF TO zcl_lnt_ireference.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t9->load( ).
      IF t14 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t9->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE string.
      DATA(t21) = t12.
      t20 = t21->reference_type.
      DATA(t22) = |Object|.
      t19 = xsdbool( t20 = t22 ).
      t18 = t19.
      IF t19 = abap_true.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA t25 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t26 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t27) = t12.
        t26 = t27->extra.
        t25 = t26.
        DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t28.
        DATA(t29) = VALUE abap_bool( ).
        DATA(t30) = t25.
        IF t30 IS INITIAL.
          t29 = abap_true.
        ENDIF.
        IF t29 = abap_true.
          DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t31.
          t28 = t31.
        ELSE.
          DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t33 TYPE REF TO zcl_lnt_ireference_extras.
          DATA(t34) = t25.
          t33 = t34.
          t32 = t33->oo_type.
          t28 = t32.
        ENDIF.
        t24 = t28.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        DATA(t36) = abap_true.
        IF t36 = abap_true.
          DATA(t37) = |CLAS|.
          DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t38->has = abap_true.
          t38->value = t37.
          t35 = t38.
        ELSE.
          DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t39.
          t35 = t39.
        ENDIF.
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = VALUE abap_bool( ).
        IF t24 IS BOUND.
          t40 = t24->has.
        ENDIF.
        IF t35 IS BOUND.
          t41 = t35->has.
        ENDIF.
        IF t40 = t41.
          IF t40 = abap_false.
            t23 = abap_true.
          ELSEIF t24->value = t35->value.
            t23 = abap_true.
          ENDIF.
        ENDIF.
        t18 = t23.
      ENDIF.
      t17 = t18.
      IF t18 = abap_true.
        DATA(t42) = VALUE abap_bool( ).
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t46 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t47 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t48) = t12.
        t47 = t48->extra.
        t46 = t47.
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
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t54) = t45.
          t53 = t54->oo_name.
          t49 = t53.
        ENDIF.
        t44 = t49.
        t43 = t44.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        t55 = t56.
        DATA(t57) = VALUE abap_bool( ).
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t43.
        IF t59 IS INITIAL.
          t58 = abap_true.
        ELSEIF t59->has = abap_false.
          t58 = abap_true.
        ENDIF.
        t57 = xsdbool( t58 = abap_false ).
        t42 = t57.
        t17 = t42.
      ENDIF.
      IF t17 = abap_true.
        DATA t60 TYPE REF TO zcl_lnt_class.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_class.
        CLEAR t61.
        DATA t62 TYPE REF TO zcl_lnt_class.
        CLEAR t62.
        DATA t63 TYPE REF TO zcl_lnt_class.
        CLEAR t63.
        DATA t64 TYPE REF TO zif_lnt_object.
        CLEAR t64.
        DATA(t65) = me->reg.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        DATA(t67) = abap_true.
        IF t67 = abap_true.
          DATA(t68) = |CLAS|.
          DATA(t69) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t69->has = abap_true.
          t69->value = t68.
          t66 = t69.
        ELSE.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          t66 = t70.
        ENDIF.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        DATA(t72) = abap_true.
        IF t72 = abap_true.
          DATA t73 TYPE string.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t75 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t76 TYPE REF TO zcl_lnt_ireference_extras.
          DATA(t77) = t12.
          t76 = t77->extra.
          t75 = t76.
          t74 = t75->oo_name.
          t73 = t74->value.
          DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t78->has = abap_true.
          t78->value = t73.
          t71 = t78.
        ELSE.
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          t71 = t79.
        ENDIF.
        t64 = t65->get_object( i_type_9913 = t66 i_name = t71 ).
        t63 ?= t64.
        t62 = t63.
        DATA t80 TYPE REF TO zcl_lnt_class.
        CLEAR t80.
        DATA t81 TYPE abap_bool.
        DATA(t82) = t62.
        t81 = xsdbool( t82 IS BOUND ).
        IF t81 = abap_true.
          DATA(t83) = t62.
          t80 = t83.
        ELSE.
          DATA t84 TYPE REF TO zcl_lnt_class.
          DATA t85 TYPE REF TO zcl_lnt_class.
          CLEAR t85.
          t84 = t85.
          t80 = t84.
        ENDIF.
        t61 = t80.
        t60 = t61.
        DATA t86 TYPE abap_bool.
        DATA t87 TYPE abap_bool.
        DATA(t88) = t60.
        t87 = xsdbool( t88 IS BOUND ).
        t86 = t87.
        IF t87 = abap_true.
          DATA(t89) = VALUE abap_bool( ).
          DATA(t90) = t6.
          DATA t91 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t91.
          DATA t92 TYPE REF TO zcl_lnt_class.
          DATA(t93) = t60.
          t92 = t93.
          DATA t94 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t94.
          DATA t95 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t95.
          DATA t96 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t96.
          DATA t97 TYPE REF TO zcl_lnt_abap_file.
          DATA t98 TYPE REF TO zcl_lnt_abap_file.
          DATA(t99) = t92.
          t98 = t99->get_main_abap_file( ).
          t97 = t98.
          DATA t100 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t100.
          DATA(t101) = VALUE abap_bool( ).
          DATA(t102) = t97.
          IF t102 IS INITIAL.
            t101 = abap_true.
          ENDIF.
          IF t101 = abap_true.
            DATA t103 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t103.
            t100 = t103.
          ELSE.
            DATA t104 TYPE REF TO zif_lnt_abap_file_information.
            DATA t105 TYPE REF TO zcl_lnt_abap_file.
            DATA t106 TYPE REF TO zcl_lnt_abap_file.
            DATA(t107) = t97.
            t106 = t107.
            t105 = t106.
            DATA t108 TYPE REF TO zif_lnt_abap_file_information.
            DATA(t109) = t105.
            t108 = t109->info.
            t104 = t108.
            t100 = t104.
          ENDIF.
          t96 = t100.
          t95 = t96.
          DATA t110 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t110.
          DATA(t111) = VALUE abap_bool( ).
          DATA(t112) = t95.
          IF t112 IS INITIAL.
            t111 = abap_true.
          ENDIF.
          IF t111 = abap_true.
            DATA t113 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t113.
            t110 = t113.
          ELSE.
            DATA t114 TYPE REF TO zcl_lnt_info_class_definition.
            DATA t115 TYPE REF TO zif_lnt_abap_file_information.
            DATA(t116) = t95.
            t115 = t116.
            DATA t117 TYPE string.
            DATA t118 TYPE REF TO zcl_lnt_abstract_object.
            DATA(t119) = t92.
            t118 = t119.
            DATA t120 TYPE string.
            DATA(t121) = t118.
            t120 = t121->name.
            t117 = t120.
            t114 = t115->get_class_definition_by_name( i_name = t117 ).
            t110 = t114.
          ENDIF.
          t94 = t110.
          t91 = t94.
          DATA(t122) = t60.
          t89 = t90->is_exception( i_def = t91 i_obj_ac26 = t122 ).
          t86 = t89.
        ENDIF.
        IF t86 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t123) = VALUE abap_bool( ).
          DATA t124 TYPE abap_bool.
          DATA(t125) = abap_false.
          t124 = t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t127) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->g_c_i_s_r_in_rf_cl_ts_in_rf_cl( ) ).
          t126 = t127->zlnt_view_read_sr_a9eb3807f218( ).
          DATA(t128) = VALUE string( ).
          t126->dense( ).
          DATA(t129) = VALUE i( ).
          DO.
            t126->load( ).
            IF t129 >= lines( t126->items ).
              EXIT.
            ENDIF.
            CLEAR t128.
            READ TABLE t126->items INDEX t129 + 1 INTO t128.
            IF t126->has( t129 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t129 = t129 + 1.
            DATA t130 TYPE abap_bool.
            DATA t131 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t131.
            DATA(t132) = t128.
            DATA(t133) = |i|.
            CREATE OBJECT t131 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t132 flags = t133.
            DATA t134 TYPE string.
            DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t136 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t137 TYPE REF TO zcl_lnt_ireference_extras.
            DATA(t138) = t12.
            t137 = t138->extra.
            t136 = t137.
            t135 = t136->oo_name.
            t134 = t135->value.
            t130 = t131->test( p0 = t134 ).
            IF t130 = abap_true.
              DATA(t139) = abap_true.
              t124 = t139.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t140) = t124.
          t123 = t140.
          IF t123 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA(t141) = t2.
        DATA t142 TYPE REF TO zcl_lnt_issue.
        CLEAR t142.
        DATA t143 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t144) = t12.
        t143 = t144->position_7b94.
        DATA t145 TYPE string.
        DATA(t146) = t4.
        DATA t147 TYPE string.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t149 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t150 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t151) = t12.
        t150 = t151->extra.
        t149 = t150.
        t148 = t149->oo_name.
        t147 = t148->value.
        DATA(t152) = strlen( t146 ).
        t145 = |{ t146 }{ t147 }|.
        DATA(t153) = VALUE string( ).
        DATA t154 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t154.
        DATA t155 TYPE string.
        DATA(t156) = |intf_referencing_clas|.
        t155 = t156.
        DATA t157 TYPE string.
        DATA(t158) = |INTF referencing CLAS|.
        t157 = t158.
        DATA t159 TYPE string.
        DATA(t160) = |Interface contains references to class|.
        t159 = t160.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t162.
        DATA(t163) = abap_true.
        IF t163 = abap_true.
          DATA(t164) = |Only global interfaces are checked.\n      Only first level r|.
          t164 = t164 && |eferences are checked.\n      Exception class references are |.
          t164 = t164 && |ignored.\n      Void references are ignored.|.
          DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t165->has = abap_true.
          t165->value = t164.
          t162 = t165.
        ELSE.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t166.
          t162 = t166.
        ENDIF.
        t161 = t162.
        DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        t167 = t168.
        DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t170.
        t169 = t170.
        DATA t171 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t172 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t172.
        t171 = t172.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t174.
        t173 = t174.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        t175 = t176.
        t154 = NEW zcl_lnt_irule_metadata( i_key = t155 i_title = t157 i_short_description = t159 i_bad_example = t167 i_good_example = t169 i_extended_information = t161 i_tags = t171 i_pragma = t173 i_pseudo_comment = t175 ).
        CREATE OBJECT t154->zlnt_view_ownkeys_b0e8086400eb.
        t154->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t177 ).
        ENDIF.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t178 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t179 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t154->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t154->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t180 ).
        ENDIF.
        CREATE OBJECT t154->zlnt_json_ownkeys_70e5fd461788.
        t154->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t181) = |key|.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
        ENDIF.
        DATA(t183) = |title|.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
        ENDIF.
        DATA(t185) = |shortDescription|.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
        ENDIF.
        DATA(t187) = |extendedInformation|.
        DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t188.
        IF t154->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t154->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
        ENDIF.
        t153 = t154->key.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t190) = me->conf.
        t189 = t190->zlnt_view_read_sr_15c06369f827( ).
        DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t191.
        t142 = zcl_lnt_issue=>at_identifier( i_identifier = t143 i_message_26cb = t145 i_key = t153 i_severity = t189 i_fix = t191 ).
        t141->load( ).
        APPEND t142 TO t141->items.
        t141->save( ).
      ENDIF.
    ENDDO.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t193) = t1.
    t192 = t193->get_children( ).
    DATA t194 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t194.
    DATA t195 TYPE REF TO object.
    CLEAR t195.
    DATA(t196) = VALUE i( ).
    DO.
      t192->load( ).
      IF t196 >= lines( t192->items ).
        EXIT.
      ENDIF.
      CLEAR t195.
      READ TABLE t192->items INDEX t196 + 1 INTO t195.
      t196 = t196 + 1.
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t197.
      CLEAR t194.
      IF t195 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t197 ?= t195.
        DATA t198 TYPE REF TO object.
        t198 = t197->as_ref( ).
        t194 ?= t198.
      ELSE.
        t194 ?= t195.
      ENDIF.
      DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t200) = t2.
      DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t202) = t194.
      t201 = me->traverse( i_node = t202 ).
      t199 = t200->concat( p0 = t201 ).
      t2 = t199.
    ENDDO.
    DATA(t203) = t2.
    result = t203.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->g_c_i_s_r_in_rf_cl_ts_in_rf_cl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_intf_rfrncng_cls_cnf( me->g_c_i_s_r_in_rf_cl_ts_in_rf_cl( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_intf_rfrncng_cls_cnf.
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
        t2 = NEW zcl_lnt_intf_rfrncng_cls_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_in_rf_cl_ts_in_rf_cl( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1550_2a6d0e0be8d6.
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
