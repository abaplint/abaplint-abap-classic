* TS: src/lsp/_interfaces.ts:4:17 shape.870a3b1d61ce33c5d5cb7658ebd3fe2fe1b2b15c1f41aaade9c8ebee40a32f34
CLASS zcl_lnt_shape_9e00b1e6 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA uri TYPE string.
    METHODS constructor IMPORTING i_uri TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_9e00b1e6 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_uri.
    DATA(t2) = t1.
    me->uri = t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1715_a497fdf7a302.
  ENDMETHOD.
ENDCLASS.
