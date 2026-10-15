* TS: src/ddic.ts:353:28 shape.7243dfca51cf8c5dec40cbf1591a94c7ad402e62a1b95a78c81781f8edae8c67
CLASS zcl_lnt_shape_4a88086c DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA length TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA decimals_29bf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA info_text TYPE string.
    DATA qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ddic_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_length TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_info_text TYPE
    string i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ddic_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_4a88086c IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_text.
    DATA(t2) = i_length.
    DATA(t3) = i_decimals_2eed.
    DATA(t4) = i_info_text.
    DATA(t5) = i_qualified_name.
    DATA(t6) = i_conversion_exit.
    DATA(t7) = i_ddic_name.
    DATA(t8) = i_description.
    DATA(t9) = t1.
    me->text = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `text`.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `text` p1 = t10 ).
    ENDIF.
    DATA(t11) = |text|.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t11 p1 = t12 ).
    ENDIF.
    DATA(t13) = t2.
    me->length = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `length`.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t14 ).
    ENDIF.
    DATA(t15) = |length|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    DATA(t17) = t3.
    me->decimals_29bf = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t18 ).
    ENDIF.
    DATA(t19) = |decimals|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    DATA(t21) = t4.
    me->info_text = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `infoText`.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `infoText` p1 = t22 ).
    ENDIF.
    DATA(t23) = |infoText|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
    ENDIF.
    DATA(t25) = t5.
    me->qualified_name = t25.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `qualifiedName`.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t26 ).
    ENDIF.
    DATA(t27) = |qualifiedName|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    DATA(t29) = t6.
    me->conversion_exit = t29.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conversionExit`.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t30 ).
    ENDIF.
    DATA(t31) = |conversionExit|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA(t33) = t7.
    me->ddic_name = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddicName`.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ddicName` p1 = t34 ).
    ENDIF.
    DATA(t35) = |ddicName|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    DATA(t37) = t8.
    me->description = t37.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t38 ).
    ENDIF.
    DATA(t39) = |description|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1857_153ec7bf7a02.
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
      WHEN `text`.
        CLEAR me->text.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `length`.
        CLEAR me->length.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `decimals`.
        CLEAR me->decimals_29bf.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `infoText`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `qualifiedName`.
        CLEAR me->qualified_name.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `conversionExit`.
        CLEAR me->conversion_exit.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `ddicName`.
        CLEAR me->ddic_name.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `description`.
        CLEAR me->description.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.7243dfca51cf8c5dec40cbf1591a94c7ad402e62a1b95a78c81781f8edae8c67: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `text`.
        CLEAR result.
        IF me->text IS BOUND AND me->text->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->text->value.
        ENDIF.
      WHEN `length`.
        CLEAR result.
        IF me->length IS BOUND AND me->length->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->length->value.
        ENDIF.
      WHEN `decimals`.
        CLEAR result.
        IF me->decimals_29bf IS BOUND AND me->decimals_29bf->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->decimals_29bf->value.
        ENDIF.
      WHEN `infoText`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->info_text.
      WHEN `qualifiedName`.
        CLEAR result.
        IF me->qualified_name IS BOUND AND me->qualified_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->qualified_name->value.
        ENDIF.
      WHEN `conversionExit`.
        CLEAR result.
        IF me->conversion_exit IS BOUND AND me->conversion_exit->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->conversion_exit->value.
        ENDIF.
      WHEN `ddicName`.
        CLEAR result.
        IF me->ddic_name IS BOUND AND me->ddic_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->ddic_name->value.
        ENDIF.
      WHEN `description`.
        CLEAR result.
        IF me->description IS BOUND AND me->description->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->description->value.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.7243dfca51cf8c5dec40cbf1591a94c7ad402e62a1b95a78c81781f8edae8c67: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `text`.
        CLEAR me->text.
        IF p1 IS BOUND.
          me->text = NEW #( ).
          me->text->has = abap_true.
          me->text->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `text`.
      WHEN `length`.
        CLEAR me->length.
        IF p1 IS BOUND.
          me->length = NEW #( ).
          me->length->has = abap_true.
          me->length->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `length`.
      WHEN `decimals`.
        CLEAR me->decimals_29bf.
        IF p1 IS BOUND.
          me->decimals_29bf = NEW #( ).
          me->decimals_29bf->has = abap_true.
          me->decimals_29bf->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
      WHEN `infoText`.
        me->info_text = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `infoText`.
      WHEN `qualifiedName`.
        CLEAR me->qualified_name.
        IF p1 IS BOUND.
          me->qualified_name = NEW #( ).
          me->qualified_name->has = abap_true.
          me->qualified_name->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `qualifiedName`.
      WHEN `conversionExit`.
        CLEAR me->conversion_exit.
        IF p1 IS BOUND.
          me->conversion_exit = NEW #( ).
          me->conversion_exit->has = abap_true.
          me->conversion_exit->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conversionExit`.
      WHEN `ddicName`.
        CLEAR me->ddic_name.
        IF p1 IS BOUND.
          me->ddic_name = NEW #( ).
          me->ddic_name->has = abap_true.
          me->ddic_name->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ddicName`.
      WHEN `description`.
        CLEAR me->description.
        IF p1 IS BOUND.
          me->description = NEW #( ).
          me->description->has = abap_true.
          me->description->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
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
