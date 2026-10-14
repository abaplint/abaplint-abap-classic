CLASS zlnt_runtime_mate_84a03a15abdd DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_84a03a15abdd IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_array.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    CREATE OBJECT result.
    DATA row TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA item TYPE string.
    LOOP AT p0->items INTO row.
      item = zlnt_runtime_mate_6f6f1905947e=>project( row ).
      APPEND item TO result->items.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
