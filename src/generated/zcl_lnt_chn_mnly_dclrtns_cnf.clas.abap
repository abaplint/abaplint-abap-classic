* TS: src/rules/chain_mainly_declarations.ts:12:1 ChainMainlyDeclarationsConf
CLASS zcl_lnt_chn_mnly_dclrtns_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_379733500cb0 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_851655681e33 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_52806862a0a0 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_b7cbe44a9682 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_af9a1dd4900b RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_3a635e60afa0 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_4ab669e566d5 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_14bc399a4320 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_fcc3b6176335 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_1b1f13067302 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_9c170c5c305f RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_cf78e5a75a41 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_9762d2acd538 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_a58a359a3800 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_972a7b120c53 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_03e8ff3b7184 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_e9e51bddcd51 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_3c5fe332e8f0 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_9d95884b1e2f RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_dd8125e637ac IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_a93433db50e7 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_93f8796a616a IMPORTING p0 TYPE abap_bool.
    DATA definitions TYPE abap_bool.
    DATA write_7543 TYPE abap_bool.
    DATA move_9ad0 TYPE abap_bool.
    DATA refresh_83dc TYPE abap_bool.
    DATA unassign_0e7b TYPE abap_bool.
    DATA clear_feba TYPE abap_bool.
    DATA hide_03a8 TYPE abap_bool.
    DATA free_f889 TYPE abap_bool.
    DATA include_3f11 TYPE abap_bool.
    DATA check_bf6e TYPE abap_bool.
    DATA sort_0232 TYPE abap_bool.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_chn_mnly_dclrtns_cnf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    me->zlnt_view_write_s_851655681e33( p0 = t1 ).
    DATA(t2) = abap_true.
    me->zlnt_view_write_s_b7cbe44a9682( p0 = t2 ).
    DATA(t3) = abap_true.
    me->zlnt_view_write_s_3a635e60afa0( p0 = t3 ).
    DATA(t4) = abap_true.
    me->zlnt_view_write_s_14bc399a4320( p0 = t4 ).
    DATA(t5) = abap_true.
    me->zlnt_view_write_s_1b1f13067302( p0 = t5 ).
    DATA(t6) = abap_true.
    me->zlnt_view_write_s_cf78e5a75a41( p0 = t6 ).
    DATA(t7) = abap_true.
    me->zlnt_view_write_s_a58a359a3800( p0 = t7 ).
    DATA(t8) = abap_true.
    me->zlnt_view_write_s_03e8ff3b7184( p0 = t8 ).
    DATA(t9) = abap_true.
    me->zlnt_view_write_s_3c5fe332e8f0( p0 = t9 ).
    DATA(t10) = abap_true.
    me->zlnt_view_write_s_dd8125e637ac( p0 = t10 ).
    DATA(t11) = abap_true.
    me->zlnt_view_write_s_93f8796a616a( p0 = t11 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1429_681dd8ce603c.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_379733500cb0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `definitions` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->definitions.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_851655681e33.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `definitions` p1 = t1 ).
    ELSE.
      me->definitions = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `definitions`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_52806862a0a0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `write` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->write_7543.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_b7cbe44a9682.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `write` p1 = t1 ).
    ELSE.
      me->write_7543 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `write`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_af9a1dd4900b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `move` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->move_9ad0.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3a635e60afa0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `move` p1 = t1 ).
    ELSE.
      me->move_9ad0 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `move`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_4ab669e566d5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `refresh` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->refresh_83dc.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_14bc399a4320.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `refresh` p1 = t1 ).
    ELSE.
      me->refresh_83dc = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `refresh`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_fcc3b6176335.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `unassign` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->unassign_0e7b.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_1b1f13067302.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `unassign` p1 = t1 ).
    ELSE.
      me->unassign_0e7b = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `unassign`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_9c170c5c305f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `clear` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->clear_feba.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_cf78e5a75a41.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `clear` p1 = t1 ).
    ELSE.
      me->clear_feba = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `clear`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_9762d2acd538.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `hide` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->hide_03a8.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a58a359a3800.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `hide` p1 = t1 ).
    ELSE.
      me->hide_03a8 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `hide`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_972a7b120c53.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `free` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->free_f889.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_03e8ff3b7184.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `free` p1 = t1 ).
    ELSE.
      me->free_f889 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `free`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e9e51bddcd51.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `include` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->include_3f11.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3c5fe332e8f0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `include` p1 = t1 ).
    ELSE.
      me->include_3f11 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `include`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_9d95884b1e2f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `check` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->check_bf6e.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_dd8125e637ac.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `check` p1 = t1 ).
    ELSE.
      me->check_bf6e = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `check`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a93433db50e7.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `sort` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->sort_0232.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_93f8796a616a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `sort` p1 = t1 ).
    ELSE.
      me->sort_0232 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sort`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `definitions`.
        result = abap_true.
      WHEN `write`.
        result = abap_true.
      WHEN `move`.
        result = abap_true.
      WHEN `refresh`.
        result = abap_true.
      WHEN `unassign`.
        result = abap_true.
      WHEN `clear`.
        result = abap_true.
      WHEN `hide`.
        result = abap_true.
      WHEN `free`.
        result = abap_true.
      WHEN `include`.
        result = abap_true.
      WHEN `check`.
        result = abap_true.
      WHEN `sort`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `definitions` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `definitions` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `write` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `write` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `move` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `move` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `refresh` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `refresh` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `unassign` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `unassign` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `clear` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `clear` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `hide` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `hide` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `free` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `free` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `include` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `include` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `check` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `check` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `sort` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `sort` p1 = VALUE #( ) ).
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
      WHEN `definitions`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->definitions.
      WHEN `write`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->write_7543.
      WHEN `move`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->move_9ad0.
      WHEN `refresh`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->refresh_83dc.
      WHEN `unassign`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->unassign_0e7b.
      WHEN `clear`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->clear_feba.
      WHEN `hide`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->hide_03a8.
      WHEN `free`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->free_f889.
      WHEN `include`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->include_3f11.
      WHEN `check`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->check_bf6e.
      WHEN `sort`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->sort_0232.
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
      WHEN `definitions`.
        me->definitions = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `definitions`.
      WHEN `write`.
        me->write_7543 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `write`.
      WHEN `move`.
        me->move_9ad0 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `move`.
      WHEN `refresh`.
        me->refresh_83dc = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `refresh`.
      WHEN `unassign`.
        me->unassign_0e7b = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `unassign`.
      WHEN `clear`.
        me->clear_feba = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `clear`.
      WHEN `hide`.
        me->hide_03a8 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `hide`.
      WHEN `free`.
        me->free_f889 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `free`.
      WHEN `include`.
        me->include_3f11 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `include`.
      WHEN `check`.
        me->check_bf6e = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `check`.
      WHEN `sort`.
        me->sort_0232 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sort`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
