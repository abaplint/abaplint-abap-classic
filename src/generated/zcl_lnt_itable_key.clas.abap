* TS: src/abap/types/basic/table_type.ts:17:1 ITableKey
CLASS zcl_lnt_itable_key DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA type_cba0 TYPE string.
    DATA key_fields TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA is_unique TYPE abap_bool.
    METHODS constructor IMPORTING i_name TYPE string i_type_9913 TYPE string i_key_fields TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_is_unique TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_itable_key IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_key_fields ).
    DATA(t4) = i_is_unique.
    DATA(t5) = t1.
    me->name = t5.
    DATA(t6) = t2.
    me->type_cba0 = t6.
    DATA(t7) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    me->key_fields = t7.
    DATA(t8) = t4.
    me->is_unique = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1750_f8183e8bfd64.
  ENDMETHOD.
ENDCLASS.
