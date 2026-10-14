* TS: src/abap/4_file_information/_abap_file_information.ts:19:1 InfoAttribute
CLASS zcl_lnt_info_attribute DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA level TYPE string.
    DATA read_only TYPE abap_bool.
    DATA visibility TYPE int8.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_fi_identifier i_level TYPE string i_read_only TYPE abap_bool i_visibility_5c1f TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_info_attribute IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t3) = i_level.
    DATA(t4) = i_read_only.
    DATA(t5) = i_visibility_5c1f.
    DATA(t6) = t1.
    me->name = t6.
    DATA(t7) = CAST zcl_lnt_fi_identifier( t2 ).
    me->identifier = t7.
    DATA(t8) = t3.
    me->level = t8.
    DATA(t9) = t4.
    me->read_only = t9.
    DATA(t10) = t5.
    me->visibility = t10.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d733_9d53cd1f40a8.
  ENDMETHOD.
ENDCLASS.
