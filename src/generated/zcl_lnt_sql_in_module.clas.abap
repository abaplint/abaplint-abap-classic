* TS: src/abap/5_syntax/expressions/sql_in.ts.module module
CLASS zcl_lnt_sql_in_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA range_components TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_67f8511dffbf TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7517e34af3ee.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_in_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_7517e34af3ee.
    IF zlnt_builtin_init_67f8511dffbf = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_67f8511dffbf = abap_true.
    IF zcl_lnt_sql_in_module=>zlnt_builtin_init_67f8511dffbf = abap_false.
      zcl_lnt_sql_in_module=>zlnt_builtin_init_7517e34af3ee( ).
    ENDIF.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t5) = |SIGN|.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    DATA(t7) = |OPTION|.
    t2->load( ).
    APPEND t7 TO t2->items.
    t2->save( ).
    DATA(t9) = |LOW|.
    t2->load( ).
    APPEND t9 TO t2->items.
    t2->save( ).
    DATA(t11) = |HIGH|.
    t2->load( ).
    APPEND t11 TO t2->items.
    t2->save( ).
    zcl_lnt_sql_in_module=>range_components = t2.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1946_cdf8f36a0b8a.
  ENDMETHOD.
ENDCLASS.
