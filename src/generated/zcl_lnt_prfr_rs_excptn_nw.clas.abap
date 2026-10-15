* TS: src/rules/prefer_raise_exception_new.ts:14:1 PreferRaiseExceptionNew
CLASS zcl_lnt_prfr_rs_excptn_nw DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw IMPORTING i_conf TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node i_with_exporting TYPE abap_bool RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfr_rs_excptn_nw IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prfr_rs_excptn_nw_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |prefer_raise_exception_new|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
      t11 = t11 && |anABAP.md#prefer-raise-exception-new-to-raise-exception-type|.
      t11 = t11 && |\n\nFrom 752 and up|.
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
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Quickfix|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      DATA(t27) = |Upport|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t18.
      t17 = t28.
      t15 = t17.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t15 = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |RAISE EXCEPTION NEW cx_generation_error( previous = exceptio|.
      t33 = t33 && |n ).|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |RAISE EXCEPTION TYPE cx_generation_error\n  EXPORTING\n    pre|.
      t39 = t39 && |vious = exception.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t36 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |badExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    DATA(t1) = i_file.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_configuration.
    CLEAR t5.
    DATA(t6) = me->reg.
    t5 = t6->get_config( ).
    t4 = t5->get_release( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t9.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t9 = zcl_lnt_version_module=>release_b8cd.
    DATA(t10) = |v752|.
    t8 = t9->get( p0 = t10 ).
    t7 = t8.
    t3 = zcl_lnt_version_module=>release_at_least( i_running = t4 i_required = t7 ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      CREATE OBJECT t11.
      result = t11.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t15.
    DATA(t16) = t1.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA(t18) = t15.
    t17 = t18->statements.
    t14 = t17.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t19.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    DATA(t21) = VALUE i( ).
    DO.
      t14->load( ).
      IF t21 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t20.
      READ TABLE t14->items INDEX t21 + 1 INTO t20.
      t21 = t21 + 1.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t19.
      IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t20.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t20.
      ENDIF.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zif_lnt_statement.
      CLEAR t25.
      DATA(t26) = t19.
      t25 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_raise ).
      IF t24 = abap_true.
        DATA(t27) = VALUE string( ).
        DATA(t28) = VALUE string( ).
        DATA(t29) = VALUE string( ).
        DATA(t30) = t19.
        t29 = t30->concat_tokens( ).
        DATA(t31) = strlen( t29 ).
        t28 = t29.
        IF t28 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t28 TO UPPER CASE.
        ELSE.
          t28 = zlnt_runtime_uppe_91169605024d=>full( t28 ).
        ENDIF.
        t27 = t28.
        DATA(t32) = VALUE abap_bool( ).
        DATA(t33) = VALUE i( ).
        DATA(t34) = t27.
        DATA(t35) = | MESSAGE|.
        DATA(t36) = strlen( t34 ).
        IF t35 IS INITIAL.
          t33 = 0.
        ELSE.
          FIND t35 IN t34 MATCH OFFSET t33.
          IF sy-subrc <> 0.
            t33 = -1.
          ENDIF.
        ENDIF.
        DATA(t37) = 0.
        t32 = xsdbool( t33 >= t37 ).
        IF t32 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t27.
        DATA(t40) = |RAISE EXCEPTION TYPE |.
        DATA(t41) = strlen( t39 ).
        DATA(t42) = VALUE i( ).
        DATA(t43) = VALUE i( ).
        DATA(t44) = VALUE string( ).
        t42 = strlen( t40 ).
        IF t42 = 0.
          t38 = abap_true.
        ELSEIF t42 <= t41.
          t43 = 0.
          t44 = t39+t43(t42).
          IF t44 = t40.
            t38 = abap_true.
          ENDIF.
        ENDIF.
        IF t38 = abap_true.
          DATA(t45) = VALUE string( ).
          DATA(t46) = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE|.
          t45 = t46.
          DATA t47 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t47.
          DATA t48 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t48.
          DATA t49 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t49.
          DATA(t50) = t1.
          t49 = t50.
          DATA t51 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t51.
          DATA(t52) = t19.
          t51 = t52.
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = VALUE i( ).
          DATA(t57) = t27.
          DATA(t58) = | EXPORTING|.
          DATA(t59) = strlen( t57 ).
          IF t58 IS INITIAL.
            t56 = 0.
          ELSE.
            FIND t58 IN t57 MATCH OFFSET t56.
            IF sy-subrc <> 0.
              t56 = -1.
            ENDIF.
          ENDIF.
          DATA(t60) = 0.
          t55 = xsdbool( t56 >= t60 ).
          IF t55 = abap_true.
            DATA(t61) = abap_true.
            t54 = t61.
          ELSE.
            DATA(t62) = abap_false.
            t54 = t62.
          ENDIF.
          t53 = t54.
          DATA t63 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t63.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t64.
          DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t65.
          DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t66.
          DATA t67 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t67.
          DATA(t68) = t51.
          t67 = t68.
          DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t69.
          DATA(t70) = t67.
          t69 = t70->children.
          t66 = t69.
          t65 ?= t66.
          t64 = t65.
          DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t71.
          DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t72.
          t71 = t72.
          DATA(t73) = t53.
          IF t73 = abap_true.
            DATA(t74) = VALUE string( ).
            DATA(t75) = VALUE string( ).
            DATA(t76) = VALUE string( ).
            DATA(t77) = |( |.
            DATA(t78) = VALUE string( ).
            DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t79.
            DATA(t80) = t64.
            DATA t81 TYPE REF TO object.
            CLEAR t81.
            t80->load( ).
            CLEAR t81.
            READ TABLE t80->items INDEX 6 INTO t81.
            DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t82.
            CLEAR t79.
            IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t82 ?= t81.
              DATA t83 TYPE REF TO object.
              CLEAR t83.
              t83 = t82->as_ref( ).
              t79 ?= t83.
            ELSE.
              t79 ?= t81.
            ENDIF.
            t78 = t79->concat_tokens( ).
            DATA(t84) = strlen( t77 ).
            t76 = |{ t77 }{ t78 }|.
            DATA(t85) = | ).|.
            DATA(t86) = strlen( t76 ).
            t75 = |{ t76 }{ t85 }|.
            t74 = t75.
            DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t87.
            DATA(t88) = abap_true.
            IF t88 = abap_true.
              DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t89.
              DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t90.
              DATA(t91) = t49.
              DATA t92 TYPE REF TO zcl_lnt_position.
              CLEAR t92.
              DATA t93 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t93.
              DATA t94 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t94.
              DATA t95 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t95.
              DATA(t96) = t64.
              DATA t97 TYPE REF TO object.
              CLEAR t97.
              t96->load( ).
              CLEAR t97.
              READ TABLE t96->items INDEX 4 INTO t97.
              DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t98.
              CLEAR t95.
              IF t97 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t98 ?= t97.
                DATA t99 TYPE REF TO object.
                CLEAR t99.
                t99 = t98->as_ref( ).
                t95 ?= t99.
              ELSE.
                t95 ?= t97.
              ENDIF.
              t94 = t95->get_last_token( ).
              t93 = t94.
              DATA t100 TYPE REF TO zcl_lnt_position.
              CLEAR t100.
              DATA(t101) = VALUE f( ).
              DATA t102 TYPE REF TO zcl_lnt_position.
              CLEAR t102.
              DATA t103 TYPE REF TO zcl_lnt_position.
              CLEAR t103.
              DATA(t104) = t93.
              t103 = t104->start.
              t102 = t103.
              DATA(t105) = VALUE f( ).
              DATA(t106) = t102.
              t105 = t106->row.
              t101 = t105.
              DATA t107 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t107.
              DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t108.
              DATA t109 TYPE REF TO zcl_lnt_position.
              CLEAR t109.
              DATA t110 TYPE REF TO zcl_lnt_position.
              CLEAR t110.
              DATA(t111) = t93.
              t110 = t111->start.
              t109 = t110.
              DATA t112 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t112.
              DATA(t113) = t109.
              t112 = t113->col.
              t108 = t112.
              DATA(t114) = VALUE f( ).
              DATA(t115) = VALUE i( ).
              DATA(t116) = VALUE string( ).
              DATA(t117) = t93.
              t116 = t117->str.
              DATA(t118) = strlen( t116 ).
              t115 = t118.
              t114 = t115.
              DATA(t119) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t119->has = abap_true.
              t119->value = t114.
              t107 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t108 right = t119 op = `+` ).
              t100 = NEW zcl_lnt_position( i_row = t101 i_col = t107 ).
              t92 = t100.
              DATA t120 TYPE REF TO zcl_lnt_position.
              CLEAR t120.
              DATA t121 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t121.
              DATA(t122) = t51.
              t121 = t122.
              DATA t123 TYPE REF TO zcl_lnt_position.
              CLEAR t123.
              DATA t124 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t124.
              DATA t125 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t125.
              DATA(t126) = t121.
              t125 = t126->get_last_token( ).
              t124 = t125.
              DATA t127 TYPE REF TO zcl_lnt_position.
              CLEAR t127.
              DATA t128 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t128.
              DATA(t129) = t124.
              t128 = t129.
              DATA t130 TYPE REF TO zcl_lnt_position.
              CLEAR t130.
              DATA(t131) = VALUE f( ).
              DATA t132 TYPE REF TO zcl_lnt_position.
              CLEAR t132.
              DATA t133 TYPE REF TO zcl_lnt_position.
              CLEAR t133.
              DATA(t134) = t128.
              t133 = t134->start.
              t132 = t133.
              DATA(t135) = VALUE f( ).
              DATA(t136) = t132.
              t135 = t136->row.
              t131 = t135.
              DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t137.
              DATA t138 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t138.
              DATA t139 TYPE REF TO zcl_lnt_position.
              CLEAR t139.
              DATA t140 TYPE REF TO zcl_lnt_position.
              CLEAR t140.
              DATA(t141) = t128.
              t140 = t141->start.
              t139 = t140.
              DATA t142 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t142.
              DATA(t143) = t139.
              t142 = t143->col.
              t138 = t142.
              DATA(t144) = VALUE f( ).
              DATA(t145) = VALUE i( ).
              DATA(t146) = VALUE string( ).
              DATA(t147) = t128.
              t146 = t147->str.
              DATA(t148) = strlen( t146 ).
              t145 = t148.
              t144 = t145.
              DATA(t149) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t149->has = abap_true.
              t149->value = t144.
              t137 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t138 right = t149 op = `+` ).
              t130 = NEW zcl_lnt_position( i_row = t131 i_col = t137 ).
              t127 = t130.
              t123 = t127.
              t120 = t123.
              DATA(t150) = t74.
              t90 = zcl_lnt_edit_helper=>replace_range( i_file = t91 i_start = t92 i_end = t120 i_text = t150 ).
              CLEAR t89.
              IF t90 IS BOUND.
                DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t151.
                DATA t152 TYPE REF TO object.
                CLEAR t152.
                CLEAR t151.
                t152 = t90.
                TRY.
                    t89 ?= t152.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t89 IS NOT BOUND.
                  TRY.
                      t151 ?= t90.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t151 IS BOUND.
                    t89 = t151->source( ).
                  ENDIF.
                  IF t89 IS NOT BOUND.
                    CREATE OBJECT t89.
                    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t89->oval = t90.
                  ENDIF.
                ENDIF.
              ENDIF.
              t87 = t89.
            ELSE.
              DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t153.
              t87 = t153.
            ENDIF.
            t71 = t87.
          ELSE.
            DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t154.
            DATA(t155) = abap_true.
            IF t155 = abap_true.
              DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t156.
              DATA t157 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t157.
              DATA(t158) = t49.
              DATA t159 TYPE REF TO zcl_lnt_position.
              CLEAR t159.
              DATA t160 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t160.
              DATA t161 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t161.
              DATA t162 TYPE REF TO zif_lnt_union_4cf1d054.
              CLEAR t162.
              DATA(t163) = t64.
              DATA t164 TYPE REF TO object.
              CLEAR t164.
              t163->load( ).
              CLEAR t164.
              READ TABLE t163->items INDEX 4 INTO t164.
              DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t165.
              CLEAR t162.
              IF t164 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t165 ?= t164.
                DATA t166 TYPE REF TO object.
                CLEAR t166.
                t166 = t165->as_ref( ).
                t162 ?= t166.
              ELSE.
                t162 ?= t164.
              ENDIF.
              t161 = t162->get_last_token( ).
              t160 = t161.
              DATA t167 TYPE REF TO zcl_lnt_position.
              CLEAR t167.
              DATA(t168) = VALUE f( ).
              DATA t169 TYPE REF TO zcl_lnt_position.
              CLEAR t169.
              DATA t170 TYPE REF TO zcl_lnt_position.
              CLEAR t170.
              DATA(t171) = t160.
              t170 = t171->start.
              t169 = t170.
              DATA(t172) = VALUE f( ).
              DATA(t173) = t169.
              t172 = t173->row.
              t168 = t172.
              DATA t174 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t174.
              DATA t175 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t175.
              DATA t176 TYPE REF TO zcl_lnt_position.
              CLEAR t176.
              DATA t177 TYPE REF TO zcl_lnt_position.
              CLEAR t177.
              DATA(t178) = t160.
              t177 = t178->start.
              t176 = t177.
              DATA t179 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t179.
              DATA(t180) = t176.
              t179 = t180->col.
              t175 = t179.
              DATA(t181) = VALUE f( ).
              DATA(t182) = VALUE i( ).
              DATA(t183) = VALUE string( ).
              DATA(t184) = t160.
              t183 = t184->str.
              DATA(t185) = strlen( t183 ).
              t182 = t185.
              t181 = t182.
              DATA(t186) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t186->has = abap_true.
              t186->value = t181.
              t174 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t175 right = t186 op = `+` ).
              t167 = NEW zcl_lnt_position( i_row = t168 i_col = t174 ).
              t159 = t167.
              DATA t187 TYPE REF TO zcl_lnt_position.
              CLEAR t187.
              DATA t188 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t188.
              DATA(t189) = t51.
              t188 = t189.
              DATA t190 TYPE REF TO zcl_lnt_position.
              CLEAR t190.
              DATA t191 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t191.
              DATA t192 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t192.
              DATA(t193) = t188.
              t192 = t193->get_last_token( ).
              t191 = t192.
              DATA t194 TYPE REF TO zcl_lnt_position.
              CLEAR t194.
              DATA t195 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t195.
              DATA(t196) = t191.
              t195 = t196.
              DATA t197 TYPE REF TO zcl_lnt_position.
              CLEAR t197.
              DATA(t198) = VALUE f( ).
              DATA t199 TYPE REF TO zcl_lnt_position.
              CLEAR t199.
              DATA t200 TYPE REF TO zcl_lnt_position.
              CLEAR t200.
              DATA(t201) = t195.
              t200 = t201->start.
              t199 = t200.
              DATA(t202) = VALUE f( ).
              DATA(t203) = t199.
              t202 = t203->row.
              t198 = t202.
              DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t204.
              DATA t205 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t205.
              DATA t206 TYPE REF TO zcl_lnt_position.
              CLEAR t206.
              DATA t207 TYPE REF TO zcl_lnt_position.
              CLEAR t207.
              DATA(t208) = t195.
              t207 = t208->start.
              t206 = t207.
              DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t209.
              DATA(t210) = t206.
              t209 = t210->col.
              t205 = t209.
              DATA(t211) = VALUE f( ).
              DATA(t212) = VALUE i( ).
              DATA(t213) = VALUE string( ).
              DATA(t214) = t195.
              t213 = t214->str.
              DATA(t215) = strlen( t213 ).
              t212 = t215.
              t211 = t212.
              DATA(t216) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t216->has = abap_true.
              t216->value = t211.
              t204 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t205 right = t216 op = `+` ).
              t197 = NEW zcl_lnt_position( i_row = t198 i_col = t204 ).
              t194 = t197.
              t190 = t194.
              t187 = t190.
              DATA(t217) = |( ).|.
              t157 = zcl_lnt_edit_helper=>replace_range( i_file = t158 i_start = t159 i_end = t187 i_text = t217 ).
              CLEAR t156.
              IF t157 IS BOUND.
                DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t218.
                DATA t219 TYPE REF TO object.
                CLEAR t219.
                CLEAR t218.
                t219 = t157.
                TRY.
                    t156 ?= t219.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t156 IS NOT BOUND.
                  TRY.
                      t218 ?= t157.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t218 IS BOUND.
                    t156 = t218->source( ).
                  ENDIF.
                  IF t156 IS NOT BOUND.
                    CREATE OBJECT t156.
                    t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t156->oval = t157.
                  ENDIF.
                ENDIF.
              ENDIF.
              t154 = t156.
            ELSE.
              DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t220.
              t154 = t220.
            ENDIF.
            t71 = t154.
          ENDIF.
          DATA t221 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t221.
          DATA t222 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t222.
          DATA(t223) = t49.
          DATA t224 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t224.
          DATA t225 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t225.
          DATA(t226) = t64.
          DATA t227 TYPE REF TO object.
          CLEAR t227.
          t226->load( ).
          CLEAR t227.
          READ TABLE t226->items INDEX 3 INTO t227.
          DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t228.
          CLEAR t225.
          IF t227 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t228 ?= t227.
            DATA t229 TYPE REF TO object.
            CLEAR t229.
            t229 = t228->as_ref( ).
            t225 ?= t229.
          ELSE.
            t225 ?= t227.
          ENDIF.
          t224 = t225->get_first_token( ).
          DATA(t230) = |NEW|.
          t222 = zcl_lnt_edit_helper=>replace_token( i_file = t223 i_token = t224 i_text = t230 ).
          t221 = t222.
          DATA t231 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t231.
          DATA t232 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t232.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t233.
          DATA(t234) = t71.
          t233 = t234.
          DATA t235 TYPE REF TO object.
          CLEAR t235.
          IF t233 IS BOUND AND t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            CREATE OBJECT t232.
            LOOP AT t233->entries INTO DATA(t236).
              DATA(t237) = CAST zlnt_runtime_dyna_a429568d5be8( t236-v ).
              DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t238.
              DATA t239 TYPE REF TO object.
              CLEAR t239.
              t239 = t237->as_ref( ).
              t238 ?= t239.
              t232->set( p0 = t236-k p1 = t238 ).
            ENDLOOP.
          ELSE.
            t235 = t233->as_ref( ).
            DATA t240 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
            CLEAR t240.
            TRY.
                t232 ?= t235.
              CATCH cx_sy_move_cast_error.
                t240 ?= t235.
                CREATE OBJECT t232.
                LOOP AT t240->entries INTO DATA(t241).
                  DATA(t242) = CAST zlnt_runtime_dyna_a429568d5be8( t241-v ).
                  DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t243.
                  DATA t244 TYPE REF TO object.
                  CLEAR t244.
                  t244 = t242->as_ref( ).
                  t243 ?= t244.
                  t232->set( p0 = t241-k p1 = t243 ).
                ENDLOOP.
            ENDTRY.
          ENDIF.
          DATA(t245) = t221.
          t231 = zcl_lnt_edit_helper=>merge( i_fix1 = t232 i_fix2 = t245 ).
          t63 = t231.
          t48 = t63.
          t47 = t48.
          DATA(t246) = t12.
          DATA t247 TYPE REF TO zcl_lnt_issue.
          CLEAR t247.
          DATA(t248) = t1.
          DATA(t249) = t19.
          DATA(t250) = t45.
          DATA(t251) = VALUE string( ).
          DATA t252 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t252.
          DATA(t253) = VALUE string( ).
          DATA(t254) = |prefer_raise_exception_new|.
          t253 = t254.
          DATA(t255) = VALUE string( ).
          DATA(t256) = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE|.
          t255 = t256.
          DATA(t257) = VALUE string( ).
          DATA(t258) = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE|.
          t257 = t258.
          DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t259.
          DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t260.
          DATA(t261) = abap_true.
          IF t261 = abap_true.
            DATA(t262) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
            t262 = t262 && |anABAP.md#prefer-raise-exception-new-to-raise-exception-type|.
            t262 = t262 && |\n\nFrom 752 and up|.
            DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t263->has = abap_true.
            t263->value = t262.
            t260 = t263.
          ELSE.
            DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t264.
            t260 = t264.
          ENDIF.
          t259 = t260.
          DATA t265 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t265.
          DATA t266 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t266.
          DATA(t267) = abap_true.
          IF t267 = abap_true.
            DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t268.
            DATA t269 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t269.
            DATA t270 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t270.
            CREATE OBJECT t270.
            t269 = t270.
            DATA(t271) = t269.
            DATA(t272) = |Styleguide|.
            t271->load( ).
            APPEND t272 TO t271->items.
            t271->save( ).
            DATA(t273) = t269.
            DATA(t274) = |SingleFile|.
            t273->load( ).
            APPEND t274 TO t273->items.
            t273->save( ).
            DATA(t275) = t269.
            DATA(t276) = |Quickfix|.
            t275->load( ).
            APPEND t276 TO t275->items.
            t275->save( ).
            DATA(t277) = t269.
            DATA(t278) = |Upport|.
            t277->load( ).
            APPEND t278 TO t277->items.
            t277->save( ).
            DATA(t279) = t269.
            t268 = t279.
            t266 = t268.
          ELSE.
            DATA t280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t280.
            t266 = t280.
          ENDIF.
          t265 = t266.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t282.
          DATA(t283) = abap_true.
          IF t283 = abap_true.
            DATA(t284) = |RAISE EXCEPTION NEW cx_generation_error( previous = exceptio|.
            t284 = t284 && |n ).|.
            DATA(t285) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t285->has = abap_true.
            t285->value = t284.
            t282 = t285.
          ELSE.
            DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t286.
            t282 = t286.
          ENDIF.
          t281 = t282.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t288.
          DATA(t289) = abap_true.
          IF t289 = abap_true.
            DATA(t290) = |RAISE EXCEPTION TYPE cx_generation_error\n  EXPORTING\n    pre|.
            t290 = t290 && |vious = exception.|.
            DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t291->has = abap_true.
            t291->value = t290.
            t288 = t291.
          ELSE.
            DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t292.
            t288 = t292.
          ENDIF.
          t287 = t288.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t294.
          t293 = t294.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t296.
          t295 = t296.
          t252 = NEW zcl_lnt_irule_metadata( i_key = t253 i_title = t255 i_short_description = t257 i_bad_example = t287 i_good_example = t281 i_extended_information = t259 i_tags = t265 i_pragma = t293 i_pseudo_comment = t295 ).
          CREATE OBJECT t252->zlnt_view_ownkeys_b0e8086400eb.
          t252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t297 ).
          ENDIF.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t298 ).
          ENDIF.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t299 ).
          ENDIF.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t300 ).
          ENDIF.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t301 ).
          ENDIF.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t302 ).
          ENDIF.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t303 ).
          ENDIF.
          CREATE OBJECT t252->zlnt_json_ownkeys_70e5fd461788.
          t252->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t304) = |key|.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t304 p1 = t305 ).
          ENDIF.
          DATA(t306) = |title|.
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t307.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t306 p1 = t307 ).
          ENDIF.
          DATA(t308) = |shortDescription|.
          DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t309.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t308 p1 = t309 ).
          ENDIF.
          DATA(t310) = |extendedInformation|.
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t311.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t310 p1 = t311 ).
          ENDIF.
          DATA(t312) = |tags|.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
          ENDIF.
          DATA(t314) = |goodExample|.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t314 p1 = t315 ).
          ENDIF.
          DATA(t316) = |badExample|.
          DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t317.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = t316 p1 = t317 ).
          ENDIF.
          t251 = t252->key.
          DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t318.
          DATA(t319) = me->conf.
          t318 = t319->zlnt_view_read_sr_15c06369f827( ).
          DATA t320 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t320.
          DATA(t321) = abap_true.
          IF t321 = abap_true.
            DATA(t322) = t47.
            t320 = t322.
          ELSE.
            DATA t323 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t323.
            t320 = t323.
          ENDIF.
          DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t324.
          t247 = zcl_lnt_issue=>at_statement( i_file = t248 i_statement = t249 i_message_26cb = t250 i_key = t251 i_severity = t318 i_fix = t320 i_alternative_fixes = t324 ).
          t246->load( ).
          APPEND t247 TO t246->items.
          t246->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t325) = t12.
    result = t325.

  ENDMETHOD.

  METHOD get_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = i_with_exporting.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t7.
    DATA(t8) = t2.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = t7.
    t9 = t10->children.
    t6 = t9.
    t5 ?= t6.
    t4 = t5.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = t3.
    IF t13 = abap_true.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = |( |.
      DATA(t18) = VALUE string( ).
      DATA t19 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t19.
      DATA(t20) = t4.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t20->load( ).
      CLEAR t21.
      READ TABLE t20->items INDEX 6 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t19.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        CLEAR t23.
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t21.
      ENDIF.
      t18 = t19->concat_tokens( ).
      DATA(t24) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t25) = | ).|.
      DATA(t26) = strlen( t16 ).
      t15 = |{ t16 }{ t25 }|.
      t14 = t15.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      DATA(t28) = abap_true.
      IF t28 = abap_true.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        DATA t30 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t30.
        DATA(t31) = t1.
        DATA t32 TYPE REF TO zcl_lnt_position.
        CLEAR t32.
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t34.
        DATA t35 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t35.
        DATA(t36) = t4.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t36->load( ).
        CLEAR t37.
        READ TABLE t36->items INDEX 4 INTO t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t35.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t37.
          DATA t39 TYPE REF TO object.
          CLEAR t39.
          t39 = t38->as_ref( ).
          t35 ?= t39.
        ELSE.
          t35 ?= t37.
        ENDIF.
        t34 = t35->get_last_token( ).
        t33 = t34.
        DATA t40 TYPE REF TO zcl_lnt_position.
        CLEAR t40.
        DATA(t41) = VALUE f( ).
        DATA t42 TYPE REF TO zcl_lnt_position.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_position.
        CLEAR t43.
        DATA(t44) = t33.
        t43 = t44->start.
        t42 = t43.
        DATA(t45) = VALUE f( ).
        DATA(t46) = t42.
        t45 = t46->row.
        t41 = t45.
        DATA t47 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_position.
        CLEAR t49.
        DATA t50 TYPE REF TO zcl_lnt_position.
        CLEAR t50.
        DATA(t51) = t33.
        t50 = t51->start.
        t49 = t50.
        DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t52.
        DATA(t53) = t49.
        t52 = t53->col.
        t48 = t52.
        DATA(t54) = VALUE f( ).
        DATA(t55) = VALUE i( ).
        DATA(t56) = VALUE string( ).
        DATA(t57) = t33.
        t56 = t57->str.
        DATA(t58) = strlen( t56 ).
        t55 = t58.
        t54 = t55.
        DATA(t59) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t59->has = abap_true.
        t59->value = t54.
        t47 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t48 right = t59 op = `+` ).
        t40 = NEW zcl_lnt_position( i_row = t41 i_col = t47 ).
        t32 = t40.
        DATA t60 TYPE REF TO zcl_lnt_position.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t61.
        DATA(t62) = t2.
        t61 = t62.
        DATA t63 TYPE REF TO zcl_lnt_position.
        CLEAR t63.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t64.
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t65.
        DATA(t66) = t61.
        t65 = t66->get_last_token( ).
        t64 = t65.
        DATA t67 TYPE REF TO zcl_lnt_position.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t68.
        DATA(t69) = t64.
        t68 = t69.
        DATA t70 TYPE REF TO zcl_lnt_position.
        CLEAR t70.
        DATA(t71) = VALUE f( ).
        DATA t72 TYPE REF TO zcl_lnt_position.
        CLEAR t72.
        DATA t73 TYPE REF TO zcl_lnt_position.
        CLEAR t73.
        DATA(t74) = t68.
        t73 = t74->start.
        t72 = t73.
        DATA(t75) = VALUE f( ).
        DATA(t76) = t72.
        t75 = t76->row.
        t71 = t75.
        DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t77.
        DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_position.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_position.
        CLEAR t80.
        DATA(t81) = t68.
        t80 = t81->start.
        t79 = t80.
        DATA t82 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t82.
        DATA(t83) = t79.
        t82 = t83->col.
        t78 = t82.
        DATA(t84) = VALUE f( ).
        DATA(t85) = VALUE i( ).
        DATA(t86) = VALUE string( ).
        DATA(t87) = t68.
        t86 = t87->str.
        DATA(t88) = strlen( t86 ).
        t85 = t88.
        t84 = t85.
        DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t89->has = abap_true.
        t89->value = t84.
        t77 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ).
        t70 = NEW zcl_lnt_position( i_row = t71 i_col = t77 ).
        t67 = t70.
        t63 = t67.
        t60 = t63.
        DATA(t90) = t14.
        t30 = zcl_lnt_edit_helper=>replace_range( i_file = t31 i_start = t32 i_end = t60 i_text = t90 ).
        CLEAR t29.
        IF t30 IS BOUND.
          DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t91.
          DATA t92 TYPE REF TO object.
          CLEAR t92.
          CLEAR t91.
          t92 = t30.
          TRY.
              t29 ?= t92.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t29 IS NOT BOUND.
            TRY.
                t91 ?= t30.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t91 IS BOUND.
              t29 = t91->source( ).
            ENDIF.
            IF t29 IS NOT BOUND.
              CREATE OBJECT t29.
              t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t29->oval = t30.
            ENDIF.
          ENDIF.
        ENDIF.
        t27 = t29.
      ELSE.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t27 = t93.
      ENDIF.
      t11 = t27.
    ELSE.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        DATA t97 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t97.
        DATA(t98) = t1.
        DATA t99 TYPE REF TO zcl_lnt_position.
        CLEAR t99.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t100.
        DATA t101 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t101.
        DATA t102 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t102.
        DATA(t103) = t4.
        DATA t104 TYPE REF TO object.
        CLEAR t104.
        t103->load( ).
        CLEAR t104.
        READ TABLE t103->items INDEX 4 INTO t104.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        CLEAR t102.
        IF t104 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t105 ?= t104.
          DATA t106 TYPE REF TO object.
          CLEAR t106.
          t106 = t105->as_ref( ).
          t102 ?= t106.
        ELSE.
          t102 ?= t104.
        ENDIF.
        t101 = t102->get_last_token( ).
        t100 = t101.
        DATA t107 TYPE REF TO zcl_lnt_position.
        CLEAR t107.
        DATA(t108) = VALUE f( ).
        DATA t109 TYPE REF TO zcl_lnt_position.
        CLEAR t109.
        DATA t110 TYPE REF TO zcl_lnt_position.
        CLEAR t110.
        DATA(t111) = t100.
        t110 = t111->start.
        t109 = t110.
        DATA(t112) = VALUE f( ).
        DATA(t113) = t109.
        t112 = t113->row.
        t108 = t112.
        DATA t114 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t114.
        DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t115.
        DATA t116 TYPE REF TO zcl_lnt_position.
        CLEAR t116.
        DATA t117 TYPE REF TO zcl_lnt_position.
        CLEAR t117.
        DATA(t118) = t100.
        t117 = t118->start.
        t116 = t117.
        DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t119.
        DATA(t120) = t116.
        t119 = t120->col.
        t115 = t119.
        DATA(t121) = VALUE f( ).
        DATA(t122) = VALUE i( ).
        DATA(t123) = VALUE string( ).
        DATA(t124) = t100.
        t123 = t124->str.
        DATA(t125) = strlen( t123 ).
        t122 = t125.
        t121 = t122.
        DATA(t126) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t126->has = abap_true.
        t126->value = t121.
        t114 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t115 right = t126 op = `+` ).
        t107 = NEW zcl_lnt_position( i_row = t108 i_col = t114 ).
        t99 = t107.
        DATA t127 TYPE REF TO zcl_lnt_position.
        CLEAR t127.
        DATA t128 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t128.
        DATA(t129) = t2.
        t128 = t129.
        DATA t130 TYPE REF TO zcl_lnt_position.
        CLEAR t130.
        DATA t131 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t131.
        DATA t132 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t132.
        DATA(t133) = t128.
        t132 = t133->get_last_token( ).
        t131 = t132.
        DATA t134 TYPE REF TO zcl_lnt_position.
        CLEAR t134.
        DATA t135 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t135.
        DATA(t136) = t131.
        t135 = t136.
        DATA t137 TYPE REF TO zcl_lnt_position.
        CLEAR t137.
        DATA(t138) = VALUE f( ).
        DATA t139 TYPE REF TO zcl_lnt_position.
        CLEAR t139.
        DATA t140 TYPE REF TO zcl_lnt_position.
        CLEAR t140.
        DATA(t141) = t135.
        t140 = t141->start.
        t139 = t140.
        DATA(t142) = VALUE f( ).
        DATA(t143) = t139.
        t142 = t143->row.
        t138 = t142.
        DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t144.
        DATA t145 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t145.
        DATA t146 TYPE REF TO zcl_lnt_position.
        CLEAR t146.
        DATA t147 TYPE REF TO zcl_lnt_position.
        CLEAR t147.
        DATA(t148) = t135.
        t147 = t148->start.
        t146 = t147.
        DATA t149 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t149.
        DATA(t150) = t146.
        t149 = t150->col.
        t145 = t149.
        DATA(t151) = VALUE f( ).
        DATA(t152) = VALUE i( ).
        DATA(t153) = VALUE string( ).
        DATA(t154) = t135.
        t153 = t154->str.
        DATA(t155) = strlen( t153 ).
        t152 = t155.
        t151 = t152.
        DATA(t156) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t156->has = abap_true.
        t156->value = t151.
        t144 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t145 right = t156 op = `+` ).
        t137 = NEW zcl_lnt_position( i_row = t138 i_col = t144 ).
        t134 = t137.
        t130 = t134.
        t127 = t130.
        DATA(t157) = |( ).|.
        t97 = zcl_lnt_edit_helper=>replace_range( i_file = t98 i_start = t99 i_end = t127 i_text = t157 ).
        CLEAR t96.
        IF t97 IS BOUND.
          DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t158.
          DATA t159 TYPE REF TO object.
          CLEAR t159.
          CLEAR t158.
          t159 = t97.
          TRY.
              t96 ?= t159.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t96 IS NOT BOUND.
            TRY.
                t158 ?= t97.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t158 IS BOUND.
              t96 = t158->source( ).
            ENDIF.
            IF t96 IS NOT BOUND.
              CREATE OBJECT t96.
              t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t96->oval = t97.
            ENDIF.
          ENDIF.
        ENDIF.
        t94 = t96.
      ELSE.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        t94 = t160.
      ENDIF.
      t11 = t94.
    ENDIF.
    DATA t161 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t162.
    DATA(t163) = t1.
    DATA t164 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t164.
    DATA t165 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t165.
    DATA(t166) = t4.
    DATA t167 TYPE REF TO object.
    CLEAR t167.
    t166->load( ).
    CLEAR t167.
    READ TABLE t166->items INDEX 3 INTO t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    CLEAR t165.
    IF t167 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t168 ?= t167.
      DATA t169 TYPE REF TO object.
      CLEAR t169.
      t169 = t168->as_ref( ).
      t165 ?= t169.
    ELSE.
      t165 ?= t167.
    ENDIF.
    t164 = t165->get_first_token( ).
    DATA(t170) = |NEW|.
    t162 = zcl_lnt_edit_helper=>replace_token( i_file = t163 i_token = t164 i_text = t170 ).
    t161 = t162.
    DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = t11.
    t173 = t174.
    DATA t175 TYPE REF TO object.
    CLEAR t175.
    IF t173 IS BOUND AND t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t172.
      LOOP AT t173->entries INTO DATA(t176).
        DATA(t177) = CAST zlnt_runtime_dyna_a429568d5be8( t176-v ).
        DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t178.
        DATA t179 TYPE REF TO object.
        CLEAR t179.
        t179 = t177->as_ref( ).
        t178 ?= t179.
        t172->set( p0 = t176-k p1 = t178 ).
      ENDLOOP.
    ELSE.
      t175 = t173->as_ref( ).
      DATA t180 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      CLEAR t180.
      TRY.
          t172 ?= t175.
        CATCH cx_sy_move_cast_error.
          t180 ?= t175.
          CREATE OBJECT t172.
          LOOP AT t180->entries INTO DATA(t181).
            DATA(t182) = CAST zlnt_runtime_dyna_a429568d5be8( t181-v ).
            DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t183.
            DATA t184 TYPE REF TO object.
            CLEAR t184.
            t184 = t182->as_ref( ).
            t183 ?= t184.
            t172->set( p0 = t181-k p1 = t183 ).
          ENDLOOP.
      ENDTRY.
    ENDIF.
    DATA(t185) = t161.
    t171 = zcl_lnt_edit_helper=>merge( i_fix1 = t172 i_fix2 = t185 ).
    result = t171.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prfr_rs_excptn_nw_cnf( me->g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prfr_rs_excptn_nw_cnf( me->g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
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
        t1 = NEW zcl_lnt_prfr_rs_excptn_nw_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1664_68592b218da9.
  ENDMETHOD.
ENDCLASS.
