* TS: src/_config.ts:72:13 shape.cdf309a87d061faba64a110dae8efc4199711cfab57b7b7f9b4c35ec5658d6e0
CLASS zcl_lnt_shape_9e749db2 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_builtin_mate_4bfafaf0b5ed TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA type_cba0 TYPE string.
    DATA old_name TYPE string.
    DATA new_name TYPE string.
    METHODS constructor IMPORTING i_type_9913 TYPE string i_old_name TYPE string i_new_name TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_9e749db2 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = t1.
    me->type_cba0 = t4.
    DATA(t5) = t2.
    me->old_name = t5.
    DATA(t6) = t3.
    me->new_name = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1709_19d7466d219c.
  ENDMETHOD.
ENDCLASS.
