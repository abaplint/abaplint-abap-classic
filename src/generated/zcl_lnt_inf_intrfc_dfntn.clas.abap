* TS: src/abap/4_file_information/_abap_file_information.ts:53:1 InfoInterfaceDefinition
CLASS zcl_lnt_inf_intrfc_dfntn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_eff0d09a.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA is_local TYPE abap_bool.
    DATA is_global TYPE abap_bool.
    DATA interfaces TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA methods TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA aliases_62bb TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA constants TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA attributes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_fi_identifier i_is_local TYPE abap_bool i_is_global TYPE abap_bool i_interfaces TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_methods TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 i_aliases_acc1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_constants TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_attributes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_inf_intrfc_dfntn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t3) = i_is_local.
    DATA(t4) = i_is_global.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( i_interfaces ).
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( i_methods ).
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( i_aliases_acc1 ).
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( i_constants ).
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( i_attributes ).
    DATA(t10) = t1.
    me->name = t10.
    DATA(t11) = CAST zcl_lnt_fi_identifier( t2 ).
    me->identifier = t11.
    DATA(t12) = t3.
    me->is_local = t12.
    DATA(t13) = t4.
    me->is_global = t13.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    me->interfaces = t14.
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    me->methods = t15.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    me->aliases_62bb = t16.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    me->constants = t17.
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    me->attributes = t18.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d736_e6fd20179c23.
  ENDMETHOD.

  METHOD zif_lnt_union_eff0d09a~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
