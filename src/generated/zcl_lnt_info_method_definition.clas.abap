* TS: src/abap/4_file_information/_abap_file_information.ts:33:1 InfoMethodDefinition
CLASS zcl_lnt_info_method_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA is_redefinition TYPE abap_bool.
    DATA is_event_handler TYPE abap_bool.
    DATA is_for_testing TYPE abap_bool.
    DATA is_abstract TYPE abap_bool.
    DATA is_final TYPE abap_bool.
    DATA is_default_ignore TYPE abap_bool.
    DATA is_default_fail TYPE abap_bool.
    DATA visibility TYPE int8.
    DATA parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA exceptions TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_fi_identifier i_is_redefinition TYPE abap_bool i_is_event_handler TYPE abap_bool i_is_for_testing TYPE abap_bool i_is_abstract TYPE abap_bool i_is_final
    TYPE abap_bool i_is_default_ignore TYPE abap_bool i_is_default_fail TYPE abap_bool i_visibility_5c1f TYPE int8 i_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_exceptions TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_info_method_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t3) = i_is_redefinition.
    DATA(t4) = i_is_event_handler.
    DATA(t5) = i_is_for_testing.
    DATA(t6) = i_is_abstract.
    DATA(t7) = i_is_final.
    DATA(t8) = i_is_default_ignore.
    DATA(t9) = i_is_default_fail.
    DATA(t10) = i_visibility_5c1f.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( i_parameters ).
    DATA(t12) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_exceptions ).
    DATA(t13) = t1.
    me->name = t13.
    DATA(t14) = CAST zcl_lnt_fi_identifier( t2 ).
    me->identifier = t14.
    DATA(t15) = t3.
    me->is_redefinition = t15.
    DATA(t16) = t4.
    me->is_event_handler = t16.
    DATA(t17) = t5.
    me->is_for_testing = t17.
    DATA(t18) = t6.
    me->is_abstract = t18.
    DATA(t19) = t7.
    me->is_final = t19.
    DATA(t20) = t8.
    me->is_default_ignore = t20.
    DATA(t21) = t9.
    me->is_default_fail = t21.
    DATA(t22) = t10.
    me->visibility = t22.
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    me->parameters = t23.
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t12 ).
    me->exceptions = t24.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d735_6e36d2820627.
  ENDMETHOD.
ENDCLASS.
