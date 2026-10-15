* TS: src/rules/class_attribute_names.ts:12:1 ClassAttributeNamesConf
CLASS zcl_lnt_clss_attrbt_nms_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_naming_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_9e03d5ab100a RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_a1cfb5902d8d IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_f48d79db9126 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_6afbf72590b8 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_8168a86be8c6 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_ac9f0b72db6f IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_341955304f75 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_4e2f6dbb2791 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_e8cbf985871b RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_0da863a539ce IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_2dc0cab76d28 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_1f73d21a6034 IMPORTING p0 TYPE string.
    DATA ignore_exceptions TYPE abap_bool.
    DATA ignore_local TYPE abap_bool.
    DATA ignore_interfaces TYPE abap_bool.
    DATA statics TYPE string.
    DATA instance TYPE string.
    DATA constants TYPE string.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_clss_attrbt_nms_cnf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    me->zlnt_view_write_s_a1cfb5902d8d( p0 = t1 ).
    DATA(t2) = abap_true.
    me->zlnt_view_write_s_6afbf72590b8( p0 = t2 ).
    DATA(t3) = abap_false.
    me->zlnt_view_write_s_ac9f0b72db6f( p0 = t3 ).
    DATA(t4) = |^G._.+$|.
    me->zlnt_view_write_s_4e2f6dbb2791( p0 = t4 ).
    DATA(t5) = |^M._.+$|.
    me->zlnt_view_write_s_0da863a539ce( p0 = t5 ).
    DATA(t6) = ||.
    me->zlnt_view_write_s_1f73d21a6034( p0 = t6 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1449_91f028c65891.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_9e03d5ab100a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreExceptions` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->ignore_exceptions.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a1cfb5902d8d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreExceptions` p1 = t1 ).
    ELSE.
      me->ignore_exceptions = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreExceptions`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_f48d79db9126.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreLocal` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->ignore_local.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_6afbf72590b8.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreLocal` p1 = t1 ).
    ELSE.
      me->ignore_local = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreLocal`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_8168a86be8c6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreInterfaces` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->ignore_interfaces.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ac9f0b72db6f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreInterfaces` p1 = t1 ).
    ELSE.
      me->ignore_interfaces = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreInterfaces`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_341955304f75.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `statics` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->statics.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_4e2f6dbb2791.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `statics` p1 = t1 ).
    ELSE.
      me->statics = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statics`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e8cbf985871b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `instance` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->instance.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_0da863a539ce.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `instance` p1 = t1 ).
    ELSE.
      me->instance = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `instance`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_2dc0cab76d28.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `constants` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->constants.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_1f73d21a6034.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `constants` p1 = t1 ).
    ELSE.
      me->constants = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `constants`.
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
      WHEN `ignoreLocal`.
        result = abap_true.
      WHEN `ignoreInterfaces`.
        result = abap_true.
      WHEN `statics`.
        result = abap_true.
      WHEN `instance`.
        result = abap_true.
      WHEN `constants`.
        result = abap_true.
      WHEN `patternKind`.
        result = abap_true.
      WHEN `ignoreNames`.
        result = abap_true.
      WHEN `ignorePatterns`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `patternKind` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `patternKind` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreNames` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreNames` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignorePatterns` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignorePatterns` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreExceptions` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreExceptions` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreLocal` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreLocal` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreInterfaces` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreInterfaces` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `statics` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `statics` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `instance` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `instance` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `constants` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `constants` p1 = VALUE #( ) ).
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
      WHEN `patternKind`.
        CLEAR result.
        IF me->pattern_kind IS BOUND AND me->pattern_kind->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->pattern_kind->value.
        ENDIF.
      WHEN `ignoreNames`.
        CLEAR result.
        IF me->ignore_names IS BOUND.
          CLEAR result.
          IF me->ignore_names IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->ignore_names.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->ignore_names.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->ignore_names.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `ignorePatterns`.
        CLEAR result.
        IF me->ignore_patterns IS BOUND.
          CLEAR result.
          IF me->ignore_patterns IS BOUND.
            DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t5.
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            CLEAR t5.
            t6 = me->ignore_patterns.
            TRY.
                result ?= t6.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t5 ?= me->ignore_patterns.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t5 IS BOUND.
                result = t5->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->ignore_patterns.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `ignoreExceptions`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->ignore_exceptions.
      WHEN `ignoreLocal`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->ignore_local.
      WHEN `ignoreInterfaces`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->ignore_interfaces.
      WHEN `statics`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->statics.
      WHEN `instance`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->instance.
      WHEN `constants`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->constants.
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
      WHEN `patternKind`.
        CLEAR me->pattern_kind.
        IF p1 IS BOUND.
          me->pattern_kind = NEW #( ).
          me->pattern_kind->has = abap_true.
          me->pattern_kind->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `patternKind`.
      WHEN `ignoreExceptions`.
        me->ignore_exceptions = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreExceptions`.
      WHEN `ignoreLocal`.
        me->ignore_local = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreLocal`.
      WHEN `ignoreInterfaces`.
        me->ignore_interfaces = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreInterfaces`.
      WHEN `statics`.
        me->statics = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statics`.
      WHEN `instance`.
        me->instance = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `instance`.
      WHEN `constants`.
        me->constants = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `constants`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
