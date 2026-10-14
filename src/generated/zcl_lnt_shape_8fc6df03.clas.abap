* TS: src/abap/abap_parser.ts:18:17 shape.8f6712d0fc9be0f727c986cad48eb32d9cfcfcbe16970f647cec7a4c543d470e
CLASS zcl_lnt_shape_8fc6df03 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA lexing TYPE int8.
    DATA statements TYPE int8.
    DATA structure TYPE int8.
    METHODS constructor IMPORTING i_lexing TYPE int8 i_statements TYPE int8 i_structure TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_8fc6df03 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_lexing.
    DATA(t2) = i_statements.
    DATA(t3) = i_structure.
    DATA(t4) = t1.
    me->lexing = t4.
    DATA(t5) = t2.
    me->statements = t5.
    DATA(t6) = t3.
    me->structure = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1713_8e56c6d6e057.
  ENDMETHOD.
ENDCLASS.
