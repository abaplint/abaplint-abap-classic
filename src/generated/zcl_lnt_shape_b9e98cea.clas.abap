* TS: src/rules/downport.ts:2259:3 shape.35bc338e18e8ac65afff051b1fc1b531eef6acd34298a922896347ba33ab324c
CLASS zcl_lnt_shape_b9e98cea DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA body TYPE string.
    DATA end TYPE string.
    METHODS constructor IMPORTING i_body TYPE string i_end TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_b9e98cea IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_body.
    DATA(t2) = i_end.
    DATA(t3) = t1.
    me->body = t3.
    DATA(t4) = t2.
    me->end = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1818_b4c01982825d.
  ENDMETHOD.
ENDCLASS.
