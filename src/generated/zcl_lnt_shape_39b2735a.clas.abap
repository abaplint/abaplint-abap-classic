* TS: src/objects/view.ts:14:23 shape.0eae1ba652600774df287924ca9c04933ca1d6434c241ccf77b12ad82fb82ca5
CLASS zcl_lnt_shape_39b2735a DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA viewfield TYPE string.
    DATA tabname TYPE string.
    DATA fieldname TYPE string.
    DATA keyflag TYPE string.
    METHODS constructor IMPORTING i_viewfield TYPE string i_tabname TYPE string i_fieldname TYPE string i_keyflag TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_39b2735a IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_viewfield.
    DATA(t2) = i_tabname.
    DATA(t3) = i_fieldname.
    DATA(t4) = i_keyflag.
    DATA(t5) = t1.
    me->viewfield = t5.
    DATA(t6) = t2.
    me->tabname = t6.
    DATA(t7) = t3.
    me->fieldname = t7.
    DATA(t8) = t4.
    me->keyflag = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1811_4a7a4e163f26.
  ENDMETHOD.
ENDCLASS.
