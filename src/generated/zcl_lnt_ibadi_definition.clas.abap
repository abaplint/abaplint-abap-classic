* TS: src/objects/enhancement_spot.ts:4:1 IBadiDefinition
CLASS zcl_lnt_ibadi_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA interface_5015 TYPE string.
    METHODS constructor IMPORTING i_name TYPE string i_interface_40e4 TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ibadi_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_interface_40e4.
    DATA(t3) = t1.
    me->name = t3.
    DATA(t4) = t2.
    me->interface_5015 = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1151_1278fe9ed937.
  ENDMETHOD.
ENDCLASS.
