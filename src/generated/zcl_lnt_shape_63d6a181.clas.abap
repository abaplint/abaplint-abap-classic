* TS: src/abap/2_statements/statement_parser.ts:180:58 shape.473586f1dc44c79d419996faa2ead4c9e89cb998867ac438e617815967c3af7d
CLASS zcl_lnt_shape_63d6a181 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA first TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA second TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_first TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_second TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_63d6a181 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_first ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_second ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t3 = t4.
    me->first = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t5 = t6.
    me->second = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1746_707b0ebcc113.
  ENDMETHOD.
ENDCLASS.
