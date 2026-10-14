* TS: src/objects/domain.ts:11:1 DomainValue
CLASS zcl_lnt_domain_value DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA language TYPE string.
    DATA low TYPE string.
    DATA high TYPE string.
    DATA description TYPE string.
    METHODS constructor IMPORTING i_language TYPE string i_low_a740 TYPE string i_high TYPE string i_description TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_domain_value IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_language.
    DATA(t2) = i_low_a740.
    DATA(t3) = i_high.
    DATA(t4) = i_description.
    DATA(t5) = t1.
    me->language = t5.
    DATA(t6) = t2.
    me->low = t6.
    DATA(t7) = t3.
    me->high = t7.
    DATA(t8) = t4.
    me->description = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1143_f1140737e6b6.
  ENDMETHOD.
ENDCLASS.
