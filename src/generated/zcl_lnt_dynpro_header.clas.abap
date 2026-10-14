* TS: src/objects/_dynpros.ts:13:1 DynproHeader
CLASS zcl_lnt_dynpro_header DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA number TYPE string.
    DATA description TYPE string.
    DATA next_screen TYPE string.
    DATA type_cba0 TYPE string.
    DATA fields_464c TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_number TYPE string i_description TYPE string i_next_screen TYPE string i_type_9913 TYPE string i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dynpro_header IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_number.
    DATA(t2) = i_description.
    DATA(t3) = i_next_screen.
    DATA(t4) = i_type_9913.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( i_fields_62af ).
    DATA(t6) = t1.
    me->number = t6.
    DATA(t7) = t2.
    me->description = t7.
    DATA(t8) = t3.
    me->next_screen = t8.
    DATA(t9) = t4.
    me->type_cba0 = t9.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    me->fields_464c = t10.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1790_4868dd08bafe.
  ENDMETHOD.
ENDCLASS.
