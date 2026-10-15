CLASS zcl_lnt_category DEFINITION
  PUBLIC
  INHERITING FROM cl_ci_category_root
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor.
ENDCLASS.

CLASS zcl_lnt_category IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    description = 'abaplint'.
    category    = 'CL_CI_CATEGORY_TOP'.
    position    = '920'.
  ENDMETHOD.
ENDCLASS.
