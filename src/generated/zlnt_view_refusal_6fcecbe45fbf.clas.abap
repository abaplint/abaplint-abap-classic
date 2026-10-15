CLASS zlnt_view_refusal_6fcecbe45fbf DEFINITION PUBLIC INHERITING FROM cx_no_check CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING reason TYPE string.
    METHODS get_text REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA reason TYPE string.
ENDCLASS.
CLASS zlnt_view_refusal_6fcecbe45fbf IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->reason = reason.
  ENDMETHOD.

  METHOD get_text.
    result = |ABAP view refused: { reason }|.
  ENDMETHOD.
ENDCLASS.
