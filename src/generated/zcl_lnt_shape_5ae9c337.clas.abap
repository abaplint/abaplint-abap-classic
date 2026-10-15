* TS: src/lsp/inlay_hints.ts:22:116 shape.eb76cf81dff4a9ad5a7d0fc610a84d91eeec112d91870db19bb6a66e815f7ea0
CLASS zcl_lnt_shape_5ae9c337 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA position_7b94 TYPE REF TO zcl_lnt_no_position.
    DATA label TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA kind TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA text_edits TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA tooltip TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA padding_left TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA padding_right TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA data_56cc TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_position_a3fd TYPE REF TO zcl_lnt_no_position OPTIONAL i_label TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_kind TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a OPTIONAL i_text_edits TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_tooltip TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_padding_left TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_padding_right TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL
    i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_5ae9c337 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_position_a3fd.
    DATA(t2) = i_label.
    DATA(t3) = i_kind.
    DATA(t4) = i_text_edits.
    DATA(t5) = i_tooltip.
    DATA(t6) = i_padding_left.
    DATA(t7) = i_padding_right.
    DATA(t8) = i_data_dc02.
    DATA t9 TYPE REF TO zcl_lnt_no_position.
    DATA(t10) = t1.
    t9 = t10.
    me->position_7b94 = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `position`.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `position` p1 = t11 ).
    ENDIF.
    DATA(t12) = |position|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = t2.
    t14 = t15.
    me->label = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `label`.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `label` p1 = t16 ).
    ENDIF.
    DATA(t17) = |label|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t17 p1 = t18 ).
    ENDIF.
    DATA(t19) = t3.
    me->kind = t19.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kind`.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `kind` p1 = t20 ).
    ENDIF.
    DATA(t21) = |kind|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
    ENDIF.
    DATA(t23) = t4.
    me->text_edits = t23.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textEdits`.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `textEdits` p1 = t24 ).
    ENDIF.
    DATA(t25) = |textEdits|.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t25 p1 = t26 ).
    ENDIF.
    DATA(t27) = t5.
    me->tooltip = t27.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tooltip`.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tooltip` p1 = t28 ).
    ENDIF.
    DATA(t29) = |tooltip|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t29 p1 = t30 ).
    ENDIF.
    DATA(t31) = t6.
    me->padding_left = t31.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `paddingLeft`.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `paddingLeft` p1 = t32 ).
    ENDIF.
    DATA(t33) = |paddingLeft|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
    ENDIF.
    DATA(t35) = t7.
    me->padding_right = t35.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `paddingRight`.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `paddingRight` p1 = t36 ).
    ENDIF.
    DATA(t37) = |paddingRight|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = t8.
    me->data_56cc = t39.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `data`.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `data` p1 = t40 ).
    ENDIF.
    DATA(t41) = |data|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1864_8f95fe7139ac.
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
      WHEN `position`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `label`.
        CLEAR me->label.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `kind`.
        CLEAR me->kind.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `textEdits`.
        CLEAR me->text_edits.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `tooltip`.
        CLEAR me->tooltip.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `paddingLeft`.
        CLEAR me->padding_left.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `paddingRight`.
        CLEAR me->padding_right.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.eb76cf81dff4a9ad5a7d0fc610a84d91eeec112d91870db19bb6a66e815f7ea0: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `position`.
        CLEAR result.
        IF me->position_7b94 IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->position_7b94.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->position_7b94.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->position_7b94.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `label`.
        result = me->label.
      WHEN `kind`.
        CLEAR result.
        IF me->kind IS BOUND AND me->kind->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
          result->nval = me->kind->value.
          result->number_special = me->kind->number_special.
        ENDIF.
      WHEN `textEdits`.
        CLEAR result.
        IF me->text_edits IS BOUND.
          CLEAR result.
          IF me->text_edits IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->text_edits.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->text_edits.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->text_edits.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `tooltip`.
        CLEAR result.
        IF me->tooltip IS BOUND.
          result = me->tooltip.
        ENDIF.
      WHEN `paddingLeft`.
        CLEAR result.
        IF me->padding_left IS BOUND AND me->padding_left->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->padding_left->value.
        ENDIF.
      WHEN `paddingRight`.
        CLEAR result.
        IF me->padding_right IS BOUND AND me->padding_right->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->padding_right->value.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.eb76cf81dff4a9ad5a7d0fc610a84d91eeec112d91870db19bb6a66e815f7ea0: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `position`.
        CLEAR me->position_7b94.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->position_7b94 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->position_7b94 IS NOT BOUND.
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
            DATA(t2) = VALUE f( ).
            DATA t3 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t3.
            me->position_7b94 = NEW zcl_lnt_no_position( view_source = p1 i_line = t2 i_character = t3 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `position`.
      WHEN `label`.
        me->label = p1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `label`.
      WHEN `kind`.
        CLEAR me->kind.
        IF p1 IS BOUND.
          me->kind = NEW #( ).
          me->kind->has = abap_true.
          IF p1 IS NOT BOUND.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
          ENDIF.
          me->kind->value = p1->as_number( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kind`.
      WHEN `textEdits`.
        CLEAR me->text_edits.
        IF p1 IS BOUND.
          CLEAR me->text_edits.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->text_edits ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->text_edits.
              me->text_edits->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->text_edits->load( ).
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            DATA t5 TYPE REF TO zcl_lnt_text_edit.
            CLEAR t5.
            LOOP AT me->text_edits->items INTO t4.
              DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t6.
              CLEAR t5.
              IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t6 ?= t4.
                DATA t7 TYPE REF TO object.
                CLEAR t7.
                t7 = t6->as_ref( ).
                t5 ?= t7.
              ELSE.
                t5 ?= t4.
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `textEdits`.
      WHEN `tooltip`.
        CLEAR me->tooltip.
        IF p1 IS BOUND.
          me->tooltip = p1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tooltip`.
      WHEN `paddingLeft`.
        CLEAR me->padding_left.
        IF p1 IS BOUND.
          me->padding_left = NEW #( ).
          me->padding_left->has = abap_true.
          me->padding_left->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `paddingLeft`.
      WHEN `paddingRight`.
        CLEAR me->padding_right.
        IF p1 IS BOUND.
          me->padding_right = NEW #( ).
          me->padding_right->has = abap_true.
          me->padding_right->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `paddingRight`.
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
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t8 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
