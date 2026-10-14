* TS: src/lsp/_interfaces.ts:17:12 shape.e017bc2b8bf633c43e0328ef39a8431775f8fc68308abba251576386fa52f3b3
CLASS zcl_lnt_shape_eed5a04f DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA uri TYPE string.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    METHODS constructor IMPORTING i_uri TYPE string i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_eed5a04f IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_uri.
    DATA(t2) = i_range.
    DATA(t3) = t1.
    me->uri = t3.
    DATA t4 TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA(t5) = t2.
    t4 = t5.
    me->range = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1720_e579ccabee51.
  ENDMETHOD.
ENDCLASS.
