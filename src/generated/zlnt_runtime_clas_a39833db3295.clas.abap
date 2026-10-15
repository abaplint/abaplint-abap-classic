CLASS zlnt_runtime_clas_a39833db3295 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA emitted TYPE string.
    DATA lexical TYPE abap_bool.
    DATA parent TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA static_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING name TYPE string emitted TYPE string parent TYPE REF TO zlnt_runtime_clas_a39833db3295 static_names TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS has IMPORTING p0 TYPE string RETURNING VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_clas_a39833db3295 IMPLEMENTATION.
  METHOD constructor.
    me->name = name.
    me->emitted = emitted.
    me->parent = parent.
    me->static_names = static_names.
  ENDMETHOD.

  METHOD has.
    DATA s TYPE string.
    IF static_names IS NOT BOUND.
      RETURN.
    ENDIF.
    LOOP AT static_names->items INTO s.
      IF s = p0.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
