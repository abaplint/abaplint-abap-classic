CLASS zlnt_runtime_map__be9b74e2658e DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    TYPES: BEGIN OF entry, k TYPE string, v TYPE REF TO zcl_lnt_expression, END OF entry.
    TYPES entries_type TYPE STANDARD TABLE OF entry WITH DEFAULT KEY.
    DATA entries TYPE entries_type.
    METHODS size RETURNING VALUE(result) TYPE i.
    METHODS has IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS set IMPORTING p0 TYPE string p1 TYPE REF TO zcl_lnt_expression RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__be9b74e2658e.
    METHODS get IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression.
    METHODS values RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS keys RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_map__be9b74e2658e IMPLEMENTATION.
  METHOD size.
    result = lines( entries ).
  ENDMETHOD.
  METHOD has.
    READ TABLE entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.
  ENDMETHOD.
  METHOD set.
    READ TABLE entries WITH KEY k = p0 ASSIGNING FIELD-SYMBOL(<row>).
    IF sy-subrc = 0.
      <row>-v = p1.
    ELSE.
      APPEND VALUE #( k = p0 v = p1 ) TO entries.
    ENDIF.
    result = me.
  ENDMETHOD.
  METHOD get.
    READ TABLE entries WITH KEY k = p0 INTO DATA(row).
    IF sy-subrc = 0.
      result = row-v.
    ENDIF.
  ENDMETHOD.
  METHOD values.
    result = NEW #( ).
    LOOP AT entries INTO DATA(vrow).
      APPEND vrow-v TO result->items.
    ENDLOOP.
  ENDMETHOD.
  METHOD keys.
    result = NEW #( ).
    LOOP AT entries INTO DATA(row).
      APPEND row-k TO result->items.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
