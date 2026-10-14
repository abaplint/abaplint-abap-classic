* TS: src/lsp/_interfaces.ts:17:12 shape.429011d5df9f8e412b18ff3a5f31c9c4882b1c3d72460e0fc4cf0c8339d23751
CLASS zcl_lnt_shape_88ee2c6c DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA href TYPE string.
    METHODS constructor IMPORTING i_href TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_88ee2c6c IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_href.
    DATA(t2) = t1.
    me->href = t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1718_b05ac790f903.
  ENDMETHOD.
ENDCLASS.
