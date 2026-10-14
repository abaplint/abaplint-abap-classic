* TS: src/lsp/rename.ts:22:1 IPrepareResult
CLASS zcl_lnt_iprepare_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA placeholder TYPE string.
    DATA type_cba0 TYPE int8.
    DATA file TYPE REF TO zif_lnt_file.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_shape_9ead17bd i_placeholder TYPE string i_type_9913 TYPE int8 i_file TYPE REF TO zif_lnt_file.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iprepare_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9ead17bd( i_range ).
    DATA(t2) = i_placeholder.
    DATA(t3) = i_type_9913.
    DATA(t4) = CAST zif_lnt_file( i_file ).
    DATA(t5) = CAST zcl_lnt_shape_9ead17bd( t1 ).
    me->range = t5.
    DATA(t6) = t2.
    me->placeholder = t6.
    DATA(t7) = t3.
    me->type_cba0 = t7.
    DATA(t8) = CAST zif_lnt_file( t4 ).
    me->file = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1077_456f8cd1ea7c.
  ENDMETHOD.
ENDCLASS.
