* TS: src/rules/prefer_pragmas.ts:9:17 shape.0adceb99073db09f4701195584c11e7787d425833ecefca44f213f7edbedaa85
CLASS zcl_lnt_shape_4696a092 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA pseudo TYPE string.
    DATA pragma TYPE string.
    METHODS constructor IMPORTING i_pseudo TYPE string i_pragma TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_4696a092 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_pseudo.
    DATA(t2) = i_pragma.
    DATA(t3) = t1.
    me->pseudo = t3.
    DATA(t4) = t2.
    me->pragma = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1822_89709ddba41e.
  ENDMETHOD.
ENDCLASS.
