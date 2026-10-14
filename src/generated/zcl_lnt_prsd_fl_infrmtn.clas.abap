* TS: src/abap/4_file_information/parsed_file_information.ts:3:1 ParsedFileInformation
CLASS zcl_lnt_prsd_fl_infrmtn DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA interfaces TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA classes TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA forms TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA implementations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_interfaces TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_classes TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_forms TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_implementations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prsd_fl_infrmtn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_interfaces ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_classes ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_forms ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_implementations ).
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->interfaces = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    me->classes = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    me->forms = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    me->implementations = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d746_a08f21095411.
  ENDMETHOD.
ENDCLASS.
