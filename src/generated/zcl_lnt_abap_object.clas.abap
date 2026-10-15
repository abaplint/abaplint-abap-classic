* TS: src/objects/_abap_object.ts:13:1 ABAPObject
CLASS zcl_lnt_abap_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA texts TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    DATA texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA raw_xml_cache TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA syntax_result TYPE REF TO zcl_lnt_isyntax_result.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS debug_description RETURNING VALUE(result) TYPE string.
    METHODS get_sequenced_files ABSTRACT RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS is IMPORTING i_x TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE abap_bool.
    METHODS pr_in_sr_ob_abp_obj_ts_abp_obj IMPORTING i_release_7928 TYPE REF TO zcl_lnt_abap_release i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_reg_f149 TYPE REF TO zif_lnt_registry i_language_version_0e1d TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS set_dirty REDEFINITION.
    METHODS get_parsed_xml RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS get_abap_files RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_abap_file_by_name IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS get_main_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS get_text_symbols RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    METHODS get_text_elements RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    METHODS get_text_elements_translations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_texts IMPORTING i_parsed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS find_texts_translations IMPORTING i_parsed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    me->parsed = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsed`.
    DATA t4 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    CLEAR t4.
    me->texts = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    me->raw_xml_cache = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
  ENDMETHOD.

  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/_abap_object.ts:20|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is.
    DATA(t1) = i_x.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    IF t6 IS BOUND.
      t5 = t6->truth( ).
    ENDIF.
    t4 = xsdbool( t5 = abap_false ).
    t3 = xsdbool( t4 = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      DATA(t7) = VALUE abap_bool( ).
      DATA(t8) = t1.
      IF t8 IS BOUND AND t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t7 = xsdbool( t8->oval IS INSTANCE OF zcl_lnt_abap_object ).
      ENDIF.
      t2 = t7.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD pr_in_sr_ob_abp_obj_ts_abp_obj.
    DATA(t1) = i_release_7928.
    DATA(t2) = i_global_macros_5535.
    DATA(t3) = i_reg_f149.
    DATA(t4) = i_language_version_0e1d.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA(t9) = |Normal|.
        DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t10->has = abap_true.
        t10->value = t9.
        t7 = t10.
      ELSE.
        DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t11.
        t7 = t11.
      ENDIF.
      t4 = t7.
    ENDIF.
    DATA t12 TYPE abap_bool.
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t15) = me.
    t14 = t15.
    DATA t16 TYPE abap_bool.
    DATA(t17) = t14.
    t16 = t17->dirty.
    t13 = t16.
    DATA(t18) = abap_false.
    t12 = xsdbool( t13 = t18 ).
    IF t12 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_iparse_result.
      DATA t20 TYPE abap_bool.
      DATA(t21) = abap_false.
      t20 = t21.
      DATA t22 TYPE f.
      DATA(t23) = CONV f( 0 ).
      t22 = t23.
      DATA t24 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA t25 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t25.
      t24 = t25.
      t19 = NEW zcl_lnt_iparse_result( i_updated = t20 i_runtime = t22 i_runtime_extra = t24 ).
      CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
      t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t26 ).
      ENDIF.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t27 ).
      ENDIF.
      CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
      t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t28) = |updated|.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
      ENDIF.
      DATA(t30) = |runtime|.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
      ENDIF.
      result = t19.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t38) = me.
    t37 = t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t40) = t37.
    t39 = t40->files.
    t36 = t39.
    DATA t41 TYPE REF TO zif_lnt_file.
    CLEAR t41.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
    DATA(t43) = VALUE i( ).
    DO.
      t36->load( ).
      IF t43 >= lines( t36->items ).
        EXIT.
      ENDIF.
      CLEAR t42.
      READ TABLE t36->items INDEX t43 + 1 INTO t42.
      t43 = t43 + 1.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      CLEAR t41.
      IF t42 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t44 ?= t42.
        DATA t45 TYPE REF TO object.
        t45 = t44->as_ref( ).
        t41 ?= t45.
      ELSE.
        t41 ?= t42.
      ENDIF.
      DATA(t46) = VALUE abap_bool( ).
      DATA t47 TYPE string.
      DATA(t48) = t41.
      t47 = t48->get_filename( ).
      DATA(t49) = |.abap|.
      DATA(t50) = strlen( t47 ).
      DATA t51 TYPE i.
      DATA(t52) = VALUE i( ).
      DATA(t53) = VALUE string( ).
      t51 = strlen( t49 ).
      IF t51 = 0.
        t46 = abap_true.
      ELSEIF t51 <= t50.
        t52 = 0.
        t52 = t50 - t51.
        t53 = t47+t52(t51).
        IF t53 = t49.
          t46 = abap_true.
        ENDIF.
      ENDIF.
      IF t46 = abap_true.
        DATA(t54) = t34.
        DATA(t55) = t41.
        t54->load( ).
        APPEND t55 TO t54->items.
        t54->save( ).
      ENDIF.
    ENDDO.
    DATA(t56) = t34.
    t33 = t56.
    t32 = t33.
    DATA t57 TYPE REF TO zcl_lnt_iabapparser_result.
    CLEAR t57.
    DATA t58 TYPE REF TO zcl_lnt_iabapparser_result.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_abap_parser.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_iabapparser_options.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t62.
    DATA(t63) = abap_true.
    IF t63 = abap_true.
      DATA(t64) = t1.
      t62 = t64.
    ELSE.
      DATA t65 TYPE REF TO zcl_lnt_abap_release.
      CLEAR t65.
      t62 = t65.
    ENDIF.
    t61 = t62.
    DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t67) = t2.
    t66 = t67.
    DATA t68 TYPE REF TO zif_lnt_registry.
    DATA(t69) = t3.
    t68 = t69.
    DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t71.
    DATA(t72) = abap_true.
    IF t72 = abap_true.
      DATA t73 TYPE string.
      DATA(t74) = t4.
      t73 = t74->value.
      DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t75->has = abap_true.
      t75->value = t73.
      t71 = t75.
    ELSE.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      t71 = t76.
    ENDIF.
    t70 = t71.
    t60 = NEW zcl_lnt_iabapparser_options( i_release_7928 = t61 i_language_version_0e1d = t70 i_global_macros_5535 = t66 i_reg_f149 = t68 ).
    CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
    t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t77 ).
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalMacros` p1 = t78 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `reg` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `languageVersion` p1 = t80 ).
    ENDIF.
    CREATE OBJECT t60->zlnt_json_ownkeys_70e5fd461788.
    t60->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t81) = |release|.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
    ENDIF.
    DATA(t83) = |globalMacros|.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
    ENDIF.
    DATA(t85) = |reg|.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
    ENDIF.
    DATA(t87) = |languageVersion|.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_registry.
    CLEAR t90.
    t59 = NEW zcl_lnt_abap_parser( i_options_or_release = t60 i_global_macros_5535 = t89 i_reg_f149 = t90 ).
    DATA(t91) = t32.
    t58 = t59->parse( i_files = t91 ).
    t57 = t58.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t93) = t57.
    t92 = t93->output.
    me->parsed = t92.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsed`.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t95) = t57.
    t94 = t95->issues.
    me->old = t94.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `old`.
    DATA(t96) = abap_false.
    me->dirty = t96.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dirty`.
    DATA t97 TYPE REF TO zcl_lnt_iparse_result.
    CLEAR t97.
    DATA t98 TYPE abap_bool.
    DATA(t99) = abap_true.
    t98 = t99.
    DATA t100 TYPE f.
    DATA t101 TYPE f.
    DATA(t102) = t57.
    t101 = t102->runtime.
    t100 = t101.
    DATA t103 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t103.
    DATA t104 TYPE REF TO zcl_lnt_shape_8fc6df03.
    CLEAR t104.
    DATA(t105) = abap_true.
    IF t105 = abap_true.
      DATA t106 TYPE REF TO zcl_lnt_shape_8fc6df03.
      DATA(t107) = t57.
      t106 = t107->runtime_extra.
      t104 = t106.
    ELSE.
      DATA t108 TYPE REF TO zcl_lnt_shape_8fc6df03.
      CLEAR t108.
      t104 = t108.
    ENDIF.
    t103 = t104.
    t97 = NEW zcl_lnt_iparse_result( i_updated = t98 i_runtime = t100 i_runtime_extra = t103 ).
    CREATE OBJECT t97->zlnt_view_ownkeys_b0e8086400eb.
    t97->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t109 ).
    ENDIF.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t110 ).
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtimeExtra` p1 = t111 ).
    ENDIF.
    CREATE OBJECT t97->zlnt_json_ownkeys_70e5fd461788.
    t97->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t112) = |updated|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
    ENDIF.
    DATA(t114) = |runtime|.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
    ENDIF.
    DATA(t116) = |runtimeExtra|.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
    ENDIF.
    result = t97.

  ENDMETHOD.

  METHOD set_dirty.
    DATA t1 TYPE REF TO zcl_lnt_isyntax_result.
    CLEAR t1.
    me->syntax_result = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntaxResult`.
    DATA t2 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    CLEAR t2.
    me->texts = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    me->texts_translations = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    me->raw_xml_cache = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->parsed = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsed`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_parsed_xml.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t3) = me->raw_xml_cache.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t10.
        DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
        t11 = t12.
        DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t13.
        DATA(t14) = VALUE abap_bool( ).
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t16) = t11.
        t15 = t16.
        IF t15 IS NOT BOUND.
          t14 = abap_true.
        ELSE.
          t14 = xsdbool( t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t14 = abap_true.
          DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t18) = 0.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
          t13 = t17.
        ELSE.
          DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t20) = t11.
          t19 = t20.
          t13 = t19.
        ENDIF.
        t10 = t13.
        t8 = t10.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t21.
        t8 = t21.
      ENDIF.
      me->raw_xml_cache = t8.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = abap_true.
    IF t23 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t26) = me->raw_xml_cache.
      t25 = t26.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t30) = t25.
      t29 = t30.
      IF t29 IS NOT BOUND.
        t28 = abap_true.
      ELSE.
        t28 = xsdbool( t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t28 = abap_true.
        DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t32.
        CLEAR t31.
        IF t32 IS BOUND.
          t31 = t32.
        ENDIF.
        t27 = t31.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t34) = t25.
        t33 = t34.
        t27 = t33.
      ENDIF.
      t24 = t27.
      t22 = t24.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      t22 = t35.
    ENDIF.
    result = t22.

  ENDMETHOD.

  METHOD get_abap_files.
    DATA(t1) = me->parsed.
    result = t1.

  ENDMETHOD.

  METHOD get_abap_file_by_name.
    DATA(t1) = i_filename.
    DATA(t2) = me->parsed.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t3.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE string.
      DATA t10 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t11) = t3.
      t10 = t11.
      DATA t12 TYPE string.
      DATA(t13) = t10.
      t12 = t13->filename.
      t9 = t12.
      DATA(t14) = t1.
      t8 = xsdbool( t9 = t14 ).
      IF t8 = abap_true.
        DATA t15 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t15.
        DATA(t16) = abap_true.
        IF t16 = abap_true.
          DATA(t17) = t3.
          t15 = t17.
        ELSE.
          DATA t18 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t18.
          t15 = t18.
        ENDIF.
        result = t15.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t19 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t19.
    result = t19.

  ENDMETHOD.

  METHOD get_main_abap_file.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_abstract_object.
    DATA(t9) = me.
    t8 = t9.
    DATA t10 TYPE string.
    DATA(t11) = t8.
    t10 = t11->name.
    t7 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t12.
    DATA(t13) = `\/`.
    DATA(t14) = |g|.
    CREATE OBJECT t12 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t13 flags = t14 checked = abap_true.
    DATA(t15) = |#|.
    DATA(t16) = strlen( t7 ).
    t6 = t12->replace( p0 = t7 p1 = t15 ).
    DATA(t17) = strlen( t6 ).
    t5 = t6.
    TRANSLATE t5 TO LOWER CASE.
    DATA(t18) = |.|.
    DATA(t19) = strlen( t5 ).
    t4 = |{ t5 }{ t18 }|.
    DATA t20 TYPE string.
    DATA(t21) = CONV string( me->get_type( ) ).
    DATA(t22) = strlen( t21 ).
    t20 = t21.
    TRANSLATE t20 TO LOWER CASE.
    DATA(t23) = strlen( t4 ).
    t3 = |{ t4 }{ t20 }|.
    DATA(t24) = |.abap|.
    DATA(t25) = strlen( t3 ).
    t2 = |{ t3 }{ t24 }|.
    t1 = t2.
    DATA t26 TYPE string.
    DATA t27 TYPE string.
    DATA(t28) = t1.
    DATA t29 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t29.
    DATA(t30) = |#|.
    DATA(t31) = |g|.
    CREATE OBJECT t29 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t30 flags = t31 checked = abap_true.
    DATA(t32) = |%23|.
    DATA(t33) = strlen( t28 ).
    t27 = t29->replace( p0 = t28 p1 = t32 ).
    t26 = t27.
    DATA(t34) = me->parsed.
    DATA t35 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    DATA(t37) = VALUE i( ).
    DO.
      t34->load( ).
      IF t37 >= lines( t34->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t34->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE string.
      DATA t43 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t44) = t35.
      t43 = t44.
      DATA t45 TYPE string.
      DATA(t46) = t43.
      t45 = t46->filename.
      t42 = t45.
      DATA(t47) = t1.
      DATA(t48) = strlen( t42 ).
      DATA t49 TYPE i.
      DATA(t50) = VALUE i( ).
      DATA(t51) = VALUE string( ).
      t49 = strlen( t47 ).
      IF t49 = 0.
        t41 = abap_true.
      ELSEIF t49 <= t48.
        t50 = 0.
        t50 = t48 - t49.
        t51 = t42+t50(t49).
        IF t51 = t47.
          t41 = abap_true.
        ENDIF.
      ENDIF.
      t40 = t41.
      IF t41 = abap_false.
        DATA(t52) = VALUE abap_bool( ).
        DATA t53 TYPE string.
        DATA t54 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t55) = t35.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = t54.
        t56 = t57->filename.
        t53 = t56.
        DATA(t58) = t26.
        DATA(t59) = strlen( t53 ).
        DATA t60 TYPE i.
        DATA(t61) = VALUE i( ).
        DATA(t62) = VALUE string( ).
        t60 = strlen( t58 ).
        IF t60 = 0.
          t52 = abap_true.
        ELSEIF t60 <= t59.
          t61 = 0.
          t61 = t59 - t60.
          t62 = t53+t61(t60).
          IF t62 = t58.
            t52 = abap_true.
          ENDIF.
        ENDIF.
        t40 = t52.
      ENDIF.
      IF t40 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t63.
        DATA(t64) = abap_true.
        IF t64 = abap_true.
          DATA(t65) = t35.
          t63 = t65.
        ELSE.
          DATA t66 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t66.
          t63 = t66.
        ENDIF.
        result = t63.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t67) = me->parsed.
    DATA t68 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t68.
    DATA t69 TYPE REF TO object.
    CLEAR t69.
    DATA(t70) = VALUE i( ).
    DO.
      t67->load( ).
      IF t70 >= lines( t67->items ).
        EXIT.
      ENDIF.
      CLEAR t69.
      READ TABLE t67->items INDEX t70 + 1 INTO t69.
      t70 = t70 + 1.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      CLEAR t68.
      IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t71 ?= t69.
        DATA t72 TYPE REF TO object.
        t72 = t71->as_ref( ).
        t68 ?= t72.
      ELSE.
        t68 ?= t69.
      ENDIF.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE i( ).
      DATA t75 TYPE string.
      DATA t76 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t77) = t68.
      t76 = t77.
      DATA t78 TYPE string.
      DATA(t79) = t76.
      t78 = t79->filename.
      t75 = t78.
      DATA(t80) = |.prog.screen_|.
      DATA(t81) = strlen( t75 ).
      IF t80 IS INITIAL.
        t74 = 0.
      ELSE.
        FIND t80 IN t75 MATCH OFFSET t74.
        IF sy-subrc <> 0.
          t74 = -1.
        ENDIF.
      ENDIF.
      DATA(t82) = 0.
      t73 = xsdbool( t74 >= t82 ).
      IF t73 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t83) = VALUE abap_bool( ).
        DATA t84 TYPE string.
        DATA t85 TYPE REF TO zcl_lnt_abstract_file.
        DATA(t86) = t68.
        t85 = t86.
        DATA t87 TYPE string.
        DATA(t88) = t85.
        t87 = t88->filename.
        t84 = t87.
        DATA(t89) = |.abap|.
        DATA(t90) = strlen( t84 ).
        DATA t91 TYPE i.
        DATA(t92) = VALUE i( ).
        DATA(t93) = VALUE string( ).
        t91 = strlen( t89 ).
        IF t91 = 0.
          t83 = abap_true.
        ELSEIF t91 <= t90.
          t92 = 0.
          t92 = t90 - t91.
          t93 = t84+t92(t91).
          IF t93 = t89.
            t83 = abap_true.
          ENDIF.
        ENDIF.
        IF t83 = abap_true.
          DATA t94 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t94.
          DATA(t95) = abap_true.
          IF t95 = abap_true.
            DATA(t96) = t68.
            t94 = t96.
          ELSE.
            DATA t97 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t97.
            t94 = t97.
          ENDIF.
          result = t94.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t98 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t98.
    result = t98.

  ENDMETHOD.

  METHOD get_text_symbols.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    DATA(t3) = me->texts.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t12) = me->raw_xml_cache.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t11.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ENDIF.
      t10 = t15.
      IF t10 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        DATA(t18) = abap_true.
        IF t18 = abap_true.
          DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t19.
          DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
          t20 = t21.
          DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t22.
          DATA(t23) = VALUE abap_bool( ).
          DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t25) = t20.
          t24 = t25.
          IF t24 IS NOT BOUND.
            t23 = abap_true.
          ELSE.
            t23 = xsdbool( t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t23 = abap_true.
            DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t27) = 0.
            CREATE OBJECT t26.
            t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
            t22 = t26.
          ELSE.
            DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t29) = t20.
            t28 = t29.
            t22 = t28.
          ENDIF.
          t19 = t22.
          t17 = t19.
        ELSE.
          DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t30.
          t17 = t30.
        ENDIF.
        me->raw_xml_cache = t17.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t35) = me->raw_xml_cache.
        t34 = t35.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t39) = t34.
        t38 = t39.
        IF t38 IS NOT BOUND.
          t37 = abap_true.
        ELSE.
          t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t37 = abap_true.
          DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t40.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t40.
          IF t41 IS BOUND.
            t40 = t41.
          ENDIF.
          t36 = t40.
        ELSE.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t43) = t34.
          t42 = t43.
          t36 = t42.
        ENDIF.
        t33 = t36.
        t31 = t33.
      ELSE.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        t31 = t44.
      ENDIF.
      t9 = t31.
      CLEAR t8.
      IF t9 IS BOUND.
        t8 = t9.
      ENDIF.
      me->find_texts( i_parsed = t8 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t47 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t48 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    DATA(t49) = me->texts.
    t48 = t49.
    DATA(t50) = |I|.
    t47 = t48->get( p0 = t50 ).
    t46 = t47.
    DATA t51 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t51.
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = t46.
    IF t53 IS INITIAL.
      t52 = abap_true.
    ENDIF.
    IF t52 = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      DATA t55 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      DATA(t56) = NEW zlnt_runtime_map__5a3c0ec03a13( ).
      t55 = t56.
      DATA(t57) = t55.
      t54 = t57.
      t51 = t54.
    ELSE.
      DATA t58 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      DATA(t59) = t46.
      t58 = t59.
      t51 = t58.
    ENDIF.
    t45 = t51.
    result = t45.

  ENDMETHOD.

  METHOD get_text_elements.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    DATA(t3) = me->texts.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t12) = me->raw_xml_cache.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t11.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ENDIF.
      t10 = t15.
      IF t10 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        DATA(t18) = abap_true.
        IF t18 = abap_true.
          DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t19.
          DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
          t20 = t21.
          DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t22.
          DATA(t23) = VALUE abap_bool( ).
          DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t25) = t20.
          t24 = t25.
          IF t24 IS NOT BOUND.
            t23 = abap_true.
          ELSE.
            t23 = xsdbool( t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t23 = abap_true.
            DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t27) = 0.
            CREATE OBJECT t26.
            t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
            t22 = t26.
          ELSE.
            DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t29) = t20.
            t28 = t29.
            t22 = t28.
          ENDIF.
          t19 = t22.
          t17 = t19.
        ELSE.
          DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t30.
          t17 = t30.
        ENDIF.
        me->raw_xml_cache = t17.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t35) = me->raw_xml_cache.
        t34 = t35.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t39) = t34.
        t38 = t39.
        IF t38 IS NOT BOUND.
          t37 = abap_true.
        ELSE.
          t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t37 = abap_true.
          DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t40.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t40.
          IF t41 IS BOUND.
            t40 = t41.
          ENDIF.
          t36 = t40.
        ELSE.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t43) = t34.
          t42 = t43.
          t36 = t42.
        ENDIF.
        t33 = t36.
        t31 = t33.
      ELSE.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        t31 = t44.
      ENDIF.
      t9 = t31.
      CLEAR t8.
      IF t9 IS BOUND.
        t8 = t9.
      ENDIF.
      me->find_texts( i_parsed = t8 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t46 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t47 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA(t48) = NEW zlnt_runtime_map__5a3c0ec03a13( ).
    t47 = t48.
    DATA(t49) = t47.
    t46 = t49.
    t45 = t46.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    DATA t52 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    DATA(t53) = me->texts.
    t52 = t53.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t57) = t51.
    t56 = t57->keys( ).
    DATA(t58) = VALUE string( ).
    t56->dense( ).
    DATA(t59) = VALUE i( ).
    DO.
      t56->load( ).
      IF t59 >= lines( t56->items ).
        EXIT.
      ENDIF.
      CLEAR t58.
      READ TABLE t56->items INDEX t59 + 1 INTO t58.
      IF t56->has( t59 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t59 = t59 + 1.
      DATA(t60) = t54.
      DATA t61 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      DATA t62 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      DATA(t63) = t51.
      DATA(t64) = t58.
      t62 = t63->get( p0 = t64 ).
      t61 = t62.
      t60->load( ).
      APPEND t61 TO t60->items.
      t60->save( ).
    ENDDO.
    DATA(t65) = t54.
    t50 = t65.
    DATA t66 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    CLEAR t66.
    DATA t67 TYPE REF TO object.
    CLEAR t67.
    DATA(t68) = VALUE i( ).
    DO.
      t50->load( ).
      IF t68 >= lines( t50->items ).
        EXIT.
      ENDIF.
      CLEAR t67.
      READ TABLE t50->items INDEX t68 + 1 INTO t67.
      t68 = t68 + 1.
      DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t69.
      CLEAR t66.
      IF t67 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t69 ?= t67.
        DATA t70 TYPE REF TO object.
        t70 = t69->as_ref( ).
        t66 ?= t70.
      ELSE.
        t66 ?= t67.
      ENDIF.
      DATA t71 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t71.
      DATA t72 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      DATA(t73) = t45.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      DATA(t75) = t66.
      t74 = t75.
      DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t77) = t74.
      t76 = t77->keys( ).
      DATA(t78) = VALUE string( ).
      t76->dense( ).
      DATA(t79) = VALUE i( ).
      DO.
        t76->load( ).
        IF t79 >= lines( t76->items ).
          EXIT.
        ENDIF.
        CLEAR t78.
        READ TABLE t76->items INDEX t79 + 1 INTO t78.
        IF t76->has( t79 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t79 = t79 + 1.
        DATA t80 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
        DATA(t81) = t72.
        DATA(t82) = t78.
        DATA t83 TYPE REF TO zcl_lnt_shape_015c050b.
        DATA t84 TYPE REF TO zcl_lnt_shape_015c050b.
        DATA(t85) = t74.
        DATA(t86) = t78.
        t84 = t85->get( p0 = t86 ).
        t83 = t84.
        t80 = t81->set( p0 = t82 p1 = t83 ).
      ENDDO.
      DATA(t87) = t72.
      t71 = t87.
    ENDDO.
    DATA(t88) = t45.
    result = t88.

  ENDMETHOD.

  METHOD get_text_elements_translations.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->texts_translations.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t12) = me->raw_xml_cache.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t11.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ENDIF.
      t10 = t15.
      IF t10 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        DATA(t18) = abap_true.
        IF t18 = abap_true.
          DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t19.
          DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
          t20 = t21.
          DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t22.
          DATA(t23) = VALUE abap_bool( ).
          DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t25) = t20.
          t24 = t25.
          IF t24 IS NOT BOUND.
            t23 = abap_true.
          ELSE.
            t23 = xsdbool( t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
          ENDIF.
          IF t23 = abap_true.
            DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t27) = 0.
            CREATE OBJECT t26.
            t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null.
            t22 = t26.
          ELSE.
            DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t29) = t20.
            t28 = t29.
            t22 = t28.
          ENDIF.
          t19 = t22.
          t17 = t19.
        ELSE.
          DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t30.
          t17 = t30.
        ENDIF.
        me->raw_xml_cache = t17.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
      ENDIF.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t35) = me->raw_xml_cache.
        t34 = t35.
        DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t36.
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t39) = t34.
        t38 = t39.
        IF t38 IS NOT BOUND.
          t37 = abap_true.
        ELSE.
          t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t37 = abap_true.
          DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t40.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t40.
          IF t41 IS BOUND.
            t40 = t41.
          ENDIF.
          t36 = t40.
        ELSE.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t43) = t34.
          t42 = t43.
          t36 = t42.
        ENDIF.
        t33 = t36.
        t31 = t33.
      ELSE.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        t31 = t44.
      ENDIF.
      t9 = t31.
      CLEAR t8.
      IF t9 IS BOUND.
        t8 = t9.
      ENDIF.
      me->find_texts_translations( i_parsed = t8 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t46) = me->texts_translations.
    t45 = t46.
    result = t45.

  ENDMETHOD.

  METHOD find_texts.
    DATA(t1) = i_parsed.
    DATA t2 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
      CLEAR t4.
      DATA t5 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
      CLEAR t5.
      DATA(t6) = NEW zlnt_runtime_map__f8cd1b113b3e( ).
      t5 = t6.
      DATA(t7) = t5.
      t4 = t7.
      t2 = t4.
    ELSE.
      DATA t8 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
      CLEAR t8.
      t2 = t8.
    ENDIF.
    me->texts = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
    DATA(t9) = VALUE abap_bool( ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = t1.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t20.
    IF t24 IS NOT BOUND.
      t23 = abap_true.
    ELSE.
      t23 = xsdbool( t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      DATA(t27) = t20.
      DATA(t28) = |abapGit|.
      t26 = t27->get( p0 = t28 ).
      t22 = t26.
    ENDIF.
    t19 = t22.
    t18 = t19.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = t18.
    CLEAR t31.
    IF t32 IS BOUND.
      t31 = t32.
    ENDIF.
    IF t31 IS NOT BOUND.
      t30 = abap_true.
    ELSE.
      t30 = xsdbool( t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t30 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      t29 = t33.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t35.
      DATA(t36) = t18.
      t35 = t36.
      DATA(t37) = |asx:abap|.
      t34 = t35->get( p0 = t37 ).
      t29 = t34.
    ENDIF.
    t17 = t29.
    t16 = t17.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = t16.
    CLEAR t40.
    IF t41 IS BOUND.
      t40 = t41.
    ENDIF.
    IF t40 IS NOT BOUND.
      t39 = abap_true.
    ELSE.
      t39 = xsdbool( t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t39 = abap_true.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      t38 = t42.
    ELSE.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t44.
      DATA(t45) = t16.
      t44 = t45.
      DATA(t46) = |asx:values|.
      t43 = t44->get( p0 = t46 ).
      t38 = t43.
    ENDIF.
    t15 = t38.
    t14 = t15.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = t14.
    CLEAR t49.
    IF t50 IS BOUND.
      t49 = t50.
    ENDIF.
    IF t49 IS NOT BOUND.
      t48 = abap_true.
    ELSE.
      t48 = xsdbool( t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t48 = abap_true.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      t47 = t51.
    ELSE.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA(t54) = t14.
      t53 = t54.
      DATA(t55) = |TPOOL|.
      t52 = t53->get( p0 = t55 ).
      t47 = t52.
    ENDIF.
    t13 = t47.
    t12 = t13.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = t12.
    CLEAR t58.
    IF t59 IS BOUND.
      t58 = t59.
    ENDIF.
    IF t58 IS NOT BOUND.
      t57 = abap_true.
    ELSE.
      t57 = xsdbool( t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t57 = abap_true.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      t56 = t60.
    ELSE.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      DATA(t63) = t12.
      t62 = t63.
      DATA(t64) = |item|.
      t61 = t62->get( p0 = t64 ).
      t56 = t61.
    ENDIF.
    t11 = t56.
    t10 = t11.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    t65 = t66.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = t10.
    IF t68 IS INITIAL.
      t67 = abap_true.
    ENDIF.
    t9 = t67.
    IF t9 = abap_true.
      RETURN.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA(t81) = t1.
    t80 = t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = VALUE abap_bool( ).
    DATA(t84) = t80.
    IF t84 IS NOT BOUND.
      t83 = abap_true.
    ELSE.
      t83 = xsdbool( t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t83 = abap_true.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      t82 = t85.
    ELSE.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      DATA(t87) = t80.
      DATA(t88) = |abapGit|.
      t86 = t87->get( p0 = t88 ).
      t82 = t86.
    ENDIF.
    t79 = t82.
    t78 = t79.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = VALUE abap_bool( ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = t78.
    CLEAR t91.
    IF t92 IS BOUND.
      t91 = t92.
    ENDIF.
    IF t91 IS NOT BOUND.
      t90 = abap_true.
    ELSE.
      t90 = xsdbool( t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t90 = abap_true.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      t89 = t93.
    ELSE.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      DATA(t96) = t78.
      t95 = t96.
      DATA(t97) = |asx:abap|.
      t94 = t95->get( p0 = t97 ).
      t89 = t94.
    ENDIF.
    t77 = t89.
    t76 = t77.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = VALUE abap_bool( ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = t76.
    CLEAR t100.
    IF t101 IS BOUND.
      t100 = t101.
    ENDIF.
    IF t100 IS NOT BOUND.
      t99 = abap_true.
    ELSE.
      t99 = xsdbool( t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t99 = abap_true.
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      t98 = t102.
    ELSE.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t103.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      DATA(t105) = t76.
      t104 = t105.
      DATA(t106) = |asx:values|.
      t103 = t104->get( p0 = t106 ).
      t98 = t103.
    ENDIF.
    t75 = t98.
    t74 = t75.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = VALUE abap_bool( ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = t74.
    CLEAR t109.
    IF t110 IS BOUND.
      t109 = t110.
    ENDIF.
    IF t109 IS NOT BOUND.
      t108 = abap_true.
    ELSE.
      t108 = xsdbool( t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t108 = abap_true.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      t107 = t111.
    ELSE.
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      DATA(t114) = t74.
      t113 = t114.
      DATA(t115) = |TPOOL|.
      t112 = t113->get( p0 = t115 ).
      t107 = t112.
    ENDIF.
    t73 = t107.
    t72 = t73.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = t72.
    CLEAR t118.
    IF t119 IS BOUND.
      t118 = t119.
    ENDIF.
    IF t118 IS NOT BOUND.
      t117 = abap_true.
    ELSE.
      t117 = xsdbool( t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t117 = abap_true.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      t116 = t120.
    ELSE.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      DATA(t123) = t72.
      t122 = t123.
      DATA(t124) = |item|.
      t121 = t122->get( p0 = t124 ).
      t116 = t121.
    ENDIF.
    t71 = t116.
    CLEAR t70.
    IF t71 IS BOUND.
      t70 = t71.
    ENDIF.
    t69 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t70 ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO object.
    CLEAR t126.
    DATA(t127) = VALUE i( ).
    DO.
      t69->load( ).
      IF t127 >= lines( t69->items ).
        EXIT.
      ENDIF.
      CLEAR t126.
      READ TABLE t69->items INDEX t127 + 1 INTO t126.
      t127 = t127 + 1.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      CLEAR t125.
      IF t126 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t128 ?= t126.
        t125 = t128.
      ELSE.
        IF t126 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t129 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t129.
          t129 ?= t126.
          CLEAR t125.
          IF t129 IS BOUND.
            CREATE OBJECT t125.
            t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t125->cval = t129.
          ENDIF.
        ELSE.
          CLEAR t125.
          IF t126 IS BOUND.
            DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t130.
            DATA t131 TYPE REF TO object.
            CLEAR t131.
            CLEAR t130.
            t131 = t126.
            TRY.
                t125 ?= t131.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t125 IS NOT BOUND.
              TRY.
                  t130 ?= t126.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t130 IS BOUND.
                t125 = t130->source( ).
              ENDIF.
              IF t125 IS NOT BOUND.
                CREATE OBJECT t125.
                t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t125->oval = t126.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      DATA(t134) = VALUE abap_bool( ).
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t137.
      DATA(t138) = t125.
      t137 = t138.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA(t140) = VALUE abap_bool( ).
      DATA(t141) = t137.
      IF t141 IS NOT BOUND.
        t140 = abap_true.
      ELSE.
        t140 = xsdbool( t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t140 = abap_true.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        t139 = t142.
      ELSE.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        DATA(t144) = t137.
        DATA(t145) = |ID|.
        t143 = t144->get( p0 = t145 ).
        t139 = t143.
      ENDIF.
      t136 = t139.
      t135 = t136.
      DATA(t146) = VALUE abap_bool( ).
      DATA(t147) = VALUE string( ).
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = t135.
      IF t149 IS INITIAL.
        t148 = abap_true.
      ENDIF.
      IF t148 = abap_true.
        DATA(t150) = |undefined|.
        t147 = t150.
      ELSE.
        DATA(t151) = VALUE string( ).
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        DATA(t153) = t135.
        t152 = t153.
        IF t152 IS BOUND.
          t151 = t152->type_of( ).
          IF t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t152->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t151 = `function`.
          ENDIF.
        ELSE.
          t151 = `undefined`.
        ENDIF.
        t147 = t151.
      ENDIF.
      DATA(t154) = |string|.
      t146 = xsdbool( t147 = t154 ).
      t134 = t146.
      IF t134 = abap_true.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        DATA(t156) = VALUE string( ).
        DATA(t157) = VALUE string( ).
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        DATA(t159) = t125.
        DATA(t160) = |ID|.
        t158 = t159->get( p0 = t160 ).
        t157 = t158->as_string( ).
        DATA(t161) = strlen( t157 ).
        t156 = t157.
        IF t156 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t156 TO UPPER CASE.
        ELSE.
          t156 = zlnt_runtime_uppe_91169605024d=>full( t156 ).
        ENDIF.
        CLEAR t155.
        CREATE OBJECT t155.
        t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t155->sval = t156.
        t133 = t155.
      ELSE.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        CLEAR t162.
        IF t163 IS BOUND.
          t162 = t163.
        ENDIF.
        t133 = t162.
      ENDIF.
      t132 = t133.
      DATA(t164) = VALUE abap_bool( ).
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      DATA(t166) = t132.
      t165 = t166.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      t167 = t168.
      DATA(t169) = VALUE abap_bool( ).
      DATA(t170) = t165.
      IF t170 IS INITIAL.
        t169 = abap_true.
      ENDIF.
      t164 = t169.
      IF t164 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = VALUE abap_bool( ).
      DATA(t173) = VALUE abap_bool( ).
      DATA(t174) = t132.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      DATA(t176) = |R|.
      CLEAR t175.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t175->sval = t176.
      IF t174 IS NOT BOUND.
        t173 = xsdbool( t175 IS NOT BOUND ).
      ELSE.
        t173 = t174->strict_equals( t175 ).
      ENDIF.
      t172 = xsdbool( t173 = abap_false ).
      t171 = t172.
      IF t172 = abap_true.
        DATA(t177) = VALUE abap_bool( ).
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        DATA(t180) = t125.
        DATA(t181) = |KEY|.
        t179 = t180->get( p0 = t181 ).
        t178 = t179.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t183.
        t182 = t183.
        DATA(t184) = VALUE abap_bool( ).
        DATA(t185) = t178.
        IF t185 IS INITIAL.
          t184 = abap_true.
        ENDIF.
        t177 = t184.
        t171 = t177.
      ENDIF.
      IF t171 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t187.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      DATA(t190) = t125.
      DATA(t191) = |KEY|.
      t189 = t190->get( p0 = t191 ).
      t188 = t189.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      DATA(t193) = VALUE abap_bool( ).
      DATA(t194) = t188.
      IF t194 IS NOT BOUND.
        t193 = abap_true.
      ELSE.
        t193 = xsdbool( t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t193 = abap_true.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        DATA(t196) = t125.
        DATA(t197) = |ID|.
        t195 = t196->get( p0 = t197 ).
        t192 = t195.
      ELSE.
        DATA(t198) = t188.
        t192 = t198.
      ENDIF.
      t187 = t192.
      t186 = t187.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t199.
      DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t200.
      DATA(t201) = VALUE abap_bool( ).
      DATA(t202) = VALUE string( ).
      DATA(t203) = t186.
      IF t203 IS BOUND.
        t202 = t203->type_of( ).
        IF t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t203->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t202 = `function`.
        ENDIF.
      ELSE.
        t202 = `undefined`.
      ENDIF.
      DATA(t204) = |string|.
      t201 = xsdbool( t202 = t204 ).
      IF t201 = abap_true.
        DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t205.
        DATA(t206) = abap_true.
        IF t206 = abap_true.
          DATA(t207) = VALUE string( ).
          DATA(t208) = VALUE string( ).
          DATA(t209) = t186.
          t208 = t209->as_string( ).
          DATA(t210) = strlen( t208 ).
          t207 = t208.
          IF t207 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t207 TO UPPER CASE.
          ELSE.
            t207 = zlnt_runtime_uppe_91169605024d=>full( t207 ).
          ENDIF.
          DATA(t211) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t211->has = abap_true.
          t211->value = t207.
          t205 = t211.
        ELSE.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          t205 = t212.
        ENDIF.
        t200 = t205.
      ELSE.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        t200 = t213.
      ENDIF.
      t199 = t200.
      DATA(t214) = VALUE abap_bool( ).
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t215.
      DATA(t216) = t199.
      t215 = t216.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t218.
      t217 = t218.
      DATA(t219) = VALUE abap_bool( ).
      DATA(t220) = t215.
      IF t220 IS INITIAL.
        t219 = abap_true.
      ELSEIF t220->has = abap_false.
        t219 = abap_true.
      ENDIF.
      t214 = t219.
      IF t214 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t221) = VALUE abap_bool( ).
      DATA t222 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t222.
      DATA t223 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
      CLEAR t224.
      DATA(t225) = me->texts.
      t224 = t225.
      DATA(t226) = VALUE string( ).
      DATA(t227) = t132.
      IF t227 IS BOUND.
        IF t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t228) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t229) = |src/objects/_abap_object.ts:148:22: ABAP record string conve|.
          t229 = t229 && |rsion requires primitive dynamic storage|.
          t228->source_location = t229.
          RAISE EXCEPTION t228.
        ENDIF.
      ENDIF.
      IF t227 IS BOUND.
        IF t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t227->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t230) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t231) = |src/objects/_abap_object.ts:148:22: record string conversion|.
            t231 = t231 && | requires the original default Object coercion hooks|.
            t230->source_location = t231.
            RAISE EXCEPTION t230.
          ENDIF.
          READ TABLE t227->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t232) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t233) = |src/objects/_abap_object.ts:148:22: record string conversion|.
            t233 = t233 && | requires the original default Object coercion hooks|.
            t232->source_location = t233.
            RAISE EXCEPTION t232.
          ENDIF.
          READ TABLE t227->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t234) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t235) = |src/objects/_abap_object.ts:148:22: record string conversion|.
            t235 = t235 && | requires the original default Object coercion hooks|.
            t234->source_location = t235.
            RAISE EXCEPTION t234.
          ENDIF.
          t226 = `[object Object]`.
        ELSE.
          t226 = t227->to_string( ).
        ENDIF.
      ELSE.
        t226 = `undefined`.
      ENDIF.
      t223 = t224->get( p0 = t226 ).
      t222 = t223.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t237.
      t236 = t237.
      DATA(t238) = VALUE abap_bool( ).
      DATA(t239) = t222.
      IF t239 IS INITIAL.
        t238 = abap_true.
      ENDIF.
      t221 = t238.
      IF t221 = abap_true.
        DATA t240 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
        CLEAR t240.
        DATA t241 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
        CLEAR t241.
        DATA(t242) = me->texts.
        t241 = t242.
        DATA(t243) = VALUE string( ).
        DATA(t244) = t132.
        IF t244 IS BOUND.
          IF t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            DATA(t245) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t246) = |src/objects/_abap_object.ts:149:20: ABAP record string conve|.
            t246 = t246 && |rsion requires primitive dynamic storage|.
            t245->source_location = t246.
            RAISE EXCEPTION t245.
          ENDIF.
        ENDIF.
        IF t244 IS BOUND.
          IF t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            READ TABLE t244->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t247) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t248) = |src/objects/_abap_object.ts:149:20: record string conversion|.
              t248 = t248 && | requires the original default Object coercion hooks|.
              t247->source_location = t248.
              RAISE EXCEPTION t247.
            ENDIF.
            READ TABLE t244->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t249) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t250) = |src/objects/_abap_object.ts:149:20: record string conversion|.
              t250 = t250 && | requires the original default Object coercion hooks|.
              t249->source_location = t250.
              RAISE EXCEPTION t249.
            ENDIF.
            READ TABLE t244->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t251) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t252) = |src/objects/_abap_object.ts:149:20: record string conversion|.
              t252 = t252 && | requires the original default Object coercion hooks|.
              t251->source_location = t252.
              RAISE EXCEPTION t251.
            ENDIF.
            t243 = `[object Object]`.
          ELSE.
            t243 = t244->to_string( ).
          ENDIF.
        ELSE.
          t243 = `undefined`.
        ENDIF.
        DATA t253 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
        CLEAR t253.
        DATA t254 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
        CLEAR t254.
        DATA(t255) = NEW zlnt_runtime_map__5a3c0ec03a13( ).
        t254 = t255.
        DATA(t256) = t254.
        t253 = t256.
        t240 = t241->set( p0 = t243 p1 = t253 ).
      ENDIF.
      DATA t257 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t257.
      DATA t258 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t258.
      DATA t259 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t259.
      DATA t260 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
      CLEAR t260.
      DATA(t261) = me->texts.
      t260 = t261.
      DATA(t262) = VALUE string( ).
      DATA(t263) = t132.
      IF t263 IS BOUND.
        IF t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t264) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t265) = |src/objects/_abap_object.ts:151:18: ABAP record string conve|.
          t265 = t265 && |rsion requires primitive dynamic storage|.
          t264->source_location = t265.
          RAISE EXCEPTION t264.
        ENDIF.
      ENDIF.
      IF t263 IS BOUND.
        IF t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t263->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t266) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t267) = |src/objects/_abap_object.ts:151:18: record string conversion|.
            t267 = t267 && | requires the original default Object coercion hooks|.
            t266->source_location = t267.
            RAISE EXCEPTION t266.
          ENDIF.
          READ TABLE t263->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t268) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t269) = |src/objects/_abap_object.ts:151:18: record string conversion|.
            t269 = t269 && | requires the original default Object coercion hooks|.
            t268->source_location = t269.
            RAISE EXCEPTION t268.
          ENDIF.
          READ TABLE t263->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t270) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t271) = |src/objects/_abap_object.ts:151:18: record string conversion|.
            t271 = t271 && | requires the original default Object coercion hooks|.
            t270->source_location = t271.
            RAISE EXCEPTION t270.
          ENDIF.
          t262 = `[object Object]`.
        ELSE.
          t262 = t263->to_string( ).
        ENDIF.
      ELSE.
        t262 = `undefined`.
      ENDIF.
      t259 = t260->get( p0 = t262 ).
      t258 = t259.
      DATA(t272) = VALUE string( ).
      DATA(t273) = t199.
      t272 = t273->value.
      DATA t274 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t274.
      DATA(t275) = VALUE string( ).
      DATA(t276) = VALUE string( ).
      DATA(t277) = VALUE abap_bool( ).
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t278.
      DATA(t279) = t125.
      DATA(t280) = |ENTRY|.
      t278 = t279->get( p0 = t280 ).
      IF t278 IS BOUND.
        t277 = t278->truth( ).
      ENDIF.
      IF t277 = abap_true.
        DATA(t281) = VALUE string( ).
        DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t282.
        DATA(t283) = t125.
        DATA(t284) = |ENTRY|.
        t282 = t283->get( p0 = t284 ).
        t281 = zcl_lnt_xml_utils_module=>unescape( i_str = t282 ).
        t276 = t281.
      ELSE.
        DATA(t285) = ||.
        t276 = t285.
      ENDIF.
      t275 = t276.
      DATA t286 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t286.
      DATA t287 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t287.
      DATA(t288) = abap_true.
      IF t288 = abap_true.
        DATA t289 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t289.
        DATA(t290) = VALUE string( ).
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t291.
        DATA(t292) = t125.
        DATA(t293) = |LENGTH|.
        t291 = t292->get( p0 = t293 ).
        IF t291 IS BOUND.
          IF t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            DATA(t294) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t295) = |src/objects/_abap_object.ts:151:91: ABAP record string conve|.
            t295 = t295 && |rsion requires primitive dynamic storage|.
            t294->source_location = t295.
            RAISE EXCEPTION t294.
          ENDIF.
        ENDIF.
        IF t291 IS BOUND.
          IF t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            READ TABLE t291->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t296) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t297) = |src/objects/_abap_object.ts:151:91: record string conversion|.
              t297 = t297 && | requires the original default Object coercion hooks|.
              t296->source_location = t297.
              RAISE EXCEPTION t296.
            ENDIF.
            READ TABLE t291->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t298) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t299) = |src/objects/_abap_object.ts:151:91: record string conversion|.
              t299 = t299 && | requires the original default Object coercion hooks|.
              t298->source_location = t299.
              RAISE EXCEPTION t298.
            ENDIF.
            READ TABLE t291->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t300) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t301) = |src/objects/_abap_object.ts:151:91: record string conversion|.
              t301 = t301 && | requires the original default Object coercion hooks|.
              t300->source_location = t301.
              RAISE EXCEPTION t300.
            ENDIF.
            t290 = `[object Object]`.
          ELSE.
            t290 = t291->to_string( ).
          ENDIF.
        ELSE.
          t290 = `undefined`.
        ENDIF.
        t289 = zlnt_runtime_stri_248d3505915c=>int_optional( t290 ).
        t287 = t289.
      ELSE.
        DATA t302 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t302.
        t287 = t302.
      ENDIF.
      t286 = t287.
      t274 = NEW zcl_lnt_shape_015c050b( i_entry = t275 i_max_length = t286 ).
      CREATE OBJECT t274->zlnt_view_ownkeys_b0e8086400eb.
      t274->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t303.
      IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entry` p1 = t303 ).
      ENDIF.
      DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t304.
      IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t304 ).
      ENDIF.
      CREATE OBJECT t274->zlnt_json_ownkeys_70e5fd461788.
      t274->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t305) = |entry|.
      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t306.
      IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = t305 p1 = t306 ).
      ENDIF.
      DATA(t307) = |maxLength|.
      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t308.
      IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = t307 p1 = t308 ).
      ENDIF.
      t257 = t258->set( p0 = t272 p1 = t274 ).
    ENDDO.
  ENDMETHOD.

  METHOD find_texts_translations.
    DATA(t1) = i_parsed.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA(t3) = abap_true.
    IF t3 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t4.
      CREATE OBJECT t4.
      t2 = t4.
    ELSE.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t5.
      t2 = t5.
    ENDIF.
    me->texts_translations = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA(t17) = t1.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t16.
    IF t20 IS NOT BOUND.
      t19 = abap_true.
    ELSE.
      t19 = xsdbool( t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t19 = abap_true.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      DATA(t23) = t16.
      DATA(t24) = |abapGit|.
      t22 = t23->get( p0 = t24 ).
      t18 = t22.
    ENDIF.
    t15 = t18.
    t14 = t15.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = t14.
    CLEAR t27.
    IF t28 IS BOUND.
      t27 = t28.
    ENDIF.
    IF t27 IS NOT BOUND.
      t26 = abap_true.
    ELSE.
      t26 = xsdbool( t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t26 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      t25 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      DATA(t32) = t14.
      t31 = t32.
      DATA(t33) = |asx:abap|.
      t30 = t31->get( p0 = t33 ).
      t25 = t30.
    ENDIF.
    t13 = t25.
    t12 = t13.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = t12.
    CLEAR t36.
    IF t37 IS BOUND.
      t36 = t37.
    ENDIF.
    IF t36 IS NOT BOUND.
      t35 = abap_true.
    ELSE.
      t35 = xsdbool( t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t35 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      t34 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      DATA(t41) = t12.
      t40 = t41.
      DATA(t42) = |asx:values|.
      t39 = t40->get( p0 = t42 ).
      t34 = t39.
    ENDIF.
    t11 = t34.
    t10 = t11.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = t10.
    CLEAR t45.
    IF t46 IS BOUND.
      t45 = t46.
    ENDIF.
    IF t45 IS NOT BOUND.
      t44 = abap_true.
    ELSE.
      t44 = xsdbool( t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t44 = abap_true.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      t43 = t47.
    ELSE.
      DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t49.
      DATA(t50) = t10.
      t49 = t50.
      DATA(t51) = |I18N_TPOOL|.
      t48 = t49->get( p0 = t51 ).
      t43 = t48.
    ENDIF.
    t9 = t43.
    t8 = t9.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = t8.
    CLEAR t54.
    IF t55 IS BOUND.
      t54 = t55.
    ENDIF.
    IF t54 IS NOT BOUND.
      t53 = abap_true.
    ELSE.
      t53 = xsdbool( t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t53 = abap_true.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      t52 = t56.
    ELSE.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      DATA(t59) = t8.
      t58 = t59.
      DATA(t60) = |item|.
      t57 = t58->get( p0 = t60 ).
      t52 = t57.
    ENDIF.
    t7 = t52.
    t6 = t7.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = t6.
    IF t64 IS INITIAL.
      t63 = abap_true.
    ENDIF.
    IF t63 = abap_true.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      t62 = t65.
    ELSE.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      DATA(t67) = t6.
      t66 = t67.
      t62 = t66.
    ENDIF.
    t61 = t62.
    DATA(t68) = VALUE abap_bool( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = t61.
    t69 = t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    t71 = t72.
    DATA(t73) = VALUE abap_bool( ).
    DATA(t74) = t69.
    IF t74 IS INITIAL.
      t73 = abap_true.
    ENDIF.
    t68 = t73.
    IF t68 = abap_true.
      RETURN.
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = t61.
    CLEAR t76.
    IF t77 IS BOUND.
      t76 = t77.
    ENDIF.
    t75 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t76 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO object.
    CLEAR t79.
    DATA(t80) = VALUE i( ).
    DO.
      t75->load( ).
      IF t80 >= lines( t75->items ).
        EXIT.
      ENDIF.
      CLEAR t79.
      READ TABLE t75->items INDEX t80 + 1 INTO t79.
      t80 = t80 + 1.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      CLEAR t78.
      IF t79 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t81 ?= t79.
        t78 = t81.
      ELSE.
        IF t79 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t82 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t82.
          t82 ?= t79.
          CLEAR t78.
          IF t82 IS BOUND.
            CREATE OBJECT t78.
            t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t78->cval = t82.
          ENDIF.
        ELSE.
          CLEAR t78.
          IF t79 IS BOUND.
            DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t83.
            DATA t84 TYPE REF TO object.
            CLEAR t84.
            CLEAR t83.
            t84 = t79.
            TRY.
                t78 ?= t84.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t78 IS NOT BOUND.
              TRY.
                  t83 ?= t79.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t83 IS BOUND.
                t78 = t83->source( ).
              ENDIF.
              IF t78 IS NOT BOUND.
                CREATE OBJECT t78.
                t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t78->oval = t79.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t85 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t85.
      DATA t86 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t87.
      DATA(t88) = NEW zlnt_runtime_map__5a3c0ec03a13( ).
      t87 = t88.
      DATA(t89) = t87.
      t86 = t89.
      t85 = t86.
      DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      DATA(t95) = t78.
      DATA(t96) = |TEXTPOOL|.
      t94 = t95->get( p0 = t96 ).
      t93 = t94.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      DATA(t98) = VALUE abap_bool( ).
      DATA(t99) = t93.
      IF t99 IS NOT BOUND.
        t98 = abap_true.
      ELSE.
        t98 = xsdbool( t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t98 = abap_true.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        t97 = t100.
      ELSE.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        DATA(t102) = t93.
        DATA(t103) = |item|.
        t101 = t102->get( p0 = t103 ).
        t97 = t101.
      ENDIF.
      t92 = t97.
      CLEAR t91.
      IF t92 IS BOUND.
        t91 = t92.
      ENDIF.
      t90 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t91 ).
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      DATA t105 TYPE REF TO object.
      CLEAR t105.
      DATA(t106) = VALUE i( ).
      DO.
        t90->load( ).
        IF t106 >= lines( t90->items ).
          EXIT.
        ENDIF.
        CLEAR t105.
        READ TABLE t90->items INDEX t106 + 1 INTO t105.
        t106 = t106 + 1.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        CLEAR t104.
        IF t105 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t107 ?= t105.
          t104 = t107.
        ELSE.
          IF t105 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
            DATA t108 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t108.
            t108 ?= t105.
            CLEAR t104.
            IF t108 IS BOUND.
              CREATE OBJECT t104.
              t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
              t104->cval = t108.
            ENDIF.
          ELSE.
            CLEAR t104.
            IF t105 IS BOUND.
              DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t109.
              DATA t110 TYPE REF TO object.
              CLEAR t110.
              CLEAR t109.
              t110 = t105.
              TRY.
                  t104 ?= t110.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t104 IS NOT BOUND.
                TRY.
                    t109 ?= t105.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t109 IS BOUND.
                  t104 = t109->source( ).
                ENDIF.
                IF t104 IS NOT BOUND.
                  CREATE OBJECT t104.
                  t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t104->oval = t105.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        DATA(t115) = t104.
        DATA(t116) = |KEY|.
        t114 = t115->get( p0 = t116 ).
        t113 = t114.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = t113.
        IF t119 IS NOT BOUND.
          t118 = abap_true.
        ELSE.
          t118 = xsdbool( t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t118 = abap_true.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          DATA(t121) = t104.
          DATA(t122) = |ID|.
          t120 = t121->get( p0 = t122 ).
          t117 = t120.
        ELSE.
          DATA(t123) = t113.
          t117 = t123.
        ENDIF.
        t112 = t117.
        t111 = t112.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA(t126) = VALUE abap_bool( ).
        DATA(t127) = VALUE string( ).
        DATA(t128) = t111.
        IF t128 IS BOUND.
          t127 = t128->type_of( ).
          IF t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t128->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t127 = `function`.
          ENDIF.
        ELSE.
          t127 = `undefined`.
        ENDIF.
        DATA(t129) = |string|.
        t126 = xsdbool( t127 = t129 ).
        IF t126 = abap_true.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t131) = abap_true.
          IF t131 = abap_true.
            DATA(t132) = VALUE string( ).
            DATA(t133) = VALUE string( ).
            DATA(t134) = t111.
            t133 = t134->as_string( ).
            DATA(t135) = strlen( t133 ).
            t132 = t133.
            IF t132 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t132 TO UPPER CASE.
            ELSE.
              t132 = zlnt_runtime_uppe_91169605024d=>full( t132 ).
            ENDIF.
            DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t136->has = abap_true.
            t136->value = t132.
            t130 = t136.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t137.
            t130 = t137.
          ENDIF.
          t125 = t130.
        ELSE.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          t125 = t138.
        ENDIF.
        t124 = t125.
        DATA(t139) = VALUE abap_bool( ).
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA(t141) = t124.
        t140 = t141.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        t142 = t143.
        DATA(t144) = VALUE abap_bool( ).
        DATA(t145) = VALUE abap_bool( ).
        DATA(t146) = t140.
        IF t146 IS INITIAL.
          t145 = abap_true.
        ELSEIF t146->has = abap_false.
          t145 = abap_true.
        ENDIF.
        t144 = xsdbool( t145 = abap_false ).
        t139 = t144.
        IF t139 = abap_true.
          DATA t147 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t147.
          DATA(t148) = t85.
          DATA(t149) = VALUE string( ).
          DATA(t150) = t124.
          t149 = t150->value.
          DATA t151 TYPE REF TO zcl_lnt_shape_015c050b.
          CLEAR t151.
          DATA(t152) = VALUE string( ).
          DATA(t153) = VALUE string( ).
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          DATA(t155) = t104.
          DATA(t156) = |ENTRY|.
          t154 = t155->get( p0 = t156 ).
          t153 = zcl_lnt_xml_utils_module=>unescape( i_str = t154 ).
          t152 = t153.
          DATA t157 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t158.
          DATA(t159) = abap_true.
          IF t159 = abap_true.
            DATA t160 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t160.
            DATA(t161) = VALUE string( ).
            DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t162.
            DATA(t163) = t104.
            DATA(t164) = |LENGTH|.
            t162 = t163->get( p0 = t164 ).
            IF t162 IS BOUND.
              IF t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                DATA(t165) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t166) = |src/objects/_abap_object.ts:169:81: ABAP record string conve|.
                t166 = t166 && |rsion requires primitive dynamic storage|.
                t165->source_location = t166.
                RAISE EXCEPTION t165.
              ENDIF.
            ENDIF.
            IF t162 IS BOUND.
              IF t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                READ TABLE t162->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
                IF sy-subrc = 0.
                  DATA(t167) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t168) = |src/objects/_abap_object.ts:169:81: record string conversion|.
                  t168 = t168 && | requires the original default Object coercion hooks|.
                  t167->source_location = t168.
                  RAISE EXCEPTION t167.
                ENDIF.
                READ TABLE t162->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
                IF sy-subrc = 0.
                  DATA(t169) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t170) = |src/objects/_abap_object.ts:169:81: record string conversion|.
                  t170 = t170 && | requires the original default Object coercion hooks|.
                  t169->source_location = t170.
                  RAISE EXCEPTION t169.
                ENDIF.
                READ TABLE t162->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
                IF sy-subrc = 0.
                  DATA(t171) = NEW zlnt_exception_un_5f2d02892fe8( ).
                  DATA(t172) = |src/objects/_abap_object.ts:169:81: record string conversion|.
                  t172 = t172 && | requires the original default Object coercion hooks|.
                  t171->source_location = t172.
                  RAISE EXCEPTION t171.
                ENDIF.
                t161 = `[object Object]`.
              ELSE.
                t161 = t162->to_string( ).
              ENDIF.
            ELSE.
              t161 = `undefined`.
            ENDIF.
            t160 = zlnt_runtime_stri_248d3505915c=>int_optional( t161 ).
            t158 = t160.
          ELSE.
            DATA t173 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t173.
            t158 = t173.
          ENDIF.
          t157 = t158.
          t151 = NEW zcl_lnt_shape_015c050b( i_entry = t152 i_max_length = t157 ).
          CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
          t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entry` p1 = t174 ).
          ENDIF.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t175 ).
          ENDIF.
          CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
          t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t176) = |entry|.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
          ENDIF.
          DATA(t178) = |maxLength|.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
          ENDIF.
          t147 = t148->set( p0 = t149 p1 = t151 ).
        ENDIF.
      ENDDO.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t180.
      DATA(t181) = me->texts_translations.
      t180 = t181.
      DATA t182 TYPE REF TO zcl_lnt_itrnsltn_txt_elmnts.
      CLEAR t182.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t183.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t184.
      DATA(t185) = t78.
      DATA(t186) = |LANGUAGE|.
      t184 = t185->get( p0 = t186 ).
      t183 = t184.
      DATA t187 TYPE REF TO zcl_lnt_itrnsltn_txt_elmnts.
      CLEAR t187.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t189.
      DATA(t190) = VALUE abap_bool( ).
      DATA(t191) = t183.
      IF t191 IS INITIAL.
        t190 = abap_true.
      ENDIF.
      IF t190 = abap_true.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t192.
        t189 = t192.
      ELSE.
        DATA(t193) = VALUE string( ).
        DATA(t194) = t183.
        t193 = t194->as_string( ).
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t193.
        t189 = t195.
      ENDIF.
      t188 = t189.
      DATA t196 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t196.
      DATA(t197) = t85.
      t196 = t197.
      t187 = NEW zcl_lnt_itrnsltn_txt_elmnts( i_language = t188 i_text_elements = t196 ).
      CREATE OBJECT t187->zlnt_view_ownkeys_b0e8086400eb.
      t187->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t198 ).
      ENDIF.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textElements` p1 = t199 ).
      ENDIF.
      CREATE OBJECT t187->zlnt_json_ownkeys_70e5fd461788.
      t187->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t200) = |language|.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t200 p1 = t201 ).
      ENDIF.
      DATA(t202) = |textElements|.
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
      ENDIF.
      t182 = t187.
      t180->load( ).
      APPEND t182 TO t180->items.
      t180->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_abp_obj_ts_abp_obj( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1183_f38459cb1534.
  ENDMETHOD.
ENDCLASS.
