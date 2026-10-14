* TS: src/rules_runner.ts:11:29 shape.0c21b215a8ec99b06f4a3babffabfb13313afa4decaeb1efc6f5c5033cd9f923
CLASS zcl_lnt_shape_a69dd887 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA runtime TYPE int8.
    DATA name TYPE string.
    METHODS constructor IMPORTING i_runtime TYPE int8 i_name TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_a69dd887 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_runtime.
    DATA(t2) = i_name.
    DATA(t3) = t1.
    me->runtime = t3.
    DATA(t4) = t2.
    me->name = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1826_8909db44231b.
  ENDMETHOD.
ENDCLASS.
