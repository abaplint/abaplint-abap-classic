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
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    me->parsed = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsed`.
    CLEAR me->texts.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
    CLEAR me->raw_xml_cache.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
  ENDMETHOD.

  METHOD debug_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    t1->source_location = |src/objects/_abap_object.ts:20|.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD is.
    DATA(t1) = i_x.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    IF t1 IS BOUND.
      t5 = t1->truth( ).
    ENDIF.
    t3 = xsdbool( xsdbool( t5 = abap_false ) = abap_false ).
    t2 = t3.
    IF t3 = abap_true.
      DATA(t7) = VALUE abap_bool( ).
      IF t1 IS BOUND AND t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t7 = xsdbool( t1->oval IS INSTANCE OF zcl_lnt_abap_object ).
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
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = |Normal|.
      t4 = t10.
    ENDIF.
    DATA t14 TYPE REF TO zcl_lnt_abstract_object.
    t14 = me.
    IF xsdbool( t14->dirty = abap_false ) = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_iparse_result.
      DATA t24 TYPE REF TO zcl_lnt_shape_8fc6df03.
      t19 = NEW zcl_lnt_iparse_result( i_updated = abap_false i_runtime = CONV f( 0 ) i_runtime_extra = t24 ).
      CREATE OBJECT t19->zlnt_view_ownkeys_b0e8086400eb.
      t19->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t26 ).
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t19->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t19->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t27 ).
      ENDIF.
      CREATE OBJECT t19->zlnt_json_ownkeys_70e5fd461788.
      t19->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t29 ).
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t19->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t19->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t31 ).
      ENDIF.
      result = t19.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zcl_lnt_abstract_object.
    t37 = me.
    t36 = t37->files.
    DATA t41 TYPE REF TO zif_lnt_file.
    DATA t42 TYPE REF TO object.
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
      t47 = t41->get_filename( ).
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
        t34->load( ).
        APPEND t41 TO t34->items.
        t34->save( ).
      ENDIF.
    ENDDO.
    DATA t57 TYPE REF TO zcl_lnt_iabapparser_result.
    DATA t60 TYPE REF TO zcl_lnt_iabapparser_options.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    t61 = t1.
    DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t66 = t2.
    DATA t68 TYPE REF TO zif_lnt_registry.
    t68 = t3.
    DATA t73 TYPE string.
    t73 = t4->value.
    DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t75->has = abap_true.
    t75->value = t73.
    t60 = NEW zcl_lnt_iabapparser_options( i_release_7928 = t61 i_language_version_0e1d = t75 i_global_macros_5535 = t66 i_reg_f149 = t68 ).
    CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
    t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t77 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalMacros` p1 = t78 ).
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `reg` p1 = t79 ).
    ENDIF.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `languageVersion` p1 = t80 ).
    ENDIF.
    CREATE OBJECT t60->zlnt_json_ownkeys_70e5fd461788.
    t60->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |release| p1 = t82 ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |globalMacros| p1 = t84 ).
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |reg| p1 = t86 ).
    ENDIF.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |languageVersion| p1 = t88 ).
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t90 TYPE REF TO zif_lnt_registry.
    t57 = NEW zcl_lnt_abap_parser( i_options_or_release = t60 i_global_macros_5535 = t89 i_reg_f149 = t90 )->parse( i_files = t34 ).
    me->parsed = t57->output.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsed`.
    me->old = t57->issues.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `old`.
    me->dirty = abap_false.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dirty`.
    DATA t97 TYPE REF TO zcl_lnt_iparse_result.
    DATA t100 TYPE f.
    t100 = t57->runtime.
    DATA t103 TYPE REF TO zcl_lnt_shape_8fc6df03.
    t103 = t57->runtime_extra.
    t97 = NEW zcl_lnt_iparse_result( i_updated = abap_true i_runtime = t100 i_runtime_extra = t103 ).
    CREATE OBJECT t97->zlnt_view_ownkeys_b0e8086400eb.
    t97->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `updated` p1 = t109 ).
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t110 ).
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t97->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t97->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtimeExtra` p1 = t111 ).
    ENDIF.
    CREATE OBJECT t97->zlnt_json_ownkeys_70e5fd461788.
    t97->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = |updated| p1 = t113 ).
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtime| p1 = t115 ).
    ENDIF.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t97->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t97->zlnt_json_ownkeys_70e5fd461788->put( p0 = |runtimeExtra| p1 = t117 ).
    ENDIF.
    result = t97.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->syntax_result.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntaxResult`.
    CLEAR me->texts.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
    CLEAR me->texts_translations.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    CLEAR me->raw_xml_cache.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    me->parsed = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsed`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD get_parsed_xml.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->raw_xml_cache IS INITIAL ) = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t14) = VALUE abap_bool( ).
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t15 = t11.
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
        t13 = t11.
      ENDIF.
      me->raw_xml_cache = t13.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t25 = me->raw_xml_cache.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29 = t25.
    IF t29 IS NOT BOUND.
      t28 = abap_true.
    ELSE.
      t28 = xsdbool( t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t28 = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    ELSE.
      t27 = t25.
    ENDIF.
    result = t27.

  ENDMETHOD.

  METHOD get_abap_files.
    result = me->parsed.

  ENDMETHOD.

  METHOD get_abap_file_by_name.
    DATA(t1) = i_filename.
    DATA(t2) = me->parsed.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA t4 TYPE REF TO object.
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
      DATA t10 TYPE REF TO zcl_lnt_abstract_file.
      t10 = t3.
      IF xsdbool( t10->filename = t1 ) = abap_true.
        result = t3.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_main_abap_file.
    DATA t1 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zcl_lnt_abstract_object.
    t8 = me.
    t7 = t8->name.
    DATA t12 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t12 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `\/` flags = |g| checked = abap_true.
    DATA(t16) = strlen( t7 ).
    t6 = t12->replace( p0 = t7 p1 = |#| ).
    DATA(t17) = strlen( t6 ).
    t5 = t6.
    TRANSLATE t5 TO LOWER CASE.
    DATA(t19) = strlen( t5 ).
    t4 = |{ t5 }{ |.| }|.
    DATA t20 TYPE string.
    DATA(t21) = CONV string( me->get_type( ) ).
    DATA(t22) = strlen( t21 ).
    t20 = t21.
    TRANSLATE t20 TO LOWER CASE.
    DATA(t23) = strlen( t4 ).
    t3 = |{ t4 }{ t20 }|.
    DATA(t25) = strlen( t3 ).
    t1 = |{ t3 }{ |.abap| }|.
    DATA t26 TYPE string.
    DATA t29 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t29 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |#| flags = |g| checked = abap_true.
    DATA(t33) = strlen( t1 ).
    t26 = t29->replace( p0 = t1 p1 = |%23| ).
    DATA(t34) = me->parsed.
    DATA t35 TYPE REF TO zcl_lnt_abap_file.
    DATA t36 TYPE REF TO object.
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
      t43 = t35.
      t42 = t43->filename.
      DATA(t48) = strlen( t42 ).
      DATA t49 TYPE i.
      DATA(t50) = VALUE i( ).
      DATA(t51) = VALUE string( ).
      t49 = strlen( t1 ).
      IF t49 = 0.
        t41 = abap_true.
      ELSEIF t49 <= t48.
        t50 = 0.
        t50 = t48 - t49.
        t51 = t42+t50(t49).
        IF t51 = t1.
          t41 = abap_true.
        ENDIF.
      ENDIF.
      t40 = t41.
      IF t41 = abap_false.
        DATA(t52) = VALUE abap_bool( ).
        DATA t53 TYPE string.
        DATA t54 TYPE REF TO zcl_lnt_abstract_file.
        t54 = t35.
        t53 = t54->filename.
        DATA(t59) = strlen( t53 ).
        DATA t60 TYPE i.
        DATA(t61) = VALUE i( ).
        DATA(t62) = VALUE string( ).
        t60 = strlen( t26 ).
        IF t60 = 0.
          t52 = abap_true.
        ELSEIF t60 <= t59.
          t61 = 0.
          t61 = t59 - t60.
          t62 = t53+t61(t60).
          IF t62 = t26.
            t52 = abap_true.
          ENDIF.
        ENDIF.
        t40 = t52.
      ENDIF.
      IF t40 = abap_true.
        result = t35.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t67) = me->parsed.
    DATA t68 TYPE REF TO zcl_lnt_abap_file.
    DATA t69 TYPE REF TO object.
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
      DATA(t74) = VALUE i( ).
      DATA t75 TYPE string.
      DATA t76 TYPE REF TO zcl_lnt_abstract_file.
      t76 = t68.
      t75 = t76->filename.
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
      IF xsdbool( t74 >= 0 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t83) = VALUE abap_bool( ).
      DATA t84 TYPE string.
      DATA t85 TYPE REF TO zcl_lnt_abstract_file.
      t85 = t68.
      t84 = t85->filename.
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
        result = t68.
        RETURN.
      ENDIF.

    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_text_symbols.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->texts IS INITIAL ) = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( me->raw_xml_cache IS INITIAL ) = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t20 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t24 = t20.
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
          t22 = t20.
        ENDIF.
        me->raw_xml_cache = t22.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
      ENDIF.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t34 = me->raw_xml_cache.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38 = t34.
      IF t38 IS NOT BOUND.
        t37 = abap_true.
      ELSE.
        t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t37 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      ELSE.
        t36 = t34.
      ENDIF.
      t9 = t36.
      IF t9 IS BOUND.
        t8 = t9.
      ENDIF.
      me->find_texts( i_parsed = t8 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    t46 = me->texts->get( p0 = |I| ).
    DATA t51 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    IF xsdbool( t46 IS INITIAL ) = abap_true.
      t51 = NEW zlnt_runtime_map__5a3c0ec03a13( ).
    ELSE.
      t51 = t46.
    ENDIF.
    result = t51.

  ENDMETHOD.

  METHOD get_text_elements.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->texts IS INITIAL ) = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( me->raw_xml_cache IS INITIAL ) = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t20 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t24 = t20.
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
          t22 = t20.
        ENDIF.
        me->raw_xml_cache = t22.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
      ENDIF.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t34 = me->raw_xml_cache.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38 = t34.
      IF t38 IS NOT BOUND.
        t37 = abap_true.
      ELSE.
        t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t37 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      ELSE.
        t36 = t34.
      ENDIF.
      t9 = t36.
      IF t9 IS BOUND.
        t8 = t9.
      ENDIF.
      me->find_texts( i_parsed = t8 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    t45 = NEW zlnt_runtime_map__5a3c0ec03a13( ).
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
    t51 = me->texts.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t56 = t51->keys( ).
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
      DATA t61 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      t61 = t51->get( p0 = t58 ).
      t54->load( ).
      APPEND t61 TO t54->items.
      t54->save( ).
    ENDDO.
    t50 = t54.
    DATA t66 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    DATA t67 TYPE REF TO object.
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
      t72 = t45.
      DATA t74 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      t74 = t66.
      DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t76 = t74->keys( ).
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
        t80 = t72->set( p0 = t78 p1 = t74->get( p0 = t78 ) ).
      ENDDO.
      t71 = t72.
    ENDDO.
    result = t45.

  ENDMETHOD.

  METHOD get_text_elements_translations.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->texts_translations IS INITIAL ) = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( me->raw_xml_cache IS INITIAL ) = abap_true.
        DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t20 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t24 = t20.
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
          t22 = t20.
        ENDIF.
        me->raw_xml_cache = t22.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `rawXMLCache`.
      ENDIF.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t34 = me->raw_xml_cache.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t38 = t34.
      IF t38 IS NOT BOUND.
        t37 = abap_true.
      ELSE.
        t37 = xsdbool( t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t37 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      ELSE.
        t36 = t34.
      ENDIF.
      t9 = t36.
      IF t9 IS BOUND.
        t8 = t9.
      ENDIF.
      me->find_texts_translations( i_parsed = t8 ).
    ENDIF.
    result = me->texts_translations.

  ENDMETHOD.

  METHOD find_texts.
    DATA(t1) = i_parsed.
    me->texts = NEW zlnt_runtime_map__f8cd1b113b3e( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `texts`.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t20 = t1.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t23) = VALUE abap_bool( ).
    IF t20 IS NOT BOUND.
      t23 = abap_true.
    ELSE.
      t23 = xsdbool( t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t23 = abap_true.
    ELSE.
      t22 = t20->get( p0 = |abapGit| ).
    ENDIF.
    t18 = t22.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t18 IS BOUND.
      t31 = t18.
    ENDIF.
    IF t31 IS NOT BOUND.
      t30 = abap_true.
    ELSE.
      t30 = xsdbool( t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t30 = abap_true.
    ELSE.
      t29 = t18->get( p0 = |asx:abap| ).
    ENDIF.
    t16 = t29.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16 IS BOUND.
      t40 = t16.
    ENDIF.
    IF t40 IS NOT BOUND.
      t39 = abap_true.
    ELSE.
      t39 = xsdbool( t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t39 = abap_true.
    ELSE.
      t38 = t16->get( p0 = |asx:values| ).
    ENDIF.
    t14 = t38.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t14 IS BOUND.
      t49 = t14.
    ENDIF.
    IF t49 IS NOT BOUND.
      t48 = abap_true.
    ELSE.
      t48 = xsdbool( t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t48 = abap_true.
    ELSE.
      t47 = t14->get( p0 = |TPOOL| ).
    ENDIF.
    t12 = t47.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = VALUE abap_bool( ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12 IS BOUND.
      t58 = t12.
    ENDIF.
    IF t58 IS NOT BOUND.
      t57 = abap_true.
    ELSE.
      t57 = xsdbool( t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t57 = abap_true.
    ELSE.
      t56 = t12->get( p0 = |item| ).
    ENDIF.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t56 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t80 = t1.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = VALUE abap_bool( ).
    IF t80 IS NOT BOUND.
      t83 = abap_true.
    ELSE.
      t83 = xsdbool( t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t83 = abap_true.
    ELSE.
      t82 = t80->get( p0 = |abapGit| ).
    ENDIF.
    t78 = t82.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = VALUE abap_bool( ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t78 IS BOUND.
      t91 = t78.
    ENDIF.
    IF t91 IS NOT BOUND.
      t90 = abap_true.
    ELSE.
      t90 = xsdbool( t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t90 = abap_true.
    ELSE.
      t89 = t78->get( p0 = |asx:abap| ).
    ENDIF.
    t76 = t89.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t99) = VALUE abap_bool( ).
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t76 IS BOUND.
      t100 = t76.
    ENDIF.
    IF t100 IS NOT BOUND.
      t99 = abap_true.
    ELSE.
      t99 = xsdbool( t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t99 = abap_true.
    ELSE.
      t98 = t76->get( p0 = |asx:values| ).
    ENDIF.
    t74 = t98.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = VALUE abap_bool( ).
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t74 IS BOUND.
      t109 = t74.
    ENDIF.
    IF t109 IS NOT BOUND.
      t108 = abap_true.
    ELSE.
      t108 = xsdbool( t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t108 = abap_true.
    ELSE.
      t107 = t74->get( p0 = |TPOOL| ).
    ENDIF.
    t72 = t107.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t117) = VALUE abap_bool( ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t72 IS BOUND.
      t118 = t72.
    ENDIF.
    IF t118 IS NOT BOUND.
      t117 = abap_true.
    ELSE.
      t117 = xsdbool( t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t117 = abap_true.
    ELSE.
      t116 = t72->get( p0 = |item| ).
    ENDIF.
    t71 = t116.
    IF t71 IS BOUND.
      t70 = t71.
    ENDIF.
    t69 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t70 ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t126 TYPE REF TO object.
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
            CLEAR t130.
            TRY.
                t125 ?= t126.
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
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t135.
      DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t137 = t125.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA(t140) = VALUE abap_bool( ).
      IF t137 IS NOT BOUND.
        t140 = abap_true.
      ELSE.
        t140 = xsdbool( t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t140 = abap_true.
        CLEAR t139.
      ELSE.
        t139 = t137->get( p0 = |ID| ).
      ENDIF.
      t135 = t139.
      DATA(t147) = VALUE string( ).
      IF xsdbool( t135 IS INITIAL ) = abap_true.
        t147 = |undefined|.
      ELSE.
        DATA(t151) = VALUE string( ).
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t152 = t135.
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
      IF xsdbool( t147 = |string| ) = abap_true.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        DATA(t156) = VALUE string( ).
        DATA(t157) = VALUE string( ).
        t157 = t125->get( p0 = |ID| )->as_string( ).
        DATA(t161) = strlen( t157 ).
        t156 = t157.
        IF t156 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t156 TO UPPER CASE.
        ELSE.
          t156 = zlnt_runtime_uppe_91169605024d=>full( t156 ).
        ENDIF.
        CREATE OBJECT t155.
        t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t155->sval = t156.
        t133 = t155.
      ELSE.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        CLEAR t133.
      ENDIF.
      t132 = t133.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      CLEAR t167.
      IF xsdbool( t132 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t171) = VALUE abap_bool( ).
      DATA(t172) = VALUE abap_bool( ).
      DATA(t173) = VALUE abap_bool( ).
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      CLEAR t175.
      CREATE OBJECT t175.
      t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t175->sval = |R|.
      IF t132 IS NOT BOUND.
        t173 = xsdbool( t175 IS NOT BOUND ).
      ELSE.
        t173 = t132->strict_equals( t175 ).
      ENDIF.
      t172 = xsdbool( t173 = abap_false ).
      t171 = t172.
      IF t172 = abap_true.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t179 = t125->get( p0 = |KEY| ).
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        CLEAR t182.
        t171 = xsdbool( t179 IS INITIAL ).
      ENDIF.
      IF t171 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t186.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t188 = t125->get( p0 = |KEY| ).
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      DATA(t193) = VALUE abap_bool( ).
      IF t188 IS NOT BOUND.
        t193 = abap_true.
      ELSE.
        t193 = xsdbool( t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t193 = abap_true.
        t192 = t125->get( p0 = |ID| ).
      ELSE.
        t192 = t188.
      ENDIF.
      t186 = t192.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t199.
      DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t200.
      DATA(t202) = VALUE string( ).
      IF t186 IS BOUND.
        t202 = t186->type_of( ).
        IF t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t186->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t202 = `function`.
        ENDIF.
      ELSE.
        t202 = `undefined`.
      ENDIF.
      IF xsdbool( t202 = |string| ) = abap_true.
        DATA(t207) = VALUE string( ).
        DATA(t208) = VALUE string( ).
        t208 = t186->as_string( ).
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
        t200 = t211.
      ELSE.
        CLEAR t200.
      ENDIF.
      t199 = t200.
      DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t215 = t199.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      CLEAR t217.
      DATA(t219) = VALUE abap_bool( ).
      IF t215 IS INITIAL.
        t219 = abap_true.
      ELSEIF t215->has = abap_false.
        t219 = abap_true.
      ENDIF.
      IF t219 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t223 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
      t224 = me->texts.
      DATA(t226) = VALUE string( ).
      IF t132 IS BOUND.
        IF t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t228) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t229) = |src/objects/_abap_object.ts:148:22: ABAP record string conve|.
          t229 = t229 && |rsion requires primitive dynamic storage|.
          t228->source_location = t229.
          RAISE EXCEPTION t228.
        ENDIF.
      ENDIF.
      IF t132 IS BOUND.
        IF t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t132->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t230) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t231) = |src/objects/_abap_object.ts:148:22: record string conversion|.
            t231 = t231 && | requires the original default Object coercion hooks|.
            t230->source_location = t231.
            RAISE EXCEPTION t230.
          ENDIF.
          READ TABLE t132->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t232) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t233) = |src/objects/_abap_object.ts:148:22: record string conversion|.
            t233 = t233 && | requires the original default Object coercion hooks|.
            t232->source_location = t233.
            RAISE EXCEPTION t232.
          ENDIF.
          READ TABLE t132->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t234) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t235) = |src/objects/_abap_object.ts:148:22: record string conversion|.
            t235 = t235 && | requires the original default Object coercion hooks|.
            t234->source_location = t235.
            RAISE EXCEPTION t234.
          ENDIF.
          t226 = `[object Object]`.
        ELSE.
          t226 = t132->to_string( ).
        ENDIF.
      ELSE.
        t226 = `undefined`.
      ENDIF.
      t223 = t224->get( p0 = t226 ).
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      CLEAR t236.
      IF xsdbool( t223 IS INITIAL ) = abap_true.
        DATA t240 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
        CLEAR t240.
        DATA t241 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
        t241 = me->texts.
        DATA(t243) = VALUE string( ).
        IF t132 IS BOUND.
          IF t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            DATA(t245) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t246) = |src/objects/_abap_object.ts:149:20: ABAP record string conve|.
            t246 = t246 && |rsion requires primitive dynamic storage|.
            t245->source_location = t246.
            RAISE EXCEPTION t245.
          ENDIF.
        ENDIF.
        IF t132 IS BOUND.
          IF t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            READ TABLE t132->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t247) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t248) = |src/objects/_abap_object.ts:149:20: record string conversion|.
              t248 = t248 && | requires the original default Object coercion hooks|.
              t247->source_location = t248.
              RAISE EXCEPTION t247.
            ENDIF.
            READ TABLE t132->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t249) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t250) = |src/objects/_abap_object.ts:149:20: record string conversion|.
              t250 = t250 && | requires the original default Object coercion hooks|.
              t249->source_location = t250.
              RAISE EXCEPTION t249.
            ENDIF.
            READ TABLE t132->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
            IF sy-subrc = 0.
              DATA(t251) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t252) = |src/objects/_abap_object.ts:149:20: record string conversion|.
              t252 = t252 && | requires the original default Object coercion hooks|.
              t251->source_location = t252.
              RAISE EXCEPTION t251.
            ENDIF.
            t243 = `[object Object]`.
          ELSE.
            t243 = t132->to_string( ).
          ENDIF.
        ELSE.
          t243 = `undefined`.
        ENDIF.
        t240 = t241->set( p0 = t243 p1 = NEW zlnt_runtime_map__5a3c0ec03a13( ) ).
      ENDIF.
      DATA t257 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t257.
      DATA t258 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
      CLEAR t258.
      DATA t260 TYPE REF TO zlnt_runtime_map__f8cd1b113b3e.
      t260 = me->texts.
      DATA(t262) = VALUE string( ).
      IF t132 IS BOUND.
        IF t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA(t264) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t265) = |src/objects/_abap_object.ts:151:18: ABAP record string conve|.
          t265 = t265 && |rsion requires primitive dynamic storage|.
          t264->source_location = t265.
          RAISE EXCEPTION t264.
        ENDIF.
      ENDIF.
      IF t132 IS BOUND.
        IF t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE t132->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t266) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t267) = |src/objects/_abap_object.ts:151:18: record string conversion|.
            t267 = t267 && | requires the original default Object coercion hooks|.
            t266->source_location = t267.
            RAISE EXCEPTION t266.
          ENDIF.
          READ TABLE t132->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t268) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t269) = |src/objects/_abap_object.ts:151:18: record string conversion|.
            t269 = t269 && | requires the original default Object coercion hooks|.
            t268->source_location = t269.
            RAISE EXCEPTION t268.
          ENDIF.
          READ TABLE t132->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
          IF sy-subrc = 0.
            DATA(t270) = NEW zlnt_exception_un_5f2d02892fe8( ).
            DATA(t271) = |src/objects/_abap_object.ts:151:18: record string conversion|.
            t271 = t271 && | requires the original default Object coercion hooks|.
            t270->source_location = t271.
            RAISE EXCEPTION t270.
          ENDIF.
          t262 = `[object Object]`.
        ELSE.
          t262 = t132->to_string( ).
        ENDIF.
      ELSE.
        t262 = `undefined`.
      ENDIF.
      t258 = t260->get( p0 = t262 ).
      DATA(t272) = VALUE string( ).
      t272 = t199->value.
      DATA t274 TYPE REF TO zcl_lnt_shape_015c050b.
      CLEAR t274.
      DATA(t275) = VALUE string( ).
      DATA(t276) = VALUE string( ).
      DATA(t277) = VALUE abap_bool( ).
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t278 = t125->get( p0 = |ENTRY| ).
      IF t278 IS BOUND.
        t277 = t278->truth( ).
      ENDIF.
      IF t277 = abap_true.
        t276 = zcl_lnt_xml_utils_module=>unescape( i_str = t125->get( p0 = |ENTRY| ) ).
      ELSE.
        t276 = ||.
      ENDIF.
      t275 = t276.
      DATA(t290) = VALUE string( ).
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t291 = t125->get( p0 = |LENGTH| ).
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
      t274 = NEW zcl_lnt_shape_015c050b( i_entry = t275 i_max_length = zlnt_runtime_stri_248d3505915c=>int_optional( t290 ) ).
      CREATE OBJECT t274->zlnt_view_ownkeys_b0e8086400eb.
      t274->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t303.
      t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entry` p1 = t303 ).
      DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t304.
      IF t274->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t274->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t304 ).
      ENDIF.
      CREATE OBJECT t274->zlnt_json_ownkeys_70e5fd461788.
      t274->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t306.
      t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = |entry| p1 = t306 ).
      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t308.
      IF t274->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t274->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t308 ).
      ENDIF.
      t257 = t258->set( p0 = t272 p1 = t274 ).
    ENDDO.
  ENDMETHOD.

  METHOD find_texts_translations.
    DATA(t1) = i_parsed.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    me->texts_translations = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textsTranslations`.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t16 = t1.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t16 IS NOT BOUND.
      t19 = abap_true.
    ELSE.
      t19 = xsdbool( t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t19 = abap_true.
    ELSE.
      t18 = t16->get( p0 = |abapGit| ).
    ENDIF.
    t14 = t18.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t14 IS BOUND.
      t27 = t14.
    ENDIF.
    IF t27 IS NOT BOUND.
      t26 = abap_true.
    ELSE.
      t26 = xsdbool( t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t26 = abap_true.
    ELSE.
      t25 = t14->get( p0 = |asx:abap| ).
    ENDIF.
    t12 = t25.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = VALUE abap_bool( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12 IS BOUND.
      t36 = t12.
    ENDIF.
    IF t36 IS NOT BOUND.
      t35 = abap_true.
    ELSE.
      t35 = xsdbool( t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t35 = abap_true.
    ELSE.
      t34 = t12->get( p0 = |asx:values| ).
    ENDIF.
    t10 = t34.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = VALUE abap_bool( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t10 IS BOUND.
      t45 = t10.
    ENDIF.
    IF t45 IS NOT BOUND.
      t44 = abap_true.
    ELSE.
      t44 = xsdbool( t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t44 = abap_true.
    ELSE.
      t43 = t10->get( p0 = |I18N_TPOOL| ).
    ENDIF.
    t8 = t43.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = VALUE abap_bool( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t8 IS BOUND.
      t54 = t8.
    ENDIF.
    IF t54 IS NOT BOUND.
      t53 = abap_true.
    ELSE.
      t53 = xsdbool( t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t53 = abap_true.
    ELSE.
      t52 = t8->get( p0 = |item| ).
    ENDIF.
    t6 = t52.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      t62 = t6.
    ENDIF.
    t61 = t62.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t61 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t61 IS BOUND.
      t76 = t61.
    ENDIF.
    t75 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t76 ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO object.
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
            CLEAR t83.
            TRY.
                t78 ?= t79.
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
      t85 = NEW zlnt_runtime_map__5a3c0ec03a13( ).
      DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t93 = t78->get( p0 = |TEXTPOOL| ).
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      DATA(t98) = VALUE abap_bool( ).
      IF t93 IS NOT BOUND.
        t98 = abap_true.
      ELSE.
        t98 = xsdbool( t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t98 = abap_true.
        CLEAR t97.
      ELSE.
        t97 = t93->get( p0 = |item| ).
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
              CLEAR t109.
              TRY.
                  t104 ?= t105.
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
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t113 = t104->get( p0 = |KEY| ).
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        DATA(t118) = VALUE abap_bool( ).
        IF t113 IS NOT BOUND.
          t118 = abap_true.
        ELSE.
          t118 = xsdbool( t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t118 = abap_true.
          t117 = t104->get( p0 = |ID| ).
        ELSE.
          t117 = t113.
        ENDIF.
        t111 = t117.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA(t127) = VALUE string( ).
        IF t111 IS BOUND.
          t127 = t111->type_of( ).
          IF t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t111->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t127 = `function`.
          ENDIF.
        ELSE.
          t127 = `undefined`.
        ENDIF.
        IF xsdbool( t127 = |string| ) = abap_true.
          DATA(t132) = VALUE string( ).
          DATA(t133) = VALUE string( ).
          t133 = t111->as_string( ).
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
          t125 = t136.
        ELSE.
          CLEAR t125.
        ENDIF.
        t124 = t125.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t140 = t124.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        CLEAR t142.
        DATA(t145) = VALUE abap_bool( ).
        IF t140 IS INITIAL.
          t145 = abap_true.
        ELSEIF t140->has = abap_false.
          t145 = abap_true.
        ENDIF.
        IF xsdbool( t145 = abap_false ) = abap_true.
          DATA t147 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t147.
          DATA(t149) = VALUE string( ).
          t149 = t124->value.
          DATA t151 TYPE REF TO zcl_lnt_shape_015c050b.
          CLEAR t151.
          DATA(t152) = VALUE string( ).
          t152 = zcl_lnt_xml_utils_module=>unescape( i_str = t104->get( p0 = |ENTRY| ) ).
          DATA(t161) = VALUE string( ).
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t162 = t104->get( p0 = |LENGTH| ).
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
          t151 = NEW zcl_lnt_shape_015c050b( i_entry = t152 i_max_length = zlnt_runtime_stri_248d3505915c=>int_optional( t161 ) ).
          CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
          t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t174.
          t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entry` p1 = t174 ).
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t175 ).
          ENDIF.
          CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
          t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |entry| p1 = t177 ).
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t179 ).
          ENDIF.
          t147 = t85->set( p0 = t149 p1 = t151 ).
        ENDIF.
      ENDDO.
      DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t180 = me->texts_translations.
      DATA t182 TYPE REF TO zcl_lnt_itrnsltn_txt_elmnts.
      CLEAR t182.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t183 = t78->get( p0 = |LANGUAGE| ).
      DATA t187 TYPE REF TO zcl_lnt_itrnsltn_txt_elmnts.
      CLEAR t187.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t189.
      IF xsdbool( t183 IS INITIAL ) = abap_true.
        CLEAR t189.
      ELSE.
        DATA(t193) = VALUE string( ).
        t193 = t183->as_string( ).
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t193.
        t189 = t195.
      ENDIF.
      t187 = NEW zcl_lnt_itrnsltn_txt_elmnts( i_language = t189 i_text_elements = t85 ).
      CREATE OBJECT t187->zlnt_view_ownkeys_b0e8086400eb.
      t187->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `language` p1 = t198 ).
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      IF t187->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t187->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textElements` p1 = t199 ).
      ENDIF.
      CREATE OBJECT t187->zlnt_json_ownkeys_70e5fd461788.
      t187->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |language| p1 = t201 ).
      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t203.
      IF t187->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t187->zlnt_json_ownkeys_70e5fd461788->put( p0 = |textElements| p1 = t203 ).
      ENDIF.
      t182 = t187.
      t180->load( ).
      APPEND t182 TO t180->items.
      t180->save( ).
    ENDDO.
  ENDMETHOD.

  METHOD parse.
    result = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_abp_obj_ts_abp_obj( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ) ).

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
