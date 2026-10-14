* TS: src/abap/types/function_module_definition.ts:10:1 IFunctionModuleParameter
CLASS zcl_lnt_ifnctn_mdl_prmtr DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA direction TYPE string.
    DATA type_cba0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA optional TYPE abap_bool.
    DATA default_value TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA pass_by_value TYPE abap_bool.
    METHODS constructor IMPORTING i_name TYPE string i_direction TYPE string i_type_9913 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_optional TYPE abap_bool i_default_value TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_pass_by_value TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ifnctn_mdl_prmtr IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_direction.
    DATA(t3) = i_type_9913.
    DATA(t4) = i_optional.
    DATA(t5) = i_default_value.
    DATA(t6) = i_pass_by_value.
    DATA(t7) = t1.
    me->name = t7.
    DATA(t8) = t2.
    me->direction = t8.
    DATA(t9) = t3.
    me->type_cba0 = t9.
    DATA(t10) = t4.
    me->optional = t10.
    DATA(t11) = t5.
    me->default_value = t11.
    DATA(t12) = t6.
    me->pass_by_value = t12.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1036_17caa775f2d6.
  ENDMETHOD.
ENDCLASS.
