CLASS zlnt_runtime_mate_552f7779cad2 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_552f7779cad2 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_array.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    CREATE OBJECT result.
    DATA row TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA item TYPE REF TO zcl_lnt_idependency.
    LOOP AT p0->items INTO row.
      item = zlnt_runtime_mate_d8d39066c718=>project( row ).
      APPEND item TO result->items.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
