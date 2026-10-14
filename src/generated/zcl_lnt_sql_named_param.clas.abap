* TS: src/abap/2_statements/expressions/sql_function.ts:103:1 SQLNamedParam
CLASS zcl_lnt_sql_named_param DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA value TYPE string.
    DATA optional TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING i_name TYPE string i_value TYPE string i_optional TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_named_param IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = i_value.
    DATA(t3) = i_optional.
    DATA(t4) = t1.
    me->name = t4.
    DATA(t5) = t2.
    me->value = t5.
    DATA(t6) = t3.
    me->optional = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1846_7ee62fd5e50c.
  ENDMETHOD.
ENDCLASS.
