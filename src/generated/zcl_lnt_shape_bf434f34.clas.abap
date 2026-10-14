* TS: src/objects/rename/_object_renamer.ts:5:63 shape.05c8a0fbd26ed06f055ea5a8f58fcd8d413b53b0e54f83badb7d5b979576da06
CLASS zcl_lnt_shape_bf434f34 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA recursive TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignore_if_not_exists TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING i_recursive TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_ignore_if_not_exists TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_bf434f34 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_recursive.
    DATA(t2) = i_ignore_if_not_exists.
    DATA(t3) = t1.
    me->recursive = t3.
    DATA(t4) = t2.
    me->ignore_if_not_exists = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1733_ab47c7b3acf6.
  ENDMETHOD.
ENDCLASS.
