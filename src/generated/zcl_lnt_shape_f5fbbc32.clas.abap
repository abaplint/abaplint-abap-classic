* TS: src/lsp/help.ts:96:11 shape.e9cac9a1f10a70fded8df3b3345d23b6746461b35e27114d3d0f13026fca6134
CLASS zcl_lnt_shape_f5fbbc32 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA class_definitions TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA class_implementations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA interface_definitions TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA forms TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_class_definitions TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_class_implementations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_interface_definitions TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_forms TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_f5fbbc32 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_class_definitions.
    DATA(t2) = i_class_implementations.
    DATA(t3) = i_interface_definitions.
    DATA(t4) = i_forms.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6.
    me->class_definitions = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `classDefinitions`.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classDefinitions` p1 = t7 ).
    ENDIF.
    DATA(t8) = |classDefinitions|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t8 p1 = t9 ).
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t2.
    t10 = t11.
    me->class_implementations = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `classImplementations`.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `classImplementations` p1 = t12 ).
    ENDIF.
    DATA(t13) = |classImplementations|.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t13 p1 = t14 ).
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t16) = t3.
    t15 = t16.
    me->interface_definitions = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `interfaceDefinitions`.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `interfaceDefinitions` p1 = t17 ).
    ENDIF.
    DATA(t18) = |interfaceDefinitions|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t21) = t4.
    t20 = t21.
    me->forms = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `forms`.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t22 ).
    ENDIF.
    DATA(t23) = |forms|.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t23 p1 = t24 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d2000_c7cc4c0318af.
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
      WHEN `classDefinitions`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `classImplementations`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `interfaceDefinitions`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `forms`.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.e9cac9a1f10a70fded8df3b3345d23b6746461b35e27114d3d0f13026fca6134: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `classDefinitions`.
        CLEAR result.
        IF me->class_definitions IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->class_definitions.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->class_definitions.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->class_definitions.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `classImplementations`.
        CLEAR result.
        IF me->class_implementations IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->class_implementations.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->class_implementations.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->class_implementations.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `interfaceDefinitions`.
        CLEAR result.
        IF me->interface_definitions IS BOUND.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t5.
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          CLEAR t5.
          t6 = me->interface_definitions.
          TRY.
              result ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t5 ?= me->interface_definitions.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t5 IS BOUND.
              result = t5->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->interface_definitions.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `forms`.
        CLEAR result.
        IF me->forms IS BOUND.
          DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t7.
          DATA t8 TYPE REF TO object.
          CLEAR t8.
          CLEAR t7.
          t8 = me->forms.
          TRY.
              result ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t7 ?= me->forms.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t7 IS BOUND.
              result = t7->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->forms.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.e9cac9a1f10a70fded8df3b3345d23b6746461b35e27114d3d0f13026fca6134: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `classDefinitions`.
        CLEAR me->class_definitions.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->class_definitions ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->class_definitions.
            me->class_definitions->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->class_definitions->load( ).
          DATA t1 TYPE REF TO object.
          CLEAR t1.
          DATA t2 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t2.
          LOOP AT me->class_definitions->items INTO t1.
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
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `classDefinitions`.
      WHEN `classImplementations`.
        CLEAR me->class_implementations.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->class_implementations ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->class_implementations.
            me->class_implementations->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->class_implementations->load( ).
          DATA t5 TYPE REF TO object.
          CLEAR t5.
          DATA t6 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
          CLEAR t6.
          LOOP AT me->class_implementations->items INTO t5.
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
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `classImplementations`.
      WHEN `interfaceDefinitions`.
        CLEAR me->interface_definitions.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->interface_definitions ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->interface_definitions.
            me->interface_definitions->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->interface_definitions->load( ).
          DATA t9 TYPE REF TO object.
          CLEAR t9.
          DATA t10 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
          CLEAR t10.
          LOOP AT me->interface_definitions->items INTO t9.
            DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t11.
            CLEAR t10.
            IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t11 ?= t9.
              DATA t12 TYPE REF TO object.
              CLEAR t12.
              t12 = t11->as_ref( ).
              t10 ?= t12.
            ELSE.
              t10 ?= t9.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `interfaceDefinitions`.
      WHEN `forms`.
        CLEAR me->forms.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->forms ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->forms.
            me->forms->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->forms->load( ).
          DATA t13 TYPE REF TO object.
          CLEAR t13.
          DATA t14 TYPE REF TO zcl_lnt_info_form_definition.
          CLEAR t14.
          LOOP AT me->forms->items INTO t13.
            DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t15.
            CLEAR t14.
            IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t15 ?= t13.
              DATA t16 TYPE REF TO object.
              CLEAR t16.
              t16 = t15->as_ref( ).
              t14 ?= t16.
            ELSE.
              t14 ?= t13.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `forms`.
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
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t17 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
