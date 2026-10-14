* TS: src/abap/cross_include_macros.ts:13:1 CrossIncludeMacros
CLASS zcl_lnt_cross_include_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS run.
    METHODS find_candidates RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_mains IMPORTING i_graph TYPE REF TO zcl_lnt_include_graph i_prog TYPE REF TO zcl_lnt_ob_program RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__569a685d95a8.
    METHODS matches_unknown IMPORTING i_prog TYPE REF TO zcl_lnt_ob_program i_macro_names TYPE REF TO zlnt_runtime_set__1827558fd4c7 RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cross_include_macros IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.
  METHOD run.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->find_candidates(  ) ).
    t1 = t2.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE i.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t4 = lines( t5->items ).
    DATA(t6) = 0.
    t3 = xsdbool( t4 = t6 ).
    IF t3 = abap_true.
      RETURN.
    ENDIF.
    DATA t7 TYPE REF TO zcl_lnt_include_graph.
    DATA t8 TYPE REF TO zcl_lnt_include_graph.
    DATA(t9) = CAST zif_lnt_registry( me->reg ).
    DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t11.
    t8 = NEW zcl_lnt_include_graph( i_reg_f149 = t9 i_severity = t10 i_allow_unused = t11 ).
    t7 = t8.
    DATA t12 TYPE REF TO zif_lnt_configuration.
    DATA t13 TYPE REF TO zif_lnt_configuration.
    DATA(t14) = CAST zif_lnt_registry( me->reg ).
    t13 = t14->get_config(  ).
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zcl_lnt_isyntax_settings.
    DATA(t20) = CAST zif_lnt_configuration( t12 ).
    t19 = t20->get_syntax_setttings(  ).
    t18 = t19->global_macros.
    t17 = t18.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA t22 TYPE abap_bool.
    DATA(t23) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
    t22 = xsdbool( t23 IS BOUND ).
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t25) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      t24 = t25.
      t21 = t24.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t26.
      t21 = t26.
    ENDIF.
    t16 = t21.
    t15 = t16.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t28 TYPE REF TO zcl_lnt_ob_program.
    CLEAR t28.
    DATA t29 TYPE REF TO object.
    CLEAR t29.
    LOOP AT t27->items INTO t29.
      t28 ?= t29.
      DATA t30 TYPE REF TO zlnt_runtime_set__569a685d95a8.
      DATA t31 TYPE REF TO zlnt_runtime_set__569a685d95a8.
      DATA(t32) = CAST zcl_lnt_include_graph( t7 ).
      DATA(t33) = CAST zcl_lnt_ob_program( t28 ).
      t31 = me->find_mains( i_graph = t32 i_prog = t33 ).
      t30 = t31.
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE i.
      DATA(t36) = CAST zlnt_runtime_set__569a685d95a8( t30 ).
      t35 = t36->size(  ).
      DATA(t37) = 0.
      t34 = xsdbool( t35 = t37 ).
      IF t34 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zcl_lnt_st_expand_macros.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_st_expand_macros.
      CLEAR t39.
      DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t15 ).
      DATA t41 TYPE REF TO zcl_lnt_abap_release.
      DATA(t42) = CAST zif_lnt_configuration( t12 ).
      t41 = t42->get_release(  ).
      DATA t43 TYPE REF TO zif_lnt_registry.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA(t45) = CAST zif_lnt_registry( me->reg ).
        t43 = t45.
      ELSE.
        DATA t46 TYPE REF TO zif_lnt_registry.
        CLEAR t46.
        t43 = t46.
      ENDIF.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA(t48) = abap_true.
      IF t48 = abap_true.
        DATA t49 TYPE string.
        DATA(t50) = CAST zif_lnt_configuration( t12 ).
        t49 = t50->get_language_version(  ).
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t49.
        t47 = t51.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t47 = t52.
      ENDIF.
      t39 = NEW zcl_lnt_st_expand_macros( i_global_macros_5535 = t40 i_release_7928 = t41 i_reg_f149 = t43 i_language_version_0e1d = t47 ).
      t38 = t39.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t54) = CAST zlnt_runtime_set__569a685d95a8( t30 ).
      t53 = t54->values(  ).
      DATA t55 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t55.
      DATA t56 TYPE REF TO object.
      CLEAR t56.
      LOOP AT t53->items INTO t56.
        t55 ?= t56.
        DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t58 TYPE REF TO zcl_lnt_abap_object.
        DATA(t59) = CAST zcl_lnt_abap_object( t55 ).
        t58 = t59.
        DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t61) = CAST zcl_lnt_abap_object( t58 ).
        t60 = t61->parsed.
        t57 = t60.
        DATA t62 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t62.
        DATA t63 TYPE REF TO object.
        CLEAR t63.
        LOOP AT t57->items INTO t63.
          t62 ?= t63.
          DATA(t64) = CAST zcl_lnt_st_expand_macros( t38 ).
          DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t67.
          t66 = t67.
          DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t66 ).
          DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t72 TYPE REF TO zcl_lnt_abap_file.
          DATA(t73) = CAST zcl_lnt_abap_file( t62 ).
          t72 = t73.
          DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t75) = CAST zcl_lnt_abap_file( t72 ).
          t74 = t75->statements.
          t71 = t74.
          t69 = t70->concat( p0 = t71 ).
          t68 = t69.
          DATA(t76) = CAST zlnt_runtime_arra_c22708faf2e3( t68 ).
          t65 = t76.
          DATA(t77) = CAST zcl_lnt_abap_file( t62 ).
          DATA t78 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t78.
          DATA(t79) = abap_true.
          IF t79 = abap_true.
            DATA(t80) = abap_false.
            DATA(t81) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t81->has = abap_true.
            t81->value = t80.
            t78 = t81.
          ELSE.
            DATA t82 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t82.
            t78 = t82.
          ENDIF.
          t64->find_8f95( i_statements = t65 i_file = t77 i_clear_b22e = t78 ).
        ENDLOOP.
      ENDLOOP.
      DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t84 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t85) = CAST zcl_lnt_st_expand_macros( t38 ).
      t84 = t85->list_macro_names(  ).
      t83 = t84.
      DATA t86 TYPE abap_bool.
      DATA(t87) = CAST zcl_lnt_ob_program( t28 ).
      DATA t88 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t89) = NEW zlnt_runtime_set__1827558fd4c7(  ).
      DATA(t90) = CAST zlnt_runtime_arra_8ecd6afe19e0( t83 ).
      t88 = t89->fromArray( p0 = t90 ).
      t86 = me->matches_unknown( i_prog = t87 i_macro_names = t88 ).
      IF t86 = abap_true.
        DATA(t91) = CAST zcl_lnt_ob_program( t28 ).
        t91->set_dirty(  ).
        DATA t92 TYPE REF TO zcl_lnt_iparse_result.
        CLEAR t92.
        DATA(t93) = CAST zcl_lnt_ob_program( t28 ).
        DATA t94 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t94.
        DATA(t95) = abap_true.
        IF t95 = abap_true.
          DATA t96 TYPE REF TO zcl_lnt_abap_release.
          DATA(t97) = CAST zif_lnt_configuration( t12 ).
          t96 = t97->get_release(  ).
          t94 = t96.
        ELSE.
          DATA t98 TYPE REF TO zcl_lnt_abap_release.
          CLEAR t98.
          t94 = t98.
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t99.
        DATA(t100) = abap_true.
        IF t100 = abap_true.
          DATA(t101) = CAST zlnt_runtime_arra_8ecd6afe19e0( t83 ).
          t99 = t101.
        ELSE.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t102.
          t99 = t102.
        ENDIF.
        DATA t103 TYPE REF TO zif_lnt_registry.
        CLEAR t103.
        DATA(t104) = abap_true.
        IF t104 = abap_true.
          DATA(t105) = CAST zif_lnt_registry( me->reg ).
          t103 = t105.
        ELSE.
          DATA t106 TYPE REF TO zif_lnt_registry.
          CLEAR t106.
          t103 = t106.
        ENDIF.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t107.
        DATA(t108) = abap_true.
        IF t108 = abap_true.
          DATA t109 TYPE string.
          DATA(t110) = CAST zif_lnt_configuration( t12 ).
          t109 = t110->get_language_version(  ).
          DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t111->has = abap_true.
          t111->value = t109.
          t107 = t111.
        ELSE.
          DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t112.
          t107 = t112.
        ENDIF.
        t92 = t93->parse( i_release_7928 = t94 i_global_macros_5535 = t99 i_reg_f149 = t103 i_language_version_0e1d = t107 ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD find_candidates.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zif_lnt_registry( me->reg ).
    t3 = t4->get_objects(  ).
    DATA t5 TYPE REF TO zif_lnt_object.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t3->items INTO t6.
      t5 ?= t6.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE abap_bool.
      DATA(t10) = CAST zif_lnt_object( t5 ).
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_ob_program ).
      t8 = xsdbool( t9 = abap_false ).
      t7 = t8.
      IF t8 = abap_false.
        DATA t11 TYPE abap_bool.
        DATA t12 TYPE abap_bool.
        DATA t13 TYPE REF TO zcl_lnt_ob_program.
        DATA t14 TYPE REF TO zcl_lnt_ob_program.
        DATA(t15) = CAST zif_lnt_object( t5 ).
        DATA t16 TYPE REF TO object.
        t16 = t15.
        t14 ?= t16.
        t13 = t14.
        DATA t17 TYPE abap_bool.
        DATA(t18) = CAST zcl_lnt_ob_program( t13 ).
        t18->parse_xml(  ).
        DATA t19 TYPE abap_bool.
        DATA t20 TYPE REF TO zcl_lnt_shape_e86506f0.
        DATA t21 TYPE REF TO zcl_lnt_shape_e86506f0.
        DATA(t22) = CAST zcl_lnt_ob_program( t13 ).
        t21 = t22->parsed_xml.
        t20 = t21.
        t19 = t20->is_include.
        t17 = t19.
        t12 = t17.
        DATA(t23) = abap_false.
        t11 = xsdbool( t12 = t23 ).
        t7 = t11.
      ENDIF.
      IF t7 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t25 TYPE REF TO zcl_lnt_abap_object.
      DATA t26 TYPE REF TO zcl_lnt_ob_program.
      DATA(t27) = CAST zif_lnt_object( t5 ).
      DATA t28 TYPE REF TO object.
      t28 = t27.
      t26 ?= t28.
      t25 = t26.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t30) = CAST zcl_lnt_abap_object( t25 ).
      t29 = t30->parsed.
      t24 = t29.
      DATA t31 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      LOOP AT t24->items INTO t32.
        t31 ?= t32.
        DATA(t33) = VALUE abap_bool( ).
        DATA t34 TYPE abap_bool.
        DATA(t35) = abap_false.
        t34 = t35.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t37 TYPE REF TO zcl_lnt_abap_file.
        DATA(t38) = CAST zcl_lnt_abap_file( t31 ).
        t37 = t38.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t40) = CAST zcl_lnt_abap_file( t37 ).
        t39 = t40->statements.
        t36 = t39.
        DATA t41 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t41.
        DATA t42 TYPE REF TO object.
        CLEAR t42.
        LOOP AT t36->items INTO t42.
          t41 ?= t42.
          DATA t43 TYPE abap_bool.
          DATA t44 TYPE REF TO zif_lnt_statement.
          DATA(t45) = CAST zcl_lnt_statement_node( t41 ).
          t44 = t45->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
          t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_unknown ).
          IF t43 = abap_true.
            DATA(t46) = abap_true.
            t34 = t46.
            EXIT.
          ENDIF.
        ENDLOOP.
        DATA(t47) = t34.
        t33 = t47.
        IF t33 = abap_true.
          DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
          DATA t49 TYPE REF TO zcl_lnt_ob_program.
          DATA(t50) = CAST zif_lnt_object( t5 ).
          DATA t51 TYPE REF TO object.
          t51 = t50.
          t49 ?= t51.
          APPEND t49 TO t48->items.
          EXIT.
        ENDIF.
      ENDLOOP.
    ENDLOOP.
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    result = t52.
    
  ENDMETHOD.
  METHOD find_mains.
    DATA(t1) = CAST zcl_lnt_include_graph( i_graph ).
    DATA(t2) = CAST zcl_lnt_ob_program( i_prog ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/cross_include_macros.ts:70|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD matches_unknown.
    DATA(t1) = CAST zcl_lnt_ob_program( i_prog ).
    DATA(t2) = CAST zlnt_runtime_set__1827558fd4c7( i_macro_names ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/cross_include_macros.ts:83|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d983_81db8b7bc7a4.
  ENDMETHOD.
ENDCLASS.
