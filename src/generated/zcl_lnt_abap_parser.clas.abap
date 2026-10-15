* TS: src/abap/abap_parser.ts:28:1 ABAPParser
CLASS zcl_lnt_abap_parser DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA language_version TYPE string.
    DATA global_macros TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_options_or_release TYPE REF TO zif_lnt_union_0eeefcfe OPTIONAL i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_reg_f149 TYPE REF TO zif_lnt_registry OPTIONAL.
    CLASS-METHODS is_release IMPORTING i_o TYPE REF TO zif_lnt_union_0eeefcfe RETURNING VALUE(result) TYPE abap_bool.
    METHODS parse IMPORTING i_files TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iabapparser_result.
    METHODS parse_one IMPORTING i_x TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_iabapparser_result.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_parser IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_options_or_release.
    DATA(t2) = i_global_macros_5535.
    DATA(t3) = i_reg_f149.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zif_lnt_union_0eeefcfe.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t6.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ENDIF.
    t5 = t10.
    t4 = t5.
    IF t5 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zif_lnt_union_0eeefcfe.
      DATA(t14) = t1.
      t13 = t14.
      t12 = zcl_lnt_abap_parser=>is_release( i_o = t13 ).
      t4 = t12.
    ENDIF.
    IF t4 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t15.
      DATA t16 TYPE REF TO zcl_lnt_abap_release.
      DATA t17 TYPE REF TO zcl_lnt_abap_release.
      DATA(t18) = t1.
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17 ?= t19.
      t16 = t17.
      DATA t20 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t20.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = t16.
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
        DATA(t25) = t16.
        t24 = t25.
        t20 = t24.
      ENDIF.
      t15 = t20.
      me->release_3664 = t15.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
      DATA(t26) = |Normal|.
      me->language_version = t26.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `languageVersion`.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t29) = t2.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t30.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = t28.
      IF t32 IS INITIAL.
        t31 = abap_true.
      ENDIF.
      IF t31 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t33.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t35) = t28.
        t34 = t35.
        t30 = t34.
      ENDIF.
      t27 = t30.
      me->global_macros = t27.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalMacros`.
      DATA(t36) = t3.
      me->reg = t36.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    ELSE.
      DATA t37 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_abap_release.
      DATA t39 TYPE REF TO zcl_lnt_abap_release.
      DATA t40 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA(t41) = t1.
      DATA t42 TYPE REF TO object.
      t42 = t41.
      t40 ?= t42.
      t39 = t40->release_3664.
      t38 = t39.
      DATA t43 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t43.
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = t38.
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
        DATA(t48) = t38.
        t47 = t48.
        t43 = t47.
      ENDIF.
      t37 = t43.
      me->release_3664 = t37.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
      DATA(t49) = VALUE string( ).
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t52 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA(t53) = t1.
      DATA t54 TYPE REF TO object.
      t54 = t53.
      t52 ?= t54.
      t51 = t52->language_version.
      t50 = t51.
      DATA(t55) = VALUE string( ).
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t50.
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
        DATA(t60) = t50.
        t59 = t60->value.
        t55 = t59.
      ENDIF.
      t49 = t55.
      me->language_version = t49.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `languageVersion`.
      DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t64 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA(t65) = t1.
      DATA t66 TYPE REF TO object.
      t66 = t65.
      t64 ?= t66.
      t63 = t64->global_macros.
      t62 = t63.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t67.
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = t62.
      IF t69 IS INITIAL.
        t68 = abap_true.
      ENDIF.
      IF t68 = abap_true.
        DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t70.
        t67 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t72) = t62.
        t71 = t72.
        t67 = t71.
      ENDIF.
      t61 = t67.
      me->global_macros = t61.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalMacros`.
      DATA t73 TYPE REF TO zif_lnt_registry.
      DATA t74 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA(t75) = t1.
      DATA t76 TYPE REF TO object.
      t76 = t75.
      t74 ?= t76.
      t73 = t74->reg.
      me->reg = t73.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    ENDIF.
  ENDMETHOD.

  METHOD is_release.
    DATA(t1) = i_o.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    t2 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_abap_release ).
    result = t2.

  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_files.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE f.
    DATA t7 TYPE f.
    DATA(t8) = 0.
    t7 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t6 = t7.
    DATA t9 TYPE f.
    DATA t10 TYPE f.
    DATA(t11) = 0.
    t10 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA(t16) = t1.
    DATA t17 TYPE REF TO zif_lnt_file.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    DATA(t19) = VALUE i( ).
    DO.
      t16->load( ).
      IF t19 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t16->items INDEX t19 + 1 INTO t18.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t17.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t18.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t17 ?= t21.
      ELSE.
        t17 ?= t18.
      ENDIF.
      DATA(t22) = t14.
      DATA t23 TYPE REF TO zcl_lnt_iabaplexer_result.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_lexer.
      DATA(t25) = NEW zcl_lnt_lexer( ).
      t24 = t25.
      DATA t26 TYPE REF TO zif_lnt_file.
      DATA(t27) = t17.
      t26 = t27.
      DATA t28 TYPE REF TO zcl_lnt_iabaplexer_result.
      CLEAR t28.
      DATA(t29) = t24.
      DATA t30 TYPE REF TO zcl_lnt_position.
      CLEAR t30.
      t29->virtual = t30.
      DELETE t29->zlnt_record_delet_0597644d88b4 WHERE table_line = `virtual`.
      DATA(t31) = t24.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t32.
      t31->tokens = t32.
      DELETE t31->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
      DATA(t33) = t24.
      DATA t34 TYPE f.
      DATA(t35) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
      t34 = t35.
      t33->m = t34.
      DELETE t33->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
      DATA(t36) = t24.
      DATA t37 TYPE string.
      DATA(t38) = t26.
      t37 = t38->get_raw( ).
      t36->process( i_raw = t37 ).
      DATA t39 TYPE REF TO zcl_lnt_iabaplexer_result.
      DATA t40 TYPE REF TO zif_lnt_file.
      DATA(t41) = t26.
      t40 = t41.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t44) = t24.
      t43 = t44->tokens.
      t42 = t43.
      t39 = NEW zcl_lnt_iabaplexer_result( i_file = t40 i_tokens = t42 ).
      CREATE OBJECT t39->zlnt_view_ownkeys_b0e8086400eb.
      t39->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t45 ).
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t46.
      IF t39->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t46 ).
      ENDIF.
      CREATE OBJECT t39->zlnt_json_ownkeys_70e5fd461788.
      t39->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t47) = |file|.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
      ENDIF.
      DATA(t49) = |tokens|.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
      ENDIF.
      t28 = t39.
      t23 = t28.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
    ENDDO.
    DATA(t51) = t14.
    t13 = t51.
    t12 = t13.
    DATA t52 TYPE f.
    DATA t53 TYPE f.
    DATA t54 TYPE f.
    DATA(t55) = 0.
    t54 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t56) = t9.
    t53 = t54 - t56.
    t52 = t53.
    DATA t57 TYPE f.
    DATA t58 TYPE f.
    DATA(t59) = 0.
    t58 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t57 = t58.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_statement_parser.
    CLEAR t62.
    DATA(t63) = me->release_3664.
    DATA(t64) = me->reg.
    DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t65.
    DATA(t66) = abap_true.
    IF t66 = abap_true.
      DATA(t67) = CONV string( me->language_version ).
      DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t68->has = abap_true.
      t68->value = t67.
      t65 = t68.
    ELSE.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t69.
      t65 = t69.
    ENDIF.
    t62 = NEW zcl_lnt_statement_parser( i_release_7928 = t63 i_reg_f149 = t64 i_language_version_0e1d = t65 ).
    DATA(t70) = t12.
    DATA(t71) = me->global_macros.
    t61 = t62->run( i_input_967e = t70 i_global_macros_5535 = t71 ).
    t60 = t61.
    DATA t72 TYPE f.
    DATA t73 TYPE f.
    DATA t74 TYPE f.
    DATA(t75) = 0.
    t74 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t76) = t57.
    t73 = t74 - t76.
    t72 = t73.
    DATA t77 TYPE f.
    DATA t78 TYPE f.
    DATA(t79) = 0.
    t78 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t77 = t78.
    DATA(t80) = t60.
    DATA t81 TYPE REF TO zcl_lnt_istatement_result.
    CLEAR t81.
    DATA t82 TYPE REF TO object.
    CLEAR t82.
    DATA(t83) = VALUE i( ).
    DO.
      t80->load( ).
      IF t83 >= lines( t80->items ).
        EXIT.
      ENDIF.
      CLEAR t82.
      READ TABLE t80->items INDEX t83 + 1 INTO t82.
      t83 = t83 + 1.
      DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t84.
      CLEAR t81.
      IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t84 ?= t82.
        DATA t85 TYPE REF TO object.
        t85 = t84->as_ref( ).
        t81 ?= t85.
      ELSE.
        t81 ?= t82.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_istructure_result.
      DATA t87 TYPE REF TO zcl_lnt_istructure_result.
      DATA(t88) = t81.
      t87 = zcl_lnt_structure_parser=>run( i_input_967e = t88 ).
      t86 = t87.
      DATA t89 TYPE REF TO zcl_lnt_abp_fl_infrmtn_prsr.
      DATA t90 TYPE REF TO zcl_lnt_abp_fl_infrmtn_prsr.
      DATA t91 TYPE string.
      DATA t92 TYPE REF TO zif_lnt_file.
      DATA(t93) = t81.
      t92 = t93->file.
      t91 = t92->get_filename( ).
      t90 = NEW zcl_lnt_abp_fl_infrmtn_prsr( i_filename = t91 ).
      t89 = t90.
      DATA t94 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t94.
      DATA t95 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t95.
      DATA t96 TYPE REF TO zcl_lnt_abp_fl_infrmtn_prsr.
      DATA(t97) = t89.
      t96 = t97.
      DATA t98 TYPE REF TO zcl_lnt_structure_node.
      DATA t99 TYPE REF TO zcl_lnt_structure_node.
      DATA(t100) = t86.
      t99 = t100->node.
      t98 = t99.
      DATA t101 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t101.
      DATA t102 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t102.
      DATA t103 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t105.
      t104 = t105.
      DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t107.
      t106 = t107.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t109.
      t108 = t109.
      DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t111.
      t110 = t111.
      t103 = NEW zcl_lnt_prsd_fl_infrmtn( i_interfaces = t104 i_classes = t106 i_forms = t108 i_implementations = t110 ).
      CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
      t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t112 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classes` p1 = t113 ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t114.
      IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t114 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementations` p1 = t115 ).
      ENDIF.
      CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
      t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t116) = |interfaces|.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
      ENDIF.
      DATA(t118) = |classes|.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
      ENDIF.
      DATA(t120) = |forms|.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
      ENDIF.
      DATA(t122) = |implementations|.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t123.
      IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
      ENDIF.
      t102 = t103.
      DATA t124 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
      CLEAR t124.
      DATA(t125) = VALUE abap_bool( ).
      DATA t126 TYPE REF TO zcl_lnt_structure_node.
      DATA(t127) = t98.
      t126 = t127.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t129.
      t128 = t129.
      DATA(t130) = VALUE abap_bool( ).
      DATA(t131) = t126.
      IF t131 IS INITIAL.
        t130 = abap_true.
      ENDIF.
      t125 = t130.
      IF t125 = abap_true.
        DATA(t132) = t102.
        t124 = t132.
      ELSE.
        DATA t133 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
        CLEAR t133.
        DATA(t134) = t102.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t136) = t96.
        DATA t137 TYPE REF TO zcl_lnt_structure_node.
        DATA(t138) = t98.
        t137 = t138.
        t135 = t136->parse_classes( i_structure = t137 ).
        t134->classes = t135.
        DELETE t134->zlnt_record_delet_0597644d88b4 WHERE table_line = `classes`.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        IF t134->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t134->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classes` p1 = t139 ).
        ENDIF.
        DATA(t140) = |classes|.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t134->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t134->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
        ENDIF.
        DATA(t142) = t102.
        DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t144) = t96.
        DATA t145 TYPE REF TO zcl_lnt_structure_node.
        DATA(t146) = t98.
        t145 = t146.
        t143 = t144->parse_interfaces( i_structure = t145 ).
        t142->interfaces = t143.
        DELETE t142->zlnt_record_delet_0597644d88b4 WHERE table_line = `interfaces`.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t147 ).
        ENDIF.
        DATA(t148) = |interfaces|.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
        ENDIF.
        DATA(t150) = t102.
        DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t152) = t96.
        DATA t153 TYPE REF TO zcl_lnt_structure_node.
        DATA(t154) = t98.
        t153 = t154.
        t151 = t152->parse_class_implementations( i_structure = t153 ).
        t150->implementations = t151.
        DELETE t150->zlnt_record_delet_0597644d88b4 WHERE table_line = `implementations`.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementations` p1 = t155 ).
        ENDIF.
        DATA(t156) = |implementations|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        DATA(t158) = t102.
        DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t160) = t96.
        DATA t161 TYPE REF TO zcl_lnt_structure_node.
        DATA(t162) = t98.
        t161 = t162.
        t159 = t160->parse_forms( i_structure = t161 ).
        t158->forms = t159.
        DELETE t158->zlnt_record_delet_0597644d88b4 WHERE table_line = `forms`.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t158->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t158->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t163 ).
        ENDIF.
        DATA(t164) = |forms|.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t158->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t158->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
        ENDIF.
        DATA(t166) = t102.
        t133 = t166.
        t124 = t133.
      ENDIF.
      t101 = t124.
      t95 = t101.
      t94 = t95.
      DATA t167 TYPE REF TO zcl_lnt_abap_file_information.
      DATA t168 TYPE REF TO zcl_lnt_abap_file_information.
      DATA(t169) = t94.
      t168 = NEW zcl_lnt_abap_file_information( i_parsed = t169 ).
      t167 = t168.
      DATA(t170) = t4.
      DATA t171 TYPE REF TO zcl_lnt_abap_file.
      DATA t172 TYPE REF TO zif_lnt_file.
      DATA(t173) = t81.
      t172 = t173->file.
      DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t175) = t81.
      t174 = t175->tokens.
      DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t177) = t81.
      t176 = t177->statements.
      DATA t178 TYPE REF TO zcl_lnt_structure_node.
      DATA(t179) = t86.
      t178 = t179->node.
      DATA(t180) = t167.
      t171 = NEW zcl_lnt_abap_file( i_file = t172 i_tokens = t174 i_statements = t176 i_structure = t178 i_info = t180 ).
      t170->load( ).
      APPEND t171 TO t170->items.
      t170->save( ).
      DATA(t181) = VALUE i( ).
      DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t183) = t86.
      t182 = t183->issues.
      DATA t184 TYPE REF TO zcl_lnt_issue.
      CLEAR t184.
      DATA t185 TYPE REF TO object.
      CLEAR t185.
      DATA(t186) = VALUE i( ).
      DO.
        t182->load( ).
        IF t186 >= lines( t182->items ).
          EXIT.
        ENDIF.
        CLEAR t185.
        READ TABLE t182->items INDEX t186 + 1 INTO t185.
        t186 = t186 + 1.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t187.
        CLEAR t184.
        IF t185 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t187 ?= t185.
          DATA t188 TYPE REF TO object.
          t188 = t187->as_ref( ).
          t184 ?= t188.
        ELSE.
          t184 ?= t185.
        ENDIF.
        DATA(t189) = t2.
        DATA(t190) = t184.
        t189->load( ).
        APPEND t190 TO t189->items.
        t189->save( ).
      ENDDO.
      DATA t191 TYPE i.
      DATA(t192) = t2.
      t192->load( ).
      t191 = lines( t192->items ).
      t181 = t191.
    ENDDO.
    DATA t193 TYPE f.
    DATA t194 TYPE f.
    DATA t195 TYPE f.
    DATA(t196) = 0.
    t195 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA(t197) = t77.
    t194 = t195 - t197.
    t193 = t194.
    DATA t198 TYPE f.
    DATA t199 TYPE f.
    DATA(t200) = 0.
    t199 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t198 = t199.
    DATA t201 TYPE REF TO zcl_lnt_iabapparser_result.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t203) = t2.
    t202 = t203.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t205) = t4.
    t204 = t205.
    DATA t206 TYPE f.
    DATA t207 TYPE f.
    DATA(t208) = t198.
    DATA(t209) = t6.
    t207 = t208 - t209.
    t206 = t207.
    DATA t210 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t210.
    DATA t211 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t212 TYPE f.
    DATA(t213) = t52.
    t212 = t213.
    DATA t214 TYPE f.
    DATA(t215) = t72.
    t214 = t215.
    DATA t216 TYPE f.
    DATA(t217) = t193.
    t216 = t217.
    t211 = NEW zcl_lnt_shape_8fc6df03( i_lexing = t212 i_statements = t214 i_structure = t216 ).
    CREATE OBJECT t211->zlnt_view_ownkeys_b0e8086400eb.
    t211->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `lexing` p1 = t218 ).
    ENDIF.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t219 ).
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `structure` p1 = t220 ).
    ENDIF.
    CREATE OBJECT t211->zlnt_json_ownkeys_70e5fd461788.
    t211->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t221) = |lexing|.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
    ENDIF.
    DATA(t223) = |statements|.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
    ENDIF.
    DATA(t225) = |structure|.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
    ENDIF.
    t210 = t211.
    t201 = NEW zcl_lnt_iabapparser_result( i_issues = t202 i_output = t204 i_runtime = t206 i_runtime_extra = t210 ).
    CREATE OBJECT t201->zlnt_view_ownkeys_b0e8086400eb.
    t201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t227 ).
    ENDIF.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `output` p1 = t228 ).
    ENDIF.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t229 ).
    ENDIF.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtimeExtra` p1 = t230 ).
    ENDIF.
    CREATE OBJECT t201->zlnt_json_ownkeys_70e5fd461788.
    t201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t231) = |issues|.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
    ENDIF.
    DATA(t233) = |output|.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
    ENDIF.
    DATA(t235) = |runtime|.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
    ENDIF.
    DATA(t237) = |runtimeExtra|.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
    ENDIF.
    result = t201.

  ENDMETHOD.

  METHOD parse_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zcl_lnt_iabapparser_result.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = t4.
    DATA(t7) = t1.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t8) = t4.
    t3 = t8.
    t2 = me->parse( i_files = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1001_cb4807dd492a.
  ENDMETHOD.
ENDCLASS.
