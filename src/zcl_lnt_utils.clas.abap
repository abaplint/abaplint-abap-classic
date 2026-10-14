CLASS zcl_lnt_utils DEFINITION PUBLIC.
  PUBLIC SECTION.
    TYPES ty_object_types TYPE STANDARD TABLE OF tadir-object WITH EMPTY KEY.
    CLASS-METHODS object_types RETURNING VALUE(rt_types) TYPE ty_object_types.
ENDCLASS.

CLASS zcl_lnt_utils IMPLEMENTATION.
  METHOD object_types.
    rt_types = VALUE #(
      ( 'PROG' )
      ( 'CLAS' )
      ( 'INTF' )
      ( 'FUGR' ) ).
  ENDMETHOD.
ENDCLASS.
