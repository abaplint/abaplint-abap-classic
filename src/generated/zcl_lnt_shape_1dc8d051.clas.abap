* TS: src/objects/table_type.ts:11:22 shape.da3d528f34bcd63cd8dd8058576555174e7e961dfef89951a813f3513b086ed9
CLASS zcl_lnt_shape_1dc8d051 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA keyname TYPE string.
    DATA keyfield TYPE string.
    METHODS constructor IMPORTING i_keyname TYPE string i_keyfield TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_1dc8d051 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_keyname.
    DATA(t2) = i_keyfield.
    DATA(t3) = t1.
    me->keyname = t3.
    DATA(t4) = t2.
    me->keyfield = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1805_58ab6239075a.
  ENDMETHOD.
ENDCLASS.
