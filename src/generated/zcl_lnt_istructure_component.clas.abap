* TS: src/abap/types/basic/structure_type.ts:3:1 IStructureComponent
CLASS zcl_lnt_istructure_component DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA type_cba0 TYPE REF TO zcl_lnt_abstract_type.
    DATA as_include TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA suffix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_name TYPE string i_type_9913 TYPE REF TO zcl_lnt_abstract_type i_as_include TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_suffix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_istructure_component IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_as_include.
    DATA(t4) = i_suffix.
    DATA(t5) = t1.
    me->name = t5.
    DATA(t6) = t2.
    me->type_cba0 = t6.
    DATA(t7) = t3.
    me->as_include = t7.
    DATA(t8) = t4.
    me->suffix = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1019_f0b7aea8433a.
  ENDMETHOD.
ENDCLASS.
