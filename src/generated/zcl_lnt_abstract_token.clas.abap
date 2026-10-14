* TS: src/abap/1_lexer/tokens/abstract_token.ts:3:1 AbstractToken
CLASS zcl_lnt_abstract_token DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_daf022d4.
    DATA start TYPE REF TO zcl_lnt_position.
    DATA str TYPE string.
    DATA str_upper TYPE string.
    METHODS constructor IMPORTING i_start TYPE REF TO zcl_lnt_position i_str TYPE string.
    METHODS debug_description RETURNING VALUE(result) TYPE string.
    METHODS get_str RETURNING VALUE(result) TYPE string.
    METHODS get_upper_str RETURNING VALUE(result) TYPE string.
    METHODS get_row RETURNING VALUE(result) TYPE int8.
    METHODS get_col RETURNING VALUE(result) TYPE int8.
    METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_token IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_position( i_start ).
    DATA(t2) = i_str.
    DATA(t3) = CAST zcl_lnt_position( t1 ).
    me->start = t3.
    DATA(t4) = t2.
    me->str = t4.
    DATA t5 TYPE string.
    DATA(t6) = t2.
    DATA(t7) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    me->str_upper = t5.
  ENDMETHOD.
  METHOD debug_description.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: debugDescription|.
    t1 = NEW #( ).
    t1->payload = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_str.
    DATA(t1) = CONV string( me->str ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_upper_str.
    DATA(t1) = CONV string( me->str_upper ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_row.
    DATA t1 TYPE int8.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA(t3) = CAST zcl_lnt_position( me->start ).
    t2 = t3.
    DATA t4 TYPE int8.
    DATA(t5) = CAST zcl_lnt_position( t2 ).
    t4 = t5->row.
    t1 = t4.
    result = t1.
    
  ENDMETHOD.
  METHOD get_col.
    DATA t1 TYPE int8.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA(t3) = CAST zcl_lnt_position( me->start ).
    t2 = t3.
    DATA t4 TYPE int8.
    DATA(t5) = CAST zcl_lnt_position( t2 ).
    t4 = t5->col.
    t1 = t4.
    result = t1.
    
  ENDMETHOD.
  METHOD get_start.
    DATA(t1) = CAST zcl_lnt_position( me->start ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_end.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA t1 TYPE REF TO zcl_lnt_position.
    CLEAR t1.
    DATA t2 TYPE int8.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA(t4) = CAST zcl_lnt_position( me->start ).
    t3 = t4.
    DATA t5 TYPE int8.
    DATA(t6) = CAST zcl_lnt_position( t3 ).
    t5 = t6->row.
    t2 = t5.
    DATA t7 TYPE int8.
    DATA t8 TYPE int8.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA(t10) = CAST zcl_lnt_position( me->start ).
    t9 = t10.
    DATA t11 TYPE int8.
    DATA(t12) = CAST zcl_lnt_position( t9 ).
    t11 = t12->col.
    t8 = t11.
    DATA t13 TYPE int8.
    DATA t14 TYPE i.
    DATA(t15) = CONV string( me->str ).
    DATA(t16) = strlen( t15 ).
    t14 = t16.
    t13 = t14.
    t7 = t8 + t13.
    IF t7 < range_int8_bound_min OR t7 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t1 = NEW zcl_lnt_position( i_row = t2 i_col = t7 ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d12_bad132cea1e854.
  ENDMETHOD.
  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
