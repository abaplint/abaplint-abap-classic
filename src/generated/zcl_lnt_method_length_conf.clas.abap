* TS: src/rules/method_length.ts:11:1 MethodLengthConf
CLASS zcl_lnt_method_length_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_4ca833a633a7 RETURNING VALUE(result) TYPE f.
    METHODS zlnt_view_write_s_3f68e729b1ba IMPORTING p0 TYPE f.
    METHODS zlnt_view_read_sr_5aa546d946cc RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_ca7234b37b72 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_95a4e30cd6a8 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_26a3eba57371 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_3593016b2d88 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_d415dd3df968 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_53288d537bd5 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_ca92b76a5240 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA statements TYPE f.
    DATA error_when_empty TYPE abap_bool.
    DATA ignore_test_classes TYPE abap_bool.
    DATA check_forms TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA check_function_modules TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_length_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = CONV f( 100 ).
    me->zlnt_view_write_s_3f68e729b1ba( p0 = t1 ).
    DATA(t2) = abap_true.
    me->zlnt_view_write_s_ca7234b37b72( p0 = t2 ).
    DATA(t3) = abap_false.
    me->zlnt_view_write_s_26a3eba57371( p0 = t3 ).
    DATA(t4) = abap_true.
    DATA(t5) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t5->has = abap_true.
    t5->value = t4.
    me->zlnt_view_write_s_d415dd3df968( p0 = t5 ).
    DATA(t6) = abap_true.
    DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t7->has = abap_true.
    t7->value = t6.
    me->zlnt_view_write_s_ca92b76a5240( p0 = t7 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1586_6069082c4e27.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_4ca833a633a7.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `statements` ) ).
      IF t1 IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
      ENDIF.
      result = t1->as_number( ).
    ELSE.
      result = me->statements.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_3f68e729b1ba.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
      t1->nval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `statements` p1 = t1 ).
    ELSE.
      me->statements = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_5aa546d946cc.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `errorWhenEmpty` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->error_when_empty.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ca7234b37b72.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `errorWhenEmpty` p1 = t1 ).
    ELSE.
      me->error_when_empty = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `errorWhenEmpty`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_95a4e30cd6a8.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreTestClasses` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->ignore_test_classes.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_26a3eba57371.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreTestClasses` p1 = t1 ).
    ELSE.
      me->ignore_test_classes = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreTestClasses`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_3593016b2d88.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `checkForms` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->check_forms.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d415dd3df968.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `checkForms` p1 = t1 ).
    ELSE.
      me->check_forms = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `checkForms`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_53288d537bd5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `checkFunctionModules` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->check_function_modules.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ca92b76a5240.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `checkFunctionModules` p1 = t1 ).
    ELSE.
      me->check_function_modules = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `checkFunctionModules`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `statements`.
        result = abap_true.
      WHEN `errorWhenEmpty`.
        result = abap_true.
      WHEN `ignoreTestClasses`.
        result = abap_true.
      WHEN `checkForms`.
        result = abap_true.
      WHEN `checkFunctionModules`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `statements` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `statements` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `errorWhenEmpty` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `errorWhenEmpty` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreTestClasses` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreTestClasses` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `checkForms` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `checkForms` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `checkFunctionModules` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `checkFunctionModules` p1 = VALUE #( ) ).
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
      WHEN `statements`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
        result->nval = me->statements.
      WHEN `errorWhenEmpty`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->error_when_empty.
      WHEN `ignoreTestClasses`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->ignore_test_classes.
      WHEN `checkForms`.
        CLEAR result.
        IF me->check_forms IS BOUND AND me->check_forms->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->check_forms->value.
        ENDIF.
      WHEN `checkFunctionModules`.
        CLEAR result.
        IF me->check_function_modules IS BOUND AND me->check_function_modules->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->check_function_modules->value.
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
      WHEN `statements`.
        IF p1 IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: undefined cannot inhabit required slot`.
        ENDIF.
        me->statements = p1->as_number( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
      WHEN `errorWhenEmpty`.
        me->error_when_empty = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `errorWhenEmpty`.
      WHEN `ignoreTestClasses`.
        me->ignore_test_classes = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreTestClasses`.
      WHEN `checkForms`.
        CLEAR me->check_forms.
        IF p1 IS BOUND.
          me->check_forms = NEW #( ).
          me->check_forms->has = abap_true.
          me->check_forms->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `checkForms`.
      WHEN `checkFunctionModules`.
        CLEAR me->check_function_modules.
        IF p1 IS BOUND.
          me->check_function_modules = NEW #( ).
          me->check_function_modules->has = abap_true.
          me->check_function_modules->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `checkFunctionModules`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
