* TS: src/registry.ts:21:27 shape.d184d639b396286a74f614f4fc726acfc24441b4971c69640385ddf95d828f31
CLASS zcl_lnt_shape_c89a2931 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA runtime TYPE f.
    DATA name TYPE string.
    DATA extra TYPE string.
    METHODS constructor IMPORTING i_runtime TYPE f i_name TYPE string i_extra TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c89a2931 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_runtime.
    DATA(t2) = i_name.
    DATA(t3) = i_extra.
    DATA(t4) = t1.
    me->runtime = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runtime`.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `runtime` p1 = t5 ).
    ENDIF.
    DATA(t6) = |runtime|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t6 p1 = t7 ).
    ENDIF.
    DATA(t8) = t2.
    me->name = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t9 ).
    ENDIF.
    DATA(t10) = |name|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    ENDIF.
    DATA(t12) = t3.
    me->extra = t12.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `extra`.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extra` p1 = t13 ).
    ENDIF.
    DATA(t14) = |extra|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1907_f90e33e583f4.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
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
    CASE p0.
      WHEN `runtime`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `name`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `extra`.
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
    DATA(t1) = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
      ENDIF.
      READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.d184d639b396286a74f614f4fc726acfc24441b4971c69640385ddf95d828f31: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `runtime`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        result->nval = me->runtime.
      WHEN `name`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->name.
      WHEN `extra`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->extra.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.d184d639b396286a74f614f4fc726acfc24441b4971c69640385ddf95d828f31: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `runtime`.
        IF p1 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
        ENDIF.
        me->runtime = p1->as_number( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runtime`.
      WHEN `name`.
        me->name = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `name`.
      WHEN `extra`.
        me->extra = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `extra`.
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
