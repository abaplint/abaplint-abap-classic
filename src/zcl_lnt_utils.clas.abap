CLASS zcl_lnt_utils DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS object_types RETURNING VALUE(rt_types) TYPE string_table.
ENDCLASS.

CLASS zcl_lnt_utils IMPLEMENTATION.
  METHOD object_types.
    INSERT |PROG| INTO TABLE rt_types.
    INSERT |CLAS| INTO TABLE rt_types.
    INSERT |INTF| INTO TABLE rt_types.
    INSERT |FUGR| INTO TABLE rt_types.
  ENDMETHOD.
ENDCLASS.
