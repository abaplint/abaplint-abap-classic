* TS: src/abap/types/_interface_definition.ts:8:1 IImplementing
CLASS zcl_lnt_iimplementing DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA partial TYPE abap_bool.
    METHODS constructor IMPORTING i_name TYPE string i_partial TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iimplementing IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_partial.
    DATA(t3) = t1.
    me->name = t3.
    DATA(t4) = t2.
    me->partial = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d990_b83cbe1720a1.
  ENDMETHOD.
ENDCLASS.
