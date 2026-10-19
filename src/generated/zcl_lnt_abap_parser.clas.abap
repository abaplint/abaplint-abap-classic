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
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5 = xsdbool( t1 IS INITIAL ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zif_lnt_union_0eeefcfe.
      t13 = t1.
      t12 = zcl_lnt_abap_parser=>is_release( i_o = t13 ).
      t4 = t12.
    ENDIF.
    IF t4 = abap_true.
      DATA t16 TYPE REF TO zcl_lnt_abap_release.
      DATA t17 TYPE REF TO zcl_lnt_abap_release.
      DATA t19 TYPE REF TO object.
      t19 = t1.
      t17 ?= t19.
      t16 = t17.
      DATA t20 TYPE REF TO zcl_lnt_abap_release.
      DATA(t21) = xsdbool( t16 IS INITIAL ).
      IF t21 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_abap_release.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t23 = zcl_lnt_version_module=>default_release.
        t20 = t23.
      ELSE.
        t20 = t16.
      ENDIF.
      me->release_3664 = t20.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
      me->language_version = |Normal|.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `languageVersion`.
      DATA t28 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t28 = t2.
      DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t31) = xsdbool( t28 IS INITIAL ).
      IF t31 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t33.
        t30 = t33.
      ELSE.
        t30 = t28.
      ENDIF.
      me->global_macros = t30.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalMacros`.
      me->reg = t3.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_abap_release.
      DATA t39 TYPE REF TO zcl_lnt_abap_release.
      DATA t40 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA t42 TYPE REF TO object.
      t42 = t1.
      t40 ?= t42.
      t39 = t40->release_3664.
      t38 = t39.
      DATA t43 TYPE REF TO zcl_lnt_abap_release.
      DATA(t44) = xsdbool( t38 IS INITIAL ).
      IF t44 = abap_true.
        DATA t46 TYPE REF TO zcl_lnt_abap_release.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t46 = zcl_lnt_version_module=>default_release.
        t43 = t46.
      ELSE.
        t43 = t38.
      ENDIF.
      me->release_3664 = t43.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
      DATA(t49) = VALUE string( ).
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t52 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA t54 TYPE REF TO object.
      t54 = t1.
      t52 ?= t54.
      t51 = t52->language_version.
      t50 = t51.
      DATA(t55) = VALUE string( ).
      DATA(t56) = VALUE abap_bool( ).
      IF t50 IS INITIAL.
        t56 = abap_true.
      ELSEIF t50->has = abap_false.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        t55 = |Normal|.
      ELSE.
        DATA t59 TYPE string.
        t59 = t50->value.
        t55 = t59.
      ENDIF.
      t49 = t55.
      me->language_version = t49.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `languageVersion`.
      DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t64 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA t66 TYPE REF TO object.
      t66 = t1.
      t64 ?= t66.
      t63 = t64->global_macros.
      t62 = t63.
      DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t68) = xsdbool( t62 IS INITIAL ).
      IF t68 = abap_true.
        DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t70.
        t67 = t70.
      ELSE.
        t67 = t62.
      ENDIF.
      me->global_macros = t67.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalMacros`.
      DATA t73 TYPE REF TO zif_lnt_registry.
      DATA t74 TYPE REF TO zcl_lnt_iabapparser_options.
      DATA t76 TYPE REF TO object.
      t76 = t1.
      t74 ?= t76.
      t73 = t74->reg.
      me->reg = t73.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    ENDIF.
  ENDMETHOD.

  METHOD is_release.
    DATA(t1) = i_o.
    DATA t2 TYPE abap_bool.
    t2 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_release ).
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
    DATA t7 TYPE f.
    DATA(t8) = 0.
    t7 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t10 TYPE f.
    DATA(t11) = 0.
    t10 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    t14 = t15.
    DATA t17 TYPE REF TO zif_lnt_file.
    DATA t18 TYPE REF TO object.
    DATA(t19) = VALUE i( ).
    DO.
      t1->load( ).
      IF t19 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t18.
      READ TABLE t1->items INDEX t19 + 1 INTO t18.
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
      DATA t23 TYPE REF TO zcl_lnt_iabaplexer_result.
      CLEAR t23.
      DATA t24 TYPE REF TO zcl_lnt_lexer.
      t24 = NEW zcl_lnt_lexer( ).
      DATA t26 TYPE REF TO zif_lnt_file.
      t26 = t17.
      CLEAR t24->virtual.
      DELETE t24->zlnt_record_delet_0597644d88b4 WHERE table_line = `virtual`.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t32.
      t24->tokens = t32.
      DELETE t24->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
      DATA t34 TYPE f.
      DATA(t35) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
      t34 = t35.
      t24->m = t34.
      DELETE t24->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
      DATA t37 TYPE string.
      t37 = t26->get_raw( ).
      t24->process( i_raw = t37 ).
      DATA t39 TYPE REF TO zcl_lnt_iabaplexer_result.
      DATA t40 TYPE REF TO zif_lnt_file.
      t40 = t26.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t43 = t24->tokens.
      t42 = t43.
      t39 = NEW zcl_lnt_iabaplexer_result( i_file = t40 i_tokens = t42 ).
      CREATE OBJECT t39->zlnt_view_ownkeys_b0e8086400eb.
      t39->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      t39->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t45 ).
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
      t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
      DATA(t49) = |tokens|.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      IF t39->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t39->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
      ENDIF.
      t23 = t39.
      t14->load( ).
      APPEND t23 TO t14->items.
      t14->save( ).
    ENDDO.
    DATA t53 TYPE f.
    DATA t54 TYPE f.
    DATA(t55) = 0.
    t54 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t53 = t54 - t10.
    DATA t58 TYPE f.
    DATA(t59) = 0.
    t58 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t62 TYPE REF TO zcl_lnt_statement_parser.
    DATA(t63) = me->release_3664.
    DATA(t64) = me->reg.
    DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t67) = CONV string( me->language_version ).
    DATA(t68) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t68->has = abap_true.
    t68->value = t67.
    t65 = t68.
    t62 = NEW zcl_lnt_statement_parser( i_release_7928 = t63 i_reg_f149 = t64 i_language_version_0e1d = t65 ).
    DATA(t71) = me->global_macros.
    t61 = t62->run( i_input_967e = t14 i_global_macros_5535 = t71 ).
    t60 = t61.
    DATA t73 TYPE f.
    DATA t74 TYPE f.
    DATA(t75) = 0.
    t74 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t73 = t74 - t58.
    DATA t78 TYPE f.
    DATA(t79) = 0.
    t78 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t81 TYPE REF TO zcl_lnt_istatement_result.
    DATA t82 TYPE REF TO object.
    DATA(t83) = VALUE i( ).
    DO.
      t60->load( ).
      IF t83 >= lines( t60->items ).
        EXIT.
      ENDIF.
      CLEAR t82.
      READ TABLE t60->items INDEX t83 + 1 INTO t82.
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
      t87 = zcl_lnt_structure_parser=>run( i_input_967e = t81 ).
      t86 = t87.
      DATA t90 TYPE REF TO zcl_lnt_abp_fl_infrmtn_prsr.
      DATA t91 TYPE string.
      DATA t92 TYPE REF TO zif_lnt_file.
      t92 = t81->file.
      t91 = t92->get_filename( ).
      t90 = NEW zcl_lnt_abp_fl_infrmtn_prsr( i_filename = t91 ).
      DATA t96 TYPE REF TO zcl_lnt_abp_fl_infrmtn_prsr.
      t96 = t90.
      DATA t98 TYPE REF TO zcl_lnt_structure_node.
      DATA t99 TYPE REF TO zcl_lnt_structure_node.
      t99 = t86->node.
      t98 = t99.
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
      t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t112 ).
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
      t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
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
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      t125 = xsdbool( t98 IS INITIAL ).
      IF t125 = abap_true.
        t124 = t102.
      ELSE.
        DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t137 TYPE REF TO zcl_lnt_structure_node.
        t137 = t98.
        t135 = t96->parse_classes( i_structure = t137 ).
        t102->classes = t135.
        DELETE t102->zlnt_record_delet_0597644d88b4 WHERE table_line = `classes`.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classes` p1 = t139 ).
        ENDIF.
        DATA(t140) = |classes|.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
        ENDIF.
        DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t145 TYPE REF TO zcl_lnt_structure_node.
        t145 = t98.
        t143 = t96->parse_interfaces( i_structure = t145 ).
        t102->interfaces = t143.
        DELETE t102->zlnt_record_delet_0597644d88b4 WHERE table_line = `interfaces`.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaces` p1 = t147 ).
        ENDIF.
        DATA(t148) = |interfaces|.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t153 TYPE REF TO zcl_lnt_structure_node.
        t153 = t98.
        t151 = t96->parse_class_implementations( i_structure = t153 ).
        t102->implementations = t151.
        DELETE t102->zlnt_record_delet_0597644d88b4 WHERE table_line = `implementations`.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `implementations` p1 = t155 ).
        ENDIF.
        DATA(t156) = |implementations|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t161 TYPE REF TO zcl_lnt_structure_node.
        t161 = t98.
        t159 = t96->parse_forms( i_structure = t161 ).
        t102->forms = t159.
        DELETE t102->zlnt_record_delet_0597644d88b4 WHERE table_line = `forms`.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t163 ).
        ENDIF.
        DATA(t164) = |forms|.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t164 p1 = t165 ).
        ENDIF.
        t124 = t102.
      ENDIF.
      DATA t168 TYPE REF TO zcl_lnt_abap_file_information.
      t168 = NEW zcl_lnt_abap_file_information( i_parsed = t124 ).
      DATA t171 TYPE REF TO zcl_lnt_abap_file.
      DATA t172 TYPE REF TO zif_lnt_file.
      t172 = t81->file.
      DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t174 = t81->tokens.
      DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t176 = t81->statements.
      DATA t178 TYPE REF TO zcl_lnt_structure_node.
      t178 = t86->node.
      t171 = NEW zcl_lnt_abap_file( i_file = t172 i_tokens = t174 i_statements = t176 i_structure = t178 i_info = t168 ).
      t4->load( ).
      APPEND t171 TO t4->items.
      t4->save( ).
      DATA(t181) = VALUE i( ).
      DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t182 = t86->issues.
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
        t2->load( ).
        APPEND t184 TO t2->items.
        t2->save( ).
      ENDDO.
      DATA t191 TYPE i.
      t2->load( ).
      t191 = lines( t2->items ).
      t181 = t191.
    ENDDO.
    DATA t194 TYPE f.
    DATA t195 TYPE f.
    DATA(t196) = 0.
    t195 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    t194 = t195 - t78.
    DATA t199 TYPE f.
    DATA(t200) = 0.
    t199 = zlnt_runtime_tele_970d5104e5f4=>now( ).
    DATA t201 TYPE REF TO zcl_lnt_iabapparser_result.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t202 = t2.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t204 = t4.
    DATA t206 TYPE f.
    DATA t207 TYPE f.
    t207 = t199 - t7.
    t206 = t207.
    DATA t210 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t211 TYPE REF TO zcl_lnt_shape_8fc6df03.
    DATA t212 TYPE f.
    t212 = t53.
    DATA t214 TYPE f.
    t214 = t73.
    DATA t216 TYPE f.
    t216 = t194.
    t211 = NEW zcl_lnt_shape_8fc6df03( i_lexing = t212 i_statements = t214 i_structure = t216 ).
    CREATE OBJECT t211->zlnt_view_ownkeys_b0e8086400eb.
    t211->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `lexing` p1 = t218 ).
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t219 ).
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t211->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `structure` p1 = t220 ).
    ENDIF.
    CREATE OBJECT t211->zlnt_json_ownkeys_70e5fd461788.
    t211->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t221) = |lexing|.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t221 p1 = t222 ).
    DATA(t223) = |statements|.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t223 p1 = t224 ).
    ENDIF.
    DATA(t225) = |structure|.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t211->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t211->zlnt_json_ownkeys_70e5fd461788->put( p0 = t225 p1 = t226 ).
    ENDIF.
    t210 = t211.
    t201 = NEW zcl_lnt_iabapparser_result( i_issues = t202 i_output = t204 i_runtime = t206 i_runtime_extra = t210 ).
    CREATE OBJECT t201->zlnt_view_ownkeys_b0e8086400eb.
    t201->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `issues` p1 = t227 ).
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `output` p1 = t228 ).
    ENDIF.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t229 ).
    ENDIF.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t201->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtimeExtra` p1 = t230 ).
    ENDIF.
    CREATE OBJECT t201->zlnt_json_ownkeys_70e5fd461788.
    t201->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t231) = |issues|.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
    DATA(t233) = |output|.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
    ENDIF.
    DATA(t235) = |runtime|.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t201->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t201->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
    ENDIF.
    DATA(t237) = |runtimeExtra|.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    t4->load( ).
    APPEND t1 TO t4->items.
    t4->save( ).
    t3 = t4.
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
