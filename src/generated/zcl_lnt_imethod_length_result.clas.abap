* TS: src/utils/method_length_stats.ts:11:1 IMethodLengthResult
CLASS zcl_lnt_imethod_length_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA class_name TYPE string.
    DATA name TYPE string.
    DATA count TYPE int8.
    DATA file TYPE REF TO zcl_lnt_abap_file.
    DATA pos TYPE REF TO zcl_lnt_position.
    METHODS constructor IMPORTING i_class_name TYPE string i_name TYPE string i_count TYPE int8 i_file TYPE REF TO zcl_lnt_abap_file i_pos TYPE REF TO zcl_lnt_position.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_imethod_length_result IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_class_name.
    DATA(t2) = i_name.
    DATA(t3) = i_count.
    DATA(t4) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t5) = CAST zcl_lnt_position( i_pos ).
    DATA(t6) = t1.
    me->class_name = t6.
    DATA(t7) = t2.
    me->name = t7.
    DATA(t8) = t3.
    me->count = t8.
    DATA(t9) = CAST zcl_lnt_abap_file( t4 ).
    me->file = t9.
    DATA(t10) = CAST zcl_lnt_position( t5 ).
    me->pos = t10.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1694_16812c852e2c.
  ENDMETHOD.
ENDCLASS.
