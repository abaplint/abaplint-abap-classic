* TS: src/rules/align_type_expressions.ts:100:25 shape.17f22d80434cb867441f2fccb92b8d8bf72640249ffbeb5f272c352c876cfe2f
CLASS zcl_lnt_shape_3940daab DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name_end TYPE REF TO zcl_lnt_position.
    DATA after_2484 TYPE REF TO zcl_lnt_position.
    METHODS constructor IMPORTING i_name_end TYPE REF TO zcl_lnt_position OPTIONAL i_after TYPE REF TO zcl_lnt_position OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_3940daab IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_position( i_name_end ).
    DATA(t2) = CAST zcl_lnt_position( i_after ).
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA(t4) = CAST zcl_lnt_position( t1 ).
    t3 = t4.
    me->name_end = t3.
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA(t6) = CAST zcl_lnt_position( t2 ).
    t5 = t6.
    me->after_2484 = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1816_6b585f28ae98.
  ENDMETHOD.
ENDCLASS.
