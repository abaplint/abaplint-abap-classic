* TS: src/rules/no_dynamic_stuff.ts:10:1 NoDynamicStuffConf
CLASS zcl_lnt_no_dynamic_stuff_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_fb8ea0614667 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_0c641d4e0277 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_1aa1aee07442 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_d5132d84df1d IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_3c14c98f75e2 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_83f9733cd5dc IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_2c8b1d76135f RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_095e6a56b141 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_adaa47a875d1 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_f4461fbefa47 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_ff61ffb1e7a9 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_305311a42189 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_8464bbf8098d RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_2c5c12ce0377 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_7bef0f540ca6 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_746e0697a91a IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_3ed8d9644cd2 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_44893a47d6b8 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_fb9e79bea3f9 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_a5ed80475bf0 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_e4e7e2a91d00 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_9d71d8586419 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_510a60fc0d95 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_cc7d932a3716 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_59dffc7fd079 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_85c2a0a569cf IMPORTING p0 TYPE abap_bool.
    DATA call_method TYPE abap_bool.
    DATA call_function_d500 TYPE abap_bool.
    DATA call_database_procedure TYPE abap_bool.
    DATA call_transformation_5f8a TYPE abap_bool.
    DATA call_transaction_63a5 TYPE abap_bool.
    DATA perform_cf8c TYPE abap_bool.
    DATA submit_cc98 TYPE abap_bool.
    DATA create_object_6c40 TYPE abap_bool.
    DATA create_data_402d TYPE abap_bool.
    DATA get_badi_9f96 TYPE abap_bool.
    DATA assign_dabe TYPE abap_bool.
    DATA internal_table TYPE abap_bool.
    DATA export_import TYPE abap_bool.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_dynamic_stuff_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    me->zlnt_view_write_s_0c641d4e0277( p0 = t1 ).
    DATA(t2) = abap_true.
    me->zlnt_view_write_s_d5132d84df1d( p0 = t2 ).
    DATA(t3) = abap_true.
    me->zlnt_view_write_s_83f9733cd5dc( p0 = t3 ).
    DATA(t4) = abap_true.
    me->zlnt_view_write_s_095e6a56b141( p0 = t4 ).
    DATA(t5) = abap_true.
    me->zlnt_view_write_s_f4461fbefa47( p0 = t5 ).
    DATA(t6) = abap_true.
    me->zlnt_view_write_s_305311a42189( p0 = t6 ).
    DATA(t7) = abap_true.
    me->zlnt_view_write_s_2c5c12ce0377( p0 = t7 ).
    DATA(t8) = abap_true.
    me->zlnt_view_write_s_746e0697a91a( p0 = t8 ).
    DATA(t9) = abap_true.
    me->zlnt_view_write_s_44893a47d6b8( p0 = t9 ).
    DATA(t10) = abap_true.
    me->zlnt_view_write_s_a5ed80475bf0( p0 = t10 ).
    DATA(t11) = abap_true.
    me->zlnt_view_write_s_9d71d8586419( p0 = t11 ).
    DATA(t12) = abap_true.
    me->zlnt_view_write_s_cc7d932a3716( p0 = t12 ).
    DATA(t13) = abap_true.
    me->zlnt_view_write_s_85c2a0a569cf( p0 = t13 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1610_dbbf6d6be221.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_fb8ea0614667.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `callMethod` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->call_method.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_0c641d4e0277.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `callMethod` p1 = t1 ).
    ELSE.
      me->call_method = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callMethod`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_1aa1aee07442.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `callFunction` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->call_function_d500.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d5132d84df1d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `callFunction` p1 = t1 ).
    ELSE.
      me->call_function_d500 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callFunction`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3c14c98f75e2.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `callDatabaseProcedure` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->call_database_procedure.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_83f9733cd5dc.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `callDatabaseProcedure` p1 = t1 ).
    ELSE.
      me->call_database_procedure = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callDatabaseProcedure`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_2c8b1d76135f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `callTransformation` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->call_transformation_5f8a.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_095e6a56b141.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `callTransformation` p1 = t1 ).
    ELSE.
      me->call_transformation_5f8a = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callTransformation`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_adaa47a875d1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `callTransaction` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->call_transaction_63a5.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_f4461fbefa47.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `callTransaction` p1 = t1 ).
    ELSE.
      me->call_transaction_63a5 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callTransaction`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_ff61ffb1e7a9.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `perform` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->perform_cf8c.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_305311a42189.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `perform` p1 = t1 ).
    ELSE.
      me->perform_cf8c = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `perform`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_8464bbf8098d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `submit` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->submit_cc98.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_2c5c12ce0377.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `submit` p1 = t1 ).
    ELSE.
      me->submit_cc98 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `submit`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_7bef0f540ca6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `createObject` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->create_object_6c40.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_746e0697a91a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `createObject` p1 = t1 ).
    ELSE.
      me->create_object_6c40 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createObject`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3ed8d9644cd2.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `createData` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->create_data_402d.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_44893a47d6b8.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `createData` p1 = t1 ).
    ELSE.
      me->create_data_402d = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createData`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_fb9e79bea3f9.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `getBadi` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->get_badi_9f96.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a5ed80475bf0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `getBadi` p1 = t1 ).
    ELSE.
      me->get_badi_9f96 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `getBadi`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e4e7e2a91d00.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `assign` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->assign_dabe.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_9d71d8586419.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `assign` p1 = t1 ).
    ELSE.
      me->assign_dabe = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `assign`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_510a60fc0d95.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `internalTable` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->internal_table.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_cc7d932a3716.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `internalTable` p1 = t1 ).
    ELSE.
      me->internal_table = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `internalTable`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_59dffc7fd079.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `exportImport` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->export_import.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_85c2a0a569cf.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `exportImport` p1 = t1 ).
    ELSE.
      me->export_import = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exportImport`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `callMethod`.
        result = abap_true.
      WHEN `callFunction`.
        result = abap_true.
      WHEN `callDatabaseProcedure`.
        result = abap_true.
      WHEN `callTransformation`.
        result = abap_true.
      WHEN `callTransaction`.
        result = abap_true.
      WHEN `perform`.
        result = abap_true.
      WHEN `submit`.
        result = abap_true.
      WHEN `createObject`.
        result = abap_true.
      WHEN `createData`.
        result = abap_true.
      WHEN `getBadi`.
        result = abap_true.
      WHEN `assign`.
        result = abap_true.
      WHEN `internalTable`.
        result = abap_true.
      WHEN `exportImport`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `callMethod` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `callMethod` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `callFunction` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `callFunction` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `callDatabaseProcedure` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `callDatabaseProcedure` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `callTransformation` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `callTransformation` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `callTransaction` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `callTransaction` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `perform` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `perform` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `submit` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `submit` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `createObject` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `createObject` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `createData` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `createData` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `getBadi` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `getBadi` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `assign` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `assign` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `internalTable` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `internalTable` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exportImport` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exportImport` p1 = VALUE #( ) ).
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
      WHEN `callMethod`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->call_method.
      WHEN `callFunction`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->call_function_d500.
      WHEN `callDatabaseProcedure`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->call_database_procedure.
      WHEN `callTransformation`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->call_transformation_5f8a.
      WHEN `callTransaction`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->call_transaction_63a5.
      WHEN `perform`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->perform_cf8c.
      WHEN `submit`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->submit_cc98.
      WHEN `createObject`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->create_object_6c40.
      WHEN `createData`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->create_data_402d.
      WHEN `getBadi`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->get_badi_9f96.
      WHEN `assign`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->assign_dabe.
      WHEN `internalTable`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->internal_table.
      WHEN `exportImport`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->export_import.
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
      WHEN `callMethod`.
        me->call_method = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callMethod`.
      WHEN `callFunction`.
        me->call_function_d500 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callFunction`.
      WHEN `callDatabaseProcedure`.
        me->call_database_procedure = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callDatabaseProcedure`.
      WHEN `callTransformation`.
        me->call_transformation_5f8a = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callTransformation`.
      WHEN `callTransaction`.
        me->call_transaction_63a5 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `callTransaction`.
      WHEN `perform`.
        me->perform_cf8c = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `perform`.
      WHEN `submit`.
        me->submit_cc98 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `submit`.
      WHEN `createObject`.
        me->create_object_6c40 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createObject`.
      WHEN `createData`.
        me->create_data_402d = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `createData`.
      WHEN `getBadi`.
        me->get_badi_9f96 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `getBadi`.
      WHEN `assign`.
        me->assign_dabe = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `assign`.
      WHEN `internalTable`.
        me->internal_table = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `internalTable`.
      WHEN `exportImport`.
        me->export_import = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exportImport`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
