CLASS zlnt_runtime_mate_a55b3d04bd05 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_9e749db2.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_a55b3d04bd05 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA field0 TYPE string.
    field0 = zlnt_runtime_mate_6f6f1905947e=>project( p0->get( `type` ) ).
    DATA field1 TYPE string.
    field1 = zlnt_runtime_mate_6f6f1905947e=>project( p0->get( `oldName` ) ).
    DATA field2 TYPE string.
    field2 = zlnt_runtime_mate_6f6f1905947e=>project( p0->get( `newName` ) ).
    result = NEW zcl_lnt_shape_9e749db2( i_type_9913 = field0 i_old_name = field1 i_new_name = field2 ).
    result->zlnt_builtin_mate_4bfafaf0b5ed = p0.
  ENDMETHOD.
ENDCLASS.
