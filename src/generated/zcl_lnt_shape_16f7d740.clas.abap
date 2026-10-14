* TS: src/version.ts:156:40 shape.f7e2118e2f13688e932b9ec6a111cf0b226354aebd189601ed3f286a3701c5a6
CLASS zcl_lnt_shape_16f7d740 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA abap TYPE REF TO object.
    DATA kernel TYPE REF TO object.
    DATA op TYPE REF TO object.
    DATA cloud_669f TYPE REF TO object.
    DATA ce TYPE REF TO object.
    DATA name TYPE string.
    DATA ordinal TYPE int8.
    METHODS constructor IMPORTING i_abap TYPE REF TO object OPTIONAL i_kernel TYPE REF TO object OPTIONAL i_op TYPE REF TO object OPTIONAL i_cloud_47cd TYPE REF TO object OPTIONAL i_ce TYPE REF TO object OPTIONAL i_name TYPE string i_ordinal TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_16f7d740 IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO object.
    t1 = i_abap.
    DATA t2 TYPE REF TO object.
    t2 = i_kernel.
    DATA t3 TYPE REF TO object.
    t3 = i_op.
    DATA t4 TYPE REF TO object.
    t4 = i_cloud_47cd.
    DATA t5 TYPE REF TO object.
    t5 = i_ce.
    DATA(t6) = i_name.
    DATA(t7) = i_ordinal.
    DATA t8 TYPE REF TO object.
    t8 = t1.
    me->abap = t8.
    DATA t9 TYPE REF TO object.
    t9 = t2.
    me->kernel = t9.
    DATA t10 TYPE REF TO object.
    t10 = t3.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1896_8b9496db1d30.
  ENDMETHOD.
ENDCLASS.
