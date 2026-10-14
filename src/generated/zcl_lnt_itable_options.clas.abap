* TS: src/abap/types/basic/table_type.ts:24:1 ITableOptions
CLASS zcl_lnt_itable_options DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA with_header TYPE abap_bool.
    DATA key_type TYPE string.
    DATA primary_key TYPE REF TO zcl_lnt_itable_key.
    DATA secondary TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_with_header TYPE abap_bool i_key_type TYPE string i_primary_key TYPE REF TO zcl_lnt_itable_key OPTIONAL i_secondary TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_itable_options IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_with_header.
    DATA(t2) = i_key_type.
    DATA(t3) = CAST zcl_lnt_itable_key( i_primary_key ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_secondary ).
    DATA(t5) = t1.
    me->with_header = t5.
    DATA(t6) = t2.
    me->key_type = t6.
    DATA(t7) = CAST zcl_lnt_itable_key( t3 ).
    me->primary_key = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    me->secondary = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1751_c3e81003f679.
  ENDMETHOD.
ENDCLASS.
