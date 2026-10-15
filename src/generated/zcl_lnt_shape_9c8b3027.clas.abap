* TS: src/lsp/_interfaces.ts:17:12 shape.1e003f6e6bc6d18fc2b2a4d93745e440d869133b65e952b96fa85b5a5cd5dbc7
CLASS zcl_lnt_shape_9c8b3027 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA range TYPE REF TO zcl_lnt_range.
    DATA severity TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA code TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA code_description TYPE REF TO zcl_lnt_shape_88ee2c6c.
    DATA source TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA message_25cb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA tags TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA related_information TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA data_56cc TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_range OPTIONAL i_severity TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a OPTIONAL i_code TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_code_description TYPE REF TO
    zcl_lnt_shape_88ee2c6c OPTIONAL i_source_75cf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_message_26cb TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_tags TYPE REF TO zlnt_runtime_arra_595b0cb55f64 OPTIONAL
    i_related_information TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_9c8b3027 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_range.
    DATA(t2) = i_severity.
    DATA(t3) = i_code.
    DATA(t4) = i_code_description.
    DATA(t5) = i_source_75cf.
    DATA(t6) = i_message_26cb.
    DATA(t7) = i_tags.
    DATA(t8) = i_related_information.
    DATA(t9) = i_data_dc02.
    DATA t10 TYPE REF TO zcl_lnt_range.
    DATA(t11) = t1.
    t10 = t11.
    me->range = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `range`.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `range` p1 = t12 ).
    ENDIF.
    DATA(t13) = |range|.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t13 p1 = t14 ).
    ENDIF.
    DATA(t15) = t2.
    me->severity = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `severity` p1 = t16 ).
    ENDIF.
    DATA(t17) = |severity|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA(t19) = t3.
    me->code = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `code`.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `code` p1 = t20 ).
    ENDIF.
    DATA(t21) = |code|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
    ENDIF.
    DATA(t23) = t4.
    me->code_description = t23.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `codeDescription`.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `codeDescription` p1 = t24 ).
    ENDIF.
    DATA(t25) = |codeDescription|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
    ENDIF.
    DATA(t27) = t5.
    me->source = t27.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `source`.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `source` p1 = t28 ).
    ENDIF.
    DATA(t29) = |source|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t29 p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = t6.
    t31 = t32.
    me->message_25cb = t31.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `message`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `message` p1 = t33 ).
    ENDIF.
    DATA(t34) = |message|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = t7.
    me->tags = t36.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tags`.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t37 ).
    ENDIF.
    DATA(t38) = |tags|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = t8.
    me->related_information = t40.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `relatedInformation`.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `relatedInformation` p1 = t41 ).
    ENDIF.
    DATA(t42) = |relatedInformation|.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t42 p1 = t43 ).
    ENDIF.
    DATA(t44) = t9.
    me->data_56cc = t44.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `data` p1 = t45 ).
    ENDIF.
    DATA(t46) = |data|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1820_ab8d41c904da.
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
      WHEN `range`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `severity`.
        CLEAR me->severity.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `code`.
        CLEAR me->code.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `codeDescription`.
        CLEAR me->code_description.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `source`.
        CLEAR me->source.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `message`.
        CLEAR me->message_25cb.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `tags`.
        CLEAR me->tags.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `relatedInformation`.
        CLEAR me->related_information.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `data`.
        CLEAR me->data_56cc.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.1e003f6e6bc6d18fc2b2a4d93745e440d869133b65e952b96fa85b5a5cd5dbc7: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `range`.
        CLEAR result.
        IF me->range IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->range.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->range.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->range.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `severity`.
        CLEAR result.
        IF me->severity IS BOUND AND me->severity->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
          result->nval = me->severity->value.
          result->number_special = me->severity->number_special.
        ENDIF.
      WHEN `code`.
        CLEAR result.
        IF me->code IS BOUND.
          result = me->code.
        ENDIF.
      WHEN `codeDescription`.
        CLEAR result.
        IF me->code_description IS BOUND.
          CLEAR result.
          IF me->code_description IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->code_description.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->code_description.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->code_description.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `source`.
        CLEAR result.
        IF me->source IS BOUND AND me->source->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->source->value.
        ENDIF.
      WHEN `message`.
        result = me->message_25cb.
      WHEN `tags`.
        CLEAR result.
        IF me->tags IS BOUND.
          CLEAR result.
          IF me->tags IS BOUND.
            DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t5.
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            CLEAR t5.
            t6 = me->tags.
            TRY.
                result ?= t6.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t5 ?= me->tags.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t5 IS BOUND.
                result = t5->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->tags.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `relatedInformation`.
        CLEAR result.
        IF me->related_information IS BOUND.
          CLEAR result.
          IF me->related_information IS BOUND.
            DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t7.
            DATA t8 TYPE REF TO object.
            CLEAR t8.
            CLEAR t7.
            t8 = me->related_information.
            TRY.
                result ?= t8.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t7 ?= me->related_information.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t7 IS BOUND.
                result = t7->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->related_information.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `data`.
        CLEAR result.
        IF me->data_56cc IS BOUND.
          result = me->data_56cc.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.1e003f6e6bc6d18fc2b2a4d93745e440d869133b65e952b96fa85b5a5cd5dbc7: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `range`.
        CLEAR me->range.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->range ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->range IS NOT BOUND.
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
            DATA t2 TYPE REF TO zcl_lnt_no_position.
            CLEAR t2.
            DATA t3 TYPE REF TO zcl_lnt_no_position.
            CLEAR t3.
            me->range = NEW zcl_lnt_range( view_source = p1 i_start = t2 i_end = t3 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `range`.
      WHEN `severity`.
        CLEAR me->severity.
        IF p1 IS BOUND.
          me->severity = NEW #( ).
          me->severity->has = abap_true.
          IF p1 IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
          ENDIF.
          me->severity->value = p1->as_number( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
      WHEN `code`.
        CLEAR me->code.
        IF p1 IS BOUND.
          me->code = p1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `code`.
      WHEN `codeDescription`.
        CLEAR me->code_description.
        IF p1 IS BOUND.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          t4 = p1->as_ref( ).
          me->code_description ?= t4.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `codeDescription`.
      WHEN `source`.
        CLEAR me->source.
        IF p1 IS BOUND.
          me->source = NEW #( ).
          me->source->has = abap_true.
          me->source->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `source`.
      WHEN `message`.
        me->message_25cb = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `message`.
      WHEN `tags`.
        CLEAR me->tags.
        IF p1 IS BOUND.
          CLEAR me->tags.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->tags ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->tags.
              me->tags->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->tags->load( ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tags`.
      WHEN `relatedInformation`.
        CLEAR me->related_information.
        IF p1 IS BOUND.
          CLEAR me->related_information.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->related_information ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->related_information.
              me->related_information->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->related_information->load( ).
            DATA t5 TYPE REF TO object.
            CLEAR t5.
            DATA t6 TYPE REF TO zcl_lnt_shape_8306a8a1.
            CLEAR t6.
            LOOP AT me->related_information->items INTO t5.
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
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `relatedInformation`.
      WHEN `data`.
        CLEAR me->data_56cc.
        IF p1 IS BOUND.
          me->data_56cc = p1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
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
