CLASS zlnt_runtime_set__5db31b54602e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    TYPES: BEGIN OF entry, k TYPE REF TO object, v TYPE abap_bool, END OF entry.
    TYPES entries_type TYPE STANDARD TABLE OF entry WITH DEFAULT KEY.
    DATA entries TYPE entries_type.
    METHODS size RETURNING VALUE(result) TYPE i.
    METHODS has IMPORTING p0 TYPE REF TO object RETURNING VALUE(result) TYPE abap_bool.
    METHODS add IMPORTING p0 TYPE REF TO object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__5db31b54602e.
    METHODS fromarray IMPORTING p0 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__5db31b54602e.
    METHODS copy IMPORTING p0 TYPE REF TO zlnt_runtime_set__5db31b54602e RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__5db31b54602e.
    METHODS delete IMPORTING p0 TYPE REF TO object RETURNING VALUE(result) TYPE abap_bool.
    METHODS values RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_set__5db31b54602e IMPLEMENTATION.
  METHOD size.
    result = lines( entries ).
  ENDMETHOD.

  METHOD has.
    READ TABLE entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD add.
    READ TABLE entries WITH KEY k = p0 ASSIGNING FIELD-SYMBOL(<row>).
    IF sy-subrc = 0.
      <row>-v = abap_true.
    ELSE.
      APPEND VALUE #( k = p0 v = abap_true ) TO entries.
    ENDIF.
    result = me.
  ENDMETHOD.

  METHOD fromarray.
    p0->dense( ).
    DATA row TYPE REF TO object.
    DATA ignored TYPE REF TO zlnt_runtime_set__5db31b54602e.
    DATA native TYPE REF TO object.
    LOOP AT p0->items INTO native.
      row ?= native.
      ignored = add( row ).
    ENDLOOP.
    result = me.
  ENDMETHOD.

  METHOD copy.
    CREATE OBJECT result.
    APPEND LINES OF p0->entries TO result->entries.
  ENDMETHOD.

  METHOD delete.
    READ TABLE entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      DELETE entries INDEX sy-tabix.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD values.
    result = NEW #( ).
    LOOP AT entries INTO DATA(row).
      APPEND row-k TO result->items.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
