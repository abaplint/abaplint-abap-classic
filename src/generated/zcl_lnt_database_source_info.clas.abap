* TS: src/abap/5_syntax/expressions/select.ts:23:1 DatabaseSourceInfo
CLASS zcl_lnt_database_source_info DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA source TYPE REF TO zif_lnt_union_c74a232f.
    DATA name TYPE string.
    DATA alias TYPE string.
    METHODS constructor IMPORTING i_source_75cf TYPE REF TO zif_lnt_union_c74a232f OPTIONAL i_name TYPE string i_alias TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_database_source_info IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_union_c74a232f( i_source_75cf ).
    DATA(t2) = i_name.
    DATA(t3) = i_alias.
    DATA(t4) = CAST zif_lnt_union_c74a232f( t1 ).
    me->source = t4.
    DATA(t5) = t2.
    me->name = t5.
    DATA(t6) = t3.
    me->alias = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1753_db9138fee08a.
  ENDMETHOD.
ENDCLASS.
