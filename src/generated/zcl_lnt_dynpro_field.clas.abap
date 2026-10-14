* TS: src/objects/_dynpros.ts:3:1 DynproField
CLASS zcl_lnt_dynpro_field DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA type_cba0 TYPE string.
    DATA cont_type TYPE string.
    DATA length TYPE int8.
    DATA vislength TYPE int8.
    DATA line TYPE int8.
    DATA column TYPE int8.
    DATA height TYPE int8.
    METHODS constructor IMPORTING i_name TYPE string i_type_9913 TYPE string i_cont_type TYPE string i_length TYPE int8 i_vislength TYPE int8 i_line TYPE int8 i_column TYPE int8 i_height TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dynpro_field IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_type_9913.
    DATA(t3) = i_cont_type.
    DATA(t4) = i_length.
    DATA(t5) = i_vislength.
    DATA(t6) = i_line.
    DATA(t7) = i_column.
    DATA(t8) = i_height.
    DATA(t9) = t1.
    me->name = t9.
    DATA(t10) = t2.
    me->type_cba0 = t10.
    DATA(t11) = t3.
    me->cont_type = t11.
    DATA(t12) = t4.
    me->length = t12.
    DATA(t13) = t5.
    me->vislength = t13.
    DATA(t14) = t6.
    me->line = t14.
    DATA(t15) = t7.
    me->column = t15.
    DATA(t16) = t8.
    me->height = t16.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1789_345ee573e5b8.
  ENDMETHOD.
ENDCLASS.
