* TS: src/rules/empty_structure.ts:10:1 EmptyStructureConf
CLASS zcl_lnt_empty_structure_conf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_f2f44c885431 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_5e37caa65529 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_277307c11ea4 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_33abe391e1c6 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_05ad6227cfd0 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_8fcaf178eca9 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_22c78f5eda46 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_20aeeca0cc4c IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_43a444581482 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_667507affd83 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_a0a1d19d185e RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_21c98ed4ca44 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_996db639d95e RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_a963dc298528 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_c09d4cea8735 RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_32d3fd59a14a IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_23037fee38bb RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_22d10ef27e51 IMPORTING p0 TYPE abap_bool.
    METHODS zlnt_view_read_sr_54bebfc4c85f RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_e431f932a882 IMPORTING p0 TYPE abap_bool.
    DATA loop_7736 TYPE abap_bool.
    DATA loop_allow_if_subrc TYPE abap_bool.
    DATA if_db21 TYPE abap_bool.
    DATA while_b4ca TYPE abap_bool.
    DATA case_1731 TYPE abap_bool.
    DATA select_8b3b TYPE abap_bool.
    DATA do_0438 TYPE abap_bool.
    DATA at_501a TYPE abap_bool.
    DATA try_d21b TYPE abap_bool.
    DATA when_07a5 TYPE abap_bool.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_structure_conf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    me->zlnt_view_write_s_5e37caa65529( p0 = t1 ).
    DATA(t2) = abap_true.
    me->zlnt_view_write_s_33abe391e1c6( p0 = t2 ).
    DATA(t3) = abap_true.
    me->zlnt_view_write_s_8fcaf178eca9( p0 = t3 ).
    DATA(t4) = abap_true.
    me->zlnt_view_write_s_20aeeca0cc4c( p0 = t4 ).
    DATA(t5) = abap_true.
    me->zlnt_view_write_s_667507affd83( p0 = t5 ).
    DATA(t6) = abap_true.
    me->zlnt_view_write_s_21c98ed4ca44( p0 = t6 ).
    DATA(t7) = abap_true.
    me->zlnt_view_write_s_a963dc298528( p0 = t7 ).
    DATA(t8) = abap_true.
    me->zlnt_view_write_s_32d3fd59a14a( p0 = t8 ).
    DATA(t9) = abap_true.
    me->zlnt_view_write_s_22d10ef27e51( p0 = t9 ).
    DATA(t10) = abap_true.
    me->zlnt_view_write_s_e431f932a882( p0 = t10 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1495_a0a214691925.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_f2f44c885431.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `loop` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->loop_7736.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5e37caa65529.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `loop` p1 = t1 ).
    ELSE.
      me->loop_7736 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `loop`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_277307c11ea4.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `loopAllowIfSubrc` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->loop_allow_if_subrc.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_33abe391e1c6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `loopAllowIfSubrc` p1 = t1 ).
    ELSE.
      me->loop_allow_if_subrc = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `loopAllowIfSubrc`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_05ad6227cfd0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `if` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->if_db21.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_8fcaf178eca9.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `if` p1 = t1 ).
    ELSE.
      me->if_db21 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `if`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_22c78f5eda46.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `while` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->while_b4ca.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_20aeeca0cc4c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `while` p1 = t1 ).
    ELSE.
      me->while_b4ca = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `while`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_43a444581482.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `case` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->case_1731.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_667507affd83.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `case` p1 = t1 ).
    ELSE.
      me->case_1731 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `case`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_a0a1d19d185e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `select` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->select_8b3b.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_21c98ed4ca44.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `select` p1 = t1 ).
    ELSE.
      me->select_8b3b = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `select`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_996db639d95e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `do` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->do_0438.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a963dc298528.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `do` p1 = t1 ).
    ELSE.
      me->do_0438 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `do`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_c09d4cea8735.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `at` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->at_501a.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_32d3fd59a14a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `at` p1 = t1 ).
    ELSE.
      me->at_501a = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `at`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_23037fee38bb.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `try` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->try_d21b.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_22d10ef27e51.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `try` p1 = t1 ).
    ELSE.
      me->try_d21b = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `try`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_54bebfc4c85f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `when` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->when_07a5.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_e431f932a882.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `when` p1 = t1 ).
    ELSE.
      me->when_07a5 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `when`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `loop`.
        result = abap_true.
      WHEN `loopAllowIfSubrc`.
        result = abap_true.
      WHEN `if`.
        result = abap_true.
      WHEN `while`.
        result = abap_true.
      WHEN `case`.
        result = abap_true.
      WHEN `select`.
        result = abap_true.
      WHEN `do`.
        result = abap_true.
      WHEN `at`.
        result = abap_true.
      WHEN `try`.
        result = abap_true.
      WHEN `when`.
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
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `loop` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `loop` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `loopAllowIfSubrc` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `loopAllowIfSubrc` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `if` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `if` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `while` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `while` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `case` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `case` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `select` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `select` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `do` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `do` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `at` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `at` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `try` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `try` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `when` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `when` p1 = VALUE #( ) ).
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
      WHEN `loop`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->loop_7736.
      WHEN `loopAllowIfSubrc`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->loop_allow_if_subrc.
      WHEN `if`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->if_db21.
      WHEN `while`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->while_b4ca.
      WHEN `case`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->case_1731.
      WHEN `select`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->select_8b3b.
      WHEN `do`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->do_0438.
      WHEN `at`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->at_501a.
      WHEN `try`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->try_d21b.
      WHEN `when`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->when_07a5.
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
      WHEN `loop`.
        me->loop_7736 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `loop`.
      WHEN `loopAllowIfSubrc`.
        me->loop_allow_if_subrc = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `loopAllowIfSubrc`.
      WHEN `if`.
        me->if_db21 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `if`.
      WHEN `while`.
        me->while_b4ca = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `while`.
      WHEN `case`.
        me->case_1731 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `case`.
      WHEN `select`.
        me->select_8b3b = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `select`.
      WHEN `do`.
        me->do_0438 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `do`.
      WHEN `at`.
        me->at_501a = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `at`.
      WHEN `try`.
        me->try_d21b = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `try`.
      WHEN `when`.
        me->when_07a5 = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `when`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
