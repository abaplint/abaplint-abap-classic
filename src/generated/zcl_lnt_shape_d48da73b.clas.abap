* TS: src/lsp/language_server.ts:119:58 shape.f71011683d818d56621079c1f3be70bc20e788874a5c4fb2dfde825062e19747
CLASS zcl_lnt_shape_d48da73b DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA result_id TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA data_56cc TYPE REF TO zlnt_runtime_arra_f39560c658f8.
    METHODS constructor IMPORTING i_result_id TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_data_dc02 TYPE REF TO zlnt_runtime_arra_f39560c658f8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_d48da73b IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_result_id ).
    DATA(t2) = CAST zlnt_runtime_arra_f39560c658f8( i_data_dc02 ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->result_id = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_f39560c658f8.
    DATA(t5) = CAST zlnt_runtime_arra_f39560c658f8( t2 ).
    t4 = t5.
    me->data_56cc = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1773_77e382a8afbc.
  ENDMETHOD.
ENDCLASS.
