* TS: src/rules/reduce_procedural_code.ts:13:1 ReduceProceduralCode
CLASS zcl_lnt_reduce_procedural_code DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd RETURNING VALUE(result) TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
    METHODS s_c_i_s_r_rd_pr_cd_ts_rd_pr_cd IMPORTING i_conf TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
    METHODS r_p_i_s_r_rd_pr_cd_ts_rd_pr_cd IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_reduce_procedural_code IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_rdc_prcdrl_cd_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |reduce_procedural_code|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Reduce procedural code|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks FORM and FUNCTION-MODULE have few statements|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Delegate logic to a class method instead of using FORM or FU|.
      t11 = t11 && |NCTION-MODULE.\n\nhttps://github.com/SAP/styleguides/blob/main|.
      t11 = t11 && |/clean-abap/CleanABAP.md#prefer-object-orientation-to-proced|.
      t11 = t11 && |ural-programming\n\nComments are not counted as statements.|.
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
      DATA(t29) = |FORM foo.\n  DATA lv_bar TYPE i.\n  lv_bar = 2 + 2.\n  IF lv_ba|.
      t29 = t29 && |r = 4.\n    WRITE 'hello world'.\n  ENDIF.\n  DATA lv_bar TYPE |.
      t29 = t29 && |i.\n  lv_bar = 2 + 2.\n  IF lv_bar = 4.\n    WRITE 'hello world|.
      t29 = t29 && |'.\n  ENDIF.\nENDFORM.|.
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
      DATA(t35) = |FORM foo.\n  NEW zcl_global_class( )->run_logic( ).\nENDFORM.|.
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

  METHOD g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_rd_pr_cd_ts_rd_pr_cd.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_rd_pr_cd_ts_rd_pr_cd.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    DATA(t10) = t7.
    t9 = t10->structure.
    t6 = t9.
    t5 = t6.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t5.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t4 = t13.
    IF t4 = abap_true.
      DATA(t15) = t2.
      result = t15.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE f.
    DATA(t19) = CONV f( 0 ).
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zcl_lnt_abap_file.
    DATA(t22) = t1.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = t21.
    t23 = t24->statements.
    t20 = t23.
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    DATA(t27) = VALUE i( ).
    DO.
      t20->load( ).
      IF t27 >= lines( t20->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t20->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE REF TO zif_lnt_statement.
      DATA(t33) = t25.
      t32 = t33->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_form ).
      t30 = t31.
      IF t31 = abap_false.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE REF TO zif_lnt_statement.
        DATA(t36) = t25.
        t35 = t36->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_st_function_module ).
        t30 = t34.
      ENDIF.
      IF t30 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA(t39) = t25.
          t37 = t39.
        ELSE.
          DATA t40 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t40.
          t37 = t40.
        ENDIF.
        t16 = t37.
        DATA(t41) = CONV f( 0 ).
        t18 = t41.
      ELSE.
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE REF TO zif_lnt_statement.
        DATA(t45) = t25.
        t44 = t45->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_end_form ).
        t42 = t43.
        IF t43 = abap_false.
          DATA t46 TYPE abap_bool.
          DATA t47 TYPE REF TO zif_lnt_statement.
          DATA(t48) = t25.
          t47 = t48->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_end_function ).
          t42 = t46.
        ENDIF.
        IF t42 = abap_true.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE abap_bool.
          DATA(t51) = t18.
          DATA t52 TYPE f.
          DATA(t53) = me->conf.
          t52 = t53->zlnt_view_read_sr_f6802a3c0c7d( ).
          t50 = xsdbool( t51 >= t52 ).
          t49 = t50.
          IF t50 = abap_true.
            DATA(t54) = VALUE abap_bool( ).
            DATA t55 TYPE REF TO zcl_lnt_statement_node.
            DATA(t56) = t16.
            t55 = t56.
            DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t58.
            t57 = t58.
            DATA(t59) = VALUE abap_bool( ).
            DATA(t60) = VALUE abap_bool( ).
            DATA(t61) = t55.
            IF t61 IS INITIAL.
              t60 = abap_true.
            ENDIF.
            t59 = xsdbool( t60 = abap_false ).
            t54 = t59.
            t49 = t54.
          ENDIF.
          IF t49 = abap_true.
            DATA(t62) = VALUE string( ).
            DATA(t63) = VALUE string( ).
            DATA(t64) = VALUE string( ).
            DATA(t65) = |Reduce procedural code, max |.
            DATA(t66) = VALUE string( ).
            DATA t67 TYPE f.
            DATA(t68) = me->conf.
            t67 = t68->zlnt_view_read_sr_f6802a3c0c7d( ).
            IF t67 <> trunc( t67 ) OR t67 > range_safe_integer OR t67 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t69) = CONV int8( t67 ).
            t66 = |{ t69 }|.
            DATA(t70) = strlen( t65 ).
            t64 = |{ t65 }{ t66 }|.
            DATA(t71) = | statements|.
            DATA(t72) = strlen( t64 ).
            t63 = |{ t64 }{ t71 }|.
            t62 = t63.
            DATA t73 TYPE REF TO zcl_lnt_issue.
            CLEAR t73.
            DATA t74 TYPE REF TO zcl_lnt_issue.
            CLEAR t74.
            DATA(t75) = t1.
            DATA t76 TYPE REF TO zcl_lnt_statement_node.
            DATA(t77) = t16.
            t76 = t77.
            DATA(t78) = t62.
            DATA(t79) = VALUE string( ).
            DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t80.
            DATA t81 TYPE string.
            DATA(t82) = |reduce_procedural_code|.
            t81 = t82.
            DATA t83 TYPE string.
            DATA(t84) = |Reduce procedural code|.
            t83 = t84.
            DATA t85 TYPE string.
            DATA(t86) = |Checks FORM and FUNCTION-MODULE have few statements|.
            t85 = t86.
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t88.
            DATA(t89) = abap_true.
            IF t89 = abap_true.
              DATA(t90) = |Delegate logic to a class method instead of using FORM or FU|.
              t90 = t90 && |NCTION-MODULE.\n\nhttps://github.com/SAP/styleguides/blob/main|.
              t90 = t90 && |/clean-abap/CleanABAP.md#prefer-object-orientation-to-proced|.
              t90 = t90 && |ural-programming\n\nComments are not counted as statements.|.
              DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t91->has = abap_true.
              t91->value = t90.
              t88 = t91.
            ELSE.
              DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t92.
              t88 = t92.
            ENDIF.
            t87 = t88.
            DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t93.
            DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t94.
            DATA(t95) = abap_true.
            IF t95 = abap_true.
              DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t98.
              t97 = t98.
              DATA(t99) = t97.
              DATA(t100) = |SingleFile|.
              t99->load( ).
              APPEND t100 TO t99->items.
              t99->save( ).
              DATA(t101) = t97.
              DATA(t102) = |Styleguide|.
              t101->load( ).
              APPEND t102 TO t101->items.
              t101->save( ).
              DATA(t103) = t97.
              t96 = t103.
              t94 = t96.
            ELSE.
              DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t104.
              t94 = t104.
            ENDIF.
            t93 = t94.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t106.
            DATA(t107) = abap_true.
            IF t107 = abap_true.
              DATA(t108) = |FORM foo.\n  DATA lv_bar TYPE i.\n  lv_bar = 2 + 2.\n  IF lv_ba|.
              t108 = t108 && |r = 4.\n    WRITE 'hello world'.\n  ENDIF.\n  DATA lv_bar TYPE |.
              t108 = t108 && |i.\n  lv_bar = 2 + 2.\n  IF lv_bar = 4.\n    WRITE 'hello world|.
              t108 = t108 && |'.\n  ENDIF.\nENDFORM.|.
              DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t109->has = abap_true.
              t109->value = t108.
              t106 = t109.
            ELSE.
              DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t110.
              t106 = t110.
            ENDIF.
            t105 = t106.
            DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t111.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            DATA(t113) = abap_true.
            IF t113 = abap_true.
              DATA(t114) = |FORM foo.\n  NEW zcl_global_class( )->run_logic( ).\nENDFORM.|.
              DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t115->has = abap_true.
              t115->value = t114.
              t112 = t115.
            ELSE.
              DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t116.
              t112 = t116.
            ENDIF.
            t111 = t112.
            DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t118.
            t117 = t118.
            DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            t119 = t120.
            t80 = NEW zcl_lnt_irule_metadata( i_key = t81 i_title = t83 i_short_description = t85 i_bad_example = t105 i_good_example = t111 i_extended_information = t87 i_tags = t93 i_pragma = t117 i_pseudo_comment = t119 ).
            CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
            t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t121 ).
            ENDIF.
            DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t122.
            IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t122 ).
            ENDIF.
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t123.
            IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t123 ).
            ENDIF.
            DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t124.
            IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t124 ).
            ENDIF.
            DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t125.
            IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t125 ).
            ENDIF.
            DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t126.
            IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t126 ).
            ENDIF.
            DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t127.
            IF t80->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t127 ).
            ENDIF.
            CREATE OBJECT t80->zlnt_json_ownkeys_70e5fd461788.
            t80->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t128) = |key|.
            DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t129.
            IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
            ENDIF.
            DATA(t130) = |title|.
            DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t131.
            IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
            ENDIF.
            DATA(t132) = |shortDescription|.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
            ENDIF.
            DATA(t134) = |extendedInformation|.
            DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t135.
            IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t134 p1 = t135 ).
            ENDIF.
            DATA(t136) = |tags|.
            DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t137.
            IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t136 p1 = t137 ).
            ENDIF.
            DATA(t138) = |badExample|.
            DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t139.
            IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
            ENDIF.
            DATA(t140) = |goodExample|.
            DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t141.
            IF t80->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
            ENDIF.
            t79 = t80->key.
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t143) = me->conf.
            t142 = t143->zlnt_view_read_sr_15c06369f827( ).
            DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t144.
            DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t145.
            t74 = zcl_lnt_issue=>at_statement( i_file = t75 i_statement = t76 i_message_26cb = t78 i_key = t79 i_severity = t142 i_fix = t144 i_alternative_fixes = t145 ).
            t73 = t74.
            DATA(t146) = t2.
            DATA(t147) = t73.
            t146->load( ).
            APPEND t147 TO t146->items.
            t146->save( ).
          ENDIF.
          DATA t148 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t148.
          t16 = t148.
        ELSE.
          DATA t149 TYPE abap_bool.
          DATA t150 TYPE REF TO zif_lnt_statement.
          DATA(t151) = t25.
          t150 = t151->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t149 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_st_comment ).
          IF t149 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t152) = VALUE abap_bool( ).
            DATA t153 TYPE REF TO zcl_lnt_statement_node.
            DATA(t154) = t16.
            t153 = t154.
            DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t156.
            t155 = t156.
            DATA(t157) = VALUE abap_bool( ).
            DATA(t158) = VALUE abap_bool( ).
            DATA(t159) = t153.
            IF t159 IS INITIAL.
              t158 = abap_true.
            ENDIF.
            t157 = xsdbool( t158 = abap_false ).
            t152 = t157.
            IF t152 = abap_true.
              DATA t160 TYPE f.
              DATA(t161) = t18.
              DATA(t162) = CONV f( 1 ).
              t160 = t161 + t162.
              t18 = t160.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t163) = t2.
    result = t163.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_rdc_prcdrl_cd_cnf( me->g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_rdc_prcdrl_cd_cnf( me->g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
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
        t1 = NEW zcl_lnt_rdc_prcdrl_cd_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_rd_pr_cd_ts_rd_pr_cd( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rd_pr_cd_ts_rd_pr_cd( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1674_e40a2dd0bb1b.
  ENDMETHOD.
ENDCLASS.
