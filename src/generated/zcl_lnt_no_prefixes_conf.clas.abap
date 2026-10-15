* TS: src/rules/no_prefixes.ts:11:1 NoPrefixesConf
CLASS zcl_lnt_no_prefixes_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_06cb01c28737 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_d12305478068 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_6379ec097892 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_de66a556be8d IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_a1ec6091a9fa RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_a94744793f24 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_82452d880166 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_566074400cd1 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_cf93ad140284 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_df9f5d93b53a IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_ecc5144d9e37 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_8febcfc2d485 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_c67116829635 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_5d2436c6d6c3 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_4bba148eaed3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS zlnt_view_write_s_17c92bfb8c4c IMPORTING p0 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA data_56cc TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA statics TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA field_symbols TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA constants TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA types TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA method_parameters TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA allow_is_prefix_boolean TYPE abap_bool.
    DATA max_issues_per_file TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_prefixes_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = |^[LGM].?_|.
    DATA(t2) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t2->has = abap_true.
    t2->value = t1.
    me->zlnt_view_write_s_d12305478068( p0 = t2 ).
    DATA(t3) = |^S.?_|.
    DATA(t4) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t4->has = abap_true.
    t4->value = t3.
    me->zlnt_view_write_s_de66a556be8d( p0 = t4 ).
    DATA(t5) = |^<[LGM].?_|.
    DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t6->has = abap_true.
    t6->value = t5.
    me->zlnt_view_write_s_a94744793f24( p0 = t6 ).
    DATA(t7) = |^[LGM]?C.?_|.
    DATA(t8) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t8->has = abap_true.
    t8->value = t7.
    me->zlnt_view_write_s_566074400cd1( p0 = t8 ).
    DATA(t9) = |^TY_|.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = t9.
    me->zlnt_view_write_s_df9f5d93b53a( p0 = t10 ).
    DATA(t11) = |^[ICER].?_|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    me->zlnt_view_write_s_8febcfc2d485( p0 = t12 ).
    DATA(t13) = abap_true.
    me->zlnt_view_write_s_5d2436c6d6c3( p0 = t13 ).
    DATA(t14) = CONV f( 10 ).
    DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t15->has = abap_true.
    t15->value = t14.
    me->zlnt_view_write_s_17c92bfb8c4c( p0 = t15 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1622_608614f54ae4.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_06cb01c28737.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `data` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->data_56cc.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d12305478068.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `data` p1 = t1 ).
    ELSE.
      me->data_56cc = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_6379ec097892.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `statics` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->statics.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_de66a556be8d.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `statics` p1 = t1 ).
    ELSE.
      me->statics = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statics`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a1ec6091a9fa.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `fieldSymbols` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->field_symbols.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a94744793f24.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `fieldSymbols` p1 = t1 ).
    ELSE.
      me->field_symbols = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fieldSymbols`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_82452d880166.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `constants` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->constants.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_566074400cd1.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `constants` p1 = t1 ).
    ELSE.
      me->constants = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `constants`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_cf93ad140284.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `types` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->types.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_df9f5d93b53a.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `types` p1 = t1 ).
    ELSE.
      me->types = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_ecc5144d9e37.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `methodParameters` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->method_parameters.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8febcfc2d485.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `methodParameters` p1 = t1 ).
    ELSE.
      me->method_parameters = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methodParameters`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_c67116829635.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `allowIsPrefixBoolean` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->allow_is_prefix_boolean.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5d2436c6d6c3.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `allowIsPrefixBoolean` p1 = t1 ).
    ELSE.
      me->allow_is_prefix_boolean = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `allowIsPrefixBoolean`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_4bba148eaed3.
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

  METHOD zlnt_view_write_s_17c92bfb8c4c.
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
      WHEN `data`.
        result = abap_true.
      WHEN `statics`.
        result = abap_true.
      WHEN `fieldSymbols`.
        result = abap_true.
      WHEN `constants`.
        result = abap_true.
      WHEN `types`.
        result = abap_true.
      WHEN `methodParameters`.
        result = abap_true.
      WHEN `allowIsPrefixBoolean`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `data` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `data` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `statics` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `statics` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `fieldSymbols` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `fieldSymbols` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `constants` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `constants` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `types` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `types` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `methodParameters` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `methodParameters` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `allowIsPrefixBoolean` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `allowIsPrefixBoolean` p1 = VALUE #( ) ).
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
      WHEN `data`.
        CLEAR result.
        IF me->data_56cc IS BOUND AND me->data_56cc->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->data_56cc->value.
        ENDIF.
      WHEN `statics`.
        CLEAR result.
        IF me->statics IS BOUND AND me->statics->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->statics->value.
        ENDIF.
      WHEN `fieldSymbols`.
        CLEAR result.
        IF me->field_symbols IS BOUND AND me->field_symbols->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->field_symbols->value.
        ENDIF.
      WHEN `constants`.
        CLEAR result.
        IF me->constants IS BOUND AND me->constants->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->constants->value.
        ENDIF.
      WHEN `types`.
        CLEAR result.
        IF me->types IS BOUND AND me->types->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->types->value.
        ENDIF.
      WHEN `methodParameters`.
        CLEAR result.
        IF me->method_parameters IS BOUND AND me->method_parameters->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->method_parameters->value.
        ENDIF.
      WHEN `allowIsPrefixBoolean`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->allow_is_prefix_boolean.
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
      WHEN `data`.
        CLEAR me->data_56cc.
        IF p1 IS BOUND.
          me->data_56cc = NEW #( ).
          me->data_56cc->has = abap_true.
          me->data_56cc->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
      WHEN `statics`.
        CLEAR me->statics.
        IF p1 IS BOUND.
          me->statics = NEW #( ).
          me->statics->has = abap_true.
          me->statics->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statics`.
      WHEN `fieldSymbols`.
        CLEAR me->field_symbols.
        IF p1 IS BOUND.
          me->field_symbols = NEW #( ).
          me->field_symbols->has = abap_true.
          me->field_symbols->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fieldSymbols`.
      WHEN `constants`.
        CLEAR me->constants.
        IF p1 IS BOUND.
          me->constants = NEW #( ).
          me->constants->has = abap_true.
          me->constants->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `constants`.
      WHEN `types`.
        CLEAR me->types.
        IF p1 IS BOUND.
          me->types = NEW #( ).
          me->types->has = abap_true.
          me->types->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
      WHEN `methodParameters`.
        CLEAR me->method_parameters.
        IF p1 IS BOUND.
          me->method_parameters = NEW #( ).
          me->method_parameters->has = abap_true.
          me->method_parameters->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `methodParameters`.
      WHEN `allowIsPrefixBoolean`.
        me->allow_is_prefix_boolean = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `allowIsPrefixBoolean`.
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
