* TS: src/abap/5_syntax/expressions/value_body.ts:148:72 shape.f403c243c235ddd3c67759691705e61e75bf2fd619b63375cececce3347e133c
CLASS zcl_lnt_shape_164098b6 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA abap TYPE string.
    DATA length TYPE int8.
    METHODS constructor IMPORTING i_abap TYPE string i_length TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_164098b6 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_abap.
    DATA(t2) = i_length.
    DATA(t3) = t1.
    me->abap = t3.
    DATA(t4) = t2.
    me->length = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1754_6207378efc89.
  ENDMETHOD.
ENDCLASS.
