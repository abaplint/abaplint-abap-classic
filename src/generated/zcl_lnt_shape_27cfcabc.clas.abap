* TS: src/version.ts:149:50 shape.ecd8d6056c96d1d9c7f7a8c9b88df31f5cc88d698d5f29b4414a4d6ff7032447
CLASS zcl_lnt_shape_27cfcabc DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA abap TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA kernel TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA op TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA cloud_669f TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA ce TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_abap TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_kernel TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_op TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_cloud_47cd TYPE REF TO
    zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_ce TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_27cfcabc IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_abap.
    DATA(t2) = i_kernel.
    DATA(t3) = i_op.
    DATA(t4) = i_cloud_47cd.
    DATA(t5) = i_ce.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = t1.
    t6 = t7.
    me->abap = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = t2.
    t8 = t9.
    me->kernel = t8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = t3.
    t10 = t11.
    me->op = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = t4.
    t12 = t13.
    me->cloud_669f = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = t5.
    t14 = t15.
    me->ce = t14.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1866_98a544bd2622.
  ENDMETHOD.
ENDCLASS.
