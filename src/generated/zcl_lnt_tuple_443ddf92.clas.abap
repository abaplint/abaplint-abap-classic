* TS: src/abap/2_statements/expressions/sql_function.ts:106:36 tuple.473287f8298dba7163a897908958f7c0eae733e25d2e027992ea2edc9bed2fa8.8f9108e347ad289a33aa5df99962abce4e6d371906c6508e3a0fcfd0983f8809.9
CLASS zcl_lnt_tuple_443ddf92 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA f0 TYPE string.
    DATA f1 TYPE REF TO zcl_lnt_abap_release.
    DATA f2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_f0 TYPE string i_f1 TYPE REF TO zcl_lnt_abap_release i_f2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tuple_443ddf92 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_f0.
    DATA(t2) = i_f1.
    DATA(t3) = i_f2.
    DATA(t4) = t1.
    me->f0 = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f0`.
    DATA(t5) = t2.
    me->f1 = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f1`.
    DATA(t6) = t3.
    me->f2 = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f2`.
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
    result = zlnt_runtime_desc_40944bb56651=>zlnt_member_d1_2d6b79a5b052ba.
  ENDMETHOD.
ENDCLASS.
