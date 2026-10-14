* TS: src/version.ts:66:7 shape.3a89b1f69a0e16c8c20a2b047fca9cd512ac778b3c9fb6e3b05d84429557c65e
CLASS zcl_lnt_shape_dfeb56fd DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA abap TYPE REF TO object.
    DATA kernel TYPE REF TO object.
    DATA op TYPE REF TO object.
    DATA cloud_669f TYPE REF TO object.
    DATA ce TYPE REF TO object.
    METHODS constructor IMPORTING i_abap TYPE REF TO object OPTIONAL i_kernel TYPE REF TO object OPTIONAL i_op TYPE REF TO object OPTIONAL i_cloud_47cd TYPE REF TO object OPTIONAL i_ce TYPE REF TO object OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_dfeb56fd IMPLEMENTATION.
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
    DATA t6 TYPE REF TO object.
    t6 = t1.
    me->abap = t6.
    DATA t7 TYPE REF TO object.
    t7 = t2.
    me->kernel = t7.
    DATA t8 TYPE REF TO object.
    t8 = t3.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1890_6a6c304bc49b.
  ENDMETHOD.
ENDCLASS.
