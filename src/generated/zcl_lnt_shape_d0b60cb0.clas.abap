* TS: src/lsp/_interfaces.ts:17:12 shape.41b28412ca094254826ae01f0e1b79cade8df3ce93a103ab3052fbc8a47ee7e6
CLASS zcl_lnt_shape_d0b60cb0 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA kind TYPE string.
    DATA value TYPE string.
    METHODS constructor IMPORTING i_kind TYPE string i_value TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_d0b60cb0 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_kind.
    DATA(t2) = i_value.
    DATA(t3) = t1.
    me->kind = t3.
    DATA(t4) = t2.
    me->value = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1719_db4ac3be64c8.
  ENDMETHOD.
ENDCLASS.
