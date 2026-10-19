* TS: src/objects/program.ts:6:1 Program
CLASS zcl_lnt_ob_program DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_object CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_d439e5f2.
    INTERFACES zif_lnt_union_35a9fad2.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_d77da4ed.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_sequenced_files REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS is_include RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_module_pool RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_dynpros RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_selection_texts RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    METHODS parse_xml.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ob_program IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_name.
    super->constructor( i_name = t2 ).
  ENDMETHOD.

  METHOD get_type.
    result = |PROG|.

  ENDMETHOD.

  METHOD get_sequenced_files.
    DATA t1 TYPE REF TO zcl_lnt_abap_file.
    t1 = CAST zcl_lnt_abap_file( me->get_main_abap_file( ) ).
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zcl_lnt_abap_file.
    t15 = t1.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    result = t12.

  ENDMETHOD.

  METHOD get_description.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zcl_lnt_shape_d77da4ed.
    t2 = me->parsed_xml.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
    ELSE.
      t4 = t2->description.
    ENDIF.
    result = t4.

  ENDMETHOD.

  METHOD get_allowed_naming.
    DATA t1 TYPE REF TO zcl_lnt_iallowed_naming.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    t1 = NEW zcl_lnt_iallowed_naming( i_max_length = CONV f( 40 ) i_allow_namespace = abap_true i_custom_regex = t6 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `allowNamespace` p1 = t9 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t11 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |allowNamespace| p1 = t13 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD set_dirty.
    CLEAR me->parsed_xml.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
    super->set_dirty( ).
  ENDMETHOD.

  METHOD is_include.
    me->parse_xml( ).
    result = me->parsed_xml->is_include.

  ENDMETHOD.

  METHOD is_module_pool.
    me->parse_xml( ).
    result = me->parsed_xml->is_module_pool.

  ENDMETHOD.

  METHOD get_dynpros.
    me->parse_xml( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = me->parsed_xml->dynpros.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t2 IS BOUND ) = abap_true.
      t6 = t2.
    ELSE.
      CREATE OBJECT t6.
    ENDIF.
    result = t6.

  ENDMETHOD.

  METHOD get_selection_texts.
    me->parse_xml( ).
    result = me->parsed_xml->selection_texts.

  ENDMETHOD.

  METHOD parse_xml.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = xsdbool( me->parsed_xml IS INITIAL ).
    IF xsdbool( t7 = abap_false ) = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_file.
    t9 = CAST zif_lnt_file( me->get_xml_file( ) ).
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t11 = CAST zlnt_runtime_dyna_a429568d5be8( me->parse_raw2( ) ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
    ELSE.
      t14 = t11.
    ENDIF.
    t13 = t14.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t13 IS INITIAL ) = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t36.
      t29 = NEW zcl_lnt_shape_d77da4ed( i_is_include = abap_false i_is_module_pool = abap_false i_description = t34 i_dynpros = t36 i_selection_texts = NEW zlnt_runtime_map__5a3c0ec03a13( ) ).
      CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
      t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isInclude` p1 = t49 ).
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isModulePool` p1 = t50 ).
      ENDIF.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t51 ).
      ENDIF.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dynpros` p1 = t52 ).
      ENDIF.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionTexts` p1 = t53 ).
      ENDIF.
      CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
      t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isInclude| p1 = t55 ).
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isModulePool| p1 = t57 ).
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t59 ).
      ENDIF.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |dynpros| p1 = t61 ).
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = |selectionTexts| p1 = t63 ).
      ENDIF.
      me->parsed_xml = t29.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
      RETURN.
    ENDIF.
    DATA(t65) = VALUE string( ).
    t65 = ||.
    DATA t67 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
    t67 = NEW zlnt_runtime_map__5a3c0ec03a13( ).
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t83 = t13.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t86) = VALUE abap_bool( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t83 IS BOUND.
      t87 = t83.
    ENDIF.
    IF t87 IS NOT BOUND.
      t86 = abap_true.
    ELSE.
      t86 = xsdbool( t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t86 = abap_true.
    ELSE.
      t85 = t83->get( p0 = |abapGit| ).
    ENDIF.
    t81 = t85.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = VALUE abap_bool( ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t81 IS BOUND.
      t96 = t81.
    ENDIF.
    IF t96 IS NOT BOUND.
      t95 = abap_true.
    ELSE.
      t95 = xsdbool( t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t95 = abap_true.
    ELSE.
      t94 = t81->get( p0 = |asx:abap| ).
    ENDIF.
    t79 = t94.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = VALUE abap_bool( ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t79 IS BOUND.
      t105 = t79.
    ENDIF.
    IF t105 IS NOT BOUND.
      t104 = abap_true.
    ELSE.
      t104 = xsdbool( t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t104 = abap_true.
    ELSE.
      t103 = t79->get( p0 = |asx:values| ).
    ENDIF.
    t77 = t103.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t113) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t77 IS BOUND.
      t114 = t77.
    ENDIF.
    IF t114 IS NOT BOUND.
      t113 = abap_true.
    ELSE.
      t113 = xsdbool( t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t113 = abap_true.
    ELSE.
      t112 = t77->get( p0 = |TPOOL| ).
    ENDIF.
    t75 = t112.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t122) = VALUE abap_bool( ).
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t75 IS BOUND.
      t123 = t75.
    ENDIF.
    IF t123 IS NOT BOUND.
      t122 = abap_true.
    ELSE.
      t122 = xsdbool( t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
    ENDIF.
    IF t122 = abap_true.
    ELSE.
      t121 = t75->get( p0 = |item| ).
    ENDIF.
    t74 = t121.
    IF t74 IS BOUND.
      t73 = t74.
    ENDIF.
    t72 = zcl_lnt_xml_utils_module=>xml_to_array( i_data_dc02 = t73 ).
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t131 TYPE REF TO object.
    DATA(t132) = VALUE i( ).
    DO.
      t72->load( ).
      IF t132 >= lines( t72->items ).
        EXIT.
      ENDIF.
      CLEAR t131.
      READ TABLE t72->items INDEX t132 + 1 INTO t131.
      t132 = t132 + 1.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      CLEAR t130.
      IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t133 ?= t131.
        t130 = t133.
      ELSE.
        IF t131 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t134 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t134.
          t134 ?= t131.
          CLEAR t130.
          IF t134 IS BOUND.
            CREATE OBJECT t130.
            t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t130->cval = t134.
          ENDIF.
        ELSE.
          CLEAR t130.
          IF t131 IS BOUND.
            DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t135.
            DATA t136 TYPE REF TO object.
            CLEAR t136.
            CLEAR t135.
            t136 = t131.
            TRY.
                t130 ?= t136.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t130 IS NOT BOUND.
              TRY.
                  t135 ?= t131.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t135 IS BOUND.
                t130 = t135->source( ).
              ENDIF.
              IF t130 IS NOT BOUND.
                CREATE OBJECT t130.
                t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t130->oval = t131.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t137) = VALUE abap_bool( ).
      DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t138.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      t140 = t130.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      DATA(t143) = VALUE abap_bool( ).
      IF t140 IS NOT BOUND.
        t143 = abap_true.
      ELSE.
        t143 = xsdbool( t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
      ENDIF.
      IF t143 = abap_true.
        CLEAR t142.
      ELSE.
        t142 = t140->get( p0 = |ID| ).
      ENDIF.
      t139 = t142.
      CLEAR t138.
      IF t139 IS BOUND.
        t138 = t139.
      ENDIF.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      CLEAR t149.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t149->sval = |R|.
      IF t138 IS NOT BOUND.
        t137 = xsdbool( t149 IS NOT BOUND ).
      ELSE.
        t137 = t138->strict_equals( t149 ).
      ENDIF.
      IF t137 = abap_true.
        DATA(t151) = VALUE string( ).
        DATA(t152) = VALUE abap_bool( ).
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        t153 = t130->get( p0 = |ENTRY| ).
        IF t153 IS BOUND.
          t152 = t153->truth( ).
        ENDIF.
        IF t152 = abap_true.
          t151 = zcl_lnt_xml_utils_module=>unescape( i_str = t130->get( p0 = |ENTRY| ) ).
        ELSE.
          t151 = ||.
        ENDIF.
        t65 = t151.
      ELSE.
        DATA(t161) = VALUE abap_bool( ).
        DATA(t162) = VALUE abap_bool( ).
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        t165 = t130.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        DATA(t168) = VALUE abap_bool( ).
        IF t165 IS NOT BOUND.
          t168 = abap_true.
        ELSE.
          t168 = xsdbool( t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_null ).
        ENDIF.
        IF t168 = abap_true.
          CLEAR t167.
        ELSE.
          t167 = t165->get( p0 = |ID| ).
        ENDIF.
        t164 = t167.
        CLEAR t163.
        IF t164 IS BOUND.
          t163 = t164.
        ENDIF.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        CLEAR t174.
        CREATE OBJECT t174.
        t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t174->sval = |S|.
        IF t163 IS NOT BOUND.
          t162 = xsdbool( t174 IS NOT BOUND ).
        ELSE.
          t162 = t163->strict_equals( t174 ).
        ENDIF.
        t161 = t162.
        IF t162 = abap_true.
          DATA(t177) = VALUE string( ).
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          t178 = t130->get( p0 = |KEY| ).
          IF t178 IS BOUND.
            t177 = t178->type_of( ).
            IF t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t178->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
              t177 = `function`.
            ENDIF.
          ELSE.
            t177 = `undefined`.
          ENDIF.
          t161 = xsdbool( t177 = |string| ).
        ENDIF.
        IF t161 = abap_true.
          DATA t182 TYPE REF TO zlnt_runtime_map__5a3c0ec03a13.
          CLEAR t182.
          DATA(t184) = VALUE string( ).
          DATA(t185) = VALUE string( ).
          t185 = t130->get( p0 = |KEY| )->as_string( ).
          DATA(t189) = strlen( t185 ).
          t184 = t185.
          IF t184 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t184 TO UPPER CASE.
          ELSE.
            t184 = zlnt_runtime_uppe_91169605024d=>full( t184 ).
          ENDIF.
          DATA t190 TYPE REF TO zcl_lnt_shape_015c050b.
          CLEAR t190.
          DATA(t191) = VALUE string( ).
          DATA(t192) = VALUE string( ).
          DATA(t193) = VALUE abap_bool( ).
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t194.
          t194 = t130->get( p0 = |ENTRY| ).
          IF t194 IS BOUND.
            t193 = t194->truth( ).
          ENDIF.
          IF t193 = abap_true.
            t192 = zcl_lnt_xml_utils_module=>unescape( i_str = t130->get( p0 = |ENTRY| ) ).
          ELSE.
            t192 = ||.
          ENDIF.
          t191 = t192.
          DATA(t206) = VALUE string( ).
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          t207 = t130->get( p0 = |LENGTH| ).
          IF t207 IS BOUND.
            IF t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array OR t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              DATA(t210) = NEW zlnt_exception_un_5f2d02892fe8( ).
              DATA(t211) = |src/objects/program.ts:90:109: ABAP record string conversion|.
              t211 = t211 && | requires primitive dynamic storage|.
              t210->source_location = t211.
              RAISE EXCEPTION t210.
            ENDIF.
          ENDIF.
          IF t207 IS BOUND.
            IF t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              READ TABLE t207->entries WITH KEY k = `toString` TRANSPORTING NO FIELDS.
              IF sy-subrc = 0.
                DATA(t212) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t213) = |src/objects/program.ts:90:109: record string conversion requ|.
                t213 = t213 && |ires the original default Object coercion hooks|.
                t212->source_location = t213.
                RAISE EXCEPTION t212.
              ENDIF.
              READ TABLE t207->entries WITH KEY k = `valueOf` TRANSPORTING NO FIELDS.
              IF sy-subrc = 0.
                DATA(t214) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t215) = |src/objects/program.ts:90:109: record string conversion requ|.
                t215 = t215 && |ires the original default Object coercion hooks|.
                t214->source_location = t215.
                RAISE EXCEPTION t214.
              ENDIF.
              READ TABLE t207->entries WITH KEY k = `__proto__` TRANSPORTING NO FIELDS.
              IF sy-subrc = 0.
                DATA(t216) = NEW zlnt_exception_un_5f2d02892fe8( ).
                DATA(t217) = |src/objects/program.ts:90:109: record string conversion requ|.
                t217 = t217 && |ires the original default Object coercion hooks|.
                t216->source_location = t217.
                RAISE EXCEPTION t216.
              ENDIF.
              t206 = `[object Object]`.
            ELSE.
              t206 = t207->to_string( ).
            ENDIF.
          ELSE.
            t206 = `undefined`.
          ENDIF.
          t190 = NEW zcl_lnt_shape_015c050b( i_entry = t191 i_max_length = zlnt_runtime_stri_248d3505915c=>int_optional( t206 ) ).
          CREATE OBJECT t190->zlnt_view_ownkeys_b0e8086400eb.
          t190->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          t190->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entry` p1 = t219 ).
          DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t220.
          IF t190->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t190->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `maxLength` p1 = t220 ).
          ENDIF.
          CREATE OBJECT t190->zlnt_json_ownkeys_70e5fd461788.
          t190->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t222.
          t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = |entry| p1 = t222 ).
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          IF t190->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t190->zlnt_json_ownkeys_70e5fd461788->put( p0 = |maxLength| p1 = t224 ).
          ENDIF.
          t182 = t67->set( p0 = t184 p1 = t190 ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t13 IS BOUND.
      t227 = t13.
    ENDIF.
    t226 = zcl_lnt_dynpros_module=>parse_dynpros( i_parsed = t227 ).
    DATA t231 TYPE REF TO zcl_lnt_shape_d77da4ed.
    DATA(t232) = VALUE abap_bool( ).
    DATA(t233) = VALUE abap_bool( ).
    IF xsdbool( t9 IS BOUND ) = abap_true.
      DATA(t237) = VALUE i( ).
      DATA(t238) = VALUE string( ).
      t238 = t9->get_raw( ).
      DATA(t241) = |<SUBC>I</SUBC>|.
      DATA(t242) = strlen( t238 ).
      IF t241 IS INITIAL.
        t237 = 0.
      ELSE.
        FIND t241 IN t238 MATCH OFFSET t237.
        IF sy-subrc <> 0.
          t237 = -1.
        ENDIF.
      ENDIF.
      t233 = xsdbool( t237 >= 0 ).
    ELSE.
      t233 = abap_false.
    ENDIF.
    t232 = t233.
    DATA(t245) = VALUE abap_bool( ).
    DATA(t246) = VALUE abap_bool( ).
    IF xsdbool( t9 IS BOUND ) = abap_true.
      DATA(t250) = VALUE i( ).
      DATA(t251) = VALUE string( ).
      t251 = t9->get_raw( ).
      DATA(t254) = |<SUBC>M</SUBC>|.
      DATA(t255) = strlen( t251 ).
      IF t254 IS INITIAL.
        t250 = 0.
      ELSE.
        FIND t254 IN t251 MATCH OFFSET t250.
        IF sy-subrc <> 0.
          t250 = -1.
        ENDIF.
      ENDIF.
      t246 = xsdbool( t250 >= 0 ).
    ELSE.
      t246 = abap_false.
    ENDIF.
    t245 = t246.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t258 = t226.
    DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t267->has = abap_true.
    t267->value = t65.
    t231 = NEW zcl_lnt_shape_d77da4ed( i_is_include = t232 i_is_module_pool = t245 i_description = t267 i_dynpros = t258 i_selection_texts = t67 ).
    CREATE OBJECT t231->zlnt_view_ownkeys_b0e8086400eb.
    t231->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isInclude` p1 = t274 ).
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isModulePool` p1 = t275 ).
    ENDIF.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dynpros` p1 = t276 ).
    ENDIF.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t277 ).
    ENDIF.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t231->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `selectionTexts` p1 = t278 ).
    ENDIF.
    CREATE OBJECT t231->zlnt_json_ownkeys_70e5fd461788.
    t231->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isInclude| p1 = t280 ).
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isModulePool| p1 = t282 ).
    ENDIF.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = |dynpros| p1 = t284 ).
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t286 ).
    ENDIF.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t231->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t231->zlnt_json_ownkeys_70e5fd461788->put( p0 = |selectionTexts| p1 = t288 ).
    ENDIF.
    me->parsed_xml = t231.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsedXML`.
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1322_e58083008ffb.
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_dynpros.
    result = me->get_dynpros( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_d439e5f2~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~add_file.
    me->add_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~contains_file.
    result = me->contains_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~debug_description.
    result = me->debug_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_abap_file_by_name.
    result = me->get_abap_file_by_name( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_abap_files.
    result = me->get_abap_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_allowed_naming.
    result = me->get_allowed_naming( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_description.
    result = me->get_description( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_files.
    result = me->get_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_identifier.
    result = me->get_identifier( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_main_abap_file.
    result = me->get_main_abap_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_parsing_issues.
    result = me->get_parsing_issues( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_sequenced_files.
    result = me->get_sequenced_files( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_elements.
    result = me->get_text_elements( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_elements_translations.
    result = me->get_text_elements_translations( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_text_symbols.
    result = me->get_text_symbols( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_type.
    result = me->get_type( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_xml.
    result = me->get_xml( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~get_xml_file.
    result = me->get_xml_file( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~is_dirty.
    result = me->is_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~parse.
    result = me->parse( i_release_7928 = i_release_7928 i_global_macros_5535 = i_global_macros_5535 i_reg_f149 = i_reg_f149 i_language_version_0e1d = i_language_version_0e1d ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~remove_file.
    me->remove_file( i_file = i_file ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~set_dirty.
    me->set_dirty( ).
  ENDMETHOD.

  METHOD zif_lnt_union_35a9fad2~update_file.
    me->update_file( i_file = i_file ).
  ENDMETHOD.
ENDCLASS.
