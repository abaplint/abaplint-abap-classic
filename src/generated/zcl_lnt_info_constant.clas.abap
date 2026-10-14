* TS: src/abap/4_file_information/_abap_file_information.ts:65:1 InfoConstant
CLASS zcl_lnt_info_constant DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA name TYPE string.
    DATA type_name TYPE string.
    DATA visibility TYPE int8.
    DATA value TYPE string.
    METHODS constructor IMPORTING i_identifier TYPE REF TO zcl_lnt_fi_identifier i_name TYPE string i_type_name TYPE string i_visibility_5c1f TYPE int8 i_value TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_info_constant IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t2) = i_name.
    DATA(t3) = i_type_name.
    DATA(t4) = i_visibility_5c1f.
    DATA(t5) = i_value.
    DATA(t6) = CAST zcl_lnt_fi_identifier( t1 ).
    me->identifier = t6.
    DATA(t7) = t2.
    me->name = t7.
    DATA(t8) = t3.
    me->type_name = t8.
    DATA(t9) = t4.
    me->visibility = t9.
    DATA(t10) = t5.
    me->value = t10.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d737_9a5557c762ef.
  ENDMETHOD.
ENDCLASS.
