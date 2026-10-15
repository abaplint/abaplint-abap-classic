CLASS zlnt_runtime_map__a5ffc3d163a5 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_view_storage_74017ca272ac.
    TYPES: BEGIN OF entry, k TYPE string, v TYPE REF TO zlnt_runtime_clas_a39833db3295, END OF entry.
    TYPES entries_type TYPE STANDARD TABLE OF entry WITH DEFAULT KEY WITH UNIQUE HASHED KEY by_k COMPONENTS k.
    DATA entries TYPE entries_type.
    METHODS size RETURNING VALUE(result) TYPE i.
    METHODS has IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS set IMPORTING p0 TYPE string p1 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__a5ffc3d163a5.
    METHODS get IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS values RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS keys RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_map__a5ffc3d163a5 IMPLEMENTATION.
  METHOD size.
    result = lines( entries ).
  ENDMETHOD.

  METHOD has.
    READ TABLE entries WITH KEY by_k COMPONENTS k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD set.
    READ TABLE entries WITH KEY by_k COMPONENTS k = p0 ASSIGNING FIELD-SYMBOL(<row>).
    IF sy-subrc = 0.
      <row>-v = p1.
    ELSE.
      APPEND VALUE #( k = p0 v = p1 ) TO entries.
    ENDIF.
    result = me.
  ENDMETHOD.

  METHOD get.
    READ TABLE entries WITH KEY by_k COMPONENTS k = p0 INTO DATA(row).
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

  METHOD zlnt_view_storage_74017ca272ac~structural.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_record_map.go: has: native record-map presence not implemented`.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_record_map.go: delete: native record-map deletion not implemented`.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    READ TABLE entries WITH KEY by_k COMPONENTS k = p0 INTO DATA(row).
    IF sy-subrc = 0.
      CLEAR result.
      IF row-v IS BOUND.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        result->cval = row-v.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF p1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_record_map.go: put: undefined cannot inhabit required map value`.
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( p1->as_classvalue( ) ).
    DATA(t2) = CAST zlnt_runtime_map__a5ffc3d163a5( set( p0 = p0 p1 = t1 ) ).
  ENDMETHOD.
ENDCLASS.
