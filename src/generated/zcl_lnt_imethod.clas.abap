* TS: src/rules/implement_methods.ts:19:1 IMethod
CLASS zcl_lnt_imethod DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA object_name TYPE string.
    DATA method TYPE REF TO zcl_lnt_info_method_definition.
    METHODS constructor IMPORTING i_object_name TYPE string i_method TYPE REF TO zcl_lnt_info_method_definition.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_imethod IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_object_name.
    DATA(t2) = CAST zcl_lnt_info_method_definition( i_method ).
    DATA(t3) = t1.
    me->object_name = t3.
    DATA(t4) = CAST zcl_lnt_info_method_definition( t2 ).
    me->method = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1438_8954b07693d5.
  ENDMETHOD.
ENDCLASS.
