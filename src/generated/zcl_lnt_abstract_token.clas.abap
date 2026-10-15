* TS: src/abap/1_lexer/tokens/abstract_token.ts:3:1 AbstractToken
CLASS zcl_lnt_abstract_token DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_union_daf022d4.
    DATA start TYPE REF TO zcl_lnt_position.
    DATA str TYPE string.
    DATA str_upper TYPE string.
    METHODS constructor IMPORTING i_start TYPE REF TO zcl_lnt_position i_str TYPE string.
    METHODS debug_description RETURNING VALUE(result) TYPE string.
    METHODS get_str RETURNING VALUE(result) TYPE string.
    METHODS get_upper_str RETURNING VALUE(result) TYPE string.
    METHODS get_row RETURNING VALUE(result) TYPE f.
    METHODS get_col RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS get_start RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abstract_token IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_start.
    DATA(t2) = i_str.
    DATA(t3) = t1.
    me->start = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `start`.
    DATA(t4) = t2.
    me->str = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `str`.
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
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `strUpper`.
  ENDMETHOD.

  METHOD debug_description.
    DATA t1 TYPE REF TO zlnt_exception_st_fa837731be5a.
    DATA(t2) = |excluded abaplint introspection: debugDescription|.
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    CREATE OBJECT t1->source_value.
    t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1->source_value->sval = t2.
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
    DATA t1 TYPE f.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA(t3) = me->start.
    t2 = t3.
    DATA t4 TYPE f.
    DATA(t5) = t2.
    t4 = t5->row.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_col.
    DATA t1 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t2 TYPE REF TO zcl_lnt_position.
    DATA(t3) = me->start.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t5) = t2.
    t4 = t5->col.
    t1 = t4.
    result = t1.

  ENDMETHOD.

  METHOD get_start.
    DATA(t1) = me->start.
    result = t1.

  ENDMETHOD.

  METHOD get_end.
    DATA t1 TYPE REF TO zcl_lnt_position.
    DATA t2 TYPE f.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA(t4) = me->start.
    t3 = t4.
    DATA t5 TYPE f.
    DATA(t6) = t3.
    t5 = t6->row.
    t2 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t8 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA(t10) = me->start.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t12) = t9.
    t11 = t12->col.
    t8 = t11.
    DATA t13 TYPE f.
    DATA t14 TYPE i.
    DATA(t15) = CONV string( me->str ).
    DATA(t16) = strlen( t15 ).
    t14 = t16.
    t13 = t14.
    DATA(t17) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t17->has = abap_true.
    t17->value = t13.
    t7 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t8 right = t17 op = `+` ).
    t1 = NEW zcl_lnt_position( i_row = t2 i_col = t7 ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d12_bad132cea1e854.
  ENDMETHOD.

  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
