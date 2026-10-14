* TS: src/abap/5_syntax/_reference.ts:30:1 IReferenceExtras
CLASS zcl_lnt_ireference_extras DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA oo_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA oo_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA found_qualified TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING i_oo_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_oo_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_found_qualified TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ireference_extras IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_oo_name.
    DATA(t2) = i_oo_type.
    DATA(t3) = i_found_qualified.
    DATA(t4) = t1.
    me->oo_name = t4.
    DATA(t5) = t2.
    me->oo_type = t5.
    DATA(t6) = t3.
    me->found_qualified = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d753_f3a2f457d984.
  ENDMETHOD.
ENDCLASS.
