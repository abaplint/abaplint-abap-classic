* TS: src/abap/2_statements/expressions/sql_offset.ts:5:1 SQLOffset
CLASS zcl_lnt_sql_offset DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_offset IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = |OFFSET|.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t9 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d340_8d8d1acca482.
  ENDMETHOD.
ENDCLASS.
