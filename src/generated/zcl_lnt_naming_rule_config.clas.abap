* TS: src/rules/_naming_rule_config.ts:6:1 NamingRuleConfig
CLASS zcl_lnt_naming_rule_config DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_ef452f77fd06 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_9ebcbca32e92 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_7cd1e1e70d45 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_8b7e7229142b IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_read_sr_92fa7b522e13 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_5d98aaba42c4 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA pattern_kind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ignore_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA ignore_patterns TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_naming_rule_config IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = |required|.
    DATA(t2) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2->has = abap_true.
    t2->value = t1.
    me->zlnt_view_write_s_9ebcbca32e92( p0 = t2 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    me->zlnt_view_write_s_8b7e7229142b( p0 = t3 ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    me->zlnt_view_write_s_5d98aaba42c4( p0 = t4 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1384_636375e1f14c.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_ef452f77fd06.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `patternKind` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->pattern_kind.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_9ebcbca32e92.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `patternKind` p1 = t1 ).
    ELSE.
      me->pattern_kind = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `patternKind`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_7cd1e1e70d45.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreNames` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT result.
            result->source = t1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          result->load( ).
        ENDIF.
      ENDIF.
    ELSE.
      result = me->ignore_names.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8b7e7229142b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreNames` p1 = t1 ).
    ELSE.
      me->ignore_names = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreNames`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_92fa7b522e13.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignorePatterns` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT result.
            result->source = t1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          result->load( ).
        ENDIF.
      ENDIF.
    ELSE.
      result = me->ignore_patterns.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5d98aaba42c4.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignorePatterns` p1 = t1 ).
    ELSE.
      me->ignore_patterns = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignorePatterns`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
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
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
