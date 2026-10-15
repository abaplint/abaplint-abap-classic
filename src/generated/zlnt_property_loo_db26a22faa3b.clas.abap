CLASS zlnt_property_loo_db26a22faa3b DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS get IMPORTING p0 TYPE REF TO zcl_lnt_object_naming key TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-METHODS own IMPORTING p0 TYPE REF TO zcl_lnt_object_naming key TYPE string RETURNING VALUE(result) TYPE abap_bool.
    CLASS-METHODS has IMPORTING p0 TYPE REF TO zcl_lnt_object_naming key TYPE string RETURNING VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS initialize.
    CLASS-DATA initialized TYPE abap_bool.
    TYPES: BEGIN OF entry, key TYPE string, slot TYPE i, own TYPE abap_bool, END OF entry.
    CLASS-DATA entries TYPE HASHED TABLE OF entry WITH UNIQUE KEY key.
    CLASS-DATA token1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-DATA token22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
ENDCLASS.
CLASS zlnt_property_loo_db26a22faa3b IMPLEMENTATION.
  METHOD initialize.
    DATA row TYPE entry.
    IF initialized = abap_true.
      RETURN.
    ENDIF.
    initialized = abap_true.
    row-key = `conf`.
    row-slot = 0.
    row-own = abap_true.
    INSERT row INTO TABLE entries.
    row-key = `getMetadata`.
    row-slot = 1.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token1.
    token1 = zlnt_property_tok_17530183905a=>get( ).
    row-key = `getDescription`.
    row-slot = 2.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token2.
    token2 = zlnt_property_tok_3f4f504e963c=>get( ).
    row-key = `getConfig_instantiated_src/rules/object_naming.ts.ObjectNaming`.
    row-slot = 3.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token3.
    token3 = zlnt_property_tok_d46ba10644e7=>get( ).
    row-key = `setConfig_instantiated_src/rules/object_naming.ts.ObjectNaming`.
    row-slot = 4.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token4.
    token4 = zlnt_property_tok_f881bcd5358f=>get( ).
    row-key = `initialize_instantiated_src/rules/object_naming.ts.ObjectNaming`.
    row-slot = 5.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token5.
    token5 = zlnt_property_tok_4fef2b0a8568=>get( ).
    row-key = `run`.
    row-slot = 6.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token6.
    token6 = zlnt_property_tok_be620d63d7fc=>get( ).
    row-key = `getConfig_value`.
    row-slot = 7.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token7.
    token7 = zlnt_property_tok_26fee2ee136b=>get( ).
    row-key = `getConfig`.
    row-slot = 8.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token8.
    token8 = zlnt_property_tok_571b61b11c11=>get( ).
    row-key = `setConfig`.
    row-slot = 9.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token9.
    token9 = zlnt_property_tok_b94f9324ec9b=>get( ).
    row-key = `initialize`.
    row-slot = 10.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token10.
    token10 = zlnt_property_tok_edc9facd3adb=>get( ).
    row-key = `constructor`.
    row-slot = 11.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token11.
    token11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
    token11->cval = zlnt_runtime_desc_78196487750d=>zlnt_member_d1631_be37e96d75cc.
    row-key = `__proto__`.
    row-slot = 12.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token12.
    token12 = zlnt_property_tok_48283de7f37d=>get( ).
    row-key = `hasOwnProperty`.
    row-slot = 13.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token13.
    token13 = zlnt_property_tok_211649ca63bd=>get( ).
    row-key = `isPrototypeOf`.
    row-slot = 14.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token14.
    token14 = zlnt_property_tok_637616354ba2=>get( ).
    row-key = `propertyIsEnumerable`.
    row-slot = 15.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token15.
    token15 = zlnt_property_tok_eab6093325ec=>get( ).
    row-key = `toLocaleString`.
    row-slot = 16.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token16.
    token16 = zlnt_property_tok_016d4543a454=>get( ).
    row-key = `toString`.
    row-slot = 17.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token17.
    token17 = zlnt_property_tok_fcfea1cf7955=>get( ).
    row-key = `valueOf`.
    row-slot = 18.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token18.
    token18 = zlnt_property_tok_24bc4b0e1883=>get( ).
    row-key = `__defineGetter__`.
    row-slot = 19.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token19.
    token19 = zlnt_property_tok_67040dc5953b=>get( ).
    row-key = `__defineSetter__`.
    row-slot = 20.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token20.
    token20 = zlnt_property_tok_083e2d2fdb5a=>get( ).
    row-key = `__lookupGetter__`.
    row-slot = 21.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token21.
    token21 = zlnt_property_tok_5714b06f4586=>get( ).
    row-key = `__lookupSetter__`.
    row-slot = 22.
    row-own = abap_false.
    INSERT row INTO TABLE entries.
    CREATE OBJECT token22.
    token22 = zlnt_property_tok_d0ec64d8cfa1=>get( ).
  ENDMETHOD.

  METHOD get.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE row-slot.
      WHEN 0.
        CLEAR result.
        IF p0->conf IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = p0->conf.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= p0->conf.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = p0->conf.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN 1.
        result = token1.
      WHEN 2.
        result = token2.
      WHEN 3.
        result = token3.
      WHEN 4.
        result = token4.
      WHEN 5.
        result = token5.
      WHEN 6.
        result = token6.
      WHEN 7.
        result = token7.
      WHEN 8.
        result = token8.
      WHEN 9.
        result = token9.
      WHEN 10.
        result = token10.
      WHEN 11.
        result = token11.
      WHEN 12.
        result = token12.
      WHEN 13.
        result = token13.
      WHEN 14.
        result = token14.
      WHEN 15.
        result = token15.
      WHEN 16.
        result = token16.
      WHEN 17.
        result = token17.
      WHEN 18.
        result = token18.
      WHEN 19.
        result = token19.
      WHEN 20.
        result = token20.
      WHEN 21.
        result = token21.
      WHEN 22.
        result = token22.
    ENDCASE.
  ENDMETHOD.

  METHOD own.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    result = row-own.
  ENDMETHOD.

  METHOD has.
    DATA row TYPE entry.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    initialize( ).
    READ TABLE p0->zlnt_record_delet_0597644d88b4 WITH TABLE KEY table_line = key TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      RETURN.
    ENDIF.
    READ TABLE entries WITH TABLE KEY key = key INTO row.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    result = abap_true.
  ENDMETHOD.
ENDCLASS.
