* TS: src/lsp/_interfaces.ts:16:10 shape.ccab811d0a1e0685eff885023de8dd53dc44941f932922e40ef82a276678e954
CLASS zcl_lnt_shape_9ead17bd DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA start TYPE REF TO zcl_lnt_shape_38f98ddf.
    DATA end TYPE REF TO zcl_lnt_shape_38f98ddf.
    METHODS constructor IMPORTING i_start TYPE REF TO zcl_lnt_shape_38f98ddf OPTIONAL i_end TYPE REF TO zcl_lnt_shape_38f98ddf OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_9ead17bd IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_start.
    DATA(t2) = i_end.
    DATA t3 TYPE REF TO zcl_lnt_shape_38f98ddf.
    DATA(t4) = t1.
    t3 = t4.
    me->start = t3.
    DATA t5 TYPE REF TO zcl_lnt_shape_38f98ddf.
    DATA(t6) = t2.
    t5 = t6.
    me->end = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1717_7a0a0d5f1832.
  ENDMETHOD.
ENDCLASS.
