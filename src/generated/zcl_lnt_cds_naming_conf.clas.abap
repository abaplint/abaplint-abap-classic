* TS: src/rules/cds_naming.ts:10:1 CDSNamingConf
CLASS zcl_lnt_cds_naming_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_79d73273c866 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_97b2aa2fef3a IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_1064e4fad5d4 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_81e21e067af0 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_8aac47bd5f24 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_172d3b2bcf13 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_e07166adedd9 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_5002d9d6e836 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_5c956d36717c RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_93ec7339dc3a IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_f25fc9022b94 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_e182a0344a1c IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_03a51ca8e376 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_3285e768f710 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_fdf76f3050d3 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_7356fe850436 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_73596e7516fc RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_a1a0a37c7fb6 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_74e03530d993 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_fec5f4b58abf IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_a32dca98ee24 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_e6828dfe66fe IMPORTING p0 TYPE string.
    DATA basic_interface_view TYPE string.
    DATA composite_interface_view TYPE string.
    DATA consumption_view TYPE string.
    DATA basic_restricted_reuse_view TYPE string.
    DATA cmpst_rstrctd_rs_vw TYPE string.
    DATA private_view TYPE string.
    DATA remote_api_view TYPE string.
    DATA view_extend TYPE string.
    DATA extension_include_view TYPE string.
    DATA derivation_function TYPE string.
    DATA abstract_entity TYPE string.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_naming_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = |ZI_|.
    me->zlnt_view_write_s_97b2aa2fef3a( p0 = t1 ).
    DATA(t2) = |ZI_|.
    me->zlnt_view_write_s_81e21e067af0( p0 = t2 ).
    DATA(t3) = |ZC_|.
    me->zlnt_view_write_s_172d3b2bcf13( p0 = t3 ).
    DATA(t4) = |ZR_|.
    me->zlnt_view_write_s_5002d9d6e836( p0 = t4 ).
    DATA(t5) = |ZR_|.
    me->zlnt_view_write_s_93ec7339dc3a( p0 = t5 ).
    DATA(t6) = |ZP_|.
    me->zlnt_view_write_s_e182a0344a1c( p0 = t6 ).
    DATA(t7) = |ZA_|.
    me->zlnt_view_write_s_3285e768f710( p0 = t7 ).
    DATA(t8) = |ZX_|.
    me->zlnt_view_write_s_7356fe850436( p0 = t8 ).
    DATA(t9) = |ZE_|.
    me->zlnt_view_write_s_a1a0a37c7fb6( p0 = t9 ).
    DATA(t10) = |ZF_|.
    me->zlnt_view_write_s_fec5f4b58abf( p0 = t10 ).
    DATA(t11) = |ZD_|.
    me->zlnt_view_write_s_e6828dfe66fe( p0 = t11 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1425_b4d47070104b.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_79d73273c866.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `basicInterfaceView` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->basic_interface_view.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_97b2aa2fef3a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `basicInterfaceView` p1 = t1 ).
    ELSE.
      me->basic_interface_view = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `basicInterfaceView`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_1064e4fad5d4.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `compositeInterfaceView` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->composite_interface_view.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_81e21e067af0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `compositeInterfaceView` p1 = t1 ).
    ELSE.
      me->composite_interface_view = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `compositeInterfaceView`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_8aac47bd5f24.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `consumptionView` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->consumption_view.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_172d3b2bcf13.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `consumptionView` p1 = t1 ).
    ELSE.
      me->consumption_view = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `consumptionView`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e07166adedd9.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `basicRestrictedReuseView` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->basic_restricted_reuse_view.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5002d9d6e836.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `basicRestrictedReuseView` p1 = t1 ).
    ELSE.
      me->basic_restricted_reuse_view = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `basicRestrictedReuseView`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_5c956d36717c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `compositeRestrictedReuseView` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->cmpst_rstrctd_rs_vw.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_93ec7339dc3a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `compositeRestrictedReuseView` p1 = t1 ).
    ELSE.
      me->cmpst_rstrctd_rs_vw = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `compositeRestrictedReuseView`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_f25fc9022b94.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `privateView` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->private_view.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_e182a0344a1c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `privateView` p1 = t1 ).
    ELSE.
      me->private_view = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `privateView`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_03a51ca8e376.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `remoteAPIView` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->remote_api_view.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3285e768f710.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `remoteAPIView` p1 = t1 ).
    ELSE.
      me->remote_api_view = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `remoteAPIView`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_fdf76f3050d3.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `viewExtend` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->view_extend.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_7356fe850436.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `viewExtend` p1 = t1 ).
    ELSE.
      me->view_extend = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `viewExtend`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_73596e7516fc.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `extensionIncludeView` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->extension_include_view.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a1a0a37c7fb6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `extensionIncludeView` p1 = t1 ).
    ELSE.
      me->extension_include_view = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `extensionIncludeView`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_74e03530d993.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `derivationFunction` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->derivation_function.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_fec5f4b58abf.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `derivationFunction` p1 = t1 ).
    ELSE.
      me->derivation_function = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `derivationFunction`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a32dca98ee24.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `abstractEntity` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->abstract_entity.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_e6828dfe66fe.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `abstractEntity` p1 = t1 ).
    ELSE.
      me->abstract_entity = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstractEntity`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `basicInterfaceView`.
        result = abap_true.
      WHEN `compositeInterfaceView`.
        result = abap_true.
      WHEN `consumptionView`.
        result = abap_true.
      WHEN `basicRestrictedReuseView`.
        result = abap_true.
      WHEN `compositeRestrictedReuseView`.
        result = abap_true.
      WHEN `privateView`.
        result = abap_true.
      WHEN `remoteAPIView`.
        result = abap_true.
      WHEN `viewExtend`.
        result = abap_true.
      WHEN `extensionIncludeView`.
        result = abap_true.
      WHEN `derivationFunction`.
        result = abap_true.
      WHEN `abstractEntity`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `basicInterfaceView` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `basicInterfaceView` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `compositeInterfaceView` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `compositeInterfaceView` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `consumptionView` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `consumptionView` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `basicRestrictedReuseView` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `basicRestrictedReuseView` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `compositeRestrictedReuseView` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `compositeRestrictedReuseView` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `privateView` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `privateView` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `remoteAPIView` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `remoteAPIView` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `viewExtend` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `viewExtend` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `extensionIncludeView` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `extensionIncludeView` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `derivationFunction` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `derivationFunction` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `abstractEntity` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `abstractEntity` p1 = VALUE #( ) ).
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
      WHEN `basicInterfaceView`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->basic_interface_view.
      WHEN `compositeInterfaceView`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->composite_interface_view.
      WHEN `consumptionView`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->consumption_view.
      WHEN `basicRestrictedReuseView`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->basic_restricted_reuse_view.
      WHEN `compositeRestrictedReuseView`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->cmpst_rstrctd_rs_vw.
      WHEN `privateView`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->private_view.
      WHEN `remoteAPIView`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->remote_api_view.
      WHEN `viewExtend`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->view_extend.
      WHEN `extensionIncludeView`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->extension_include_view.
      WHEN `derivationFunction`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->derivation_function.
      WHEN `abstractEntity`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->abstract_entity.
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
      WHEN `basicInterfaceView`.
        me->basic_interface_view = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `basicInterfaceView`.
      WHEN `compositeInterfaceView`.
        me->composite_interface_view = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `compositeInterfaceView`.
      WHEN `consumptionView`.
        me->consumption_view = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `consumptionView`.
      WHEN `basicRestrictedReuseView`.
        me->basic_restricted_reuse_view = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `basicRestrictedReuseView`.
      WHEN `compositeRestrictedReuseView`.
        me->cmpst_rstrctd_rs_vw = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `compositeRestrictedReuseView`.
      WHEN `privateView`.
        me->private_view = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `privateView`.
      WHEN `remoteAPIView`.
        me->remote_api_view = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `remoteAPIView`.
      WHEN `viewExtend`.
        me->view_extend = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `viewExtend`.
      WHEN `extensionIncludeView`.
        me->extension_include_view = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `extensionIncludeView`.
      WHEN `derivationFunction`.
        me->derivation_function = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `derivationFunction`.
      WHEN `abstractEntity`.
        me->abstract_entity = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abstractEntity`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
