* TS: src/objects/rename/_object_renamer.ts:5:63 shape.a67a15173c1437619ae004d157dd6f567d1a423733059ab10e3d151b9d38c218
CLASS zcl_lnt_shape_6cfe0008 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA new_text TYPE string.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL i_new_text TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_6cfe0008 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9ead17bd( i_range ).
    DATA(t2) = i_new_text.
    DATA t3 TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA(t4) = CAST zcl_lnt_shape_9ead17bd( t1 ).
    t3 = t4.
    me->range = t3.
    DATA(t5) = t2.
    me->new_text = t5.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1730_8bf43f061f56.
  ENDMETHOD.
ENDCLASS.
