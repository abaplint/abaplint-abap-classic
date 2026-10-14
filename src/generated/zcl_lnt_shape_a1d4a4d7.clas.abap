* TS: src/lsp/language_server.ts:83:62 shape.0b20929c276416dfadd8d8ea03858c70d4871a69588aced9278d58bca57579fb
CLASS zcl_lnt_shape_a1d4a4d7 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA placeholder TYPE string.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL i_placeholder TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_a1d4a4d7 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9ead17bd( i_range ).
    DATA(t2) = i_placeholder.
    DATA t3 TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA(t4) = CAST zcl_lnt_shape_9ead17bd( t1 ).
    t3 = t4.
    me->range = t3.
    DATA(t5) = t2.
    me->placeholder = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1770_eb6398cd4718.
  ENDMETHOD.
ENDCLASS.
