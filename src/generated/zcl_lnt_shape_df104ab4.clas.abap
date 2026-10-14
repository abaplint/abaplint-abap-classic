* TS: src/version.ts:66:7 shape.fb3b7df55e39639462ca485182b4fac1bb3bc6bdd31b00c456f11897cad1f587
CLASS zcl_lnt_shape_df104ab4 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA abap TYPE string.
    DATA kernel TYPE int8.
    DATA op TYPE REF TO object.
    DATA cloud_669f TYPE int8.
    DATA ce TYPE int8.
    METHODS constructor IMPORTING i_abap TYPE string i_kernel TYPE int8 i_op TYPE REF TO object OPTIONAL i_cloud_47cd TYPE int8 i_ce TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_df104ab4 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_abap.
    DATA(t2) = i_kernel.
    DATA t3 TYPE REF TO object.
    t3 = i_op.
    DATA(t4) = i_cloud_47cd.
    DATA(t5) = i_ce.
    DATA(t6) = t1.
    me->abap = t6.
    DATA(t7) = t2.
    me->kernel = t7.
    DATA t8 TYPE REF TO object.
    t8 = t3.
    me->op = t8.
    DATA(t9) = t4.
    me->cloud_669f = t9.
    DATA(t10) = t5.
    me->ce = t10.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1889_98ace6d35c13.
  ENDMETHOD.
ENDCLASS.
