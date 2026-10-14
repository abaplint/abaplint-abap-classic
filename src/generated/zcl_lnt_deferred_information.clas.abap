* TS: src/abap/5_syntax/_spaghetti_scope.ts:25:1 DeferredInformation
CLASS zcl_lnt_deferred_information DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    DATA oo_type TYPE string.
    METHODS constructor IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_oo_type TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_deferred_information IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_token.
    DATA(t2) = i_oo_type.
    DATA(t3) = t1.
    me->token = t3.
    DATA(t4) = t2.
    me->oo_type = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1711_3f7bdca55374.
  ENDMETHOD.
ENDCLASS.
