* TS: src/rules/double_space.ts:14:1 DoubleSpaceConf
CLASS zcl_lnt_double_space_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_abd40c6b7e93 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_9c54627bcb25 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_b77f70a074af RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_37b40751ec20 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_read_sr_35380942de4b RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_7c49753518b6 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_d180c0b9d146 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_8a18fe66f51f IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_d1ea83d4ea4d RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_72d78e3a99be IMPORTING p0 TYPE abap_bool.
    DATA keywords_835e TYPE abap_bool.
    DATA skip_keywords TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA start_paren TYPE abap_bool.
    DATA end_paren TYPE abap_bool.
    DATA after_colon TYPE abap_bool.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_double_space_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    me->zlnt_view_write_s_9c54627bcb25( p0 = t1 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = t3.
    DATA(t6) = |CHANGING|.
    t5->load( ).
    APPEND t6 TO t5->items.
    t5->save( ).
    DATA(t7) = t3.
    DATA(t8) = |EXPORTING|.
    t7->load( ).
    APPEND t8 TO t7->items.
    t7->save( ).
    DATA(t9) = t3.
    DATA(t10) = |OTHERS|.
    t9->load( ).
    APPEND t10 TO t9->items.
    t9->save( ).
    DATA(t11) = t3.
    t2 = t11.
    me->zlnt_view_write_s_37b40751ec20( p0 = t2 ).
    DATA(t12) = abap_true.
    me->zlnt_view_write_s_7c49753518b6( p0 = t12 ).
    DATA(t13) = abap_true.
    me->zlnt_view_write_s_8a18fe66f51f( p0 = t13 ).
    DATA(t14) = abap_true.
    me->zlnt_view_write_s_72d78e3a99be( p0 = t14 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1480_a6781cc908c1.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_abd40c6b7e93.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `keywords` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->keywords_835e.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_9c54627bcb25.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `keywords` p1 = t1 ).
    ELSE.
      me->keywords_835e = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keywords`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_b77f70a074af.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipKeywords` ) ).
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
      result = me->skip_keywords.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_37b40751ec20.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipKeywords` p1 = t1 ).
    ELSE.
      me->skip_keywords = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipKeywords`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_35380942de4b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `startParen` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->start_paren.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_7c49753518b6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `startParen` p1 = t1 ).
    ELSE.
      me->start_paren = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `startParen`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_d180c0b9d146.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `endParen` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->end_paren.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8a18fe66f51f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `endParen` p1 = t1 ).
    ELSE.
      me->end_paren = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `endParen`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_d1ea83d4ea4d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `afterColon` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->after_colon.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_72d78e3a99be.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `afterColon` p1 = t1 ).
    ELSE.
      me->after_colon = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `afterColon`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `keywords`.
        result = abap_true.
      WHEN `skipKeywords`.
        result = abap_true.
      WHEN `startParen`.
        result = abap_true.
      WHEN `endParen`.
        result = abap_true.
      WHEN `afterColon`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `keywords` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `keywords` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `skipKeywords` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `skipKeywords` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `startParen` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `startParen` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `endParen` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `endParen` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `afterColon` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `afterColon` p1 = VALUE #( ) ).
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
      WHEN `keywords`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->keywords_835e.
      WHEN `skipKeywords`.
        CLEAR result.
        IF me->skip_keywords IS BOUND.
          CLEAR result.
          IF me->skip_keywords IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->skip_keywords.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->skip_keywords.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->skip_keywords.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `startParen`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->start_paren.
      WHEN `endParen`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->end_paren.
      WHEN `afterColon`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->after_colon.
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
      WHEN `keywords`.
        me->keywords_835e = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keywords`.
      WHEN `startParen`.
        me->start_paren = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `startParen`.
      WHEN `endParen`.
        me->end_paren = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `endParen`.
      WHEN `afterColon`.
        me->after_colon = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `afterColon`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
