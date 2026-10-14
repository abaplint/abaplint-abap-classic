* TS: src/objects/domain.ts:17:1 DomainValueTranslation
CLASS zcl_lnt_dmn_vl_trnsltn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA language TYPE string.
    DATA description TYPE string.
    METHODS constructor IMPORTING i_language TYPE string i_description TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dmn_vl_trnsltn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_language.
    DATA(t2) = i_description.
    DATA(t3) = t1.
    me->language = t3.
    DATA(t4) = t2.
    me->description = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1144_853552e5f654.
  ENDMETHOD.
ENDCLASS.
