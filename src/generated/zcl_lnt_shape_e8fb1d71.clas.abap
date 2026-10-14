* TS: src/rules/implement_methods.ts:192:36 shape.8ed14ddb78efb2071fbde973ce74331fba27b6f1ec96c5c0dee999a43be895cd
CLASS zcl_lnt_shape_e8fb1d71 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA def TYPE REF TO zcl_lnt_info_class_definition.
    DATA impl TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    METHODS constructor IMPORTING i_def TYPE REF TO zcl_lnt_info_class_definition OPTIONAL i_impl TYPE REF TO zcl_lnt_inf_clss_implmnttn OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_e8fb1d71 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_def.
    DATA(t2) = i_impl.
    DATA t3 TYPE REF TO zcl_lnt_info_class_definition.
    DATA(t4) = t1.
    t3 = t4.
    me->def = t3.
    DATA t5 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA(t6) = t2.
    t5 = t6.
    me->impl = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1820_ab8d41c904da.
  ENDMETHOD.
ENDCLASS.
