* TS: src/abap/4_file_information/_abap_file_information.ts:73:1 InfoAlias
CLASS zcl_lnt_info_alias DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA visibility TYPE int8.
    DATA component TYPE string.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_fi_identifier i_visibility_5c1f TYPE int8 i_component TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_info_alias IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_identifier.
    DATA(t3) = i_visibility_5c1f.
    DATA(t4) = i_component.
    DATA(t5) = t1.
    me->name = t5.
    DATA(t6) = t2.
    me->identifier = t6.
    DATA(t7) = t3.
    me->visibility = t7.
    DATA(t8) = t4.
    me->component = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d738_747279fb02d5.
  ENDMETHOD.
ENDCLASS.
