* TS: src/abap/3_structures/structures/_match.ts:3:1 IMatch
CLASS zcl_lnt_imatch DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA matched TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA unmatched TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA error TYPE abap_bool.
    DATA error_description TYPE string.
    DATA error_matched TYPE int8.
    METHODS constructor IMPORTING i_matched TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_unmatched TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_error TYPE abap_bool i_error_description TYPE string i_error_matched TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_imatch IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_matched ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_unmatched ).
    DATA(t3) = i_error.
    DATA(t4) = i_error_description.
    DATA(t5) = i_error_matched.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->matched = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    me->unmatched = t7.
    DATA(t8) = t3.
    me->error = t8.
    DATA(t9) = t4.
    me->error_description = t9.
    DATA(t10) = t5.
    me->error_matched = t10.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d678_fe590cf1b90c.
  ENDMETHOD.
ENDCLASS.
