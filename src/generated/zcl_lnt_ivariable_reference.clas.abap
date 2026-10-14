* TS: src/rules/prefer_inline.ts:19:1 IVariableReference
CLASS zcl_lnt_ivariable_reference DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA position_7b94 TYPE REF TO zcl_lnt_fi_identifier.
    DATA resolved TYPE REF TO zcl_lnt_fi_identifier.
    METHODS constructor IMPORTING i_position_a3fd TYPE REF TO zcl_lnt_fi_identifier i_resolved TYPE REF TO zcl_lnt_fi_identifier.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ivariable_reference IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_position_a3fd.
    DATA(t2) = i_resolved.
    DATA(t3) = t1.
    me->position_7b94 = t3.
    DATA(t4) = t2.
    me->resolved = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1555_8b16ca09c68c.
  ENDMETHOD.
ENDCLASS.
