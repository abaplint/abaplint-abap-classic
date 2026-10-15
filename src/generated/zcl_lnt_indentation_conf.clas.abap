* TS: src/rules/indentation.ts:19:1 IndentationConf
CLASS zcl_lnt_indentation_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_649aa078d171 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_3bab095d9e20 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_5c35b8f00615 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_b8ec4c22f5cf IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_d06af785ba41 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_3d3631111b81 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_e38337070bb8 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_198f0d321172 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_3de28dccde0f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_3f4481a902ef IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_0529cf4a1dad RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_0d6c8aa0d6b1 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_7d407689ecd3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS zlnt_view_write_s_af7e24cd0731 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA ignore_exceptions TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA align_try_catch TYPE abap_bool.
    DATA slctn_scrn_blck_indnttn TYPE abap_bool.
    DATA global_class_skip_first TYPE abap_bool.
    DATA ignore_global_class_definition TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignore_global_interface TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA max_issues_per_file TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_indentation_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    DATA(t2) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2->has = abap_true.
    t2->value = t1.
    me->zlnt_view_write_s_3bab095d9e20( p0 = t2 ).
    DATA(t3) = abap_false.
    me->zlnt_view_write_s_b8ec4c22f5cf( p0 = t3 ).
    DATA(t4) = abap_false.
    me->zlnt_view_write_s_3d3631111b81( p0 = t4 ).
    DATA(t5) = abap_false.
    me->zlnt_view_write_s_198f0d321172( p0 = t5 ).
    DATA(t6) = abap_false.
    DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t7->has = abap_true.
    t7->value = t6.
    me->zlnt_view_write_s_3f4481a902ef( p0 = t7 ).
    DATA(t8) = abap_false.
    DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t9->has = abap_true.
    t9->value = t8.
    me->zlnt_view_write_s_0d6c8aa0d6b1( p0 = t9 ).
    DATA(t10) = CONV f( 10 ).
    DATA(t11) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t11->has = abap_true.
    t11->value = t10.
    me->zlnt_view_write_s_af7e24cd0731( p0 = t11 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1543_157a0b68a203.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_649aa078d171.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreExceptions` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ignore_exceptions.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3bab095d9e20.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreExceptions` p1 = t1 ).
    ELSE.
      me->ignore_exceptions = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreExceptions`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_5c35b8f00615.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `alignTryCatch` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->align_try_catch.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_b8ec4c22f5cf.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `alignTryCatch` p1 = t1 ).
    ELSE.
      me->align_try_catch = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `alignTryCatch`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_d06af785ba41.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `selectionScreenBlockIndentation` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->slctn_scrn_blck_indnttn.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3d3631111b81.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `selectionScreenBlockIndentation` p1 = t1 ).
    ELSE.
      me->slctn_scrn_blck_indnttn = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `selectionScreenBlockIndentation`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e38337070bb8.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `globalClassSkipFirst` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->global_class_skip_first.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_198f0d321172.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `globalClassSkipFirst` p1 = t1 ).
    ELSE.
      me->global_class_skip_first = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalClassSkipFirst`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3de28dccde0f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreGlobalClassDefinition` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ignore_global_class_definition.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3f4481a902ef.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreGlobalClassDefinition` p1 = t1 ).
    ELSE.
      me->ignore_global_class_definition = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalClassDefinition`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_0529cf4a1dad.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreGlobalInterface` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->ignore_global_interface.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_0d6c8aa0d6b1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreGlobalInterface` p1 = t1 ).
    ELSE.
      me->ignore_global_interface = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalInterface`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_7d407689ecd3.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `maxIssuesPerFile` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        IF t1 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
        ENDIF.
        result->value = t1->as_number( ).
      ENDIF.
    ELSE.
      result = me->max_issues_per_file.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_af7e24cd0731.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        t1->nval = p0->value.
        t1->number_special = p0->number_special.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `maxIssuesPerFile` p1 = t1 ).
    ELSE.
      me->max_issues_per_file = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `maxIssuesPerFile`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `ignoreExceptions`.
        result = abap_true.
      WHEN `alignTryCatch`.
        result = abap_true.
      WHEN `selectionScreenBlockIndentation`.
        result = abap_true.
      WHEN `globalClassSkipFirst`.
        result = abap_true.
      WHEN `ignoreGlobalClassDefinition`.
        result = abap_true.
      WHEN `ignoreGlobalInterface`.
        result = abap_true.
      WHEN `maxIssuesPerFile`.
        result = abap_true.
      WHEN `exclude`.
        result = abap_true.
      WHEN `severity`.
        result = abap_true.
    ENDCASE.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_false.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    result = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = NEW #( ).
    t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exclude` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exclude` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `severity` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `severity` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreExceptions` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreExceptions` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `alignTryCatch` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `alignTryCatch` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `selectionScreenBlockIndentation` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `selectionScreenBlockIndentation` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `globalClassSkipFirst` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `globalClassSkipFirst` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreGlobalClassDefinition` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreGlobalClassDefinition` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreGlobalInterface` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreGlobalInterface` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `maxIssuesPerFile` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `maxIssuesPerFile` p1 = VALUE #( ) ).
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
        IF me->zlnt_view_source_36f3bf68b9b8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE me->zlnt_view_source_36f3bf68b9b8->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from graph`.
          ENDIF.
        ELSEIF me->zlnt_view_source_36f3bf68b9b8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: primitive prototype lookup unavailable`.
        ENDIF.
      ELSE.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: native prototype lookup unavailable`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `exclude`.
        CLEAR result.
        IF me->exclude IS BOUND.
          CLEAR result.
          IF me->exclude IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->exclude.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->exclude.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->exclude.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `severity`.
        CLEAR result.
        IF me->severity IS BOUND AND me->severity->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->severity->value.
        ENDIF.
      WHEN `ignoreExceptions`.
        CLEAR result.
        IF me->ignore_exceptions IS BOUND AND me->ignore_exceptions->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ignore_exceptions->value.
        ENDIF.
      WHEN `alignTryCatch`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->align_try_catch.
      WHEN `selectionScreenBlockIndentation`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->slctn_scrn_blck_indnttn.
      WHEN `globalClassSkipFirst`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->global_class_skip_first.
      WHEN `ignoreGlobalClassDefinition`.
        CLEAR result.
        IF me->ignore_global_class_definition IS BOUND AND me->ignore_global_class_definition->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ignore_global_class_definition->value.
        ENDIF.
      WHEN `ignoreGlobalInterface`.
        CLEAR result.
        IF me->ignore_global_interface IS BOUND AND me->ignore_global_interface->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->ignore_global_interface->value.
        ENDIF.
      WHEN `maxIssuesPerFile`.
        CLEAR result.
        IF me->max_issues_per_file IS BOUND AND me->max_issues_per_file->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
          result->nval = me->max_issues_per_file->value.
          result->number_special = me->max_issues_per_file->number_special.
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `severity`.
        CLEAR me->severity.
        IF p1 IS BOUND.
          me->severity = NEW #( ).
          me->severity->has = abap_true.
          me->severity->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
      WHEN `ignoreExceptions`.
        CLEAR me->ignore_exceptions.
        IF p1 IS BOUND.
          me->ignore_exceptions = NEW #( ).
          me->ignore_exceptions->has = abap_true.
          me->ignore_exceptions->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreExceptions`.
      WHEN `alignTryCatch`.
        me->align_try_catch = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `alignTryCatch`.
      WHEN `selectionScreenBlockIndentation`.
        me->slctn_scrn_blck_indnttn = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `selectionScreenBlockIndentation`.
      WHEN `globalClassSkipFirst`.
        me->global_class_skip_first = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalClassSkipFirst`.
      WHEN `ignoreGlobalClassDefinition`.
        CLEAR me->ignore_global_class_definition.
        IF p1 IS BOUND.
          me->ignore_global_class_definition = NEW #( ).
          me->ignore_global_class_definition->has = abap_true.
          me->ignore_global_class_definition->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalClassDefinition`.
      WHEN `ignoreGlobalInterface`.
        CLEAR me->ignore_global_interface.
        IF p1 IS BOUND.
          me->ignore_global_interface = NEW #( ).
          me->ignore_global_interface->has = abap_true.
          me->ignore_global_interface->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreGlobalInterface`.
      WHEN `maxIssuesPerFile`.
        CLEAR me->max_issues_per_file.
        IF p1 IS BOUND.
          me->max_issues_per_file = NEW #( ).
          me->max_issues_per_file->has = abap_true.
          IF p1 IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
          ENDIF.
          me->max_issues_per_file->value = p1->as_number( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `maxIssuesPerFile`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
