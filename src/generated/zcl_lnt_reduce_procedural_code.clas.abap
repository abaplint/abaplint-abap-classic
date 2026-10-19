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
    me->conf = NEW zcl_lnt_rdc_prcdrl_cd_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |reduce_procedural_code|.
    DATA t4 TYPE string.
    t4 = |Reduce procedural code|.
    DATA t6 TYPE string.
    t6 = |Checks FORM and FUNCTION-MODULE have few statements|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Delegate logic to a class method instead of using FORM or FU|.
    t11 = t11 && |NCTION-MODULE.\n\nhttps://github.com/SAP/styleguides/blob/main|.
    t11 = t11 && |/clean-abap/CleanABAP.md#prefer-object-orientation-to-proced|.
    t11 = t11 && |ural-programming\n\nComments are not counted as statements.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Styleguide|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |FORM foo.\n  DATA lv_bar TYPE i.\n  lv_bar = 2 + 2.\n  IF lv_ba|.
    t29 = t29 && |r = 4.\n    WRITE 'hello world'.\n  ENDIF.\n  DATA lv_bar TYPE |.
    t29 = t29 && |i.\n  lv_bar = 2 + 2.\n  IF lv_bar = 4.\n    WRITE 'hello world|.
    t29 = t29 && |'.\n  ENDIF.\nENDFORM.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |FORM foo.\n  NEW zcl_global_class( )->run_logic( ).\nENDFORM.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_rd_pr_cd_ts_rd_pr_cd.
    me->conf = i_conf.
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
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    t9 = t1->structure.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t9 IS INITIAL ).
    IF t4 = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    DATA t18 TYPE f.
    DATA(t19) = CONV f( 0 ).
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t23 = t1->statements.
    t20 = t23.
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    DATA t26 TYPE REF TO object.
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
      t32 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_st_form ).
      t30 = t31.
      IF t31 = abap_false.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE REF TO zif_lnt_statement.
        t35 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_st_function_module ).
        t30 = t34.
      ENDIF.
      IF t30 = abap_true.
        t16 = t25.
        DATA(t41) = CONV f( 0 ).
        t18 = t41.
      ELSE.
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE REF TO zif_lnt_statement.
        t44 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_end_form ).
        t42 = t43.
        IF t43 = abap_false.
          DATA t46 TYPE abap_bool.
          DATA t47 TYPE REF TO zif_lnt_statement.
          t47 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_end_function ).
          t42 = t46.
        ENDIF.
        IF t42 = abap_true.
          DATA t49 TYPE abap_bool.
          DATA t50 TYPE abap_bool.
          DATA t52 TYPE f.
          t52 = me->conf->zlnt_view_read_sr_f6802a3c0c7d( ).
          t50 = xsdbool( t18 >= t52 ).
          t49 = t50.
          IF t50 = abap_true.
            DATA(t54) = VALUE abap_bool( ).
            DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t57.
            DATA(t59) = VALUE abap_bool( ).
            DATA(t60) = xsdbool( t16 IS INITIAL ).
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
            t67 = me->conf->zlnt_view_read_sr_f6802a3c0c7d( ).
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
            DATA t74 TYPE REF TO zcl_lnt_issue.
            CLEAR t74.
            DATA t76 TYPE REF TO zcl_lnt_statement_node.
            t76 = t16.
            DATA(t79) = VALUE string( ).
            DATA t80 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t80.
            DATA t81 TYPE string.
            t81 = |reduce_procedural_code|.
            DATA t83 TYPE string.
            t83 = |Reduce procedural code|.
            DATA t85 TYPE string.
            t85 = |Checks FORM and FUNCTION-MODULE have few statements|.
            DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t87.
            DATA(t90) = |Delegate logic to a class method instead of using FORM or FU|.
            t90 = t90 && |NCTION-MODULE.\n\nhttps://github.com/SAP/styleguides/blob/main|.
            t90 = t90 && |/clean-abap/CleanABAP.md#prefer-object-orientation-to-proced|.
            t90 = t90 && |ural-programming\n\nComments are not counted as statements.|.
            DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t91->has = abap_true.
            t91->value = t90.
            t87 = t91.
            DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t93.
            DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t98.
            t97 = t98.
            DATA(t100) = |SingleFile|.
            t97->load( ).
            APPEND t100 TO t97->items.
            t97->save( ).
            DATA(t102) = |Styleguide|.
            t97->load( ).
            APPEND t102 TO t97->items.
            t97->save( ).
            t93 = t97.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            DATA(t108) = |FORM foo.\n  DATA lv_bar TYPE i.\n  lv_bar = 2 + 2.\n  IF lv_ba|.
            t108 = t108 && |r = 4.\n    WRITE 'hello world'.\n  ENDIF.\n  DATA lv_bar TYPE |.
            t108 = t108 && |i.\n  lv_bar = 2 + 2.\n  IF lv_bar = 4.\n    WRITE 'hello world|.
            t108 = t108 && |'.\n  ENDIF.\nENDFORM.|.
            DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t109->has = abap_true.
            t109->value = t108.
            t105 = t109.
            DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t111.
            DATA(t114) = |FORM foo.\n  NEW zcl_global_class( )->run_logic( ).\nENDFORM.|.
            DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t115->has = abap_true.
            t115->value = t114.
            t111 = t115.
            DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t117.
            DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t119.
            t80 = NEW zcl_lnt_irule_metadata( i_key = t81 i_title = t83 i_short_description = t85 i_bad_example = t105 i_good_example = t111 i_extended_information = t87 i_tags = t93 i_pragma = t117 i_pseudo_comment = t119 ).
            CREATE OBJECT t80->zlnt_view_ownkeys_b0e8086400eb.
            t80->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            t80->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t121 ).
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
            t80->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
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
            t142 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t144 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t144.
            DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t145.
            t74 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t76 i_message_26cb = t62 i_key = t79 i_severity = t142 i_fix = t144 i_alternative_fixes = t145 ).
            t2->load( ).
            APPEND t74 TO t2->items.
            t2->save( ).
          ENDIF.
          CLEAR t16.
        ELSE.
          DATA t149 TYPE abap_bool.
          DATA t150 TYPE REF TO zif_lnt_statement.
          t150 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t149 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_st_comment ).
          IF t149 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t152) = VALUE abap_bool( ).
            DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t155.
            DATA(t157) = VALUE abap_bool( ).
            DATA(t158) = xsdbool( t16 IS INITIAL ).
            t157 = xsdbool( t158 = abap_false ).
            t152 = t157.
            IF t152 = abap_true.
              DATA t160 TYPE f.
              DATA(t162) = CONV f( 1 ).
              t160 = t18 + t162.
              t18 = t160.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_rdc_prcdrl_cd_cnf( me->g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_rdc_prcdrl_cd_cnf( me->g_c_i_s_r_rd_pr_cd_ts_rd_pr_cd( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_rdc_prcdrl_cd_cnf.
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
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_rd_pr_cd_ts_rd_pr_cd( i_file = i_file ) ).

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
