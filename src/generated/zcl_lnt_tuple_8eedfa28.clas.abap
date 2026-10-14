* TS: src/version.ts:66:7 tuple.473287f8298dba7163a897908958f7c0eae733e25d2e027992ea2edc9bed2fa8.0efb41a0bd8b3870d1f98635ed9b2c4b70c07a75a432838f6c05b0aeb5476089
CLASS zcl_lnt_tuple_8eedfa28 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA f0 TYPE string.
    DATA f1 TYPE REF TO zcl_lnt_shape_c82321f8.
    METHODS constructor IMPORTING i_f0 TYPE string i_f1 TYPE REF TO zcl_lnt_shape_c82321f8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tuple_8eedfa28 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_f0.
    DATA(t2) = CAST zcl_lnt_shape_c82321f8( i_f1 ).
    DATA(t3) = t1.
    me->f0 = t3.
    DATA(t4) = CAST zcl_lnt_shape_c82321f8( t2 ).
    me->f1 = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_40944bb56651=>zlnt_member_d3_93b114c6beac5f.
  ENDMETHOD.
ENDCLASS.
