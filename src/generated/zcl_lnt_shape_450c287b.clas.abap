* TS: src/lsp/_interfaces.ts:17:12 shape.668af6faebd97357d1640deac893f912b72bcd1cf26d888041b0bdfa60120d83
CLASS zcl_lnt_shape_450c287b DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA location TYPE REF TO zcl_lnt_shape_eed5a04f.
    DATA message_25cb TYPE string.
    METHODS constructor IMPORTING i_location TYPE REF TO zcl_lnt_shape_eed5a04f OPTIONAL i_message_26cb TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_450c287b IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_location.
    DATA(t2) = i_message_26cb.
    DATA t3 TYPE REF TO zcl_lnt_shape_eed5a04f.
    DATA(t4) = t1.
    t3 = t4.
    me->location = t3.
    DATA(t5) = t2.
    me->message_25cb = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1721_b4a4a1093fab.
  ENDMETHOD.
ENDCLASS.
