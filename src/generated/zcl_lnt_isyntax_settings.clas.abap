* TS: src/_config.ts:43:1 ISyntaxSettings
CLASS zcl_lnt_isyntax_settings DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    DATA zlnt_view_source_36f3bf68b9b8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_594c1657eb91 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_write_s_1249975545ca IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_912daad1f2d5 RETURNING VALUE(result) TYPE string.
    METHODS zlnt_view_write_s_deb467ec5ee6 IMPORTING p0 TYPE string.
    METHODS zlnt_view_read_sr_3e1871ae1d38 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_e0e37d2dcaf3 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_read_sr_340722ed73f5 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_b5c34cf51ea8 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_read_sr_94cd949ccfb3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_view_write_s_02b0b76da504 IMPORTING p0 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA version TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA error_namespace TYPE string.
    DATA global_constants TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA ambigious_voids TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA global_macros TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_version TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_error_namespace TYPE string i_global_constants TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_ambigious_voids TYPE REF TO
    zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_isyntax_settings IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = i_version.
    DATA(t2) = i_error_namespace.
    DATA(t3) = i_global_constants.
    DATA(t4) = i_ambigious_voids.
    DATA(t5) = i_global_macros_5535.
    DATA(t6) = t1.
    me->zlnt_view_write_s_1249975545ca( p0 = t6 ).
    DATA(t7) = t2.
    me->zlnt_view_write_s_deb467ec5ee6( p0 = t7 ).
    DATA(t8) = t3.
    me->zlnt_view_write_s_e0e37d2dcaf3( p0 = t8 ).
    DATA(t9) = t4.
    me->zlnt_view_write_s_b5c34cf51ea8( p0 = t9 ).
    DATA(t10) = t5.
    me->zlnt_view_write_s_02b0b76da504( p0 = t10 ).
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
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d2_33f63f78ed485d.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_594c1657eb91.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `version` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = t1.
      ENDIF.
    ELSE.
      result = me->version.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_1249975545ca.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND.
        t1 = p0.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `version` p1 = t1 ).
    ELSE.
      me->version = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `version` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `version`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_912daad1f2d5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `errorNamespace` ) ).
      result = t1->as_string( ).
    ELSE.
      result = me->error_namespace.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_deb467ec5ee6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t1->sval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `errorNamespace` p1 = t1 ).
    ELSE.
      me->error_namespace = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `errorNamespace` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `errorNamespace`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3e1871ae1d38.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `globalConstants` ) ).
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
        ENDIF.
      ENDIF.
    ELSE.
      result = me->global_constants.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_e0e37d2dcaf3.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `globalConstants` p1 = t1 ).
    ELSE.
      me->global_constants = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalConstants` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalConstants`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_340722ed73f5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ambigiousVoids` ) ).
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
        ENDIF.
      ENDIF.
    ELSE.
      result = me->ambigious_voids.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_b5c34cf51ea8.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ambigiousVoids` p1 = t1 ).
    ELSE.
      me->ambigious_voids = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ambigiousVoids` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ambigiousVoids`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_94cd949ccfb3.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `globalMacros` ) ).
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
        ENDIF.
      ENDIF.
    ELSE.
      result = me->global_macros.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_02b0b76da504.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `globalMacros` p1 = t1 ).
    ELSE.
      me->global_macros = p0.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `globalMacros` p1 = t4 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalMacros`.
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
      WHEN `version`.
        CLEAR me->version.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `errorNamespace`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `globalConstants`.
        CLEAR me->global_constants.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `ambigiousVoids`.
        CLEAR me->ambigious_voids.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `globalMacros`.
        CLEAR me->global_macros.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/_config.ts.ISyntaxSettings: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `version`.
        CLEAR result.
        IF me->version IS BOUND.
          result = me->version.
        ENDIF.
      WHEN `errorNamespace`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        result->sval = me->error_namespace.
      WHEN `globalConstants`.
        CLEAR result.
        IF me->global_constants IS BOUND.
          CLEAR result.
          IF me->global_constants IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->global_constants.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->global_constants.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->global_constants.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `ambigiousVoids`.
        CLEAR result.
        IF me->ambigious_voids IS BOUND.
          CLEAR result.
          IF me->ambigious_voids IS BOUND.
            DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t3.
            DATA t4 TYPE REF TO object.
            CLEAR t4.
            CLEAR t3.
            t4 = me->ambigious_voids.
            TRY.
                result ?= t4.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t3 ?= me->ambigious_voids.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t3 IS BOUND.
                result = t3->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->ambigious_voids.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `globalMacros`.
        CLEAR result.
        IF me->global_macros IS BOUND.
          CLEAR result.
          IF me->global_macros IS BOUND.
            DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t5.
            DATA t6 TYPE REF TO object.
            CLEAR t6.
            CLEAR t5.
            t6 = me->global_macros.
            TRY.
                result ?= t6.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t5 ?= me->global_macros.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t5 IS BOUND.
                result = t5->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->global_macros.
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
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/_config.ts.ISyntaxSettings: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `version`.
        CLEAR me->version.
        IF p1 IS BOUND.
          me->version = p1.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `version`.
      WHEN `errorNamespace`.
        me->error_namespace = p1->as_string( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `errorNamespace`.
      WHEN `globalConstants`.
        CLEAR me->global_constants.
        IF p1 IS BOUND.
          CLEAR me->global_constants.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->global_constants ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->global_constants.
              me->global_constants->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->global_constants->load( ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalConstants`.
      WHEN `ambigiousVoids`.
        CLEAR me->ambigious_voids.
        IF p1 IS BOUND.
          CLEAR me->ambigious_voids.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->ambigious_voids ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->ambigious_voids.
              me->ambigious_voids->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->ambigious_voids->load( ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ambigiousVoids`.
      WHEN `globalMacros`.
        CLEAR me->global_macros.
        IF p1 IS BOUND.
          CLEAR me->global_macros.
          IF p1 IS BOUND.
            IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  me->global_macros ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
              ENDTRY.
            ELSEIF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
              CREATE OBJECT me->global_macros.
              me->global_macros->source = p1.
            ELSE.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
            ENDIF.
            me->global_macros->load( ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalMacros`.
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
