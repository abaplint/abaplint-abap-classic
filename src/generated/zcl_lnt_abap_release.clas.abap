* TS: src/version.ts:54:1 ABAPRelease
CLASS zcl_lnt_abap_release DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    DATA zlnt_view_source_36f3bf68b9b8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_8e17f9b6728c RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_1c5bdde82d6c IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_82456ee3ad31 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_9f0d5e6a9751 IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_23378b5bffa7 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_17980dd1b9e9 IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_a3791bc526cc RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_6741cb650bf5 IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_5167a0bd6ff4 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_cf49028d4c5d IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_16388ffc3578 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_ac7ca543d863 IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_60d588ccf004 RETURNING VALUE(result) TYPE f.
    METHODS zlnt_view_write_s_753c4bf35b18 IMPORTING p0 TYPE f.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zif_lnt_union_0eeefcfe.
    DATA name TYPE string.
    DATA abap TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA kernel TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA op TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA cloud_669f TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA ce TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA ordinal TYPE f.
    METHODS constructor IMPORTING i_name TYPE string i_abap TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_kernel TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_op TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_cloud_47cd TYPE REF TO
    zlnt_runtime_dyna_a429568d5be8 i_ce TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_ordinal TYPE f view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_release IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = i_name.
    DATA(t2) = i_abap.
    DATA(t3) = i_kernel.
    DATA(t4) = i_op.
    DATA(t5) = i_cloud_47cd.
    DATA(t6) = i_ce.
    DATA(t7) = i_ordinal.
    DATA(t8) = t1.
    me->zlnt_view_write_s_1c5bdde82d6c( p0 = t8 ).
    DATA(t9) = t2.
    me->zlnt_view_write_s_9f0d5e6a9751( p0 = t9 ).
    DATA(t10) = t3.
    me->zlnt_view_write_s_17980dd1b9e9( p0 = t10 ).
    DATA(t11) = t4.
    me->zlnt_view_write_s_6741cb650bf5( p0 = t11 ).
    DATA(t12) = t5.
    me->zlnt_view_write_s_cf49028d4c5d( p0 = t12 ).
    DATA(t13) = t6.
    me->zlnt_view_write_s_ac7ca543d863( p0 = t13 ).
    DATA(t14) = t7.
    me->zlnt_view_write_s_753c4bf35b18( p0 = t14 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1796_9050757ea7f7.
    ENDIF.
  ENDMETHOD.

  METHOD zif_lnt_union_0eeefcfe~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_view_read_sr_8e17f9b6728c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `name` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->name.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_1c5bdde82d6c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `name` p1 = t1 ).
    ELSE.
      me->name = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_82456ee3ad31.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `abap` ) ).
      result = t1.
    ELSE.
      result = me->abap.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_9f0d5e6a9751.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `abap` p1 = t1 ).
    ELSE.
      me->abap = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `abap` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abap`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_23378b5bffa7.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `kernel` ) ).
      result = t1.
    ELSE.
      result = me->kernel.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_17980dd1b9e9.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `kernel` p1 = t1 ).
    ELSE.
      me->kernel = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kernel` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kernel`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a3791bc526cc.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `op` ) ).
      result = t1.
    ELSE.
      result = me->op.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_6741cb650bf5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `op` p1 = t1 ).
    ELSE.
      me->op = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `op` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `op`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_5167a0bd6ff4.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `cloud` ) ).
      result = t1.
    ELSE.
      result = me->cloud_669f.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_cf49028d4c5d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `cloud` p1 = t1 ).
    ELSE.
      me->cloud_669f = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cloud` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `cloud`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_16388ffc3578.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ce` ) ).
      result = t1.
    ELSE.
      result = me->ce.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ac7ca543d863.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ce` p1 = t1 ).
    ELSE.
      me->ce = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ce` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ce`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_60d588ccf004.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ordinal` ) ).
      IF t1 IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
      ENDIF.
      result = t1->as_number( ).
    ELSE.
      result = me->ordinal.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_753c4bf35b18.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1->nval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ordinal` p1 = t1 ).
    ELSE.
      me->ordinal = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ordinal` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ordinal`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
    result = me->zlnt_view_source_36f3bf68b9b8.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.has: own-key metadata absent`.
    ENDIF.
    result = me->zlnt_view_ownkeys_b0e8086400eb->has( p0 ).
    IF result = abap_false AND me->zlnt_view_extras_47272813ead1 IS BOUND.
      result = me->zlnt_view_extras_47272813ead1->has( p0 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    DATA ignored TYPE abap_bool.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `name`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `abap`.
        CLEAR me->abap.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `kernel`.
        CLEAR me->kernel.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `op`.
        CLEAR me->op.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `cloud`.
        CLEAR me->cloud_669f.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `ce`.
        CLEAR me->ce.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `ordinal`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN OTHERS.
        ignored = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          ignored = me->zlnt_view_extras_47272813ead1->delete( p0 ).
        ENDIF.
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      ignored = me->zlnt_view_ownkeys_b0e8086400eb->delete( p0 ).
    ENDIF.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
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
        IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
        ENDIF.
        READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
        IF sy-subrc <> 0.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
        ENDIF.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/version.ts.ABAPRelease: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `name`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->name.
      WHEN `abap`.
        result = me->abap.
      WHEN `kernel`.
        result = me->kernel.
      WHEN `op`.
        result = me->op.
      WHEN `cloud`.
        result = me->cloud_669f.
      WHEN `ce`.
        result = me->ce.
      WHEN `ordinal`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        result->nval = me->ordinal.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/version.ts.ABAPRelease: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `name`.
        me->name = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
      WHEN `abap`.
        me->abap = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `abap`.
      WHEN `kernel`.
        me->kernel = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kernel`.
      WHEN `op`.
        me->op = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `op`.
      WHEN `cloud`.
        me->cloud_669f = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `cloud`.
      WHEN `ce`.
        me->ce = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ce`.
      WHEN `ordinal`.
        IF p1 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
        ENDIF.
        me->ordinal = p1->as_number( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ordinal`.
      WHEN OTHERS.
        IF p0 = `__proto__`.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: prototype mutation unavailable`.
        ENDIF.
        IF me->zlnt_view_extras_47272813ead1 IS NOT BOUND.
          me->zlnt_view_extras_47272813ead1 = NEW #( ).
          me->zlnt_view_extras_47272813ead1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        ENDIF.
        me->zlnt_view_extras_47272813ead1->put( p0 = p0 p1 = p1 ).
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = p0 p1 = VALUE #( ) ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t1 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
