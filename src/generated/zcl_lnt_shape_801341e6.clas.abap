* TS: src/lsp/language_server.ts:40:54 shape.18427befc18e4aba0b4d567b571ad5d949772a2de2c1c2349fb91370b91d8013
CLASS zcl_lnt_shape_801341e6 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA contents TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    METHODS constructor IMPORTING i_contents TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_801341e6 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_contents.
    DATA(t2) = i_range.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = t1.
    t3 = t4.
    me->contents = t3.
    DATA(t5) = t2.
    me->range = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1768_38e319289871.
  ENDMETHOD.
ENDCLASS.
