CLASS zlnt_runtime_tele_970d5104e5f4 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS now RETURNING VALUE(result) TYPE f.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA initialized TYPE abap_bool.
    CLASS-DATA previous TYPE i.
    CLASS-DATA elapsed TYPE f.
ENDCLASS.
CLASS zlnt_runtime_tele_970d5104e5f4 IMPLEMENTATION.
  METHOD now.
    DATA reading TYPE i.
    DATA delta TYPE f.
    GET RUN TIME FIELD reading.
    IF initialized = abap_false.
      initialized = abap_true.
      previous = reading.
    ELSE.
      delta = CONV f( reading ) - CONV f( previous ).
      IF delta < 0.
        delta = delta + 2147483648.
      ENDIF.
      elapsed = elapsed + delta.
      previous = reading.
    ENDIF.
    result = trunc( elapsed / 1000 ).
  ENDMETHOD.
ENDCLASS.
