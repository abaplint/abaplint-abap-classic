* TS: src/rules/avoid_use.ts:13:1 AvoidUseConf
CLASS zcl_lnt_avoid_use_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_9519265f098e RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_fb727840365f IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_fbeb22473b39 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_f8196956ff9a IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_90729ada0868 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_40db3a530795 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_f7c6a961d953 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_9bad74ef76a0 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_3134010c4092 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_cea88f29fd73 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_2e9771ed44b2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_3e5fe955a0f2 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_1dd04d74a2a7 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_2ddaaa2716ec IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_a9fad2a803af RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_a65b3302e7ea IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_fef07a1ddb2e RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_d9bc5f88619d IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA skip_quick_fix TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA define_4e84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA statics TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA default_key TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA break_c0da TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA test_seams TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA describe_lines TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA export_to_memory TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA export_to_database TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_avoid_use_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_false.
    DATA(t2) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2->has = abap_true.
    t2->value = t1.
    me->zlnt_view_write_s_fb727840365f( p0 = t2 ).
    DATA(t3) = abap_true.
    DATA(t4) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t4->has = abap_true.
    t4->value = t3.
    me->zlnt_view_write_s_f8196956ff9a( p0 = t4 ).
    DATA(t5) = abap_true.
    DATA(t6) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t6->has = abap_true.
    t6->value = t5.
    me->zlnt_view_write_s_40db3a530795( p0 = t6 ).
    DATA(t7) = abap_true.
    DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t8->has = abap_true.
    t8->value = t7.
    me->zlnt_view_write_s_9bad74ef76a0( p0 = t8 ).
    DATA(t9) = abap_true.
    DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t10->has = abap_true.
    t10->value = t9.
    me->zlnt_view_write_s_cea88f29fd73( p0 = t10 ).
    DATA(t11) = abap_true.
    DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t12->has = abap_true.
    t12->value = t11.
    me->zlnt_view_write_s_3e5fe955a0f2( p0 = t12 ).
    DATA(t13) = abap_true.
    DATA(t14) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t14->has = abap_true.
    t14->value = t13.
    me->zlnt_view_write_s_2ddaaa2716ec( p0 = t14 ).
    DATA(t15) = abap_true.
    DATA(t16) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t16->has = abap_true.
    t16->value = t15.
    me->zlnt_view_write_s_a65b3302e7ea( p0 = t16 ).
    DATA(t17) = abap_true.
    DATA(t18) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t18->has = abap_true.
    t18->value = t17.
    me->zlnt_view_write_s_d9bc5f88619d( p0 = t18 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1405_4e311a5744d9.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_9519265f098e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `skipQuickFix` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->skip_quick_fix.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_fb727840365f.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `skipQuickFix` p1 = t1 ).
    ELSE.
      me->skip_quick_fix = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipQuickFix`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_fbeb22473b39.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `define` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->define_4e84.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_f8196956ff9a.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `define` p1 = t1 ).
    ELSE.
      me->define_4e84 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `define`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_90729ada0868.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `statics` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->statics.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_40db3a530795.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `statics` p1 = t1 ).
    ELSE.
      me->statics = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statics`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_f7c6a961d953.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `defaultKey` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->default_key.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_9bad74ef76a0.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `defaultKey` p1 = t1 ).
    ELSE.
      me->default_key = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `defaultKey`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3134010c4092.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `break` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->break_c0da.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_cea88f29fd73.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `break` p1 = t1 ).
    ELSE.
      me->break_c0da = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `break`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_2e9771ed44b2.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `testSeams` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->test_seams.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3e5fe955a0f2.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `testSeams` p1 = t1 ).
    ELSE.
      me->test_seams = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `testSeams`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_1dd04d74a2a7.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `describeLines` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->describe_lines.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_2ddaaa2716ec.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `describeLines` p1 = t1 ).
    ELSE.
      me->describe_lines = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `describeLines`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a9fad2a803af.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `exportToMemory` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->export_to_memory.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a65b3302e7ea.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `exportToMemory` p1 = t1 ).
    ELSE.
      me->export_to_memory = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exportToMemory`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_fef07a1ddb2e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `exportToDatabase` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->export_to_database.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d9bc5f88619d.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `exportToDatabase` p1 = t1 ).
    ELSE.
      me->export_to_database = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exportToDatabase`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `skipQuickFix`.
        result = abap_true.
      WHEN `define`.
        result = abap_true.
      WHEN `statics`.
        result = abap_true.
      WHEN `defaultKey`.
        result = abap_true.
      WHEN `break`.
        result = abap_true.
      WHEN `testSeams`.
        result = abap_true.
      WHEN `describeLines`.
        result = abap_true.
      WHEN `exportToMemory`.
        result = abap_true.
      WHEN `exportToDatabase`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `skipQuickFix` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `skipQuickFix` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `define` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `define` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `statics` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `statics` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `defaultKey` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `defaultKey` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `break` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `break` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `testSeams` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `testSeams` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `describeLines` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `describeLines` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exportToMemory` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exportToMemory` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exportToDatabase` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exportToDatabase` p1 = VALUE #( ) ).
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
      WHEN `skipQuickFix`.
        CLEAR result.
        IF me->skip_quick_fix IS BOUND AND me->skip_quick_fix->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->skip_quick_fix->value.
        ENDIF.
      WHEN `define`.
        CLEAR result.
        IF me->define_4e84 IS BOUND AND me->define_4e84->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->define_4e84->value.
        ENDIF.
      WHEN `statics`.
        CLEAR result.
        IF me->statics IS BOUND AND me->statics->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->statics->value.
        ENDIF.
      WHEN `defaultKey`.
        CLEAR result.
        IF me->default_key IS BOUND AND me->default_key->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->default_key->value.
        ENDIF.
      WHEN `break`.
        CLEAR result.
        IF me->break_c0da IS BOUND AND me->break_c0da->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->break_c0da->value.
        ENDIF.
      WHEN `testSeams`.
        CLEAR result.
        IF me->test_seams IS BOUND AND me->test_seams->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->test_seams->value.
        ENDIF.
      WHEN `describeLines`.
        CLEAR result.
        IF me->describe_lines IS BOUND AND me->describe_lines->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->describe_lines->value.
        ENDIF.
      WHEN `exportToMemory`.
        CLEAR result.
        IF me->export_to_memory IS BOUND AND me->export_to_memory->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->export_to_memory->value.
        ENDIF.
      WHEN `exportToDatabase`.
        CLEAR result.
        IF me->export_to_database IS BOUND AND me->export_to_database->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->export_to_database->value.
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
      WHEN `skipQuickFix`.
        CLEAR me->skip_quick_fix.
        IF p1 IS BOUND.
          me->skip_quick_fix = NEW #( ).
          me->skip_quick_fix->has = abap_true.
          me->skip_quick_fix->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `skipQuickFix`.
      WHEN `define`.
        CLEAR me->define_4e84.
        IF p1 IS BOUND.
          me->define_4e84 = NEW #( ).
          me->define_4e84->has = abap_true.
          me->define_4e84->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `define`.
      WHEN `statics`.
        CLEAR me->statics.
        IF p1 IS BOUND.
          me->statics = NEW #( ).
          me->statics->has = abap_true.
          me->statics->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statics`.
      WHEN `defaultKey`.
        CLEAR me->default_key.
        IF p1 IS BOUND.
          me->default_key = NEW #( ).
          me->default_key->has = abap_true.
          me->default_key->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `defaultKey`.
      WHEN `break`.
        CLEAR me->break_c0da.
        IF p1 IS BOUND.
          me->break_c0da = NEW #( ).
          me->break_c0da->has = abap_true.
          me->break_c0da->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `break`.
      WHEN `testSeams`.
        CLEAR me->test_seams.
        IF p1 IS BOUND.
          me->test_seams = NEW #( ).
          me->test_seams->has = abap_true.
          me->test_seams->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `testSeams`.
      WHEN `describeLines`.
        CLEAR me->describe_lines.
        IF p1 IS BOUND.
          me->describe_lines = NEW #( ).
          me->describe_lines->has = abap_true.
          me->describe_lines->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `describeLines`.
      WHEN `exportToMemory`.
        CLEAR me->export_to_memory.
        IF p1 IS BOUND.
          me->export_to_memory = NEW #( ).
          me->export_to_memory->has = abap_true.
          me->export_to_memory->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exportToMemory`.
      WHEN `exportToDatabase`.
        CLEAR me->export_to_database.
        IF p1 IS BOUND.
          me->export_to_database = NEW #( ).
          me->export_to_database->has = abap_true.
          me->export_to_database->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exportToDatabase`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
