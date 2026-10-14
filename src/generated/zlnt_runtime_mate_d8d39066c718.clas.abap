CLASS zlnt_runtime_mate_d8d39066c718 DEFINITION PUBLIC CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-METHODS project IMPORTING p0 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_idependency.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zlnt_runtime_mate_d8d39066c718 IMPLEMENTATION.
  METHOD project.
    IF p0 IS NOT BOUND.
      RETURN.
    ENDIF.
    IF p0->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
      RAISE EXCEPTION TYPE zlnt_exception_re_478ac52845e5.
    ENDIF.
    DATA field0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    field0 = zlnt_runtime_mate_24547ac6858a=>project( p0->get( `url` ) ).
    DATA field1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    field1 = zlnt_runtime_mate_24547ac6858a=>project( p0->get( `branch` ) ).
    DATA field2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    field2 = zlnt_runtime_mate_24547ac6858a=>project( p0->get( `folder` ) ).
    DATA field3 TYPE string.
    field3 = zlnt_runtime_mate_6f6f1905947e=>project( p0->get( `files` ) ).
    result = NEW zcl_lnt_idependency( i_url_8ce1 = field0 i_branch = field1 i_folder_5c67 = field2 i_files = field3 ).
    result->zlnt_builtin_mate_4bfafaf0b5ed = p0.
  ENDMETHOD.
ENDCLASS.
