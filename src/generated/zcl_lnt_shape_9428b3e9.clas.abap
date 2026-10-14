* TS: src/objects/behavior_definition.ts:5:13 shape.0e2a55b560b2070de0d4f42adce6818b9548a0f0a33ea5ae139ebb198c63252a
CLASS zcl_lnt_shape_9428b3e9 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA alias TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_name TYPE string i_alias TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_9428b3e9 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_alias ).
    DATA(t3) = t1.
    me->name = t3.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->alias = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1776_9d5102722ea9.
  ENDMETHOD.
ENDCLASS.
