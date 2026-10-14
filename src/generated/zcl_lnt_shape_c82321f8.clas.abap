* TS: src/version.ts:66:7 shape.cf7c0f3d11adccb4cf45fd4ce30be53c12794528abdc532991f1b29f26f105a9
CLASS zcl_lnt_shape_c82321f8 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA abap TYPE string.
    DATA kernel TYPE int8.
    DATA op TYPE int8.
    DATA cloud_669f TYPE REF TO object.
    DATA ce TYPE REF TO object.
    METHODS constructor IMPORTING i_abap TYPE string i_kernel TYPE int8 i_op TYPE int8 i_cloud_47cd TYPE REF TO object OPTIONAL i_ce TYPE REF TO object OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c82321f8 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_abap.
    DATA(t2) = i_kernel.
    DATA(t3) = i_op.
    DATA t4 TYPE REF TO object.
    t4 = i_cloud_47cd.
    DATA t5 TYPE REF TO object.
    t5 = i_ce.
    DATA(t6) = t1.
    me->abap = t6.
    DATA(t7) = t2.
    me->kernel = t7.
    DATA(t8) = t3.
    me->op = t8.
    DATA t9 TYPE REF TO object.
    t9 = t4.
    me->cloud_669f = t9.
    DATA t10 TYPE REF TO object.
    t10 = t5.
    me->ce = t10.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1885_851dbb37fe52.
  ENDMETHOD.
ENDCLASS.
