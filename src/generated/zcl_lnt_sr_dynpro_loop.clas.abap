* TS: src/abap/3_structures/structures/dynpro_loop.ts:7:1 DynproLoop
CLASS zcl_lnt_sr_dynpro_loop DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_dynpro_loop IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = zlnt_runtime_desc_78196487750d=>zlnt_member_d454_adcbc941e96f.
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d560_1073f613c8c9.
    t7 = zcl_lnt_sr_combi_module=>sta( i_s = t8 ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d495_455bba123ac8.
    t12 = zcl_lnt_sr_combi_module=>sta( i_s = t13 ).
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t9.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d714_49cf6811a616.
    t15 = zcl_lnt_sr_combi_module=>sub( i_s = t16 ).
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA t17 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t18) = t6.
    DATA(t19) = t9.
    t17 = zcl_lnt_sr_combi_module=>alt( i_first = t18 i_rest = t19 ).
    t5 = t17.
    t4 = zcl_lnt_sr_combi_module=>star( i_s = t5 ).
    DATA t20 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d476_e0523f307ef8.
    t20 = zcl_lnt_sr_combi_module=>sta( i_s = t21 ).
    t1 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = t20 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d733_9d53cd1f40a8.
  ENDMETHOD.

  METHOD zif_lnt_structure~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_structure~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
