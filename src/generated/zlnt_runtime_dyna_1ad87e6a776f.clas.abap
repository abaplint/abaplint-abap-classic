CLASS zlnt_runtime_dyna_1ad87e6a776f DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS get IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLASS-METHODS name IMPORTING p0 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_dyna_1ad87e6a776f IMPLEMENTATION.
  METHOD get.
    DATA adapter TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA native TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
    DATA descriptor TYPE REF TO zlnt_runtime_clas_a39833db3295.
    IF p0->oval IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
    TRY.
        adapter ?= p0->oval.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF adapter IS BOUND.
      IF adapter->structural( ) = abap_true.
        result = adapter->get( `constructor` ).
        RETURN.
      ENDIF.
    ENDIF.
    TRY.
        native ?= p0->oval.
      CATCH cx_sy_move_cast_error.
        RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDTRY.
    descriptor = native->zlnt_builtin_nati_72359f490bf2( ).
    CREATE OBJECT result.
    result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
    result->cval = descriptor.
  ENDMETHOD.

  METHOD name.
    IF p0 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
    IF p0->has( `name` ) = abap_true OR p0->has( `get.name` ) = abap_true.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
    result = p0->name.
  ENDMETHOD.
ENDCLASS.
