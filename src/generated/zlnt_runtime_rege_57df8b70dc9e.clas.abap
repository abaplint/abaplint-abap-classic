CLASS zlnt_runtime_rege_57df8b70dc9e DEFINITION PUBLIC INHERITING FROM cx_no_check CREATE PUBLIC.
  PUBLIC SECTION.
    DATA pattern TYPE string.
    DATA flags TYPE string.
    METHODS constructor IMPORTING pattern TYPE string flags TYPE string.
    METHODS get_text REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_rege_57df8b70dc9e IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->pattern = pattern.
    me->flags = flags.
  ENDMETHOD.

  METHOD get_text.
    result = |unreviewed JavaScript regexp /{ pattern }/{ flags }|.
  ENDMETHOD.
ENDCLASS.
