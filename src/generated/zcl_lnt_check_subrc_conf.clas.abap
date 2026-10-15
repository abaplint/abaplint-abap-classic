* TS: src/rules/check_subrc.ts:12:1 CheckSubrcConf
CLASS zcl_lnt_check_subrc_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_21b2005cffbb RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_63132c324a63 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_0f4630ed0a64 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_6d349ce75d00 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_a81dc9ce2968 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_6119cf604867 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_678f16bf9d52 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_6ace2f182beb IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_b2ab8f8e06ba RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_5fdefd2379ee IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_309ef80029f2 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_e1232fa59a3f IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_44b0dcf87623 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_17c446c6ce60 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_21752f920f4c RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_8d7b3b7da527 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_3ef8bc0e5713 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_736e71278586 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_4786a0a75bed RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_5e5e65be6de7 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_2950c67596a4 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_fed03ade1895 IMPORTING p0 TYPE abap_bool.
    DATA open_dataset_35d7 TYPE abap_bool.
    DATA authority_check_563f TYPE abap_bool.
    DATA select_single TYPE abap_bool.
    DATA select_table TYPE abap_bool.
    DATA update_database_9ce9 TYPE abap_bool.
    DATA insert_database_2b77 TYPE abap_bool.
    DATA modify_database_355a TYPE abap_bool.
    DATA delete_database_9ac4 TYPE abap_bool.
    DATA read_table_cafb TYPE abap_bool.
    DATA assign_dabe TYPE abap_bool.
    DATA find_8f95 TYPE abap_bool.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_subrc_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    me->zlnt_view_write_s_63132c324a63( p0 = t1 ).
    DATA(t2) = abap_true.
    me->zlnt_view_write_s_6d349ce75d00( p0 = t2 ).
    DATA(t3) = abap_true.
    me->zlnt_view_write_s_6119cf604867( p0 = t3 ).
    DATA(t4) = abap_true.
    me->zlnt_view_write_s_6ace2f182beb( p0 = t4 ).
    DATA(t5) = abap_true.
    me->zlnt_view_write_s_5fdefd2379ee( p0 = t5 ).
    DATA(t6) = abap_true.
    me->zlnt_view_write_s_e1232fa59a3f( p0 = t6 ).
    DATA(t7) = abap_true.
    me->zlnt_view_write_s_17c446c6ce60( p0 = t7 ).
    DATA(t8) = abap_true.
    me->zlnt_view_write_s_8d7b3b7da527( p0 = t8 ).
    DATA(t9) = abap_true.
    me->zlnt_view_write_s_736e71278586( p0 = t9 ).
    DATA(t10) = abap_true.
    me->zlnt_view_write_s_5e5e65be6de7( p0 = t10 ).
    DATA(t11) = abap_true.
    me->zlnt_view_write_s_fed03ade1895( p0 = t11 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1441_3a751bceb7f6.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_21b2005cffbb.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `openDataset` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->open_dataset_35d7.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_63132c324a63.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `openDataset` p1 = t1 ).
    ELSE.
      me->open_dataset_35d7 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `openDataset`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_0f4630ed0a64.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `authorityCheck` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->authority_check_563f.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_6d349ce75d00.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `authorityCheck` p1 = t1 ).
    ELSE.
      me->authority_check_563f = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `authorityCheck`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a81dc9ce2968.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `selectSingle` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->select_single.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_6119cf604867.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `selectSingle` p1 = t1 ).
    ELSE.
      me->select_single = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `selectSingle`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_678f16bf9d52.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `selectTable` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->select_table.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_6ace2f182beb.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `selectTable` p1 = t1 ).
    ELSE.
      me->select_table = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `selectTable`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_b2ab8f8e06ba.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `updateDatabase` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->update_database_9ce9.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5fdefd2379ee.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `updateDatabase` p1 = t1 ).
    ELSE.
      me->update_database_9ce9 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `updateDatabase`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_309ef80029f2.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `insertDatabase` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->insert_database_2b77.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_e1232fa59a3f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `insertDatabase` p1 = t1 ).
    ELSE.
      me->insert_database_2b77 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `insertDatabase`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_44b0dcf87623.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `modifyDatabase` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->modify_database_355a.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_17c446c6ce60.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `modifyDatabase` p1 = t1 ).
    ELSE.
      me->modify_database_355a = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `modifyDatabase`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_21752f920f4c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `deleteDatabase` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->delete_database_9ac4.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8d7b3b7da527.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `deleteDatabase` p1 = t1 ).
    ELSE.
      me->delete_database_9ac4 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deleteDatabase`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3ef8bc0e5713.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `readTable` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->read_table_cafb.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_736e71278586.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `readTable` p1 = t1 ).
    ELSE.
      me->read_table_cafb = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `readTable`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_4786a0a75bed.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `assign` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->assign_dabe.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5e5e65be6de7.
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

  METHOD zlnt_view_read_sr_2950c67596a4.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `find` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->find_8f95.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_fed03ade1895.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `find` p1 = t1 ).
    ELSE.
      me->find_8f95 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `find`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `openDataset`.
        result = abap_true.
      WHEN `authorityCheck`.
        result = abap_true.
      WHEN `selectSingle`.
        result = abap_true.
      WHEN `selectTable`.
        result = abap_true.
      WHEN `updateDatabase`.
        result = abap_true.
      WHEN `insertDatabase`.
        result = abap_true.
      WHEN `modifyDatabase`.
        result = abap_true.
      WHEN `deleteDatabase`.
        result = abap_true.
      WHEN `readTable`.
        result = abap_true.
      WHEN `assign`.
        result = abap_true.
      WHEN `find`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `openDataset` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `openDataset` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `authorityCheck` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `authorityCheck` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `selectSingle` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `selectSingle` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `selectTable` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `selectTable` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `updateDatabase` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `updateDatabase` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `insertDatabase` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `insertDatabase` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `modifyDatabase` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `modifyDatabase` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `deleteDatabase` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `deleteDatabase` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `readTable` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `readTable` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `assign` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `assign` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `find` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `find` p1 = VALUE #( ) ).
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
      WHEN `openDataset`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->open_dataset_35d7.
      WHEN `authorityCheck`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->authority_check_563f.
      WHEN `selectSingle`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->select_single.
      WHEN `selectTable`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->select_table.
      WHEN `updateDatabase`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->update_database_9ce9.
      WHEN `insertDatabase`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->insert_database_2b77.
      WHEN `modifyDatabase`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->modify_database_355a.
      WHEN `deleteDatabase`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->delete_database_9ac4.
      WHEN `readTable`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->read_table_cafb.
      WHEN `assign`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->assign_dabe.
      WHEN `find`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->find_8f95.
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
      WHEN `openDataset`.
        me->open_dataset_35d7 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `openDataset`.
      WHEN `authorityCheck`.
        me->authority_check_563f = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `authorityCheck`.
      WHEN `selectSingle`.
        me->select_single = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `selectSingle`.
      WHEN `selectTable`.
        me->select_table = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `selectTable`.
      WHEN `updateDatabase`.
        me->update_database_9ce9 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `updateDatabase`.
      WHEN `insertDatabase`.
        me->insert_database_2b77 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `insertDatabase`.
      WHEN `modifyDatabase`.
        me->modify_database_355a = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `modifyDatabase`.
      WHEN `deleteDatabase`.
        me->delete_database_9ac4 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deleteDatabase`.
      WHEN `readTable`.
        me->read_table_cafb = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `readTable`.
      WHEN `assign`.
        me->assign_dabe = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `assign`.
      WHEN `find`.
        me->find_8f95 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `find`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
