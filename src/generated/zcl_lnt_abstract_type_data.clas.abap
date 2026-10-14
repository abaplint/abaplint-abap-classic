* TS: src/abap/types/basic/_abstract_type.ts:1:1 AbstractTypeData
CLASS zcl_lnt_abstract_type_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA derived_from_constant TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ddic_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA rtti_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_derived_from_constant TYPE REF TO zlnt_runtime_opti_7f2541396f43
    OPTIONAL i_ddic_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_rtti_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_type_data IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_conversion_exit ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( i_derived_from_constant ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_ddic_name ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_rtti_name ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t7) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->qualified_name = t7.
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->conversion_exit = t8.
    DATA(t9) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    me->derived_from_constant = t9.
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    me->ddic_name = t10.
    DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->rtti_name = t11.
    DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    me->description = t12.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1760_9ea46fbb9129.
  ENDMETHOD.
ENDCLASS.
