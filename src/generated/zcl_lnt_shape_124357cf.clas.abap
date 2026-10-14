* TS: src/objects/function_group.ts:81:29 shape.0e610234a61c59728f9f67694a386e1b3a2f7dc5de0a2d3b1efe237fc1aa716c
CLASS zcl_lnt_shape_124357cf DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA file TYPE REF TO zcl_lnt_abap_file.
    DATA name TYPE string.
    METHODS constructor IMPORTING i_file TYPE REF TO zcl_lnt_abap_file OPTIONAL i_name TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_124357cf IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_abap_file.
    DATA(t4) = CAST zcl_lnt_abap_file( t1 ).
    t3 = t4.
    me->file = t3.
    DATA(t5) = t2.
    me->name = t5.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1791_3181ca2a0cee.
  ENDMETHOD.
ENDCLASS.
