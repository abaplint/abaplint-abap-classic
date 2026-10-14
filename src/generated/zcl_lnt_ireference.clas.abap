* TS: src/abap/5_syntax/_reference.ts:36:1 IReference
CLASS zcl_lnt_ireference DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA position_7b94 TYPE REF TO zcl_lnt_fi_identifier.
    DATA resolved TYPE REF TO zcl_lnt_fi_identifier.
    DATA reference_type TYPE string.
    DATA extra TYPE REF TO zcl_lnt_ireference_extras.
    METHODS constructor IMPORTING i_position_a3fd TYPE REF TO zcl_lnt_fi_identifier i_resolved TYPE REF TO zcl_lnt_fi_identifier OPTIONAL i_reference_type TYPE string i_extra TYPE REF TO zcl_lnt_ireference_extras OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ireference IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_position_a3fd ).
    DATA(t2) = CAST zcl_lnt_fi_identifier( i_resolved ).
    DATA(t3) = i_reference_type.
    DATA(t4) = CAST zcl_lnt_ireference_extras( i_extra ).
    DATA(t5) = CAST zcl_lnt_fi_identifier( t1 ).
    me->position_7b94 = t5.
    DATA(t6) = CAST zcl_lnt_fi_identifier( t2 ).
    me->resolved = t6.
    DATA(t7) = t3.
    me->reference_type = t7.
    DATA(t8) = CAST zcl_lnt_ireference_extras( t4 ).
    me->extra = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d754_7e0395e36d0a.
  ENDMETHOD.
ENDCLASS.
