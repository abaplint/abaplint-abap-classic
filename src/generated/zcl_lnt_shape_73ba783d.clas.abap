* TS: src/objects/rename/_object_renamer.ts:5:63 shape.5bdb11902e67ba1b0a85b97fefc80a35c3b04b160790745208ce6fe8f6e3f68a
CLASS zcl_lnt_shape_73ba783d DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA version TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA uri TYPE string.
    METHODS constructor IMPORTING i_version TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_uri TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_73ba783d IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_version ).
    DATA(t2) = i_uri.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t3 = t4.
    me->version = t3.
    DATA(t5) = t2.
    me->uri = t5.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1736_af47d7445473.
  ENDMETHOD.
ENDCLASS.
