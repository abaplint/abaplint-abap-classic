* TS: src/objects/domain.ts:24:22 shape.40c6b74800e68c619558e3d39bd8558bb3e030360fdfa8b92f9d1138f819969a
CLASS zcl_lnt_shape_b346f020 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA datatype_2b0f TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA length TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA decimals_29bf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA values TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA values_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_datatype_9e1e TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_length TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_values TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_values_translations TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_b346f020 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_description.
    DATA(t2) = i_datatype_9e1e.
    DATA(t3) = i_length.
    DATA(t4) = i_decimals_2eed.
    DATA(t5) = i_conversion_exit.
    DATA(t6) = i_values.
    DATA(t7) = i_values_translations.
    DATA(t8) = t1.
    me->description = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t9 ).
    ENDIF.
    DATA(t10) = |description|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    ENDIF.
    DATA(t12) = t2.
    me->datatype_2b0f = t12.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `datatype`.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `datatype` p1 = t13 ).
    ENDIF.
    DATA(t14) = |datatype|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    DATA(t16) = t3.
    me->length = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `length`.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `length` p1 = t17 ).
    ENDIF.
    DATA(t18) = |length|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA(t20) = t4.
    me->decimals_29bf = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `decimals`.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `decimals` p1 = t21 ).
    ENDIF.
    DATA(t22) = |decimals|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    ENDIF.
    DATA(t24) = t5.
    me->conversion_exit = t24.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conversionExit`.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `conversionExit` p1 = t25 ).
    ENDIF.
    DATA(t26) = |conversionExit|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA(t28) = t6.
    me->values = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `values`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `values` p1 = t29 ).
    ENDIF.
    DATA(t30) = |values|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = t7.
    me->values_translations = t32.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `valuesTranslations`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `valuesTranslations` p1 = t33 ).
    ENDIF.
    DATA(t34) = |valuesTranslations|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1880_9fa43a2872c1.
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
      WHEN `description`.
        CLEAR me->description.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `datatype`.
        CLEAR me->datatype_2b0f.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `length`.
        CLEAR me->length.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `decimals`.
        CLEAR me->decimals_29bf.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `conversionExit`.
        CLEAR me->conversion_exit.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `values`.
        CLEAR me->values.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `valuesTranslations`.
        CLEAR me->values_translations.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.40c6b74800e68c619558e3d39bd8558bb3e030360fdfa8b92f9d1138f819969a: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `description`.
        CLEAR result.
        IF me->description IS BOUND AND me->description->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->description->value.
        ENDIF.
      WHEN `datatype`.
        CLEAR result.
        IF me->datatype_2b0f IS BOUND AND me->datatype_2b0f->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->datatype_2b0f->value.
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
      WHEN `conversionExit`.
        CLEAR result.
        IF me->conversion_exit IS BOUND AND me->conversion_exit->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->conversion_exit->value.
        ENDIF.
      WHEN `values`.
        CLEAR result.
        IF me->values IS BOUND.
          CLEAR result.
          IF me->values IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->values.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->values.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->values.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `valuesTranslations`.
        CLEAR result.
        IF me->values_translations IS BOUND.
          CLEAR result.
          IF me->values_translations IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->values_translations.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->values_translations.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->values_translations.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.40c6b74800e68c619558e3d39bd8558bb3e030360fdfa8b92f9d1138f819969a: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `description`.
        CLEAR me->description.
        IF p1 IS BOUND.
          me->description = NEW #( ).
          me->description->has = abap_true.
          me->description->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
      WHEN `datatype`.
        CLEAR me->datatype_2b0f.
        IF p1 IS BOUND.
          me->datatype_2b0f = NEW #( ).
          me->datatype_2b0f->has = abap_true.
          me->datatype_2b0f->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `datatype`.
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
      WHEN `conversionExit`.
        CLEAR me->conversion_exit.
        IF p1 IS BOUND.
          me->conversion_exit = NEW #( ).
          me->conversion_exit->has = abap_true.
          me->conversion_exit->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conversionExit`.
      WHEN `values`.
        CLEAR me->values.
        IF p1 IS BOUND.
          CLEAR me->values.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->values ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->values.
              me->values->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->values->load( ).
            DATA t1 TYPE REF TO object.
            CLEAR t1.
            DATA t2 TYPE REF TO zcl_lnt_domain_value.
            CLEAR t2.
            LOOP AT me->values->items INTO t1.
              DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t3.
              CLEAR t2.
              IF t1 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t3 ?= t1.
                DATA t4 TYPE REF TO object.
                CLEAR t4.
                t4 = t3->as_ref( ).
                t2 ?= t4.
              ELSE.
                t2 ?= t1.
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `values`.
      WHEN `valuesTranslations`.
        CLEAR me->values_translations.
        IF p1 IS BOUND.
          CLEAR me->values_translations.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->values_translations ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->values_translations.
              me->values_translations->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->values_translations->load( ).
            DATA t5 TYPE REF TO object.
            CLEAR t5.
            DATA t6 TYPE REF TO zcl_lnt_dmn_vl_trnsltn.
            CLEAR t6.
            LOOP AT me->values_translations->items INTO t5.
              DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t7.
              CLEAR t6.
              IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t7 ?= t5.
                DATA t8 TYPE REF TO object.
                CLEAR t8.
                t8 = t7->as_ref( ).
                t6 ?= t8.
              ELSE.
                t6 ?= t5.
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `valuesTranslations`.
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
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t9 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
