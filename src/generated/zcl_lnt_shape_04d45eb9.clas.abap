* TS: src/objects/view.ts:14:23 shape.ee3582a671520d5f971e43bff998c5f375f7c56beec50668926f0c6b4c5e0b98
CLASS zcl_lnt_shape_04d45eb9 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA ltab TYPE string.
    DATA lfield TYPE string.
    DATA operator TYPE string.
    DATA rtab TYPE string.
    DATA rfield TYPE string.
    METHODS constructor IMPORTING i_ltab TYPE string i_lfield TYPE string i_operator_049c TYPE string i_rtab TYPE string i_rfield TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_04d45eb9 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_ltab.
    DATA(t2) = i_lfield.
    DATA(t3) = i_operator_049c.
    DATA(t4) = i_rtab.
    DATA(t5) = i_rfield.
    DATA(t6) = t1.
    me->ltab = t6.
    DATA(t7) = t2.
    me->lfield = t7.
    DATA(t8) = t3.
    me->operator = t8.
    DATA(t9) = t4.
    me->rtab = t9.
    DATA(t10) = t5.
    me->rfield = t10.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1812_68139a9d09d6.
  ENDMETHOD.
ENDCLASS.
