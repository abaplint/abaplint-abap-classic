* TS: src/rules/prefer_pragmas.ts:8:1 PreferPragmasConf
CLASS zcl_lnt_prefer_pragmas_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_527943ee5149 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_view_write_s_73f0f97a5d9a IMPORTING p0 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA check_bf6e TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_pragmas_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA t5 TYPE REF TO zcl_lnt_shape_4696a092.
    DATA t6 TYPE string.
    DATA(t7) = |#EC CI_SUBRC|.
    t6 = t7.
    DATA t8 TYPE string.
    DATA(t9) = |SUBRC_OK|.
    t8 = t9.
    t5 = NEW zcl_lnt_shape_4696a092( i_pseudo = t6 i_pragma = t8 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudo` p1 = t10 ).
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t11 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t12) = |pseudo|.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t12 p1 = t13 ).
    ENDIF.
    DATA(t14) = |pragma|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = t14 p1 = t15 ).
    ENDIF.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t16) = t2.
    DATA t17 TYPE REF TO zcl_lnt_shape_4696a092.
    DATA t18 TYPE string.
    DATA(t19) = |#EC NEEDED|.
    t18 = t19.
    DATA t20 TYPE string.
    DATA(t21) = |NEEDED|.
    t20 = t21.
    t17 = NEW zcl_lnt_shape_4696a092( i_pseudo = t18 i_pragma = t20 ).
    CREATE OBJECT t17->zlnt_view_ownkeys_b0e8086400eb.
    t17->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudo` p1 = t22 ).
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    IF t17->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t17->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t23 ).
    ENDIF.
    CREATE OBJECT t17->zlnt_json_ownkeys_70e5fd461788.
    t17->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t24) = |pseudo|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t24 p1 = t25 ).
    ENDIF.
    DATA(t26) = |pragma|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t17->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t17->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    t16->load( ).
    APPEND t17 TO t16->items.
    t16->save( ).
    DATA(t28) = t2.
    DATA t29 TYPE REF TO zcl_lnt_shape_4696a092.
    DATA t30 TYPE string.
    DATA(t31) = |#EC NOTEXT|.
    t30 = t31.
    DATA t32 TYPE string.
    DATA(t33) = |NO_TEXT|.
    t32 = t33.
    t29 = NEW zcl_lnt_shape_4696a092( i_pseudo = t30 i_pragma = t32 ).
    CREATE OBJECT t29->zlnt_view_ownkeys_b0e8086400eb.
    t29->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudo` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t29->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t29->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t35 ).
    ENDIF.
    CREATE OBJECT t29->zlnt_json_ownkeys_70e5fd461788.
    t29->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t36) = |pseudo|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |pragma|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t29->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t29->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t40) = t2.
    DATA t41 TYPE REF TO zcl_lnt_shape_4696a092.
    DATA t42 TYPE string.
    DATA(t43) = |#EC NO_HANDLER|.
    t42 = t43.
    DATA t44 TYPE string.
    DATA(t45) = |NO_HANDLER|.
    t44 = t45.
    t41 = NEW zcl_lnt_shape_4696a092( i_pseudo = t42 i_pragma = t44 ).
    CREATE OBJECT t41->zlnt_view_ownkeys_b0e8086400eb.
    t41->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudo` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t41->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t41->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t47 ).
    ENDIF.
    CREATE OBJECT t41->zlnt_json_ownkeys_70e5fd461788.
    t41->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t48) = |pseudo|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |pragma|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t41->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t41->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    t40->load( ).
    APPEND t41 TO t40->items.
    t40->save( ).
    DATA(t52) = t2.
    t1 = t52.
    me->zlnt_view_write_s_73f0f97a5d9a( p0 = t1 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1661_83910276aee0.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_527943ee5149.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `check` ) ).
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
        DATA t3 TYPE REF TO zcl_lnt_shape_4696a092.
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
                t3 = NEW zcl_lnt_shape_4696a092( view_source = t4 i_pseudo = t6 i_pragma = t7 ).
              ENDIF.
            ENDIF.
          ELSE.
            t3 ?= t2.
          ENDIF.
        ENDLOOP.
      ENDIF.
    ELSE.
      result = me->check_bf6e.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_73f0f97a5d9a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
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
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `check` p1 = t1 ).
    ELSE.
      me->check_bf6e = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `check`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `check`.
        result = abap_true.
      WHEN `exclude`.
        result = abap_true.
      WHEN `severity`.
        result = abap_true.
    ENDCASE.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_false.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    result = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = NEW #( ).
    t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exclude` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exclude` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `severity` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `severity` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `check` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `check` p1 = VALUE #( ) ).
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
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: native prototype lookup unavailable`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `exclude`.
        CLEAR result.
        IF me->exclude IS BOUND.
          CLEAR result.
          IF me->exclude IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->exclude.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->exclude.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->exclude.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `severity`.
        CLEAR result.
        IF me->severity IS BOUND AND me->severity->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->severity->value.
        ENDIF.
      WHEN `check`.
        CLEAR result.
        IF me->check_bf6e IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->check_bf6e.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->check_bf6e.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->check_bf6e.
            ENDIF.
          ENDIF.
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `severity`.
        CLEAR me->severity.
        IF p1 IS BOUND.
          me->severity = NEW #( ).
          me->severity->has = abap_true.
          me->severity->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
