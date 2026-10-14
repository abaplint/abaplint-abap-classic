* TS: src/abap/5_syntax/syntax.ts:323:20 shape.d27687468ed98e05d651b1cf810f33f7c7e15acb6060c3cafdf8719510f1912d
CLASS zcl_lnt_shape_0dbcb8a9 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA oooc TYPE REF TO zcl_lnt_object_oriented.
    DATA proc TYPE REF TO zcl_lnt_procedural.
    METHODS constructor IMPORTING i_oooc TYPE REF TO zcl_lnt_object_oriented OPTIONAL i_proc TYPE REF TO zcl_lnt_procedural OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_0dbcb8a9 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_oooc.
    DATA(t2) = i_proc.
    DATA t3 TYPE REF TO zcl_lnt_object_oriented.
    DATA(t4) = t1.
    t3 = t4.
    me->oooc = t3.
    DATA t5 TYPE REF TO zcl_lnt_procedural.
    DATA(t6) = t2.
    t5 = t6.
    me->proc = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1759_631a899b2afd.
  ENDMETHOD.
ENDCLASS.
