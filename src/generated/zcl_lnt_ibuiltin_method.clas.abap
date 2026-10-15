* TS: src/abap/5_syntax/_builtin.ts:13:1 IBuiltinMethod
CLASS zcl_lnt_ibuiltin_method DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA counter TYPE f.
    DATA mandatory TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA optional TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA predicate TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA return_5392 TYPE REF TO zcl_lnt_abstract_type.
    DATA cache TYPE REF TO zcl_lnt_built_in_method.
    METHODS constructor IMPORTING i_counter TYPE f i_mandatory TYPE REF TO zlnt_runtime_map__41b3bb94df3d OPTIONAL i_optional TYPE REF TO zlnt_runtime_map__41b3bb94df3d OPTIONAL i_release_7928 TYPE REF TO zcl_lnt_abap_release OPTIONAL
    i_predicate TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_return_fa63 TYPE REF TO zcl_lnt_abstract_type i_cache TYPE REF TO zcl_lnt_built_in_method OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ibuiltin_method IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_counter.
    DATA(t2) = i_mandatory.
    DATA(t3) = i_optional.
    DATA(t4) = i_release_7928.
    DATA(t5) = i_predicate.
    DATA(t6) = i_return_fa63.
    DATA(t7) = i_cache.
    DATA(t8) = t1.
    me->counter = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `counter`.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `counter` p1 = t9 ).
    ENDIF.
    DATA(t10) = |counter|.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t10 p1 = t11 ).
    ENDIF.
    DATA(t12) = t2.
    me->mandatory = t12.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mandatory`.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `mandatory` p1 = t13 ).
    ENDIF.
    DATA(t14) = |mandatory|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    DATA(t16) = t3.
    me->optional = t16.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `optional`.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `optional` p1 = t17 ).
    ENDIF.
    DATA(t18) = |optional|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA(t20) = t4.
    me->release_3664 = t20.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `release` p1 = t21 ).
    ENDIF.
    DATA(t22) = |release|.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t22 p1 = t23 ).
    ENDIF.
    DATA(t24) = t5.
    me->predicate = t24.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `predicate`.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `predicate` p1 = t25 ).
    ENDIF.
    DATA(t26) = |predicate|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA(t28) = t6.
    me->return_5392 = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `return`.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `return` p1 = t29 ).
    ENDIF.
    DATA(t30) = |return|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = t7.
    me->cache = t32.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `cache`.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `cache` p1 = t33 ).
    ENDIF.
    DATA(t34) = |cache|.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d769_727d5f3523a7.
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
      WHEN `counter`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `mandatory`.
        CLEAR me->mandatory.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `optional`.
        CLEAR me->optional.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `release`.
        CLEAR me->release_3664.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `predicate`.
        CLEAR me->predicate.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `return`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `cache`.
        CLEAR me->cache.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/abap/5_syntax/_builtin.ts.IBuiltinMethod: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `counter`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        result->nval = me->counter.
      WHEN `mandatory`.
        CLEAR result.
        IF me->mandatory IS BOUND.
          CLEAR result.
          IF me->mandatory IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->mandatory.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->mandatory.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->mandatory.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `optional`.
        CLEAR result.
        IF me->optional IS BOUND.
          CLEAR result.
          IF me->optional IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->optional.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->optional.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->optional.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `release`.
        CLEAR result.
        IF me->release_3664 IS BOUND.
          CLEAR result.
          IF me->release_3664 IS BOUND.
            DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t5.
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            CLEAR t5.
            t6 = me->release_3664.
            TRY.
                result ?= t6.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t5 ?= me->release_3664.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t5 IS BOUND.
                result = t5->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->release_3664.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `predicate`.
        CLEAR result.
        IF me->predicate IS BOUND AND me->predicate->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->predicate->value.
        ENDIF.
      WHEN `return`.
        CLEAR result.
        IF me->return_5392 IS BOUND.
          DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t7.
          DATA t8 TYPE REF TO object.
          CLEAR t8.
          CLEAR t7.
          t8 = me->return_5392.
          TRY.
              result ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t7 ?= me->return_5392.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t7 IS BOUND.
              result = t7->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->return_5392.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `cache`.
        CLEAR result.
        IF me->cache IS BOUND.
          CLEAR result.
          IF me->cache IS BOUND.
            DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t9.
            DATA t10 TYPE REF TO object.
            CLEAR t10.
            CLEAR t9.
            t10 = me->cache.
            TRY.
                result ?= t10.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t9 ?= me->cache.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t9 IS BOUND.
                result = t9->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->cache.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/abap/5_syntax/_builtin.ts.IBuiltinMethod: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `counter`.
        IF p1 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
        ENDIF.
        me->counter = p1->as_number( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `counter`.
      WHEN `mandatory`.
        CLEAR me->mandatory.
        IF p1 IS BOUND.
          DATA t1 TYPE REF TO object.
          CLEAR t1.
          t1 = p1->as_ref( ).
          me->mandatory ?= t1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mandatory`.
      WHEN `optional`.
        CLEAR me->optional.
        IF p1 IS BOUND.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          t2 = p1->as_ref( ).
          me->optional ?= t2.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `optional`.
      WHEN `release`.
        CLEAR me->release_3664.
        IF p1 IS BOUND.
          CLEAR me->release_3664.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->release_3664 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF me->release_3664 IS NOT BOUND.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t3.
                IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t3 ?= p1->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t3->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t4) = VALUE string( ).
              DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t5.
              DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t6.
              DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t7.
              DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t8.
              DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t9.
              DATA(t10) = VALUE f( ).
              me->release_3664 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t4 i_abap = t5 i_kernel = t6 i_op = t7 i_cloud_47cd = t8 i_ce = t9 i_ordinal = t10 ).
            ENDIF.
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
      WHEN `predicate`.
        CLEAR me->predicate.
        IF p1 IS BOUND.
          me->predicate = NEW #( ).
          me->predicate->has = abap_true.
          me->predicate->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `predicate`.
      WHEN `return`.
        DATA t11 TYPE REF TO object.
        CLEAR t11.
        t11 = p1->as_ref( ).
        me->return_5392 ?= t11.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `return`.
      WHEN `cache`.
        CLEAR me->cache.
        IF p1 IS BOUND.
          DATA t12 TYPE REF TO object.
          CLEAR t12.
          t12 = p1->as_ref( ).
          me->cache ?= t12.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `cache`.
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
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t13 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
