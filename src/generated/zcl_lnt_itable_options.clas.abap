* TS: src/abap/types/basic/table_type.ts:24:1 ITableOptions
CLASS zcl_lnt_itable_options DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    DATA zlnt_view_source_36f3bf68b9b8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_ec4602663c93 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_44614e0bf300 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_79d5aa355dd3 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_96b996414e76 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_48b89cc62ab9 RETURNING VALUE(result) TYPE REF TO zcl_lnt_itable_key.
    METHODS zlnt_view_write_s_d45d7a8c8e19 IMPORTING p0 TYPE REF TO zcl_lnt_itable_key.
    METHODS zlnt_view_read_sr_f853e12e05a7 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_view_write_s_d02ea76e203d IMPORTING p0 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA with_header TYPE abap_bool.
    DATA key_type TYPE string.
    DATA primary_key TYPE REF TO zcl_lnt_itable_key.
    DATA secondary TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_with_header TYPE abap_bool i_key_type TYPE string i_primary_key TYPE REF TO zcl_lnt_itable_key OPTIONAL i_secondary TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL view_source TYPE REF TO
    zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_itable_options IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = i_with_header.
    DATA(t2) = i_key_type.
    DATA(t3) = i_primary_key.
    DATA(t4) = i_secondary.
    DATA(t5) = t1.
    me->zlnt_view_write_s_44614e0bf300( p0 = t5 ).
    DATA(t6) = t2.
    me->zlnt_view_write_s_96b996414e76( p0 = t6 ).
    DATA(t7) = t3.
    me->zlnt_view_write_s_d45d7a8c8e19( p0 = t7 ).
    DATA(t8) = t4.
    me->zlnt_view_write_s_d02ea76e203d( p0 = t8 ).
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
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1845_f4109fc9ef62.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_ec4602663c93.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `withHeader` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->with_header.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_44614e0bf300.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `withHeader` p1 = t1 ).
    ELSE.
      me->with_header = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `withHeader`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_79d5aa355dd3.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `keyType` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->key_type.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_96b996414e76.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `keyType` p1 = t1 ).
    ELSE.
      me->key_type = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keyType`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_48b89cc62ab9.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `primaryKey` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF result IS NOT BOUND.
            IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t2.
              IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t2 ?= t1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t2->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t3) = VALUE string( ).
            DATA(t4) = VALUE string( ).
            DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t5.
            DATA(t6) = VALUE abap_bool( ).
            result = NEW zcl_lnt_itable_key( view_source = t1 i_name = t3 i_type_9913 = t4 i_key_fields = t5 i_is_unique = t6 ).
          ENDIF.
        ENDIF.
      ENDIF.
    ELSE.
      result = me->primary_key.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d45d7a8c8e19.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `primaryKey` p1 = t1 ).
    ELSE.
      me->primary_key = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `primaryKey` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `primaryKey`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_f853e12e05a7.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `secondary` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        CLEAR result.
        IF t1 IS BOUND.
          IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                result ?= t1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT result.
            result->source = t1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          result->load( ).
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          DATA t3 TYPE REF TO zcl_lnt_itable_key.
          CLEAR t3.
          LOOP AT result->items INTO t2.
            DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t4.
            CLEAR t3.
            IF t2 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t4 ?= t2.
              CLEAR t3.
              IF t4 IS BOUND.
                IF t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t3 ?= t4->oval.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                ENDIF.
                IF t3 IS NOT BOUND.
                  IF t4->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t5.
                    IF t4->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                    ENDIF.
                    TRY.
                        t5 ?= t4->oval.
                      CATCH cx_sy_move_cast_error.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                    ENDTRY.
                    IF t5->structural( ) <> abap_true.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                    ENDIF.
                  ENDIF.
                  DATA(t6) = VALUE string( ).
                  DATA(t7) = VALUE string( ).
                  DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t8.
                  DATA(t9) = VALUE abap_bool( ).
                  t3 = NEW zcl_lnt_itable_key( view_source = t4 i_name = t6 i_type_9913 = t7 i_key_fields = t8 i_is_unique = t9 ).
                ENDIF.
              ENDIF.
            ELSE.
              t3 ?= t2.
            ENDIF.
          ENDLOOP.
        ENDIF.
      ENDIF.
    ELSE.
      result = me->secondary.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d02ea76e203d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        CLEAR t1.
        IF p0 IS BOUND.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          DATA t3 TYPE REF TO object.
          CLEAR t3.
          CLEAR t2.
          t3 = p0.
          TRY.
              t1 ?= t3.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1 IS NOT BOUND.
            TRY.
                t2 ?= p0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t2 IS BOUND.
              t1 = t2->source( ).
            ENDIF.
            IF t1 IS NOT BOUND.
              CREATE OBJECT t1.
              t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t1->oval = p0.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `secondary` p1 = t1 ).
    ELSE.
      me->secondary = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondary` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `secondary`.
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
      WHEN `withHeader`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `keyType`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `primaryKey`.
        CLEAR me->primary_key.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `secondary`.
        CLEAR me->secondary.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/abap/types/basic/table_type.ts.ITableOptions: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `withHeader`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->with_header.
      WHEN `keyType`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->key_type.
      WHEN `primaryKey`.
        CLEAR result.
        IF me->primary_key IS BOUND.
          CLEAR result.
          IF me->primary_key IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->primary_key.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->primary_key.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->primary_key.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `secondary`.
        CLEAR result.
        IF me->secondary IS BOUND.
          CLEAR result.
          IF me->secondary IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->secondary.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->secondary.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->secondary.
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
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/abap/types/basic/table_type.ts.ITableOptions: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `withHeader`.
        me->with_header = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `withHeader`.
      WHEN `keyType`.
        me->key_type = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `keyType`.
      WHEN `primaryKey`.
        CLEAR me->primary_key.
        IF p1 IS BOUND.
          CLEAR me->primary_key.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->primary_key ?= p1->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF me->primary_key IS NOT BOUND.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t1.
                IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t1 ?= p1->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t1->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t2) = VALUE string( ).
              DATA(t3) = VALUE string( ).
              DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t4.
              DATA(t5) = VALUE abap_bool( ).
              me->primary_key = NEW zcl_lnt_itable_key( view_source = p1 i_name = t2 i_type_9913 = t3 i_key_fields = t4 i_is_unique = t5 ).
            ENDIF.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `primaryKey`.
      WHEN `secondary`.
        CLEAR me->secondary.
        IF p1 IS BOUND.
          CLEAR me->secondary.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->secondary ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->secondary.
              me->secondary->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->secondary->load( ).
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            DATA t7 TYPE REF TO zcl_lnt_itable_key.
            CLEAR t7.
            LOOP AT me->secondary->items INTO t6.
              DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t8.
              CLEAR t7.
              IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t8 ?= t6.
                CLEAR t7.
                IF t8 IS BOUND.
                  IF t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    TRY.
                        t7 ?= t8->oval.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                  ENDIF.
                  IF t7 IS NOT BOUND.
                    IF t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
                      CLEAR t9.
                      IF t8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                      ENDIF.
                      TRY.
                          t9 ?= t8->oval.
                        CATCH cx_sy_move_cast_error.
                          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                      ENDTRY.
                      IF t9->structural( ) <> abap_true.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                      ENDIF.
                    ENDIF.
                    DATA(t10) = VALUE string( ).
                    DATA(t11) = VALUE string( ).
                    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t12.
                    DATA(t13) = VALUE abap_bool( ).
                    t7 = NEW zcl_lnt_itable_key( view_source = t8 i_name = t10 i_type_9913 = t11 i_key_fields = t12 i_is_unique = t13 ).
                  ENDIF.
                ENDIF.
              ELSE.
                t7 ?= t6.
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `secondary`.
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
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t14 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
