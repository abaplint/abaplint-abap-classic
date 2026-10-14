* TS: src/version.ts:156:40 shape.27d20b3fd164764bee8301370dd042bdf44ceda83d00a0798a9a844eee1f9f80
CLASS zcl_lnt_shape_4ebeeee9 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA abap TYPE string.
    DATA kernel TYPE int8.
    DATA op TYPE int8.
    DATA cloud_669f TYPE int8.
    DATA ce TYPE int8.
    DATA name TYPE string.
    DATA ordinal TYPE int8.
    METHODS constructor IMPORTING i_abap TYPE string i_kernel TYPE int8 i_op TYPE int8 i_cloud_47cd TYPE int8 i_ce TYPE int8 i_name TYPE string i_ordinal TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_4ebeeee9 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_abap.
    DATA(t2) = i_kernel.
    DATA(t3) = i_op.
    DATA(t4) = i_cloud_47cd.
    DATA(t5) = i_ce.
    DATA(t6) = i_name.
    DATA(t7) = i_ordinal.
    DATA(t8) = t1.
    me->abap = t8.
    DATA(t9) = t2.
    me->kernel = t9.
    DATA(t10) = t3.
    me->op = t10.
    DATA(t11) = t4.
    me->cloud_669f = t11.
    DATA(t12) = t5.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1894_15b84e0def53.
  ENDMETHOD.
ENDCLASS.
