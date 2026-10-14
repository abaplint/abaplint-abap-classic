* TS: harness/registry_run.ts:15:1 RegistryRun
CLASS zcl_lnt_registry_run DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA files TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA dependencies TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA stages TYPE string.
    METHODS constructor.
    METHODS add_file IMPORTING i_filename TYPE string i_raw TYPE string.
    METHODS add_dependency IMPORTING i_filename TYPE string i_raw TYPE string.
    METHODS run IMPORTING i_config TYPE string RETURNING VALUE(result) TYPE string.
    METHODS timings RETURNING VALUE(result) TYPE string.
    METHODS parse IMPORTING i_config TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_registry.
    METHODS report_0493 IMPORTING i_reg_f149 TYPE REF TO zcl_lnt_registry RETURNING VALUE(result) TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_registry_run IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->files = t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    me->dependencies = t2.
    DATA(t3) = ||.
    me->stages = t3.
  ENDMETHOD.

  METHOD add_file.
    DATA(t1) = i_filename.
    DATA(t2) = i_raw.
    DATA(t3) = me->files.
    DATA t4 TYPE REF TO zcl_lnt_memory_file.
    DATA(t5) = t1.
    DATA(t6) = t2.
    t4 = NEW zcl_lnt_memory_file( i_filename = t5 i_raw = t6 ).
    APPEND t4 TO t3->items.
  ENDMETHOD.

  METHOD add_dependency.
    DATA(t1) = i_filename.
    DATA(t2) = i_raw.
    DATA(t3) = me->dependencies.
    DATA t4 TYPE REF TO zcl_lnt_memory_file.
    DATA(t5) = t1.
    DATA(t6) = t2.
    t4 = NEW zcl_lnt_memory_file( i_filename = t5 i_raw = t6 ).
    APPEND t4 TO t3->items.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_config.
    DATA t2 TYPE string.
    DATA t3 TYPE REF TO zcl_lnt_registry.
    DATA(t4) = t1.
    t3 = me->parse( i_config = t4 ).
    t2 = me->report_0493( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD timings.
    DATA(t1) = CONV string( me->stages ).
    result = t1.

  ENDMETHOD.

  METHOD parse.
    CONSTANTS range_check_hi_2gosa7pa2gv TYPE f VALUE '9007199254740991'.
    CONSTANTS range_check_lo_n2gosa7pa2gv TYPE f VALUE '-9007199254740991'.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_config.
    DATA t2 TYPE REF TO zcl_lnt_registry.
    DATA t3 TYPE REF TO zcl_lnt_registry.
    DATA t4 TYPE REF TO zcl_lnt_config.
    DATA(t5) = t1.
    t4 = NEW zcl_lnt_config( i_json = t5 ).
    t3 = NEW zcl_lnt_registry( i_conf = t4 ).
    t2 = t3.
    DATA t6 TYPE REF TO zif_lnt_registry.
    DATA(t7) = t2.
    DATA(t8) = me->files.
    t6 = t7->add_files_179c( i_files = t8 ).
    DATA t9 TYPE REF TO zif_lnt_registry.
    DATA(t10) = t2.
    DATA(t11) = me->dependencies.
    t9 = t10->add_dependencies( i_files = t11 ).
    DATA t12 TYPE REF TO zif_lnt_configuration.
    DATA t13 TYPE REF TO zif_lnt_configuration.
    DATA t14 TYPE REF TO zcl_lnt_registry.
    DATA(t15) = t2.
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_configuration.
    DATA(t17) = t14.
    t16 = t17->conf.
    t13 = t16.
    t12 = t13.
    DATA t18 TYPE int8.
    DATA(t19) = CONV int8( 0 ).
    t18 = t19.
    DATA t20 TYPE int8.
    DATA(t21) = CONV int8( 0 ).
    t20 = t21.
    DATA t22 TYPE int8.
    DATA(t23) = CONV int8( 0 ).
    t22 = t23.
    DATA(t24) = VALUE int8( ).
    DATA(t25) = VALUE int8( ).
    DATA t26 TYPE f.
    DATA(t27) = 0.
    t26 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t26 <> trunc( t26 ) OR t26 < range_check_lo_n2gosa7pa2gv OR t26 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t25 = t26.
    t24 = t25.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t29) = t2.
    t28 = t29->get_objects( ).
    DATA t30 TYPE REF TO zif_lnt_object.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    LOOP AT t28->items INTO t31.
      t30 ?= t31.
      DATA t32 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_iparse_result.
      CLEAR t33.
      DATA(t34) = t30.
      DATA t35 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA t37 TYPE REF TO zcl_lnt_abap_release.
        DATA(t38) = t12.
        t37 = t38->get_release( ).
        t35 = t37.
      ELSE.
        DATA t39 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t39.
        t35 = t39.
      ENDIF.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t41 TYPE REF TO zcl_lnt_isyntax_settings.
      DATA(t42) = t12.
      t41 = t42->get_syntax_setttings( ).
      t40 = t41->global_macros.
      DATA(t43) = t2.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = abap_true.
      IF t45 = abap_true.
        DATA t46 TYPE string.
        DATA(t47) = t12.
        t46 = t47->get_language_version( ).
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t46.
        t44 = t48.
      ELSE.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        t44 = t49.
      ENDIF.
      t33 = t34->parse( i_release_7928 = t35 i_global_macros_5535 = t40 i_reg_f149 = t43 i_language_version_0e1d = t44 ).
      t32 = t33.
      DATA(t50) = VALUE abap_bool( ).
      DATA t51 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t52 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t53) = t32.
      t52 = t53->runtime_extra.
      t51 = t52.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      t54 = t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t51.
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      t56 = xsdbool( t57 = abap_false ).
      t50 = t56.
      IF t50 = abap_true.
        DATA t59 TYPE int8.
        DATA(t60) = t18.
        DATA t61 TYPE int8.
        DATA t62 TYPE REF TO zcl_lnt_shape_8fc6df03.
        DATA t63 TYPE REF TO zcl_lnt_shape_8fc6df03.
        DATA(t64) = t32.
        t63 = t64->runtime_extra.
        t62 = t63.
        t61 = t62->lexing.
        t59 = t60 + t61.
        IF t59 < range_int8_bound_min OR t59 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t18 = t59.
        DATA t65 TYPE int8.
        DATA(t66) = t20.
        DATA t67 TYPE int8.
        DATA t68 TYPE REF TO zcl_lnt_shape_8fc6df03.
        DATA t69 TYPE REF TO zcl_lnt_shape_8fc6df03.
        DATA(t70) = t32.
        t69 = t70->runtime_extra.
        t68 = t69.
        t67 = t68->statements.
        t65 = t66 + t67.
        IF t65 < range_int8_bound_min OR t65 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t20 = t65.
        DATA t71 TYPE int8.
        DATA(t72) = t22.
        DATA t73 TYPE int8.
        DATA t74 TYPE REF TO zcl_lnt_shape_8fc6df03.
        DATA t75 TYPE REF TO zcl_lnt_shape_8fc6df03.
        DATA(t76) = t32.
        t75 = t76->runtime_extra.
        t74 = t75.
        t73 = t74->structure.
        t71 = t72 + t73.
        IF t71 < range_int8_bound_min OR t71 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t22 = t71.
      ENDIF.
    ENDLOOP.
    DATA(t77) = VALUE int8( ).
    DATA(t78) = VALUE int8( ).
    DATA t79 TYPE f.
    DATA(t80) = 0.
    t79 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t79 <> trunc( t79 ) OR t79 < range_check_lo_n2gosa7pa2gv OR t79 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t78 = t79.
    t77 = t78.
    DATA t81 TYPE REF TO zcl_lnt_cross_include_macros.
    DATA(t82) = t2.
    t81 = NEW zcl_lnt_cross_include_macros( i_reg_f149 = t82 ).
    t81->run( ).
    DATA(t83) = VALUE int8( ).
    DATA(t84) = VALUE int8( ).
    DATA t85 TYPE f.
    DATA(t86) = 0.
    t85 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t85 <> trunc( t85 ) OR t85 < range_check_lo_n2gosa7pa2gv OR t85 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t84 = t85.
    t83 = t84.
    DATA t87 TYPE REF TO zcl_lnt_fnd_glbl_dfntns.
    DATA(t88) = t2.
    t87 = NEW zcl_lnt_fnd_glbl_dfntns( i_reg_f149 = t88 ).
    DATA t89 TYPE REF TO zif_lnt_progress.
    CLEAR t89.
    t87->run( i_progress = t89 ).
    DATA(t90) = VALUE int8( ).
    DATA(t91) = VALUE int8( ).
    DATA t92 TYPE f.
    DATA(t93) = 0.
    t92 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t92 <> trunc( t92 ) OR t92 < range_check_lo_n2gosa7pa2gv OR t92 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t91 = t92.
    t90 = t91.
    DATA(t94) = VALUE string( ).
    DATA(t95) = VALUE string( ).
    DATA(t96) = VALUE string( ).
    DATA(t97) = VALUE string( ).
    DATA(t98) = VALUE string( ).
    DATA(t99) = VALUE string( ).
    DATA t100 TYPE string.
    DATA t101 TYPE string.
    DATA t102 TYPE string.
    DATA t103 TYPE string.
    DATA t104 TYPE string.
    DATA t105 TYPE string.
    DATA(t106) = |lexer=|.
    DATA t107 TYPE string.
    DATA(t108) = t18.
    t107 = |{ t108 }|.
    DATA(t109) = strlen( t106 ).
    t105 = |{ t106 }{ t107 }|.
    DATA(t110) = | statements=|.
    DATA(t111) = strlen( t105 ).
    t104 = |{ t105 }{ t110 }|.
    DATA t112 TYPE string.
    DATA(t113) = t20.
    t112 = |{ t113 }|.
    DATA(t114) = strlen( t104 ).
    t103 = |{ t104 }{ t112 }|.
    DATA(t115) = | structures=|.
    DATA(t116) = strlen( t103 ).
    t102 = |{ t103 }{ t115 }|.
    DATA t117 TYPE string.
    DATA(t118) = t22.
    t117 = |{ t118 }|.
    DATA(t119) = strlen( t102 ).
    t101 = |{ t102 }{ t117 }|.
    DATA(t120) = | objects=|.
    DATA(t121) = strlen( t101 ).
    t100 = |{ t101 }{ t120 }|.
    DATA(t122) = VALUE string( ).
    DATA t123 TYPE int8.
    DATA(t124) = t77.
    DATA(t125) = t24.
    t123 = t124 - t125.
    IF t123 < range_int8_bound_min OR t123 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t122 = |{ t123 }|.
    DATA(t126) = strlen( t100 ).
    t99 = |{ t100 }{ t122 }|.
    DATA(t127) = | macros=|.
    DATA(t128) = strlen( t99 ).
    t98 = |{ t99 }{ t127 }|.
    DATA(t129) = VALUE string( ).
    DATA t130 TYPE int8.
    DATA(t131) = t83.
    DATA(t132) = t77.
    t130 = t131 - t132.
    IF t130 < range_int8_bound_min OR t130 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t129 = |{ t130 }|.
    DATA(t133) = strlen( t98 ).
    t97 = |{ t98 }{ t129 }|.
    DATA(t134) = | globals=|.
    DATA(t135) = strlen( t97 ).
    t96 = |{ t97 }{ t134 }|.
    DATA(t136) = VALUE string( ).
    DATA t137 TYPE int8.
    DATA(t138) = t90.
    DATA(t139) = t83.
    t137 = t138 - t139.
    IF t137 < range_int8_bound_min OR t137 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t136 = |{ t137 }|.
    DATA(t140) = strlen( t96 ).
    t95 = |{ t96 }{ t136 }|.
    DATA(t141) = ||.
    DATA(t142) = strlen( t95 ).
    t94 = |{ t95 }{ t141 }|.
    me->stages = t94.
    DATA(t143) = t2.
    result = t143.

  ENDMETHOD.

  METHOD report_0493.
    CONSTANTS range_check_hi_2gosa7pa2gv TYPE f VALUE '9007199254740991'.
    CONSTANTS range_check_lo_n2gosa7pa2gv TYPE f VALUE '-9007199254740991'.
    CONSTANTS range_i_check_lo_n2gosa7pa2gv TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_2gosa7pa2gv TYPE int8 VALUE '9007199254740991'.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_rules_runner.
    DATA t3 TYPE REF TO zcl_lnt_rules_runner.
    DATA(t4) = t1.
    t3 = NEW zcl_lnt_rules_runner( i_reg_f149 = t4 ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zif_lnt_configuration.
    DATA t8 TYPE REF TO zcl_lnt_registry.
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zif_lnt_configuration.
    DATA(t11) = t8.
    t10 = t11->conf.
    t7 = t10.
    t6 = t7->get_enabled_rules( ).
    t5 = t6.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t14) = t2.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t1.
    t15 = t16->get_objects( ).
    t13 = t14->objects_to_check( i_objects = t15 ).
    t12 = t13.
    DATA(t17) = VALUE int8( ).
    DATA(t18) = VALUE int8( ).
    DATA t19 TYPE f.
    DATA(t20) = 0.
    t19 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t19 <> trunc( t19 ) OR t19 < range_check_lo_n2gosa7pa2gv OR t19 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t18 = t19.
    t17 = t18.
    DATA(t21) = t12.
    DATA t22 TYPE REF TO zif_lnt_object.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
    LOOP AT t21->items INTO t23.
      t22 ?= t23.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t22.
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_abap_object ).
      IF t24 = abap_true.
        DATA t26 TYPE REF TO zcl_lnt_isyntax_result.
        DATA t27 TYPE REF TO zcl_lnt_syntax_logic.
        DATA(t28) = t1.
        DATA t29 TYPE REF TO zcl_lnt_abap_object.
        DATA(t30) = t22.
        DATA t31 TYPE REF TO object.
        t31 = t30.
        t29 ?= t31.
        t27 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t28 i_object_19cd = t29 ).
        t26 = t27->run( ).
      ENDIF.
    ENDLOOP.
    DATA(t32) = VALUE int8( ).
    DATA(t33) = VALUE int8( ).
    DATA t34 TYPE f.
    DATA(t35) = 0.
    t34 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t34 <> trunc( t34 ) OR t34 < range_check_lo_n2gosa7pa2gv OR t34 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t33 = t34.
    t32 = t33.
    DATA t36 TYPE REF TO zlnt_runtime_arra_f39560c658f8.
    DATA t37 TYPE REF TO zlnt_runtime_arra_f39560c658f8.
    CREATE OBJECT t37.
    t36 = t37.
    DATA(t38) = t5.
    DATA t39 TYPE REF TO zif_lnt_rule.
    CLEAR t39.
    DATA t40 TYPE REF TO object.
    CLEAR t40.
    LOOP AT t38->items INTO t40.
      t39 ?= t40.
      DATA(t41) = VALUE int8( ).
      DATA(t42) = VALUE int8( ).
      DATA t43 TYPE f.
      DATA(t44) = 0.
      t43 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      IF t43 <> trunc( t43 ) OR t43 < range_check_lo_n2gosa7pa2gv OR t43 > range_check_hi_2gosa7pa2gv.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t42 = t43.
      t41 = t42.
      DATA t45 TYPE REF TO zif_lnt_rule.
      DATA(t46) = t39.
      DATA(t47) = t1.
      t45 = t46->initialize( i_reg_f149 = t47 ).
      DATA(t48) = t36.
      DATA(t49) = VALUE int8( ).
      DATA(t50) = VALUE f( ).
      DATA t51 TYPE f.
      DATA(t52) = 0.
      t51 = zlnt_runtime_tele_970d5104e5f4=>now( ).
      DATA(t53) = VALUE f( ).
      DATA(t54) = VALUE int8( ).
      DATA(t55) = t41.
      IF t55 < range_i_check_lo_n2gosa7pa2gv OR t55 > range_int_check_hi_2gosa7pa2gv.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t54 = t55.
      t53 = t54.
      t50 = t51 - t53.
      IF t50 <> trunc( t50 ) OR t50 < range_check_lo_n2gosa7pa2gv OR t50 > range_check_hi_2gosa7pa2gv.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t49 = t50.
      APPEND t49 TO t48->items.
    ENDLOOP.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    t56 = t57.
    DATA(t58) = t12.
    DATA t59 TYPE REF TO zif_lnt_object.
    CLEAR t59.
    DATA t60 TYPE REF TO object.
    CLEAR t60.
    LOOP AT t58->items INTO t60.
      t59 ?= t60.
      DATA t61 TYPE i.
      DATA(t62) = 0.
      t61 = t62.
      DO.
        DATA t63 TYPE abap_bool.
        DATA(t64) = t61.
        DATA t65 TYPE i.
        DATA(t66) = t5.
        t65 = lines( t66->items ).
        t63 = xsdbool( t64 < t65 ).
        IF t63 = abap_false.
          EXIT.
        ENDIF.
        DATA(t67) = VALUE int8( ).
        DATA(t68) = VALUE int8( ).
        DATA t69 TYPE f.
        DATA(t70) = 0.
        t69 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        IF t69 <> trunc( t69 ) OR t69 < range_check_lo_n2gosa7pa2gv OR t69 > range_check_hi_2gosa7pa2gv.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t68 = t69.
        t67 = t68.
        DATA(t71) = VALUE i( ).
        DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t73 TYPE REF TO zif_lnt_rule.
        DATA(t74) = t5.
        DATA(t75) = t61.
        t75 = t75 + 1.
        DATA t76 TYPE REF TO object.
        CLEAR t76.
        READ TABLE t74->items INDEX t75 INTO t76.
        t73 ?= t76.
        DATA(t77) = t59.
        t72 = t73->run( i_obj_1ed0 = t77 ).
        DATA t78 TYPE REF TO zcl_lnt_issue.
        CLEAR t78.
        DATA t79 TYPE REF TO object.
        CLEAR t79.
        LOOP AT t72->items INTO t79.
          t78 ?= t79.
          DATA(t80) = t56.
          DATA(t81) = t78.
          APPEND t81 TO t80->items.
        ENDLOOP.
        DATA t82 TYPE i.
        DATA(t83) = t56.
        t82 = lines( t83->items ).
        t71 = t82.
        DATA(t84) = t36.
        DATA(t85) = t61.
        DATA(t86) = VALUE int8( ).
        DATA(t87) = VALUE f( ).
        DATA(t88) = VALUE f( ).
        DATA(t89) = VALUE f( ).
        DATA(t90) = VALUE int8( ).
        DATA(t91) = VALUE int8( ).
        DATA(t92) = t36.
        DATA(t93) = t61.
        t93 = t93 + 1.
        READ TABLE t92->items INDEX t93 INTO t91.
        IF t91 < range_i_check_lo_n2gosa7pa2gv OR t91 > range_int_check_hi_2gosa7pa2gv.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t90 = t91.
        t89 = t90.
        DATA t94 TYPE f.
        DATA(t95) = 0.
        t94 = zlnt_runtime_tele_970d5104e5f4=>now( ).
        t88 = t89 + t94.
        DATA(t96) = VALUE f( ).
        DATA(t97) = VALUE int8( ).
        DATA(t98) = t67.
        IF t98 < range_i_check_lo_n2gosa7pa2gv OR t98 > range_int_check_hi_2gosa7pa2gv.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t97 = t98.
        t96 = t97.
        t87 = t88 - t96.
        IF t87 <> trunc( t87 ) OR t87 < range_check_lo_n2gosa7pa2gv OR t87 > range_check_hi_2gosa7pa2gv.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t86 = t87.
        t85 = t85 + 1.
        DATA(t99) = VALUE int8( ).
        CLEAR t99.
        WHILE lines( t84->items ) < t85.
          APPEND t99 TO t84->items.
        ENDWHILE.
        MODIFY t84->items FROM t86 INDEX t85.
        DATA t100 TYPE i.
        DATA(t101) = t61.
        DATA(t102) = 1.
        t100 = t101 + t102.
        t61 = t100.
      ENDDO.
    ENDLOOP.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t105) = t2.
    DATA(t106) = t56.
    t104 = t105->exclude_issues( i_issues = t106 ).
    t103 = t104.
    DATA t107 TYPE string.
    DATA(t108) = ||.
    t107 = t108.
    DATA t109 TYPE i.
    DATA(t110) = 0.
    t109 = t110.
    DO.
      DATA t111 TYPE abap_bool.
      DATA(t112) = t109.
      DATA t113 TYPE i.
      DATA(t114) = t5.
      t113 = lines( t114->items ).
      t111 = xsdbool( t112 < t113 ).
      IF t111 = abap_false.
        EXIT.
      ENDIF.
      DATA t115 TYPE string.
      DATA(t116) = t107.
      DATA t117 TYPE string.
      DATA t118 TYPE string.
      DATA t119 TYPE string.
      DATA t120 TYPE string.
      DATA(t121) = | |.
      DATA t122 TYPE string.
      DATA t123 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t124 TYPE REF TO zif_lnt_rule.
      DATA(t125) = t5.
      DATA(t126) = t109.
      t126 = t126 + 1.
      DATA t127 TYPE REF TO object.
      CLEAR t127.
      READ TABLE t125->items INDEX t126 INTO t127.
      t124 ?= t127.
      t123 = t124->get_metadata( ).
      t122 = t123->key.
      DATA(t128) = strlen( t121 ).
      t120 = |{ t121 }{ t122 }|.
      DATA(t129) = |=|.
      DATA(t130) = strlen( t120 ).
      t119 = |{ t120 }{ t129 }|.
      DATA t131 TYPE string.
      DATA(t132) = VALUE int8( ).
      DATA(t133) = t36.
      DATA(t134) = t109.
      t134 = t134 + 1.
      READ TABLE t133->items INDEX t134 INTO t132.
      t131 = |{ t132 }|.
      DATA(t135) = strlen( t119 ).
      t118 = |{ t119 }{ t131 }|.
      DATA(t136) = ||.
      DATA(t137) = strlen( t118 ).
      t117 = |{ t118 }{ t136 }|.
      DATA(t138) = strlen( t116 ).
      t115 = |{ t116 }{ t117 }|.
      t107 = t115.
      DATA t139 TYPE i.
      DATA(t140) = t109.
      DATA(t141) = 1.
      t139 = t140 + t141.
      t109 = t139.
    ENDDO.
    DATA(t142) = VALUE string( ).
    DATA(t143) = CONV string( me->stages ).
    DATA(t144) = VALUE string( ).
    DATA(t145) = VALUE string( ).
    DATA(t146) = VALUE string( ).
    DATA(t147) = VALUE string( ).
    DATA(t148) = | syntax=|.
    DATA(t149) = VALUE string( ).
    DATA t150 TYPE int8.
    DATA(t151) = t32.
    DATA(t152) = t17.
    t150 = t151 - t152.
    IF t150 < range_int8_bound_min OR t150 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t149 = |{ t150 }|.
    DATA(t153) = strlen( t148 ).
    t147 = |{ t148 }{ t149 }|.
    DATA(t154) = ||.
    DATA(t155) = strlen( t147 ).
    t146 = |{ t147 }{ t154 }|.
    DATA(t156) = t107.
    DATA(t157) = strlen( t146 ).
    t145 = |{ t146 }{ t156 }|.
    DATA(t158) = ||.
    DATA(t159) = strlen( t145 ).
    t144 = |{ t145 }{ t158 }|.
    DATA(t160) = strlen( t143 ).
    t142 = |{ t143 }{ t144 }|.
    me->stages = t142.
    DATA t161 TYPE string.
    DATA t162 TYPE string.
    DATA t163 TYPE string.
    DATA(t164) = ||.
    DATA t165 TYPE string.
    DATA t166 TYPE i.
    DATA(t167) = t103.
    t166 = lines( t167->items ).
    t165 = |{ t166 }|.
    DATA(t168) = strlen( t164 ).
    t163 = |{ t164 }{ t165 }|.
    DATA(t169) = ||.
    DATA(t170) = strlen( t163 ).
    t162 = |{ t163 }{ t169 }|.
    t161 = t162.
    DATA(t171) = t103.
    DATA t172 TYPE REF TO zcl_lnt_issue.
    CLEAR t172.
    DATA t173 TYPE REF TO object.
    CLEAR t173.
    LOOP AT t171->items INTO t173.
      t172 ?= t173.
      DATA t174 TYPE string.
      DATA(t175) = t161.
      DATA t176 TYPE string.
      DATA t177 TYPE string.
      DATA t178 TYPE string.
      DATA t179 TYPE string.
      DATA t180 TYPE string.
      DATA t181 TYPE string.
      DATA t182 TYPE string.
      DATA t183 TYPE string.
      DATA t184 TYPE string.
      DATA t185 TYPE string.
      DATA t186 TYPE string.
      DATA t187 TYPE string.
      DATA t188 TYPE string.
      DATA t189 TYPE string.
      DATA t190 TYPE string.
      DATA t191 TYPE string.
      DATA(t192) = ||.
      DATA t193 TYPE c LENGTH 1.
      CLEAR t193.
      t193 = cl_abap_conv_in_ce=>uccpi( 10 ).
      CONCATENATE t192 t193 INTO t192 RESPECTING BLANKS.
      DATA t194 TYPE string.
      DATA t195 TYPE REF TO zcl_lnt_issue.
      DATA(t196) = t172.
      t195 = t196.
      DATA t197 TYPE string.
      DATA t198 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t199) = t195.
      t198 = t199->data_56cc.
      t197 = t198->key.
      t194 = t197.
      DATA(t200) = strlen( t192 ).
      t191 = |{ t192 }{ t194 }|.
      DATA(t201) = |\||.
      DATA(t202) = strlen( t191 ).
      t190 = |{ t191 }{ t201 }|.
      DATA t203 TYPE string.
      DATA t204 TYPE REF TO zcl_lnt_issue.
      DATA(t205) = t172.
      t204 = t205.
      DATA t206 TYPE string.
      DATA t207 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t208) = t204.
      t207 = t208->data_56cc.
      t206 = t207->severity.
      t203 = t206.
      DATA(t209) = strlen( t190 ).
      t189 = |{ t190 }{ t203 }|.
      DATA(t210) = |\||.
      DATA(t211) = strlen( t189 ).
      t188 = |{ t189 }{ t210 }|.
      DATA t212 TYPE string.
      DATA t213 TYPE REF TO zcl_lnt_issue.
      DATA(t214) = t172.
      t213 = t214.
      DATA t215 TYPE string.
      DATA t216 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t217) = t213.
      t216 = t217->data_56cc.
      t215 = t216->filename.
      t212 = t215.
      DATA(t218) = strlen( t188 ).
      t187 = |{ t188 }{ t212 }|.
      DATA(t219) = |\||.
      DATA(t220) = strlen( t187 ).
      t186 = |{ t187 }{ t219 }|.
      DATA t221 TYPE string.
      DATA t222 TYPE int8.
      DATA t223 TYPE REF TO zcl_lnt_position.
      DATA t224 TYPE REF TO zcl_lnt_position.
      DATA t225 TYPE REF TO zcl_lnt_issue.
      DATA(t226) = t172.
      t225 = t226.
      DATA t227 TYPE REF TO zcl_lnt_position.
      DATA t228 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t229) = t225.
      t228 = t229->data_56cc.
      t227 = t228->start.
      t224 = t227.
      t223 = t224.
      DATA t230 TYPE int8.
      DATA(t231) = t223.
      t230 = t231->row.
      t222 = t230.
      t221 = |{ t222 }|.
      DATA(t232) = strlen( t186 ).
      t185 = |{ t186 }{ t221 }|.
      DATA(t233) = |:|.
      DATA(t234) = strlen( t185 ).
      t184 = |{ t185 }{ t233 }|.
      DATA t235 TYPE string.
      DATA t236 TYPE int8.
      DATA t237 TYPE REF TO zcl_lnt_position.
      DATA t238 TYPE REF TO zcl_lnt_position.
      DATA t239 TYPE REF TO zcl_lnt_issue.
      DATA(t240) = t172.
      t239 = t240.
      DATA t241 TYPE REF TO zcl_lnt_position.
      DATA t242 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t243) = t239.
      t242 = t243->data_56cc.
      t241 = t242->start.
      t238 = t241.
      t237 = t238.
      DATA t244 TYPE int8.
      DATA(t245) = t237.
      t244 = t245->col.
      t236 = t244.
      t235 = |{ t236 }|.
      DATA(t246) = strlen( t184 ).
      t183 = |{ t184 }{ t235 }|.
      DATA(t247) = |\||.
      DATA(t248) = strlen( t183 ).
      t182 = |{ t183 }{ t247 }|.
      DATA t249 TYPE string.
      DATA t250 TYPE int8.
      DATA t251 TYPE REF TO zcl_lnt_position.
      DATA t252 TYPE REF TO zcl_lnt_position.
      DATA t253 TYPE REF TO zcl_lnt_issue.
      DATA(t254) = t172.
      t253 = t254.
      DATA t255 TYPE REF TO zcl_lnt_position.
      DATA t256 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t257) = t253.
      t256 = t257->data_56cc.
      t255 = t256->end.
      t252 = t255.
      t251 = t252.
      DATA t258 TYPE int8.
      DATA(t259) = t251.
      t258 = t259->row.
      t250 = t258.
      t249 = |{ t250 }|.
      DATA(t260) = strlen( t182 ).
      t181 = |{ t182 }{ t249 }|.
      DATA(t261) = |:|.
      DATA(t262) = strlen( t181 ).
      t180 = |{ t181 }{ t261 }|.
      DATA t263 TYPE string.
      DATA t264 TYPE int8.
      DATA t265 TYPE REF TO zcl_lnt_position.
      DATA t266 TYPE REF TO zcl_lnt_position.
      DATA t267 TYPE REF TO zcl_lnt_issue.
      DATA(t268) = t172.
      t267 = t268.
      DATA t269 TYPE REF TO zcl_lnt_position.
      DATA t270 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t271) = t267.
      t270 = t271->data_56cc.
      t269 = t270->end.
      t266 = t269.
      t265 = t266.
      DATA t272 TYPE int8.
      DATA(t273) = t265.
      t272 = t273->col.
      t264 = t272.
      t263 = |{ t264 }|.
      DATA(t274) = strlen( t180 ).
      t179 = |{ t180 }{ t263 }|.
      DATA(t275) = |\||.
      DATA(t276) = strlen( t179 ).
      t178 = |{ t179 }{ t275 }|.
      DATA t277 TYPE string.
      DATA t278 TYPE REF TO zcl_lnt_issue.
      DATA(t279) = t172.
      t278 = t279.
      DATA t280 TYPE string.
      DATA t281 TYPE REF TO zcl_lnt_iissue_data.
      DATA(t282) = t278.
      t281 = t282->data_56cc.
      t280 = t281->message_25cb.
      t277 = t280.
      DATA(t283) = strlen( t178 ).
      t177 = |{ t178 }{ t277 }|.
      DATA(t284) = ||.
      DATA(t285) = strlen( t177 ).
      t176 = |{ t177 }{ t284 }|.
      DATA(t286) = strlen( t175 ).
      t174 = |{ t175 }{ t176 }|.
      t161 = t174.
    ENDLOOP.
    DATA(t287) = t161.
    result = t287.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_1d9717abe6a4=>zlnt_member_d0_5ecc9e9989d6ba.
  ENDMETHOD.
ENDCLASS.
