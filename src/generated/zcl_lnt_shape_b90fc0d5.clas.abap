* TS: src/objects/table.ts:36:23 shape.289f1b83202e401ffba0a9de03ef4554e08cee163782f479b116c03805984cf2
CLASS zcl_lnt_shape_b90fc0d5 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA table_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA data_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA delivery_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA size_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA enhancement_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA secondary_indexes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA fields_464c TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_table_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_data_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_delivery_class TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_size_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_enhancement_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_secondary_indexes TYPE
    REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_b90fc0d5 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_table_category.
    DATA(t2) = i_data_class.
    DATA(t3) = i_delivery_class.
    DATA(t4) = i_size_category.
    DATA(t5) = i_enhancement_category.
    DATA(t6) = i_description.
    DATA(t7) = i_secondary_indexes.
    DATA(t8) = i_fields_62af.
    DATA(t9) = t1.
    me->table_category = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tableCategory`.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tableCategory` p1 = t10 ).
    ENDIF.
    DATA(t11) = |tableCategory|.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t11 p1 = t12 ).
    ENDIF.
    DATA(t13) = t2.
    me->data_class = t13.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dataClass`.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `dataClass` p1 = t14 ).
    ENDIF.
    DATA(t15) = |dataClass|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    DATA(t17) = t3.
    me->delivery_class = t17.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deliveryClass`.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deliveryClass` p1 = t18 ).
    ENDIF.
    DATA(t19) = |deliveryClass|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t19 p1 = t20 ).
    ENDIF.
    DATA(t21) = t4.
    me->size_category = t21.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sizeCategory`.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sizeCategory` p1 = t22 ).
    ENDIF.
    DATA(t23) = |sizeCategory|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
    ENDIF.
    DATA(t25) = t5.
    me->enhancement_category = t25.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `enhancementCategory`.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `enhancementCategory` p1 = t26 ).
    ENDIF.
    DATA(t27) = |enhancementCategory|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
    ENDIF.
    DATA(t29) = t6.
    me->description = t29.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t30 ).
    ENDIF.
    DATA(t31) = |description|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA(t33) = t7.
    me->secondary_indexes = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `secondaryIndexes`.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondaryIndexes` p1 = t34 ).
    ENDIF.
    DATA(t35) = |secondaryIndexes|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t38) = t8.
    t37 = t38.
    me->fields_464c = t37.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fields`.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `fields` p1 = t39 ).
    ENDIF.
    DATA(t40) = |fields|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1897_317a256d70ff.
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
      WHEN `tableCategory`.
        CLEAR me->table_category.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `dataClass`.
        CLEAR me->data_class.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `deliveryClass`.
        CLEAR me->delivery_class.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `sizeCategory`.
        CLEAR me->size_category.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `enhancementCategory`.
        CLEAR me->enhancement_category.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `description`.
        CLEAR me->description.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `secondaryIndexes`.
        CLEAR me->secondary_indexes.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `fields`.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.289f1b83202e401ffba0a9de03ef4554e08cee163782f479b116c03805984cf2: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `tableCategory`.
        CLEAR result.
        IF me->table_category IS BOUND AND me->table_category->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->table_category->value.
        ENDIF.
      WHEN `dataClass`.
        CLEAR result.
        IF me->data_class IS BOUND AND me->data_class->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->data_class->value.
        ENDIF.
      WHEN `deliveryClass`.
        CLEAR result.
        IF me->delivery_class IS BOUND AND me->delivery_class->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->delivery_class->value.
        ENDIF.
      WHEN `sizeCategory`.
        CLEAR result.
        IF me->size_category IS BOUND AND me->size_category->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->size_category->value.
        ENDIF.
      WHEN `enhancementCategory`.
        CLEAR result.
        IF me->enhancement_category IS BOUND AND me->enhancement_category->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->enhancement_category->value.
        ENDIF.
      WHEN `description`.
        CLEAR result.
        IF me->description IS BOUND AND me->description->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->description->value.
        ENDIF.
      WHEN `secondaryIndexes`.
        CLEAR result.
        IF me->secondary_indexes IS BOUND.
          CLEAR result.
          IF me->secondary_indexes IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->secondary_indexes.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->secondary_indexes.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->secondary_indexes.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `fields`.
        CLEAR result.
        IF me->fields_464c IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->fields_464c.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->fields_464c.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->fields_464c.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.289f1b83202e401ffba0a9de03ef4554e08cee163782f479b116c03805984cf2: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `tableCategory`.
        CLEAR me->table_category.
        IF p1 IS BOUND.
          me->table_category = NEW #( ).
          me->table_category->has = abap_true.
          me->table_category->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tableCategory`.
      WHEN `dataClass`.
        CLEAR me->data_class.
        IF p1 IS BOUND.
          me->data_class = NEW #( ).
          me->data_class->has = abap_true.
          me->data_class->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dataClass`.
      WHEN `deliveryClass`.
        CLEAR me->delivery_class.
        IF p1 IS BOUND.
          me->delivery_class = NEW #( ).
          me->delivery_class->has = abap_true.
          me->delivery_class->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deliveryClass`.
      WHEN `sizeCategory`.
        CLEAR me->size_category.
        IF p1 IS BOUND.
          me->size_category = NEW #( ).
          me->size_category->has = abap_true.
          me->size_category->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sizeCategory`.
      WHEN `enhancementCategory`.
        CLEAR me->enhancement_category.
        IF p1 IS BOUND.
          me->enhancement_category = NEW #( ).
          me->enhancement_category->has = abap_true.
          me->enhancement_category->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `enhancementCategory`.
      WHEN `description`.
        CLEAR me->description.
        IF p1 IS BOUND.
          me->description = NEW #( ).
          me->description->has = abap_true.
          me->description->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `description`.
      WHEN `secondaryIndexes`.
        CLEAR me->secondary_indexes.
        IF p1 IS BOUND.
          CLEAR me->secondary_indexes.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->secondary_indexes ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->secondary_indexes.
              me->secondary_indexes->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->secondary_indexes->load( ).
            DATA t1 TYPE REF TO object.
            CLEAR t1.
            DATA t2 TYPE REF TO zcl_lnt_secondary_index.
            CLEAR t2.
            LOOP AT me->secondary_indexes->items INTO t1.
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
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `secondaryIndexes`.
      WHEN `fields`.
        CLEAR me->fields_464c.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->fields_464c ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->fields_464c.
            me->fields_464c->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->fields_464c->load( ).
          DATA t5 TYPE REF TO object.
          CLEAR t5.
          DATA t6 TYPE REF TO zcl_lnt_shape_e534171c.
          CLEAR t6.
          LOOP AT me->fields_464c->items INTO t5.
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
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fields`.
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
