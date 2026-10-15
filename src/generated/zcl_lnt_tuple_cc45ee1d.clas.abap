* TS: src/abap/2_statements/statements/read_table.ts:28:11 tuple.408d9cd5531220a3ae4bc31c92db8a2374827c900bff69d29bcea2d17390024a.d5098447d3cf3f655a1afa6c221255b51706ad6b77ef497f5909150a0b962224.47328
CLASS zcl_lnt_tuple_cc45ee1d DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA f0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA f1 TYPE REF TO zif_lnt_statement_runnable.
    DATA f2 TYPE string.
    DATA f3 TYPE REF TO zif_lnt_statement_runnable.
    DATA f4 TYPE string.
    METHODS constructor IMPORTING i_f0 TYPE REF TO zlnt_runtime_clas_a39833db3295 i_f1 TYPE REF TO zif_lnt_statement_runnable i_f2 TYPE string i_f3 TYPE REF TO zif_lnt_statement_runnable i_f4 TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_tuple_cc45ee1d IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_f0.
    DATA(t2) = i_f1.
    DATA(t3) = i_f2.
    DATA(t4) = i_f3.
    DATA(t5) = i_f4.
    DATA(t6) = t1.
    me->f0 = t6.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f0`.
    DATA(t7) = t2.
    me->f1 = t7.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f1`.
    DATA(t8) = t3.
    me->f2 = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f2`.
    DATA(t9) = t4.
    me->f3 = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f3`.
    DATA(t10) = t5.
    me->f4 = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `f4`.
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
    result = zlnt_runtime_desc_40944bb56651=>zlnt_member_d11_b829914c6cc66c.
  ENDMETHOD.
ENDCLASS.
