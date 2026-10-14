* TS: src/abap/5_syntax/expressions/sql_in.ts.module module
CLASS zcl_lnt_sql_in_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA range_components TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_67f8511dffbf TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7517e34af3ee.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = |SIGN|.
    APPEND t5 TO t4->items.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t7) = |OPTION|.
    APPEND t7 TO t6->items.
    DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t9) = |LOW|.
    APPEND t9 TO t8->items.
    DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t11) = |HIGH|.
    APPEND t11 TO t10->items.
    DATA(t12) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t1 = t12.
    zcl_lnt_sql_in_module=>range_components = t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1851_6c668ecdb017.
  ENDMETHOD.
ENDCLASS.
