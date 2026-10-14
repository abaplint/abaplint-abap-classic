* TS: src/abap/4_file_information/_abap_file_information.ts:27:1 InfoMethodParameter
CLASS zcl_lnt_info_method_parameter DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA direction TYPE string.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_fi_identifier i_direction TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_info_method_parameter IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t3) = i_direction.
    DATA(t4) = t1.
    me->name = t4.
    DATA(t5) = CAST zcl_lnt_fi_identifier( t2 ).
    me->identifier = t5.
    DATA(t6) = t3.
    me->direction = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d734_f05b24426da6.
  ENDMETHOD.
ENDCLASS.
