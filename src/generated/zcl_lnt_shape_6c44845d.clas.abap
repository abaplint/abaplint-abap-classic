* TS: src/version.ts:156:40 shape.b30c7bbd135dcb01b1c91f2e25dcaef44e015c32d9af12883bacb347fd09a3be
CLASS zcl_lnt_shape_6c44845d DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA abap TYPE string.
    DATA kernel TYPE int8.
    DATA op TYPE int8.
    DATA cloud_669f TYPE REF TO object.
    DATA ce TYPE REF TO object.
    DATA name TYPE string.
    DATA ordinal TYPE int8.
    METHODS constructor IMPORTING i_abap TYPE string i_kernel TYPE int8 i_op TYPE int8 i_cloud_47cd TYPE REF TO object OPTIONAL i_ce TYPE REF TO object OPTIONAL i_name TYPE string i_ordinal TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_6c44845d IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_abap.
    DATA(t2) = i_kernel.
    DATA(t3) = i_op.
    DATA t4 TYPE REF TO object.
    t4 = i_cloud_47cd.
    DATA t5 TYPE REF TO object.
    t5 = i_ce.
    DATA(t6) = i_name.
    DATA(t7) = i_ordinal.
    DATA(t8) = t1.
    me->abap = t8.
    DATA(t9) = t2.
    me->kernel = t9.
    DATA(t10) = t3.
    me->op = t10.
    DATA t11 TYPE REF TO object.
    t11 = t4.
    me->cloud_669f = t11.
    DATA t12 TYPE REF TO object.
    t12 = t5.
    me->ce = t12.
    DATA(t13) = t6.
    me->name = t13.
    DATA(t14) = t7.
    me->ordinal = t14.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1891_8b6757dd5da9.
  ENDMETHOD.
ENDCLASS.
