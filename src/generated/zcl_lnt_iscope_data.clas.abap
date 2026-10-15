* TS: src/abap/5_syntax/_spaghetti_scope.ts:30:1 IScopeData
CLASS zcl_lnt_iscope_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA vars TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA types TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA extra_like_types TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
    DATA deferred TYPE REF TO zlnt_runtime_map__f9d623f88b73.
    DATA cdefs TYPE REF TO zlnt_runtime_map__3d720b31a8f8.
    DATA idefs TYPE REF TO zlnt_runtime_map__0fbcc10173b8.
    DATA forms TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA references TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA sql_conversion TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_vars TYPE REF TO zlnt_runtime_map__126b79e3f8a9 i_types TYPE REF TO zlnt_runtime_map__126b79e3f8a9 i_extra_like_types TYPE REF TO zlnt_runtime_map__126b79e3f8a9 i_deferred TYPE REF TO
    zlnt_runtime_map__f9d623f88b73 i_cdefs TYPE REF TO zlnt_runtime_map__3d720b31a8f8 i_idefs TYPE REF TO zlnt_runtime_map__0fbcc10173b8 i_forms TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_references TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 i_sql_conversion TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iscope_data IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_vars.
    DATA(t2) = i_types.
    DATA(t3) = i_extra_like_types.
    DATA(t4) = i_deferred.
    DATA(t5) = i_cdefs.
    DATA(t6) = i_idefs.
    DATA(t7) = i_forms.
    DATA(t8) = i_references.
    DATA(t9) = i_sql_conversion.
    DATA(t10) = t1.
    me->vars = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `vars`.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `vars` p1 = t11 ).
    ENDIF.
    DATA(t12) = |vars|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    DATA(t14) = t2.
    me->types = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `types` p1 = t15 ).
    ENDIF.
    DATA(t16) = |types|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    DATA(t18) = t3.
    me->extra_like_types = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `extraLikeTypes`.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extraLikeTypes` p1 = t19 ).
    ENDIF.
    DATA(t20) = |extraLikeTypes|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    DATA(t22) = t4.
    me->deferred = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deferred`.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `deferred` p1 = t23 ).
    ENDIF.
    DATA(t24) = |deferred|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    DATA(t26) = t5.
    me->cdefs = t26.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `cdefs`.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cdefs` p1 = t27 ).
    ENDIF.
    DATA(t28) = |cdefs|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = t6.
    me->idefs = t30.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `idefs`.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `idefs` p1 = t31 ).
    ENDIF.
    DATA(t32) = |idefs|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = t7.
    me->forms = t34.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `forms`.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `forms` p1 = t35 ).
    ENDIF.
    DATA(t36) = |forms|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = t8.
    me->references = t38.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `references`.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `references` p1 = t39 ).
    ENDIF.
    DATA(t40) = |references|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    DATA(t42) = t9.
    me->sql_conversion = t42.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sqlConversion`.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sqlConversion` p1 = t43 ).
    ENDIF.
    DATA(t44) = |sqlConversion|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d779_cf6576662153.
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
      WHEN `vars`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `types`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `extraLikeTypes`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `deferred`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `cdefs`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `idefs`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `forms`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `references`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `sqlConversion`.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/abap/5_syntax/_spaghetti_scope.ts.IScopeData: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `vars`.
        CLEAR result.
        IF me->vars IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->vars.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->vars.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->vars.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `types`.
        CLEAR result.
        IF me->types IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->types.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->types.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->types.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `extraLikeTypes`.
        CLEAR result.
        IF me->extra_like_types IS BOUND.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t5.
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          CLEAR t5.
          t6 = me->extra_like_types.
          TRY.
              result ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t5 ?= me->extra_like_types.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t5 IS BOUND.
              result = t5->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->extra_like_types.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `deferred`.
        CLEAR result.
        IF me->deferred IS BOUND.
          DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t7.
          DATA t8 TYPE REF TO object.
          CLEAR t8.
          CLEAR t7.
          t8 = me->deferred.
          TRY.
              result ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t7 ?= me->deferred.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t7 IS BOUND.
              result = t7->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->deferred.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `cdefs`.
        CLEAR result.
        IF me->cdefs IS BOUND.
          DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t9.
          DATA t10 TYPE REF TO object.
          CLEAR t10.
          CLEAR t9.
          t10 = me->cdefs.
          TRY.
              result ?= t10.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t9 ?= me->cdefs.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t9 IS BOUND.
              result = t9->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->cdefs.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `idefs`.
        CLEAR result.
        IF me->idefs IS BOUND.
          DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t11.
          DATA t12 TYPE REF TO object.
          CLEAR t12.
          CLEAR t11.
          t12 = me->idefs.
          TRY.
              result ?= t12.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t11 ?= me->idefs.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t11 IS BOUND.
              result = t11->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->idefs.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `forms`.
        CLEAR result.
        IF me->forms IS BOUND.
          DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t13.
          DATA t14 TYPE REF TO object.
          CLEAR t14.
          CLEAR t13.
          t14 = me->forms.
          TRY.
              result ?= t14.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t13 ?= me->forms.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t13 IS BOUND.
              result = t13->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->forms.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `references`.
        CLEAR result.
        IF me->references IS BOUND.
          DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t15.
          DATA t16 TYPE REF TO object.
          CLEAR t16.
          CLEAR t15.
          t16 = me->references.
          TRY.
              result ?= t16.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t15 ?= me->references.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t15 IS BOUND.
              result = t15->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->references.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `sqlConversion`.
        CLEAR result.
        IF me->sql_conversion IS BOUND.
          DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t17.
          DATA t18 TYPE REF TO object.
          CLEAR t18.
          CLEAR t17.
          t18 = me->sql_conversion.
          TRY.
              result ?= t18.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t17 ?= me->sql_conversion.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t17 IS BOUND.
              result = t17->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->sql_conversion.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/abap/5_syntax/_spaghetti_scope.ts.IScopeData: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `vars`.
        DATA t1 TYPE REF TO object.
        CLEAR t1.
        t1 = p1->as_ref( ).
        me->vars ?= t1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `vars`.
      WHEN `types`.
        DATA t2 TYPE REF TO object.
        CLEAR t2.
        t2 = p1->as_ref( ).
        me->types ?= t2.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `types`.
      WHEN `extraLikeTypes`.
        DATA t3 TYPE REF TO object.
        CLEAR t3.
        t3 = p1->as_ref( ).
        me->extra_like_types ?= t3.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `extraLikeTypes`.
      WHEN `deferred`.
        DATA t4 TYPE REF TO object.
        CLEAR t4.
        t4 = p1->as_ref( ).
        me->deferred ?= t4.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deferred`.
      WHEN `cdefs`.
        DATA t5 TYPE REF TO object.
        CLEAR t5.
        t5 = p1->as_ref( ).
        me->cdefs ?= t5.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `cdefs`.
      WHEN `idefs`.
        DATA t6 TYPE REF TO object.
        CLEAR t6.
        t6 = p1->as_ref( ).
        me->idefs ?= t6.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `idefs`.
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
          DATA t7 TYPE REF TO object.
          CLEAR t7.
          DATA t8 TYPE REF TO zif_lnt_form_definition.
          CLEAR t8.
          LOOP AT me->forms->items INTO t7.
            DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t9.
            CLEAR t8.
            IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t9 ?= t7.
              DATA t10 TYPE REF TO object.
              CLEAR t10.
              t10 = t9->as_ref( ).
              t8 ?= t10.
            ELSE.
              t8 ?= t7.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `forms`.
      WHEN `references`.
        CLEAR me->references.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->references ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->references.
            me->references->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->references->load( ).
          DATA t11 TYPE REF TO object.
          CLEAR t11.
          DATA t12 TYPE REF TO zcl_lnt_ireference.
          CLEAR t12.
          LOOP AT me->references->items INTO t11.
            DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t13.
            CLEAR t12.
            IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t13 ?= t11.
              DATA t14 TYPE REF TO object.
              CLEAR t14.
              t14 = t13->as_ref( ).
              t12 ?= t14.
            ELSE.
              t12 ?= t11.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `references`.
      WHEN `sqlConversion`.
        CLEAR me->sql_conversion.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->sql_conversion ?= p1->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT me->sql_conversion.
            me->sql_conversion->source = p1.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          me->sql_conversion->load( ).
          DATA t15 TYPE REF TO object.
          CLEAR t15.
          DATA t16 TYPE REF TO zcl_lnt_shape_9a575e77.
          CLEAR t16.
          LOOP AT me->sql_conversion->items INTO t15.
            DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t17.
            CLEAR t16.
            IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t17 ?= t15.
              DATA t18 TYPE REF TO object.
              CLEAR t18.
              t18 = t17->as_ref( ).
              t16 ?= t18.
            ELSE.
              t16 ?= t15.
            ENDIF.
          ENDLOOP.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sqlConversion`.
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
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t19 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
