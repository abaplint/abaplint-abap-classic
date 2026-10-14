* TS: src/_iregistry.ts:47:21 shape.14e4f3840caed555c43e67560030e965049f2a19850d489da40f1d59429a84a3
CLASS zcl_lnt_shape_ca985c56 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA total TYPE int8.
    DATA normal TYPE int8.
    DATA dependencies TYPE int8.
    METHODS constructor IMPORTING i_total TYPE int8 i_normal TYPE int8 i_dependencies TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_ca985c56 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_total.
    DATA(t2) = i_normal.
    DATA(t3) = i_dependencies.
    DATA(t4) = t1.
    me->total = t4.
    DATA(t5) = t2.
    me->normal = t5.
    DATA(t6) = t3.
    me->dependencies = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1727_6b95b0ff1201.
  ENDMETHOD.
ENDCLASS.
