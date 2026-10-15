CLASS zlnt_runtime_set__44559cf8bcc4 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    TYPES: BEGIN OF entry, k TYPE f, v TYPE abap_bool, END OF entry.
    TYPES entries_type TYPE STANDARD TABLE OF entry WITH DEFAULT KEY WITH UNIQUE HASHED KEY by_k COMPONENTS k.
    DATA entries TYPE entries_type.
    METHODS size RETURNING VALUE(result) TYPE i.
    METHODS has IMPORTING p0 TYPE f RETURNING VALUE(result) TYPE abap_bool.
    METHODS add IMPORTING p0 TYPE f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
    METHODS fromarray IMPORTING p0 TYPE REF TO zlnt_runtime_arra_595b0cb55f64 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
    METHODS copy IMPORTING p0 TYPE REF TO zlnt_runtime_set__44559cf8bcc4 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
    METHODS delete IMPORTING p0 TYPE f RETURNING VALUE(result) TYPE abap_bool.
    METHODS values RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_set__44559cf8bcc4 IMPLEMENTATION.
  METHOD size.
    result = lines( entries ).
  ENDMETHOD.

  METHOD has.
    READ TABLE entries WITH KEY by_k COMPONENTS k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD add.
    READ TABLE entries WITH KEY by_k COMPONENTS k = p0 ASSIGNING FIELD-SYMBOL(<row>).
    IF sy-subrc = 0.
      <row>-v = abap_true.
    ELSE.
      APPEND VALUE #( k = p0 v = abap_true ) TO entries.
    ENDIF.
    result = me.
  ENDMETHOD.

  METHOD fromarray.
    p0->dense( ).
    DATA row TYPE f.
    DATA ignored TYPE REF TO zlnt_runtime_set__44559cf8bcc4.
    LOOP AT p0->items INTO row.
      ignored = add( row ).
    ENDLOOP.
    result = me.
  ENDMETHOD.

  METHOD copy.
    CREATE OBJECT result.
    APPEND LINES OF p0->entries TO result->entries.
  ENDMETHOD.

  METHOD delete.
    DELETE TABLE entries WITH TABLE KEY by_k COMPONENTS k = p0.
    IF sy-subrc = 0.
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
