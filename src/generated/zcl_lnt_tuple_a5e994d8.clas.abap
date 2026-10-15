* TS: src/rules/xml_consistency.ts:118:29 tuple.473287f8298dba7163a897908958f7c0eae733e25d2e027992ea2edc9bed2fa8.2b6d87c142a292fa78d3d84561c25744941e088a1955e9de0639d2e9b2752b25
CLASS zcl_lnt_tuple_a5e994d8 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA f0 TYPE string.
    DATA f1 TYPE REF TO zcl_lnt_shape_015c050b.
    METHODS constructor IMPORTING i_f0 TYPE string i_f1 TYPE REF TO zcl_lnt_shape_015c050b.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tuple_a5e994d8 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_f0.
    DATA(t2) = i_f1.
    DATA(t3) = t1.
    me->f0 = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f0`.
    DATA(t4) = t2.
    me->f1 = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f1`.
  ENDMETHOD.

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
    result = zlnt_runtime_desc_40944bb56651=>zlnt_member_d12_bad132cea1e854.
  ENDMETHOD.
ENDCLASS.
