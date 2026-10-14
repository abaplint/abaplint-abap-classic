* TS: src/abap/2_statements/statement_parser.ts:262:59 shape.1349f3595317f64ed80ed692f1b3f40aeac7457cf750e87b74fd43117396fde9
CLASS zcl_lnt_shape_c7bfd3d6 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA pragmas TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_pragmas TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c7bfd3d6 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_pragmas ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t3 = t4.
    me->tokens = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t5 = t6.
    me->pragmas = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1747_7f9478989c1f.
  ENDMETHOD.
ENDCLASS.
