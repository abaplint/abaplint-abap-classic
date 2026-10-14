* TS: src/objects/view.ts:14:23 shape.9b939fb3916442b4966aa8db129136db1ca4977966016feef4bc1869d281f2f7
CLASS zcl_lnt_shape_11f50e23 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA header TYPE REF TO zcl_lnt_shape_f575992e.
    DATA fields_464c TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA join TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_header TYPE REF TO zcl_lnt_shape_f575992e OPTIONAL i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_join TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_11f50e23 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_f575992e( i_header ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_fields_62af ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_join ).
    DATA t4 TYPE REF TO zcl_lnt_shape_f575992e.
    DATA(t5) = CAST zcl_lnt_shape_f575992e( t1 ).
    t4 = t5.
    me->header = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    t6 = t7.
    me->fields_464c = t6.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    t8 = t9.
    me->join = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1813_0a15bc9e41e0.
  ENDMETHOD.
ENDCLASS.
