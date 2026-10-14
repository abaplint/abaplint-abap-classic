* TS: src/abap/4_file_information/_abap_file_information.ts:100:1 InfoClassDefinition
CLASS zcl_lnt_info_class_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_fi_identifier.
    DATA is_local TYPE abap_bool.
    DATA is_global TYPE abap_bool.
    DATA methods TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA aliases_62bb TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA constants TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA attributes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA super_class_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA is_abstract TYPE abap_bool.
    DATA is_final TYPE abap_bool.
    DATA interfaces TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA is_for_testing TYPE abap_bool.
    DATA duration TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA risk_level TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA is_shared_memory TYPE abap_bool.
    DATA behavior_definition_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_fi_identifier i_is_local TYPE abap_bool i_is_global TYPE abap_bool i_methods TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_aliases_acc1 TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 i_constants TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_attributes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_super_class_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_is_abstract TYPE
    abap_bool i_is_final TYPE abap_bool i_interfaces TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_is_for_testing TYPE abap_bool i_duration TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_risk_level TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_is_shared_memory TYPE abap_bool i_behavior_definition_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_info_class_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_fi_identifier( i_identifier ).
    DATA(t3) = i_is_local.
    DATA(t4) = i_is_global.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( i_methods ).
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( i_aliases_acc1 ).
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( i_constants ).
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( i_attributes ).
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( i_super_class_name ).
    DATA(t10) = i_is_abstract.
    DATA(t11) = i_is_final.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( i_interfaces ).
    DATA(t13) = i_is_for_testing.
    DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( i_duration ).
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( i_risk_level ).
    DATA(t16) = i_is_shared_memory.
    DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( i_behavior_definition_name ).
    DATA(t18) = t1.
    me->name = t18.
    DATA(t19) = CAST zcl_lnt_fi_identifier( t2 ).
    me->identifier = t19.
    DATA(t20) = t3.
    me->is_local = t20.
    DATA(t21) = t4.
    me->is_global = t21.
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    me->methods = t22.
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    me->aliases_62bb = t23.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    me->constants = t24.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    me->attributes = t25.
    DATA(t26) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
    me->super_class_name = t26.
    DATA(t27) = t10.
    me->is_abstract = t27.
    DATA(t28) = t11.
    me->is_final = t28.
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    me->interfaces = t29.
    DATA(t30) = t13.
    me->is_for_testing = t30.
    DATA(t31) = CAST zlnt_runtime_opti_4ba3bdccd169( t14 ).
    me->duration = t31.
    DATA(t32) = CAST zlnt_runtime_opti_4ba3bdccd169( t15 ).
    me->risk_level = t32.
    DATA(t33) = t16.
    me->is_shared_memory = t33.
    DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t17 ).
    me->behavior_definition_name = t34.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d740_8d94e37f5710.
  ENDMETHOD.
ENDCLASS.
