* TS: src/abap/5_syntax/_spaghetti_scope.ts:20:1 IScopeVariable
CLASS zcl_lnt_iscope_variable DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA identifier TYPE REF TO zcl_lnt_typed_identifier.
    METHODS constructor IMPORTING i_name TYPE string i_identifier TYPE REF TO zcl_lnt_typed_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iscope_variable IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_typed_identifier( i_identifier ).
    DATA(t3) = t1.
    me->name = t3.
    DATA(t4) = CAST zcl_lnt_typed_identifier( t2 ).
    me->identifier = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d756_fb925eb43272.
  ENDMETHOD.
ENDCLASS.
