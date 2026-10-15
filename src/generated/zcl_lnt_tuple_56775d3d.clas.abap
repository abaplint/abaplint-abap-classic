* TS: src/version.ts:66:7 tuple.b9186eb6a5a9c2807a69ae227136a989fe3c4994c28164490ee76ba0fa171b0b.b9186eb6a5a9c2807a69ae227136a989fe3c4994c28164490ee76ba0fa171b0b.b9186eb6a5a9c2807a69ae227136a989fe3c49
CLASS zcl_lnt_tuple_56775d3d DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA f0 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f1 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f2 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f3 TYPE REF TO zcl_lnt_tuple_e87e4bfa.
    DATA f4 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f5 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f6 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f7 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f8 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f9 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f10 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f11 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f12 TYPE REF TO zcl_lnt_tuple_8eedfa28.
    DATA f13 TYPE REF TO zcl_lnt_tuple_bcd18efa.
    DATA f14 TYPE REF TO zcl_lnt_tuple_bcd18efa.
    DATA f15 TYPE REF TO zcl_lnt_tuple_bcd18efa.
    DATA f16 TYPE REF TO zcl_lnt_tuple_bcd18efa.
    DATA f17 TYPE REF TO zcl_lnt_tuple_bcd18efa.
    DATA f18 TYPE REF TO zcl_lnt_tuple_bcd18efa.
    DATA f19 TYPE REF TO zcl_lnt_tuple_bcd18efa.
    DATA f20 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f21 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f22 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f23 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f24 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f25 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f26 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f27 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f28 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f29 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f30 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f31 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f32 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f33 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f34 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f35 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f36 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f37 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f38 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f39 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f40 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f41 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f42 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f43 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f44 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f45 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f46 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f47 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f48 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f49 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f50 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f51 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f52 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f53 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f54 TYPE REF TO zcl_lnt_tuple_356df4c3.
    DATA f55 TYPE REF TO zcl_lnt_tuple_e60aa2b5.
    DATA f56 TYPE REF TO zcl_lnt_tuple_e60aa2b5.
    DATA f57 TYPE REF TO zcl_lnt_tuple_db7d0a56.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tuple_56775d3d IMPLEMENTATION.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_40944bb56651=>zlnt_member_d9_e4f0b8f112f46b.
  ENDMETHOD.
ENDCLASS.
