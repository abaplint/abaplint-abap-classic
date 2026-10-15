* TS: src/abap/5_syntax/_spaghetti_scope.ts:12:1 IScopeIdentifier
CLASS zcl_lnt_iscope_identifier DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA stype TYPE string.
    DATA sname TYPE string.
    DATA filename TYPE string.
    DATA start TYPE REF TO zcl_lnt_position.
    DATA end TYPE REF TO zcl_lnt_position.
    METHODS constructor IMPORTING i_stype TYPE string i_sname TYPE string i_filename TYPE string i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iscope_identifier IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_stype.
    DATA(t2) = i_sname.
    DATA(t3) = i_filename.
    DATA(t4) = i_start.
    DATA(t5) = i_end.
    DATA(t6) = t1.
    me->stype = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `stype`.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `stype` p1 = t7 ).
    ENDIF.
    DATA(t8) = |stype|.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t8 p1 = t9 ).
    ENDIF.
    DATA(t10) = t2.
    me->sname = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sname`.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `sname` p1 = t11 ).
    ENDIF.
    DATA(t12) = |sname|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    DATA(t14) = t3.
    me->filename = t14.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t15 ).
    ENDIF.
    DATA(t16) = |filename|.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t16 p1 = t17 ).
    ENDIF.
    DATA(t18) = t4.
    me->start = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `start` p1 = t19 ).
    ENDIF.
    DATA(t20) = |start|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    DATA(t22) = t5.
    me->end = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `end` p1 = t23 ).
    ENDIF.
    DATA(t24) = |end|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d777_7c002ad3f1af.
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
      WHEN `stype`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `sname`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `filename`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `start`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `end`.
        CLEAR me->end.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/abap/5_syntax/_spaghetti_scope.ts.IScopeIdentifier: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `stype`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->stype.
      WHEN `sname`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->sname.
      WHEN `filename`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->filename.
      WHEN `start`.
        CLEAR result.
        IF me->start IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->start.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->start.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->start.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `end`.
        CLEAR result.
        IF me->end IS BOUND.
          CLEAR result.
          IF me->end IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->end.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->end.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->end.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/abap/5_syntax/_spaghetti_scope.ts.IScopeIdentifier: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `stype`.
        me->stype = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `stype`.
      WHEN `sname`.
        me->sname = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sname`.
      WHEN `filename`.
        me->filename = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `filename`.
      WHEN `start`.
        DATA t1 TYPE REF TO object.
        t1 = p1->as_ref( ).
        me->start ?= t1.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
      WHEN `end`.
        CLEAR me->end.
        IF p1 IS BOUND.
          DATA t2 TYPE REF TO object.
          t2 = p1->as_ref( ).
          me->end ?= t2.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `end`.
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
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t3 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
