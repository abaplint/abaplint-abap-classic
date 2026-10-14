* TS: src/rules/constant_classes.ts:11:1 DomainClassMapping
CLASS zcl_lnt_domain_class_mapping DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA domain TYPE string.
    DATA class_fa7d TYPE string.
    DATA use_exact_type TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA constant_for_domain_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_domain TYPE string i_class_631c TYPE string i_use_exact_type TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_constant_for_domain_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_domain_class_mapping IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_domain.
    DATA(t2) = i_class_631c.
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( i_use_exact_type ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_constant_for_domain_name ).
    DATA(t5) = t1.
    me->domain = t5.
    DATA(t6) = t2.
    me->class_fa7d = t6.
    DATA(t7) = CAST zlnt_runtime_opti_7f2541396f43( t3 ).
    me->use_exact_type = t7.
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    me->constant_for_domain_name = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1362_bf065685ae45.
  ENDMETHOD.
ENDCLASS.
