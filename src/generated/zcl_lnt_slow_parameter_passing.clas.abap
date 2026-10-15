* TS: src/rules/slow_parameter_passing.ts:18:1 SlowParameterPassing
CLASS zcl_lnt_slow_parameter_passing DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_slw_prmtr_pssng_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps RETURNING VALUE(result) TYPE REF TO zcl_lnt_slw_prmtr_pssng_cnf.
    METHODS s_c_i_s_r_sl_pr_ps_ts_sl_pr_ps IMPORTING i_conf TYPE REF TO zcl_lnt_slw_prmtr_pssng_cnf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_write_positions IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_id TYPE REF TO zcl_lnt_typed_identifier RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_method_nodes IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_slow_parameter_passing IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_slw_prmtr_pssng_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |slow_parameter_passing|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Slow Parameter Passing|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Detects slow pass by value passing for methods where paramet|.
    t7 = t7 && |er is not changed|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Method parameters defined in interfaces is not checked|.
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
      DATA(t21) = |Performance|.
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
      DATA(t29) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS bar IMPO|.
      t29 = t29 && |RTING VALUE(sdf) TYPE string.\nENDCLASS.\nCLASS lcl IMPLEMENTA|.
      t29 = t29 && |TION.\n  METHOD bar.\n    WRITE sdf.\n  ENDMETHOD.\nENDCLASS.|.
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
      DATA(t35) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS bar IMPO|.
      t35 = t35 && |RTING sdf TYPE string.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n |.
      t35 = t35 && | METHOD bar.\n    WRITE sdf.\n  ENDMETHOD.\nENDCLASS.|.
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

  METHOD g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_sl_pr_ps_ts_sl_pr_ps.
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
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_abap_object ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t9 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t10 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA t11 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t12 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t13) = me->reg.
    DATA t14 TYPE REF TO zcl_lnt_abap_object.
    DATA(t15) = t1.
    DATA t16 TYPE REF TO object.
    t16 = t15.
    t14 ?= t16.
    t12 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t13 i_object_19cd = t14 ).
    t11 = t12->run( ).
    t10 = t11->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t9 = t10->get_top( ).
    t8 = t9.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = t8.
    t18 = me->list_method_nodes( i_node = t19 ).
    t17 = t18.
    DATA(t20) = t17.
    DATA t21 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    DATA(t23) = VALUE i( ).
    DO.
      t20->load( ).
      IF t23 >= lines( t20->items ).
        EXIT.
      ENDIF.
      CLEAR t22.
      READ TABLE t20->items INDEX t23 + 1 INTO t22.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t21.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t22.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t21 ?= t25.
      ELSE.
        t21 ?= t22.
      ENDIF.
      DATA t26 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t27 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      DATA t28 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t29) = t21.
      t28 = t29->get_data( ).
      t27 = t28->vars.
      t26 = t27.
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE i( ).
      DATA t32 TYPE string.
      DATA t33 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA(t34) = t21.
      t33 = t34->get_identifier( ).
      t32 = t33->sname.
      DATA(t35) = |~|.
      DATA(t36) = strlen( t32 ).
      IF t35 IS INITIAL.
        t31 = 0.
      ELSE.
        FIND t35 IN t32 MATCH OFFSET t31.
        IF sy-subrc <> 0.
          t31 = -1.
        ENDIF.
      ENDIF.
      DATA(t37) = 0.
      t30 = xsdbool( t31 >= t37 ).
      IF t30 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t39) = t26.
      t38 = t39->keys( ).
      DATA(t40) = VALUE string( ).
      t38->dense( ).
      DATA(t41) = VALUE i( ).
      DO.
        t38->load( ).
        IF t41 >= lines( t38->items ).
          EXIT.
        ENDIF.
        CLEAR t40.
        READ TABLE t38->items INDEX t41 + 1 INTO t40.
        IF t38->has( t41 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t41 = t41 + 1.
        DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t43 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t44) = t26.
        DATA(t45) = t40.
        t43 = t44->get( p0 = t45 ).
        t42 = t43.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t50 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t51 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t52) = t42.
        t51 = t52.
        t50 = t51.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t54) = t50.
        t53 = t54->meta.
        t49 = t53.
        DATA(t55) = |importing|.
        t48 = t49->includes( p0 = t55 ).
        DATA(t56) = abap_false.
        t47 = xsdbool( t48 = t56 ).
        t46 = t47.
        IF t47 = abap_false.
          DATA t57 TYPE abap_bool.
          DATA t58 TYPE abap_bool.
          DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t60 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t61 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t62) = t42.
          t61 = t62.
          t60 = t61.
          DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t64) = t60.
          t63 = t64->meta.
          t59 = t63.
          DATA(t65) = |pass_by_value|.
          t58 = t59->includes( p0 = t65 ).
          DATA(t66) = abap_false.
          t57 = xsdbool( t58 = t66 ).
          t46 = t57.
        ENDIF.
        IF t46 = abap_true.
          CONTINUE.
        ELSE.
          DATA t67 TYPE abap_bool.
          DATA t68 TYPE abap_bool.
          DATA(t69) = me->reg.
          DATA t70 TYPE string.
          DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t72 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t73) = t42.
          t72 = t73.
          t71 = t72.
          DATA t74 TYPE string.
          DATA(t75) = t71.
          t74 = t75->filename.
          t70 = t74.
          t68 = t69->is_file_dependency( i_filename = t70 ).
          DATA(t76) = abap_true.
          t67 = xsdbool( t68 = t76 ).
          IF t67 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t79) = t21.
        DATA t80 TYPE REF TO zcl_lnt_typed_identifier.
        DATA(t81) = t42.
        t80 = t81.
        t78 = me->list_write_positions( i_node = t79 i_id = t80 ).
        t77 = t78.
        DATA t82 TYPE abap_bool.
        DATA t83 TYPE i.
        DATA(t84) = t77.
        t84->load( ).
        t83 = lines( t84->items ).
        DATA(t85) = 0.
        t82 = xsdbool( t83 = t85 ).
        IF t82 = abap_true.
          DATA(t86) = VALUE string( ).
          DATA(t87) = VALUE string( ).
          DATA(t88) = VALUE string( ).
          DATA(t89) = |Parameter |.
          DATA(t90) = VALUE string( ).
          DATA t91 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t92 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t93) = t42.
          t92 = t93.
          t91 = t92.
          DATA(t94) = VALUE string( ).
          DATA t95 TYPE string.
          DATA t96 TYPE string.
          DATA t97 TYPE REF TO zcl_lnt_abstract_token.
          DATA t98 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t99) = t91.
          t98 = t99->token.
          t97 = t98.
          DATA t100 TYPE string.
          DATA(t101) = t97.
          t100 = t101->str.
          t96 = t100.
          t95 = t96.
          DATA(t102) = VALUE abap_bool( ).
          DATA(t103) = VALUE string( ).
          DATA(t104) = t95.
          DATA(t105) = 0.
          DATA(t106) = 1.
          DATA(t107) = strlen( t104 ).
          IF t105 < 0.
            t105 = t105 + t107.
            IF t105 < 0.
              t105 = 0.
            ENDIF.
          ENDIF.
          IF t105 > t107 OR t106 <= 0.
            CLEAR t103.
          ELSE.
            IF t106 > t107 - t105.
              t106 = t107 - t105.
            ENDIF.
            t103 = t104+t105(t106).
          ENDIF.
          DATA(t108) = |!|.
          t102 = xsdbool( t103 = t108 ).
          IF t102 = abap_true.
            DATA(t109) = VALUE string( ).
            DATA t110 TYPE string.
            DATA(t111) = t95.
            t110 = t111.
            DATA(t112) = VALUE string( ).
            DATA(t113) = t110.
            DATA(t114) = 1.
            DATA t115 TYPE i.
            DATA(t116) = t110.
            DATA(t117) = strlen( t116 ).
            t115 = t117.
            DATA(t118) = strlen( t113 ).
            IF t114 < 0.
              t114 = t114 + t118.
              IF t114 < 0.
                t114 = 0.
              ENDIF.
            ENDIF.
            IF t114 > t118 OR t115 <= 0.
              CLEAR t112.
            ELSE.
              IF t115 > t118 - t114.
                t115 = t118 - t114.
              ENDIF.
              t112 = t113+t114(t115).
            ENDIF.
            t109 = t112.
            t95 = t109.
          ENDIF.
          DATA(t119) = t95.
          t94 = t119.
          t90 = t94.
          DATA(t120) = strlen( t89 ).
          t88 = |{ t89 }{ t90 }|.
          DATA(t121) = | passed by VALUE but not changed|.
          DATA(t122) = strlen( t88 ).
          t87 = |{ t88 }{ t121 }|.
          t86 = t87.
          DATA t123 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t124.
          t123 = t124.
          DATA t125 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t125.
          DATA t126 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t126.
          DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t129 TYPE REF TO zcl_lnt_abap_object.
          DATA t130 TYPE REF TO zcl_lnt_abap_object.
          DATA(t131) = t1.
          DATA t132 TYPE REF TO object.
          t132 = t131.
          t130 ?= t132.
          t129 = t130.
          DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t134) = t129.
          t133 = t134->parsed.
          t128 = t133.
          t127 = t128.
          DATA t135 TYPE i.
          DATA t136 TYPE i.
          DATA(t137) = t127.
          t137->load( ).
          t136 = lines( t137->items ).
          t135 = t136.
          DATA t138 TYPE i.
          DATA(t139) = 0.
          t138 = t139.
          DATA t140 TYPE REF TO zcl_lnt_abap_file.
          DATA t141 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t141.
          t140 = t141.
          DO.
            DATA t142 TYPE abap_bool.
            DATA(t143) = t138.
            DATA(t144) = t135.
            t142 = xsdbool( t143 < t144 ).
            IF t142 = abap_false.
              EXIT.
            ENDIF.
            DATA t145 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t145.
            DATA t146 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t146.
            DATA t147 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t147.
            DATA(t148) = t127.
            DATA(t149) = t138.
            DATA t150 TYPE REF TO object.
            t150 = t148->get( p0 = t149 ).
            DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t151.
            CLEAR t147.
            IF t150 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t151 ?= t150.
              DATA t152 TYPE REF TO object.
              t152 = t151->as_ref( ).
              t147 ?= t152.
            ELSE.
              t147 ?= t150.
            ENDIF.
            t146 = t147.
            t145 = t146.
            DATA t153 TYPE abap_bool.
            DATA t154 TYPE string.
            DATA t155 TYPE REF TO zcl_lnt_abstract_file.
            DATA(t156) = t145.
            t155 = t156.
            DATA t157 TYPE string.
            DATA(t158) = t155.
            t157 = t158->filename.
            t154 = t157.
            DATA t159 TYPE string.
            DATA t160 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t161 TYPE REF TO zcl_lnt_typed_identifier.
            DATA(t162) = t42.
            t161 = t162.
            t160 = t161.
            DATA t163 TYPE string.
            DATA(t164) = t160.
            t163 = t164->filename.
            t159 = t163.
            t153 = xsdbool( t154 = t159 ).
            IF t153 = abap_true.
              DATA t165 TYPE REF TO zcl_lnt_abap_file.
              CLEAR t165.
              DATA(t166) = abap_true.
              IF t166 = abap_true.
                DATA(t167) = t145.
                t165 = t167.
              ELSE.
                DATA t168 TYPE REF TO zcl_lnt_abap_file.
                CLEAR t168.
                t165 = t168.
              ENDIF.
              t140 = t165.
              EXIT.
            ENDIF.
            DATA t169 TYPE i.
            DATA(t170) = t138.
            DATA(t171) = 1.
            t169 = t170 + t171.
            t138 = t169.
          ENDDO.
          DATA(t172) = t140.
          t126 = t172.
          t125 = t126.
          DATA t173 TYPE abap_bool.
          DATA(t174) = t125.
          t173 = xsdbool( t174 IS BOUND ).
          IF t173 = abap_true.
            DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t177 TYPE REF TO zcl_lnt_abap_file.
            DATA(t178) = t125.
            t177 = t178.
            DATA t179 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t179.
            t176 = t177->get_tokens( i_with_pragmas = t179 ).
            t175 = t176.
            DATA t180 TYPE i.
            DATA(t181) = 0.
            t180 = t181.
            DO.
              DATA t182 TYPE abap_bool.
              DATA(t183) = t180.
              DATA t184 TYPE i.
              DATA(t185) = t175.
              t185->load( ).
              t184 = lines( t185->items ).
              t182 = xsdbool( t183 < t184 ).
              IF t182 = abap_false.
                EXIT.
              ENDIF.
              DATA(t186) = VALUE abap_bool( ).
              DATA t187 TYPE REF TO zcl_lnt_position.
              CLEAR t187.
              DATA t188 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t188.
              DATA t189 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t189.
              DATA(t190) = t175.
              DATA(t191) = t180.
              t191 = t191 + 1.
              DATA t192 TYPE REF TO object.
              CLEAR t192.
              t190->load( ).
              CLEAR t192.
              READ TABLE t190->items INDEX t191 INTO t192.
              DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t193.
              CLEAR t189.
              IF t192 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t193 ?= t192.
                DATA t194 TYPE REF TO object.
                t194 = t193->as_ref( ).
                t189 ?= t194.
              ELSE.
                t189 ?= t192.
              ENDIF.
              t188 = t189.
              DATA t195 TYPE REF TO zcl_lnt_position.
              DATA(t196) = t188.
              t195 = t196->start.
              t187 = t195.
              DATA t197 TYPE REF TO zcl_lnt_position.
              DATA t198 TYPE REF TO zcl_lnt_abstract_token.
              DATA t199 TYPE REF TO zcl_lnt_abstract_token.
              DATA t200 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t201 TYPE REF TO zcl_lnt_typed_identifier.
              DATA(t202) = t42.
              t201 = t202.
              t200 = t201.
              DATA t203 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t204) = t200.
              t203 = t204->token.
              t199 = t203.
              t198 = t199.
              DATA t205 TYPE REF TO zcl_lnt_position.
              DATA(t206) = t198.
              t205 = t206->start.
              t197 = t205.
              t186 = t187->equals( i_p = t197 ).
              IF t186 = abap_true.
                DATA t207 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t207.
                DATA t208 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t208.
                DATA(t209) = t175.
                DATA t210 TYPE i.
                DATA(t211) = t180.
                DATA(t212) = 1.
                t210 = t211 - t212.
                t210 = t210 + 1.
                DATA t213 TYPE REF TO object.
                CLEAR t213.
                t209->load( ).
                CLEAR t213.
                READ TABLE t209->items INDEX t210 INTO t213.
                DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t214.
                CLEAR t208.
                IF t213 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t214 ?= t213.
                  DATA t215 TYPE REF TO object.
                  t215 = t214->as_ref( ).
                  t208 ?= t215.
                ELSE.
                  t208 ?= t213.
                ENDIF.
                t207 = t208.
                DATA t216 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t216.
                DATA t217 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t217.
                DATA(t218) = t175.
                DATA t219 TYPE i.
                DATA(t220) = t180.
                DATA(t221) = 2.
                t219 = t220 - t221.
                t219 = t219 + 1.
                DATA t222 TYPE REF TO object.
                CLEAR t222.
                t218->load( ).
                CLEAR t222.
                READ TABLE t218->items INDEX t219 INTO t222.
                DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t223.
                CLEAR t217.
                IF t222 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t223 ?= t222.
                  DATA t224 TYPE REF TO object.
                  t224 = t223->as_ref( ).
                  t217 ?= t224.
                ELSE.
                  t217 ?= t222.
                ENDIF.
                t216 = t217.
                DATA t225 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t225.
                DATA t226 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t226.
                DATA(t227) = t175.
                DATA t228 TYPE i.
                DATA(t229) = t180.
                DATA(t230) = 1.
                t228 = t229 + t230.
                t228 = t228 + 1.
                DATA t231 TYPE REF TO object.
                CLEAR t231.
                t227->load( ).
                CLEAR t231.
                READ TABLE t227->items INDEX t228 INTO t231.
                DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t232.
                CLEAR t226.
                IF t231 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t232 ?= t231.
                  DATA t233 TYPE REF TO object.
                  t233 = t232->as_ref( ).
                  t226 ?= t233.
                ELSE.
                  t226 ?= t231.
                ENDIF.
                t225 = t226.
                DATA(t234) = VALUE abap_bool( ).
                DATA(t235) = VALUE abap_bool( ).
                DATA(t236) = VALUE abap_bool( ).
                DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t237.
                DATA t238 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t239) = t207.
                t238 = t239.
                DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t240.
                DATA(t241) = VALUE abap_bool( ).
                DATA(t242) = t238.
                IF t242 IS INITIAL.
                  t241 = abap_true.
                ENDIF.
                IF t241 = abap_true.
                  DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t243.
                  t240 = t243.
                ELSE.
                  DATA t244 TYPE string.
                  DATA t245 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t246) = t238.
                  t245 = t246.
                  DATA t247 TYPE string.
                  DATA(t248) = t245.
                  t247 = t248->str.
                  t244 = t247.
                  DATA(t249) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t249->has = abap_true.
                  t249->value = t244.
                  t240 = t249.
                ENDIF.
                t237 = t240.
                DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t250.
                DATA(t251) = abap_true.
                IF t251 = abap_true.
                  DATA(t252) = |(|.
                  DATA(t253) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t253->has = abap_true.
                  t253->value = t252.
                  t250 = t253.
                ELSE.
                  DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t254.
                  t250 = t254.
                ENDIF.
                DATA(t255) = VALUE abap_bool( ).
                DATA(t256) = VALUE abap_bool( ).
                IF t237 IS BOUND.
                  t255 = t237->has.
                ENDIF.
                IF t250 IS BOUND.
                  t256 = t250->has.
                ENDIF.
                IF t255 = t256.
                  IF t255 = abap_false.
                    t236 = abap_true.
                  ELSEIF t237->value = t250->value.
                    t236 = abap_true.
                  ENDIF.
                ENDIF.
                t235 = t236.
                IF t236 = abap_true.
                  DATA(t257) = VALUE abap_bool( ).
                  DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t258.
                  DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t259.
                  DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t260.
                  DATA t261 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t262) = t216.
                  t261 = t262.
                  DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t263.
                  DATA(t264) = VALUE abap_bool( ).
                  DATA(t265) = t261.
                  IF t265 IS INITIAL.
                    t264 = abap_true.
                  ENDIF.
                  IF t264 = abap_true.
                    DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t266.
                    t263 = t266.
                  ELSE.
                    DATA t267 TYPE string.
                    DATA t268 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t269) = t261.
                    t268 = t269.
                    DATA t270 TYPE string.
                    DATA(t271) = t268.
                    t270 = t271->str.
                    t267 = t270.
                    DATA(t272) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t272->has = abap_true.
                    t272->value = t267.
                    t263 = t272.
                  ENDIF.
                  t260 = t263.
                  t259 = t260.
                  DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t273.
                  DATA(t274) = VALUE abap_bool( ).
                  DATA(t275) = t259.
                  IF t275 IS INITIAL.
                    t274 = abap_true.
                  ELSEIF t275->has = abap_false.
                    t274 = abap_true.
                  ENDIF.
                  IF t274 = abap_true.
                    DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t276.
                    t273 = t276.
                  ELSE.
                    DATA t277 TYPE string.
                    DATA t278 TYPE string.
                    DATA(t279) = t259.
                    t278 = t279->value.
                    DATA(t280) = strlen( t278 ).
                    t277 = t278.
                    IF t277 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                      TRANSLATE t277 TO UPPER CASE.
                    ELSE.
                      t277 = zlnt_runtime_uppe_91169605024d=>full( t277 ).
                    ENDIF.
                    DATA(t281) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t281->has = abap_true.
                    t281->value = t277.
                    t273 = t281.
                  ENDIF.
                  t258 = t273.
                  DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t282.
                  DATA(t283) = abap_true.
                  IF t283 = abap_true.
                    DATA(t284) = |VALUE|.
                    DATA(t285) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t285->has = abap_true.
                    t285->value = t284.
                    t282 = t285.
                  ELSE.
                    DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t286.
                    t282 = t286.
                  ENDIF.
                  DATA(t287) = VALUE abap_bool( ).
                  DATA(t288) = VALUE abap_bool( ).
                  IF t258 IS BOUND.
                    t287 = t258->has.
                  ENDIF.
                  IF t282 IS BOUND.
                    t288 = t282->has.
                  ENDIF.
                  IF t287 = t288.
                    IF t287 = abap_false.
                      t257 = abap_true.
                    ELSEIF t258->value = t282->value.
                      t257 = abap_true.
                    ENDIF.
                  ENDIF.
                  t235 = t257.
                ENDIF.
                t234 = t235.
                IF t235 = abap_true.
                  DATA(t289) = VALUE abap_bool( ).
                  DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t290.
                  DATA t291 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t292) = t225.
                  t291 = t292.
                  DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t293.
                  DATA(t294) = VALUE abap_bool( ).
                  DATA(t295) = t291.
                  IF t295 IS INITIAL.
                    t294 = abap_true.
                  ENDIF.
                  IF t294 = abap_true.
                    DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t296.
                    t293 = t296.
                  ELSE.
                    DATA t297 TYPE string.
                    DATA t298 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t299) = t291.
                    t298 = t299.
                    DATA t300 TYPE string.
                    DATA(t301) = t298.
                    t300 = t301->str.
                    t297 = t300.
                    DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t302->has = abap_true.
                    t302->value = t297.
                    t293 = t302.
                  ENDIF.
                  t290 = t293.
                  DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t303.
                  DATA(t304) = abap_true.
                  IF t304 = abap_true.
                    DATA(t305) = |)|.
                    DATA(t306) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t306->has = abap_true.
                    t306->value = t305.
                    t303 = t306.
                  ELSE.
                    DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t307.
                    t303 = t307.
                  ENDIF.
                  DATA(t308) = VALUE abap_bool( ).
                  DATA(t309) = VALUE abap_bool( ).
                  IF t290 IS BOUND.
                    t308 = t290->has.
                  ENDIF.
                  IF t303 IS BOUND.
                    t309 = t303->has.
                  ENDIF.
                  IF t308 = t309.
                    IF t308 = abap_false.
                      t289 = abap_true.
                    ELSEIF t290->value = t303->value.
                      t289 = abap_true.
                    ENDIF.
                  ENDIF.
                  t234 = t289.
                ENDIF.
                IF t234 = abap_true.
                  DATA t310 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t310.
                  DATA(t311) = abap_true.
                  IF t311 = abap_true.
                    DATA t312 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    DATA t313 TYPE REF TO zcl_lnt_abap_file.
                    DATA(t314) = t125.
                    t313 = t314.
                    DATA t315 TYPE REF TO zcl_lnt_position.
                    DATA t316 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t317) = t216.
                    t316 = t317.
                    DATA t318 TYPE REF TO zcl_lnt_position.
                    DATA(t319) = t316.
                    t318 = t319->start.
                    t315 = t318.
                    DATA t320 TYPE REF TO zcl_lnt_position.
                    DATA t321 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t322) = t225.
                    t321 = t322.
                    DATA t323 TYPE REF TO zcl_lnt_position.
                    DATA t324 TYPE f.
                    DATA t325 TYPE REF TO zcl_lnt_position.
                    DATA t326 TYPE REF TO zcl_lnt_position.
                    DATA(t327) = t321.
                    t326 = t327->start.
                    t325 = t326.
                    DATA t328 TYPE f.
                    DATA(t329) = t325.
                    t328 = t329->row.
                    t324 = t328.
                    DATA t330 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    DATA t331 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    DATA t332 TYPE REF TO zcl_lnt_position.
                    DATA t333 TYPE REF TO zcl_lnt_position.
                    DATA(t334) = t321.
                    t333 = t334->start.
                    t332 = t333.
                    DATA t335 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                    DATA(t336) = t332.
                    t335 = t336->col.
                    t331 = t335.
                    DATA t337 TYPE f.
                    DATA t338 TYPE i.
                    DATA t339 TYPE string.
                    DATA(t340) = t321.
                    t339 = t340->str.
                    DATA(t341) = strlen( t339 ).
                    t338 = t341.
                    t337 = t338.
                    DATA(t342) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                    t342->has = abap_true.
                    t342->value = t337.
                    t330 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t331 right = t342 op = `+` ).
                    t323 = NEW zcl_lnt_position( i_row = t324 i_col = t330 ).
                    t320 = t323.
                    DATA t343 TYPE string.
                    DATA t344 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t345 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t346 TYPE REF TO zcl_lnt_fi_identifier.
                    DATA t347 TYPE REF TO zcl_lnt_typed_identifier.
                    DATA(t348) = t42.
                    t347 = t348.
                    t346 = t347.
                    DATA t349 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t350) = t346.
                    t349 = t350->token.
                    t345 = t349.
                    t344 = t345.
                    DATA t351 TYPE string.
                    DATA(t352) = t344.
                    t351 = t352->str.
                    t343 = t351.
                    t312 = zcl_lnt_edit_helper=>replace_range( i_file = t313 i_start = t315 i_end = t320 i_text = t343 ).
                    t310 = t312.
                  ELSE.
                    DATA t353 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t353.
                    t310 = t353.
                  ENDIF.
                  t123 = t310.
                ENDIF.
                EXIT.
              ENDIF.
              DATA t354 TYPE i.
              DATA(t355) = t180.
              DATA(t356) = 1.
              t354 = t355 + t356.
              t180 = t354.
            ENDDO.
          ENDIF.
          DATA(t357) = t2.
          DATA t358 TYPE REF TO zcl_lnt_issue.
          CLEAR t358.
          DATA t359 TYPE REF TO zcl_lnt_typed_identifier.
          DATA(t360) = t42.
          t359 = t360.
          DATA(t361) = t86.
          DATA(t362) = VALUE string( ).
          DATA t363 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t363.
          DATA t364 TYPE string.
          DATA(t365) = |slow_parameter_passing|.
          t364 = t365.
          DATA t366 TYPE string.
          DATA(t367) = |Slow Parameter Passing|.
          t366 = t367.
          DATA t368 TYPE string.
          DATA(t369) = |Detects slow pass by value passing for methods where paramet|.
          t369 = t369 && |er is not changed|.
          t368 = t369.
          DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t370.
          DATA t371 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t371.
          DATA(t372) = abap_true.
          IF t372 = abap_true.
            DATA(t373) = |Method parameters defined in interfaces is not checked|.
            DATA(t374) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t374->has = abap_true.
            t374->value = t373.
            t371 = t374.
          ELSE.
            DATA t375 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t375.
            t371 = t375.
          ENDIF.
          t370 = t371.
          DATA t376 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t376.
          DATA t377 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t377.
          DATA(t378) = abap_true.
          IF t378 = abap_true.
            DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t380 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t381 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t381.
            t380 = t381.
            DATA(t382) = t380.
            DATA(t383) = |Performance|.
            t382->load( ).
            APPEND t383 TO t382->items.
            t382->save( ).
            DATA(t384) = t380.
            DATA(t385) = |Quickfix|.
            t384->load( ).
            APPEND t385 TO t384->items.
            t384->save( ).
            DATA(t386) = t380.
            t379 = t386.
            t377 = t379.
          ELSE.
            DATA t387 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t387.
            t377 = t387.
          ENDIF.
          t376 = t377.
          DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t388.
          DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t389.
          DATA(t390) = abap_true.
          IF t390 = abap_true.
            DATA(t391) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS bar IMPO|.
            t391 = t391 && |RTING VALUE(sdf) TYPE string.\nENDCLASS.\nCLASS lcl IMPLEMENTA|.
            t391 = t391 && |TION.\n  METHOD bar.\n    WRITE sdf.\n  ENDMETHOD.\nENDCLASS.|.
            DATA(t392) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t392->has = abap_true.
            t392->value = t391.
            t389 = t392.
          ELSE.
            DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t393.
            t389 = t393.
          ENDIF.
          t388 = t389.
          DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t394.
          DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t395.
          DATA(t396) = abap_true.
          IF t396 = abap_true.
            DATA(t397) = |CLASS lcl DEFINITION.\n  PUBLIC SECTION.\n    METHODS bar IMPO|.
            t397 = t397 && |RTING sdf TYPE string.\nENDCLASS.\nCLASS lcl IMPLEMENTATION.\n |.
            t397 = t397 && | METHOD bar.\n    WRITE sdf.\n  ENDMETHOD.\nENDCLASS.|.
            DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t398->has = abap_true.
            t398->value = t397.
            t395 = t398.
          ELSE.
            DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t399.
            t395 = t399.
          ENDIF.
          t394 = t395.
          DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t401.
          t400 = t401.
          DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t403.
          t402 = t403.
          t363 = NEW zcl_lnt_irule_metadata( i_key = t364 i_title = t366 i_short_description = t368 i_bad_example = t388 i_good_example = t394 i_extended_information = t370 i_tags = t376 i_pragma = t400 i_pseudo_comment = t402 ).
          CREATE OBJECT t363->zlnt_view_ownkeys_b0e8086400eb.
          t363->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t404.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t404 ).
          ENDIF.
          DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t405.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t405 ).
          ENDIF.
          DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t406.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t406 ).
          ENDIF.
          DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t407.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t407 ).
          ENDIF.
          DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t408.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t408 ).
          ENDIF.
          DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t409.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t409 ).
          ENDIF.
          DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t410.
          IF t363->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t363->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t410 ).
          ENDIF.
          CREATE OBJECT t363->zlnt_json_ownkeys_70e5fd461788.
          t363->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t411) = |key|.
          DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t412.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t411 p1 = t412 ).
          ENDIF.
          DATA(t413) = |title|.
          DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t414.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t413 p1 = t414 ).
          ENDIF.
          DATA(t415) = |shortDescription|.
          DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t416.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t415 p1 = t416 ).
          ENDIF.
          DATA(t417) = |extendedInformation|.
          DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t418.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t417 p1 = t418 ).
          ENDIF.
          DATA(t419) = |tags|.
          DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t420.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
          ENDIF.
          DATA(t421) = |badExample|.
          DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t422.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
          ENDIF.
          DATA(t423) = |goodExample|.
          DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t424.
          IF t363->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t363->zlnt_json_ownkeys_70e5fd461788->put( p0 = t423 p1 = t424 ).
          ENDIF.
          t362 = t363->key.
          DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t426) = CAST zcl_lnt_slw_prmtr_pssng_cnf( me->g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps( ) ).
          t425 = t426->zlnt_view_read_sr_15c06369f827( ).
          DATA(t427) = t123.
          t358 = zcl_lnt_issue=>at_identifier( i_identifier = t359 i_message_26cb = t361 i_key = t362 i_severity = t425 i_fix = t427 ).
          t357->load( ).
          APPEND t358 TO t357->items.
          t357->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t428) = t2.
    result = t428.

  ENDMETHOD.

  METHOD list_write_positions.
    DATA(t1) = i_node.
    DATA(t2) = i_id.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t7) = t1.
    t6 = t7->get_data( ).
    t5 = t6->references.
    DATA t8 TYPE REF TO zcl_lnt_ireference.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE string.
      DATA(t17) = t8.
      t16 = t17->reference_type.
      DATA(t18) = |Write To|.
      t15 = xsdbool( t16 = t18 ).
      t14 = t15.
      IF t15 = abap_true.
        DATA(t19) = VALUE abap_bool( ).
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t23) = t8.
        t22 = t23->resolved.
        t21 = t22.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        DATA(t25) = VALUE abap_bool( ).
        DATA(t26) = t21.
        IF t26 IS INITIAL.
          t25 = abap_true.
        ENDIF.
        IF t25 = abap_true.
          DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t27.
          t24 = t27.
        ELSE.
          DATA t28 TYPE string.
          DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t30 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t31) = t21.
          t30 = t31.
          t29 = t30.
          DATA t32 TYPE string.
          DATA(t33) = t29.
          t32 = t33->filename.
          t28 = t32.
          DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t34->has = abap_true.
          t34->value = t28.
          t24 = t34.
        ENDIF.
        t20 = t24.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t35.
        DATA(t36) = abap_true.
        IF t36 = abap_true.
          DATA t37 TYPE string.
          DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t39) = t2.
          t38 = t39.
          DATA t40 TYPE string.
          DATA(t41) = t38.
          t40 = t41->filename.
          t37 = t40.
          DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t42->has = abap_true.
          t42->value = t37.
          t35 = t42.
        ELSE.
          DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t43.
          t35 = t43.
        ENDIF.
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = VALUE abap_bool( ).
        IF t20 IS BOUND.
          t44 = t20->has.
        ENDIF.
        IF t35 IS BOUND.
          t45 = t35->has.
        ENDIF.
        IF t44 = t45.
          IF t44 = abap_false.
            t19 = abap_true.
          ELSEIF t20->value = t35->value.
            t19 = abap_true.
          ENDIF.
        ENDIF.
        t14 = t19.
      ENDIF.
      t13 = t14.
      IF t14 = abap_true.
        DATA(t46) = VALUE abap_bool( ).
        DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_position.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_position.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t51 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t53) = t8.
        t52 = t53->resolved.
        t51 = t52.
        t50 = t51.
        DATA t54 TYPE REF TO zcl_lnt_position.
        CLEAR t54.
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = t50.
        IF t56 IS INITIAL.
          t55 = abap_true.
        ENDIF.
        IF t55 = abap_true.
          DATA t57 TYPE REF TO zcl_lnt_position.
          CLEAR t57.
          t54 = t57.
        ELSE.
          DATA t58 TYPE REF TO zcl_lnt_position.
          DATA t59 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t60) = t50.
          t59 = t60.
          DATA t61 TYPE REF TO zcl_lnt_position.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t64) = t59.
          t63 = t64->token.
          t62 = t63.
          DATA t65 TYPE REF TO zcl_lnt_position.
          DATA(t66) = t62.
          t65 = t66->start.
          t61 = t65.
          t58 = t61.
          t54 = t58.
        ENDIF.
        t49 = t54.
        t48 = t49.
        DATA t67 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t67.
        DATA(t68) = VALUE abap_bool( ).
        DATA(t69) = t48.
        IF t69 IS INITIAL.
          t68 = abap_true.
        ENDIF.
        IF t68 = abap_true.
          DATA t70 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t70.
          t67 = t70.
        ELSE.
          DATA t71 TYPE abap_bool.
          DATA t72 TYPE REF TO zcl_lnt_position.
          DATA(t73) = t48.
          t72 = t73.
          DATA t74 TYPE REF TO zcl_lnt_position.
          DATA t75 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t76) = t2.
          t75 = t76.
          DATA t77 TYPE REF TO zcl_lnt_position.
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          DATA t79 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t80) = t75.
          t79 = t80->token.
          t78 = t79.
          DATA t81 TYPE REF TO zcl_lnt_position.
          DATA(t82) = t78.
          t81 = t82->start.
          t77 = t81.
          t74 = t77.
          t71 = t72->equals( i_p = t74 ).
          DATA(t83) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t83->has = abap_true.
          t83->value = t71.
          t67 = t83.
        ENDIF.
        t47 = t67.
        IF t47 IS BOUND.
          IF t47->has = abap_true.
            t46 = xsdbool( t47->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t13 = t46.
      ENDIF.
      IF t13 = abap_true.
        DATA(t84) = t3.
        DATA t85 TYPE REF TO zcl_lnt_position.
        DATA t86 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t88) = t8.
        t87 = t88->position_7b94.
        t86 = t87.
        DATA t89 TYPE REF TO zcl_lnt_position.
        DATA t90 TYPE REF TO zcl_lnt_abstract_token.
        DATA t91 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t92) = t86.
        t91 = t92->token.
        t90 = t91.
        DATA t93 TYPE REF TO zcl_lnt_position.
        DATA(t94) = t90.
        t93 = t94->start.
        t89 = t93.
        t85 = t89.
        t84->load( ).
        APPEND t85 TO t84->items.
        t84->save( ).
      ENDIF.
    ENDDO.
    DATA(t95) = t3.
    result = t95.

  ENDMETHOD.

  METHOD list_method_nodes.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE string.
    DATA t6 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t7) = t1.
    t6 = t7->get_identifier( ).
    t5 = t6->stype.
    DATA(t8) = |method|.
    t4 = xsdbool( t5 = t8 ).
    IF t4 = abap_true.
      DATA(t9) = t2.
      DATA(t10) = t1.
      t9->load( ).
      APPEND t10 TO t9->items.
      t9->save( ).
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t12) = t1.
      t11 = t12->get_children( ).
      DATA t13 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      DATA(t15) = VALUE i( ).
      DO.
        t11->load( ).
        IF t15 >= lines( t11->items ).
          EXIT.
        ENDIF.
        CLEAR t14.
        READ TABLE t11->items INDEX t15 + 1 INTO t14.
        t15 = t15 + 1.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t16.
        CLEAR t13.
        IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t16 ?= t14.
          DATA t17 TYPE REF TO object.
          t17 = t16->as_ref( ).
          t13 ?= t17.
        ELSE.
          t13 ?= t14.
        ENDIF.
        DATA(t18) = VALUE i( ).
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t20) = t13.
        t19 = me->list_method_nodes( i_node = t20 ).
        DATA t21 TYPE REF TO zif_lnt_spaghetti_scope_node.
        CLEAR t21.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        DATA(t23) = VALUE i( ).
        DO.
          t19->load( ).
          IF t23 >= lines( t19->items ).
            EXIT.
          ENDIF.
          CLEAR t22.
          READ TABLE t19->items INDEX t23 + 1 INTO t22.
          t23 = t23 + 1.
          DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t24.
          CLEAR t21.
          IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t24 ?= t22.
            DATA t25 TYPE REF TO object.
            t25 = t24->as_ref( ).
            t21 ?= t25.
          ELSE.
            t21 ?= t22.
          ENDIF.
          DATA(t26) = t2.
          DATA(t27) = t21.
          t26->load( ).
          APPEND t27 TO t26->items.
          t26->save( ).
        ENDDO.
        DATA t28 TYPE i.
        DATA(t29) = t2.
        t29->load( ).
        t28 = lines( t29->items ).
        t18 = t28.
      ENDDO.
    ENDIF.
    DATA(t30) = t2.
    result = t30.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_slw_prmtr_pssng_cnf( me->g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_slw_prmtr_pssng_cnf( me->g_c_i_s_r_sl_pr_ps_ts_sl_pr_ps( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_slw_prmtr_pssng_cnf.
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
        t2 = NEW zcl_lnt_slw_prmtr_pssng_cnf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sl_pr_ps_ts_sl_pr_ps( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1702_9116f8a9a808.
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
