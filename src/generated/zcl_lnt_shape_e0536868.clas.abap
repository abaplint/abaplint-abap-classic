* TS: src/lsp/code_lens.ts:25:91 shape.e35eec429dc1d9d6b5cf2d167d9211e2f25c45a515255fdd6b6668ef5138b6d5
CLASS zcl_lnt_shape_e0536868 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA command TYPE REF TO zcl_lnt_shape_6d7086ba.
    DATA data_56cc TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL i_command TYPE REF TO zcl_lnt_shape_6d7086ba OPTIONAL i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_e0536868 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9ead17bd( i_range ).
    DATA(t2) = CAST zcl_lnt_shape_6d7086ba( i_command ).
    DATA(t3) = CAST zlnt_runtime_dyna_a429568d5be8( i_data_dc02 ).
    DATA t4 TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA(t5) = CAST zcl_lnt_shape_9ead17bd( t1 ).
    t4 = t5.
    me->range = t4.
    DATA(t6) = CAST zcl_lnt_shape_6d7086ba( t2 ).
    me->command = t6.
    DATA(t7) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    me->data_56cc = t7.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1764_143ec0359f79.
  ENDMETHOD.
ENDCLASS.
