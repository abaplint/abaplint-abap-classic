* TS: src/abap/abap_parser.ts:28:1 ABAPParser
CLASS zcl_lnt_abap_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA language_version TYPE string.
    DATA global_macros TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_options_or_release TYPE REF TO zif_lnt_union_0eeefcfe OPTIONAL i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_reg_f149 TYPE REF TO zif_lnt_registry OPTIONAL.
    CLASS-METHODS is_release IMPORTING i_o TYPE REF TO zif_lnt_union_0eeefcfe RETURNING VALUE(result) TYPE abap_bool.
    METHODS parse IMPORTING i_files TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iabapparser_result.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_parser IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_union_0eeefcfe( i_options_or_release ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_global_macros_5535 ).
    DATA(t3) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_union_0eeefcfe.
    DATA(t7) = CAST zif_lnt_union_0eeefcfe( t1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zif_lnt_union_0eeefcfe( t6 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    t4 = t5.
    IF t5 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zif_lnt_union_0eeefcfe.
      DATA(t14) = CAST zif_lnt_union_0eeefcfe( t1 ).
      t13 = t14.
      t12 = zcl_lnt_abap_parser=>is_release( i_o = t13 ).
      t4 = t12.
    ENDIF.
    IF t4 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_abap_release.
      DATA t17 TYPE REF TO zcl_lnt_abap_release.
      DATA(t18) = CAST zif_lnt_union_0eeefcfe( t1 ).
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17 ?= t19.
      t16 = t17.
      DATA t20 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t20.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = CAST zcl_lnt_abap_release( t16 ).
      IF t22 IS INITIAL.
        t21 = abap_true.
      ENDIF.
      IF t21 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t23.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t23 = zcl_lnt_version_module=>default_release.
        t20 = t23.
      ELSE.
        DATA t24 TYPE REF TO zcl_lnt_abap_release.
        DATA(t25) = CAST zcl_lnt_abap_release( t16 ).
        t24 = t25.
        t20 = t24.
      ENDIF.
      t15 = t20.
      me->release_3664 = t15.
      DATA(t26) = |Normal|.
      me->language_version = t26.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t29) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      IF t31 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t33.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t35) = CAST zlnt_runtime_arra_8ecd6afe19e0( t28 ).
        t34 = t35.
        t30 = t34.
      ENDIF.
      t27 = t30.
      me->global_macros = t27.
      DATA(t36) = CAST zif_lnt_registry( t3 ).
      me->reg = t36.
    ELSE.
      DATA t37 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_abap_release.
      DATA t39 TYPE REF TO zcl_lnt_abap_release.
      DATA t40 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA(t41) = CAST zif_lnt_union_0eeefcfe( t1 ).
      DATA t42 TYPE REF TO object.
      t42 = t41.
      t40 ?= t42.
      t39 = t40->release_3664.
      t38 = t39.
      DATA t43 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t43.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = CAST zcl_lnt_abap_release( t38 ).
      IF t45 IS INITIAL.
        t44 = abap_true.
      ENDIF.
      IF t44 = abap_true.
        DATA t46 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t46.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t46 = zcl_lnt_version_module=>default_release.
        t43 = t46.
      ELSE.
        DATA t47 TYPE REF TO zcl_lnt_abap_release.
        DATA(t48) = CAST zcl_lnt_abap_release( t38 ).
        t47 = t48.
        t43 = t47.
      ENDIF.
      t37 = t43.
      me->release_3664 = t37.
      DATA(t49) = VALUE string( ).
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t52 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA(t53) = CAST zif_lnt_union_0eeefcfe( t1 ).
      DATA t54 TYPE REF TO object.
      t54 = t53.
      t52 ?= t54.
      t51 = t52->language_version.
      t50 = t51.
      DATA(t55) = VALUE string( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
      IF t57 IS INITIAL.
        t56 = abap_true.
      ELSEIF t57->has = abap_false.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        DATA(t58) = |Normal|.
        t55 = t58.
      ELSE.
        DATA t59 TYPE string.
        DATA(t60) = CAST zlnt_runtime_opti_4ba3bdccd169( t50 ).
        t59 = t60->value.
        t55 = t59.
      ENDIF.
      t49 = t55.
      me->language_version = t49.
      DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t64 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA(t65) = CAST zif_lnt_union_0eeefcfe( t1 ).
      DATA t66 TYPE REF TO object.
      t66 = t65.
      t64 ?= t66.
      t63 = t64->global_macros.
      t62 = t63.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = CAST zlnt_runtime_arra_8ecd6afe19e0( t62 ).
      IF t69 IS INITIAL.
        t68 = abap_true.
      ENDIF.
      IF t68 = abap_true.
        DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t70.
        t67 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t72) = CAST zlnt_runtime_arra_8ecd6afe19e0( t62 ).
        t71 = t72.
        t67 = t71.
      ENDIF.
      t61 = t67.
      me->global_macros = t61.
      DATA t73 TYPE REF TO zif_lnt_registry.
      DATA t74 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA(t75) = CAST zif_lnt_union_0eeefcfe( t1 ).
      DATA t76 TYPE REF TO object.
      t76 = t75.
      t74 ?= t76.
      t73 = t74->reg.
      me->reg = t73.
    ENDIF.
  ENDMETHOD.
  METHOD is_release.
    DATA(t1) = CAST zif_lnt_union_0eeefcfe( i_o ).
    DATA t2 TYPE abap_bool.
    DATA(t3) = CAST zif_lnt_union_0eeefcfe( t1 ).
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_abap_release ).
    result = t2.

  ENDMETHOD.
  METHOD parse.
    CONSTANTS range_check_hi_2gosa7pa2gv TYPE f VALUE '9007199254740991'.
    CONSTANTS range_check_lo_n2gosa7pa2gv TYPE f VALUE '-9007199254740991'.
    CONSTANTS range_i_check_lo_n2gosa7pa2gv TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    CONSTANTS range_int_check_hi_2gosa7pa2gv TYPE int8 VALUE '9007199254740991'.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_files ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = VALUE int8( ).
    DATA(t7) = VALUE int8( ).
    DATA t8 TYPE f.
    DATA(t9) = 0.
    t8 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t8 <> trunc( t8 ) OR t8 < range_check_lo_n2gosa7pa2gv OR t8 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t7 = t8.
    t6 = t7.
    DATA(t10) = VALUE int8( ).
    DATA(t11) = VALUE int8( ).
    DATA t12 TYPE f.
    DATA(t13) = 0.
    t12 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t12 <> trunc( t12 ) OR t12 < range_check_lo_n2gosa7pa2gv OR t12 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t11 = t12.
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t19 TYPE REF TO zif_lnt_file.
    CLEAR t19.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    LOOP AT t18->items INTO t20.
      t19 ?= t20.
      DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
      DATA t22 TYPE REF TO zcl_lnt_iabaplexer_result.
      DATA t23 TYPE REF TO zcl_lnt_lexer.
      DATA(t24) = NEW zcl_lnt_lexer( ).
      t23 = t24.
      DATA t25 TYPE REF TO zif_lnt_file.
      DATA(t26) = CAST zif_lnt_file( t19 ).
      t25 = t26.
      DATA t27 TYPE REF TO zcl_lnt_iabaplexer_result.
      DATA(t28) = CAST zcl_lnt_lexer( t23 ).
      DATA t29 TYPE REF TO zcl_lnt_position.
      CLEAR t29.
      t28->virtual = t29.
      DATA(t30) = CAST zcl_lnt_lexer( t23 ).
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t31.
      t30->tokens = t31.
      DATA(t32) = CAST zcl_lnt_lexer( t23 ).
      DATA t33 TYPE int8.
      DATA(t34) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
      t33 = t34.
      t32->m = t33.
      DATA(t35) = CAST zcl_lnt_lexer( t23 ).
      DATA t36 TYPE string.
      DATA(t37) = CAST zif_lnt_file( t25 ).
      t36 = t37->get_raw( ).
      t35->process( i_raw = t36 ).
      DATA t38 TYPE REF TO zcl_lnt_iabaplexer_result.
      DATA(t39) = CAST zif_lnt_file( t25 ).
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t41) = CAST zcl_lnt_lexer( t23 ).
      t40 = t41->tokens.
      t38 = NEW zcl_lnt_iabaplexer_result( i_file = t39 i_tokens = t40 ).
      t27 = t38.
      t22 = t27.
      APPEND t22 TO t21->items.
    ENDLOOP.
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    t15 = t42.
    t14 = t15.
    DATA(t43) = VALUE int8( ).
    DATA(t44) = VALUE int8( ).
    DATA(t45) = VALUE f( ).
    DATA t46 TYPE f.
    DATA(t47) = 0.
    t46 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t48) = VALUE f( ).
    DATA(t49) = VALUE int8( ).
    DATA(t50) = t10.
    IF t50 < range_i_check_lo_n2gosa7pa2gv OR t50 > range_int_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t49 = t50.
    t48 = t49.
    t45 = t46 - t48.
    IF t45 <> trunc( t45 ) OR t45 < range_check_lo_n2gosa7pa2gv OR t45 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t44 = t45.
    t43 = t44.
    DATA(t51) = VALUE int8( ).
    DATA(t52) = VALUE int8( ).
    DATA t53 TYPE f.
    DATA(t54) = 0.
    t53 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t53 <> trunc( t53 ) OR t53 < range_check_lo_n2gosa7pa2gv OR t53 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t52 = t53.
    t51 = t52.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    DATA t57 TYPE REF TO zcl_lnt_statement_parser.
    CLEAR t57.
    DATA(t58) = CAST zcl_lnt_abap_release( me->release_3664 ).
    DATA(t59) = CAST zif_lnt_registry( me->reg ).
    DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t60.
    DATA(t61) = abap_true.
    IF t61 = abap_true.
      DATA(t62) = CONV string( me->language_version ).
      DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t63->has = abap_true.
      t63->value = t62.
      t60 = t63.
    ELSE.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      t60 = t64.
    ENDIF.
    t57 = NEW zcl_lnt_statement_parser( i_release_7928 = t58 i_reg_f149 = t59 i_language_version_0e1d = t60 ).
    DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
    DATA(t66) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->global_macros ).
    t56 = t57->run( i_input_967e = t65 i_global_macros_5535 = t66 ).
    t55 = t56.
    DATA(t67) = VALUE int8( ).
    DATA(t68) = VALUE int8( ).
    DATA(t69) = VALUE f( ).
    DATA t70 TYPE f.
    DATA(t71) = 0.
    t70 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t72) = VALUE f( ).
    DATA(t73) = VALUE int8( ).
    DATA(t74) = t51.
    IF t74 < range_i_check_lo_n2gosa7pa2gv OR t74 > range_int_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t73 = t74.
    t72 = t73.
    t69 = t70 - t72.
    IF t69 <> trunc( t69 ) OR t69 < range_check_lo_n2gosa7pa2gv OR t69 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t68 = t69.
    t67 = t68.
    DATA(t75) = VALUE int8( ).
    DATA(t76) = VALUE int8( ).
    DATA t77 TYPE f.
    DATA(t78) = 0.
    t77 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t77 <> trunc( t77 ) OR t77 < range_check_lo_n2gosa7pa2gv OR t77 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t76 = t77.
    t75 = t76.
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t55 ).
    DATA t80 TYPE REF TO zcl_lnt_istatement_result.
    CLEAR t80.
    DATA t81 TYPE REF TO object.
    CLEAR t81.
    LOOP AT t79->items INTO t81.
      t80 ?= t81.
      DATA t82 TYPE REF TO zcl_lnt_istructure_result.
      DATA t83 TYPE REF TO zcl_lnt_istructure_result.
      DATA(t84) = CAST zcl_lnt_istatement_result( t80 ).
      t83 = zcl_lnt_structure_parser=>run( i_input_967e = t84 ).
      t82 = t83.
      DATA t85 TYPE REF TO zcl_lnt_abp_fl_infrmtn_prsr.
      DATA t86 TYPE REF TO zcl_lnt_abp_fl_infrmtn_prsr.
      DATA t87 TYPE string.
      DATA t88 TYPE REF TO zif_lnt_file.
      DATA(t89) = CAST zcl_lnt_istatement_result( t80 ).
      t88 = t89->file.
      t87 = t88->get_filename( ).
      t86 = NEW zcl_lnt_abp_fl_infrmtn_prsr( i_filename = t87 ).
      t85 = t86.
      DATA t90 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t91.
      DATA t92 TYPE REF TO zcl_lnt_abp_fl_infrmtn_prsr.
      DATA(t93) = CAST zcl_lnt_abp_fl_infrmtn_prsr( t85 ).
      t92 = t93.
      DATA t94 TYPE REF TO zcl_lnt_structure_node.
      DATA t95 TYPE REF TO zcl_lnt_structure_node.
      DATA(t96) = CAST zcl_lnt_istructure_result( t82 ).
      t95 = t96->node.
      t94 = t95.
      DATA t97 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t97.
      DATA t98 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      DATA t99 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t100.
      DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t101.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t102.
      DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t103.
      t99 = NEW zcl_lnt_prsd_fl_infrmtn( i_interfaces = t100 i_classes = t101 i_forms = t102 i_implementations = t103 ).
      t98 = t99.
      DATA t104 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t104.
      DATA(t105) = VALUE abap_bool( ).
      DATA t106 TYPE REF TO zcl_lnt_structure_node.
      DATA(t107) = CAST zcl_lnt_structure_node( t94 ).
      t106 = t107.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      t108 = t109.
      DATA(t110) = VALUE abap_bool( ).
      DATA(t111) = CAST zcl_lnt_structure_node( t106 ).
      IF t111 IS INITIAL.
        t110 = abap_true.
      ENDIF.
      t105 = t110.
      IF t105 = abap_true.
        DATA(t112) = CAST zcl_lnt_prsd_fl_infrmtn( t98 ).
        t104 = t112.
      ELSE.
        DATA t113 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
        DATA(t114) = CAST zcl_lnt_prsd_fl_infrmtn( t98 ).
        DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t116) = CAST zcl_lnt_abp_fl_infrmtn_prsr( t92 ).
        DATA t117 TYPE REF TO zcl_lnt_structure_node.
        DATA(t118) = CAST zcl_lnt_structure_node( t94 ).
        t117 = t118.
        t115 = t116->parse_classes( i_structure = t117 ).
        t114->classes = t115.
        DATA(t119) = CAST zcl_lnt_prsd_fl_infrmtn( t98 ).
        DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t121) = CAST zcl_lnt_abp_fl_infrmtn_prsr( t92 ).
        DATA t122 TYPE REF TO zcl_lnt_structure_node.
        DATA(t123) = CAST zcl_lnt_structure_node( t94 ).
        t122 = t123.
        t120 = t121->parse_interfaces( i_structure = t122 ).
        t119->interfaces = t120.
        DATA(t124) = CAST zcl_lnt_prsd_fl_infrmtn( t98 ).
        DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t126) = CAST zcl_lnt_abp_fl_infrmtn_prsr( t92 ).
        DATA t127 TYPE REF TO zcl_lnt_structure_node.
        DATA(t128) = CAST zcl_lnt_structure_node( t94 ).
        t127 = t128.
        t125 = t126->parse_class_implementations( i_structure = t127 ).
        t124->implementations = t125.
        DATA(t129) = CAST zcl_lnt_prsd_fl_infrmtn( t98 ).
        DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t131) = CAST zcl_lnt_abp_fl_infrmtn_prsr( t92 ).
        DATA t132 TYPE REF TO zcl_lnt_structure_node.
        DATA(t133) = CAST zcl_lnt_structure_node( t94 ).
        t132 = t133.
        t130 = t131->parse_forms( i_structure = t132 ).
        t129->forms = t130.
        DATA(t134) = CAST zcl_lnt_prsd_fl_infrmtn( t98 ).
        t113 = t134.
        t104 = t113.
      ENDIF.
      t97 = t104.
      t91 = t97.
      t90 = t91.
      DATA t135 TYPE REF TO zcl_lnt_abap_file_information.
      DATA t136 TYPE REF TO zcl_lnt_abap_file_information.
      DATA(t137) = CAST zcl_lnt_prsd_fl_infrmtn( t90 ).
      t136 = NEW zcl_lnt_abap_file_information( i_parsed = t137 ).
      t135 = t136.
      DATA(t138) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      DATA t139 TYPE REF TO zcl_lnt_abap_file.
      DATA t140 TYPE REF TO zif_lnt_file.
      DATA(t141) = CAST zcl_lnt_istatement_result( t80 ).
      t140 = t141->file.
      DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t143) = CAST zcl_lnt_istatement_result( t80 ).
      t142 = t143->tokens.
      DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t145) = CAST zcl_lnt_istatement_result( t80 ).
      t144 = t145->statements.
      DATA t146 TYPE REF TO zcl_lnt_structure_node.
      DATA(t147) = CAST zcl_lnt_istructure_result( t82 ).
      t146 = t147->node.
      DATA(t148) = CAST zcl_lnt_abap_file_information( t135 ).
      t139 = NEW zcl_lnt_abap_file( i_file = t140 i_tokens = t142 i_statements = t144 i_structure = t146 i_info = t148 ).
      APPEND t139 TO t138->items.
      DATA(t149) = VALUE i( ).
      DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t151) = CAST zcl_lnt_istructure_result( t82 ).
      t150 = t151->issues.
      DATA t152 TYPE REF TO zcl_lnt_issue.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      LOOP AT t150->items INTO t153.
        t152 ?= t153.
        DATA(t154) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t155) = CAST zcl_lnt_issue( t152 ).
        APPEND t155 TO t154->items.
      ENDLOOP.
      DATA t156 TYPE i.
      DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      t156 = lines( t157->items ).
      t149 = t156.
    ENDLOOP.
    DATA(t158) = VALUE int8( ).
    DATA(t159) = VALUE int8( ).
    DATA(t160) = VALUE f( ).
    DATA t161 TYPE f.
    DATA(t162) = 0.
    t161 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t163) = VALUE f( ).
    DATA(t164) = VALUE int8( ).
    DATA(t165) = t75.
    IF t165 < range_i_check_lo_n2gosa7pa2gv OR t165 > range_int_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t164 = t165.
    t163 = t164.
    t160 = t161 - t163.
    IF t160 <> trunc( t160 ) OR t160 < range_check_lo_n2gosa7pa2gv OR t160 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t159 = t160.
    t158 = t159.
    DATA(t166) = VALUE int8( ).
    DATA(t167) = VALUE int8( ).
    DATA t168 TYPE f.
    DATA(t169) = 0.
    t168 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    IF t168 <> trunc( t168 ) OR t168 < range_check_lo_n2gosa7pa2gv OR t168 > range_check_hi_2gosa7pa2gv.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t167 = t168.
    t166 = t167.
    DATA t170 TYPE REF TO zcl_lnt_iabapparser_result.
    CLEAR t170.
    DATA(t171) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    DATA(t172) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    DATA t173 TYPE int8.
    DATA(t174) = t166.
    DATA(t175) = t6.
    t173 = t174 - t175.
    IF t173 < range_int8_bound_min OR t173 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    DATA t176 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA(t177) = t43.
    DATA(t178) = t67.
    DATA(t179) = t158.
    t176 = NEW zcl_lnt_shape_8fc6df03( i_lexing = t177 i_statements = t178 i_structure = t179 ).
    t170 = NEW zcl_lnt_iabapparser_result( i_issues = t171 i_output = t172 i_runtime = t173 i_runtime_extra = t176 ).
    result = t170.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d979_1a91b28d9760.
  ENDMETHOD.
ENDCLASS.
